@interface SXComponentView
- (BOOL)transitionViewIsVisible;
- (CGRect)absoluteFrame;
- (CGRect)backgroundViewFrame;
- (CGRect)contentFrame;
- (CGRect)originalFrame;
- (CGRect)originalFrameForContentView:(id)a3 behavior:(id)a4;
- (CGRect)presentationFrame;
- (CGRect)transitionContainerFrame;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (NSString)description;
- (SXComponentHosting)componentHost;
- (SXComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6;
- (SXFillView)fillView;
- (SXPresentationDelegate)presentationDelegate;
- (UIEdgeInsets)borderInsets;
- (UIEdgeInsets)componentLayoutMargins;
- (id)classification;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)assistiveTechnologyStatusDidChange;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didReceiveMemoryWarning;
- (void)invalidateComponentStyle;
- (void)loadComponent:(id)a3;
- (void)prepareForTransitionType:(unint64_t)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)renderComponentStyle;
- (void)renderContentsIfNeeded;
- (void)restoreBehavior;
- (void)setAbsoluteFrame:(CGRect)a3;
- (void)setAnimationsAndBehaviorsEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRequiresThoroughFrameCalculations:(BOOL)a3;
- (void)setVisibilityState:(int64_t)a3;
- (void)setupComponentStyleRendererForStyle:(id)a3;
- (void)updateAllowHierarchyRemovalWithComponent:(id)a3 componentStyle:(id)a4;
- (void)visibilityStateDidChangeFromState:(int64_t)a3;
- (void)willPresentComponentWithChanges:(id)a3;
@end

@implementation SXComponentView

- (SXComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = SXComponentView;
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  v19 = [(SXComponentView *)&v30 initWithFrame:*MEMORY[0x1E695F058], v16, v17, v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_DOMObjectProvider, a3);
    objc_storeStrong(&v20->_viewport, a4);
    objc_storeWeak(&v20->_presentationDelegate, v13);
    objc_storeStrong(&v20->_componentStyleRendererFactory, a6);
    v21 = objc_opt_new();
    state = v20->_state;
    v20->_state = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v15, v16, v17, v18}];
    contentView = v20->_contentView;
    v20->_contentView = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v15, v16, v17, v18}];
    backgroundView = v20->_backgroundView;
    v20->_backgroundView = v25;

    [(UIView *)v20->_backgroundView addSubview:v20->_contentView];
    [(SXComponentView *)v20 addSubview:v20->_backgroundView];
    v27 = [(SXComponentView *)v20 layer];
    [v27 setAllowsGroupOpacity:0];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v20 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v20;
}

- (void)didReceiveMemoryWarning
{
  if ([(SXComponentView *)self visibilityState]!= 1)
  {
    [(SXComponentView *)self discardContents];
    if (!self->_hasBehaviors && !self->_hasAnimation)
    {

      [(SXComponentView *)self invalidateComponentStyle];
    }
  }
}

- (void)loadComponent:(id)a3
{
  objc_storeStrong(&self->_component, a3);
  v5 = a3;
  self->_animationsAndBehaviorsEnabled = 1;
  v6 = [v5 behaviors];
  self->_hasBehaviors = [v6 count] != 0;

  v7 = [v5 animation];

  self->_hasAnimation = v7 != 0;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SXComponentView;
  [(SXComponentView *)&v4 didMoveToWindow];
  v3 = [(SXComponentView *)self window];

  if (!v3)
  {
    [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }
}

- (void)dealloc
{
  v3 = [(SXComponentView *)self presentationDelegate];
  v4 = [v3 behaviorController];
  [v4 unregisterComponentView:self];

  v5 = [(SXComponentView *)self presentationDelegate];
  v6 = [v5 animationController];
  [v6 unregisterComponentView:self];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v8.receiver = self;
  v8.super_class = SXComponentView;
  [(SXComponentView *)&v8 dealloc];
}

- (void)renderContentsIfNeeded
{
  if (!self->_hasRenderedContents)
  {
    [(SXComponentView *)self renderContents];
  }

  if (self->_componentStyle)
  {
    if (self->_componentStyleRenderer || ([(SXComponentView *)self setupComponentStyleRendererForStyle:?], [(SXComponentView *)self prepareComponentStyleRendererForStyle:self->_componentStyle], self->_componentStyle))
    {
      if (!self->_hasRenderedComponentStyle)
      {

        [(SXComponentView *)self renderComponentStyle];
      }
    }
  }
}

- (void)willPresentComponentWithChanges:(id)a3
{
  if ((*&a3.var0 & 0x100) != 0 || a3.var0)
  {
    self->_hasRenderedComponentStyle = 0;
  }

  v4 = [(SXComponentView *)self DOMObjectProvider];
  v5 = [(SXComponentView *)self component];
  v12 = [v4 componentStyleForComponent:v5];

  [(SXComponentView *)self setupComponentStyleRendererForStyle:v12];
  v6 = [(SXComponentView *)self DOMObjectProvider];
  v7 = [(SXComponentView *)self component];
  v8 = [v7 layout];
  v9 = [v6 componentLayoutForIdentifier:v8];
  componentLayout = self->_componentLayout;
  self->_componentLayout = v9;

  v11 = [(SXComponentView *)self component];
  [(SXComponentView *)self updateAllowHierarchyRemovalWithComponent:v11 componentStyle:v12];
}

- (void)presentComponentWithChanges:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [(SXComponentView *)self frame];
  [(SXComponentView *)self setOriginalFrame:?];
  [(SXComponentView *)self prepareComponentStyleRendererForStyle:self->_componentStyle];
  if ([(SXComponentView *)self hasAnimation]&& [(SXComponentView *)self animationsAndBehaviorsEnabled])
  {
    v4 = [(SXComponentView *)self presentationDelegate];
    v5 = [v4 animationController];
    v6 = [(SXComponentView *)self component];
    v7 = [v6 animation];
    [v5 registerComponentView:self animation:v7];
  }

  else
  {
    v4 = [(SXComponentView *)self presentationDelegate];
    v5 = [v4 animationController];
    [v5 unregisterComponentView:self];
  }

  if ([(SXComponentView *)self hasBehaviors]&& [(SXComponentView *)self animationsAndBehaviorsEnabled])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(SXComponentView *)self component];
    v9 = [v8 behaviors];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [(SXComponentView *)self presentationDelegate];
          v16 = [v15 behaviorController];
          [v16 registerComponentView:self behavior:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v18 = [(SXComponentView *)self presentationDelegate];
    v17 = [v18 behaviorController];
    [v17 unregisterComponentView:self];
  }
}

- (void)setVisibilityState:(int64_t)a3
{
  visibilityState = self->_visibilityState;
  if (visibilityState != a3)
  {
    self->_visibilityState = a3;
    [(SXComponentView *)self visibilityStateDidChangeFromState:visibilityState];
  }
}

- (void)visibilityStateDidChangeFromState:(int64_t)a3
{
  v5 = [(SXComponentView *)self component];
  v6 = [v5 animation];

  if (v6)
  {
    if ([(SXComponentView *)self visibilityState]== 1 && [(SXComponentView *)self animationsAndBehaviorsEnabled])
    {
      v7 = [(SXComponentView *)self presentationDelegate];
      v8 = [v7 animationController];
      [v8 startUpdatingAnimationForComponentView:self];
LABEL_8:

      goto LABEL_9;
    }

    v9 = [(SXComponentView *)self visibilityState];
    if (a3 == 1 && v9 == 2)
    {
      v7 = [(SXComponentView *)self presentationDelegate];
      v8 = [v7 animationController];
      [v8 stopUpdatingAnimationForComponentView:self];
      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = [(SXComponentView *)self componentStyleRenderer];
  [v10 componentVisiblityStateDidChange:a3];
}

- (CGRect)originalFrameForContentView:(id)a3 behavior:(id)a4
{
  v5 = a3;
  v6 = [(SXComponentView *)self fillView];

  if (v6 == v5)
  {
    [(SXComponentView *)self contentFrame];
  }

  else
  {
    [(SXComponentView *)self originalFrame];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)restoreBehavior
{
  v3 = [(SXComponentView *)self presentationDelegate];
  [v3 updateBehaviorForComponentView:self];
}

- (void)updateAllowHierarchyRemovalWithComponent:(id)a3 componentStyle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning();
  v9 = [v7 animation];

  v10 = [v7 behaviors];

  v11 = [v10 count];
  v12 = [v6 fill];

  v13 = [v12 attachment];
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13 == 1;
  }

  v15 = !v14;
  if (v9)
  {
    v15 = 0;
  }

  if (!v8)
  {
    v15 = 0;
  }

  self->_allowViewHierarchyRemoval = v15;
}

- (void)setRequiresThoroughFrameCalculations:(BOOL)a3
{
  self->_requiresThoroughFrameCalculations = a3;
  if (!a3)
  {
    [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SXComponentView *)self highlightView];
  v6 = v5;
  if (v3)
  {

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      highlightView = self->_highlightView;
      self->_highlightView = v7;

      v9 = [(SXComponentView *)self highlightView];
      v10 = [MEMORY[0x1E69DC888] blackColor];
      v11 = [v10 colorWithAlphaComponent:0.1];
      [v9 setBackgroundColor:v11];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __34__SXComponentView_setHighlighted___block_invoke;
    v15[3] = &unk_1E84FED18;
    v15[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
    v12 = [(SXComponentView *)self contentView];
    v13 = [(SXComponentView *)self highlightView];
    [v12 addSubview:v13];

    v14 = [(SXComponentView *)self highlightView];
    [v14 setAlpha:1.0];
  }

  else
  {
    [v5 setAlpha:0.0];

    v14 = [(SXComponentView *)self highlightView];
    [v14 removeFromSuperview];
  }

  self->_highlighted = v3;
}

void __34__SXComponentView_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) highlightView];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) highlightView];
  v3 = [*(a1 + 32) contentView];
  [v3 bounds];
  [v4 setFrame:?];
}

- (void)setupComponentStyleRendererForStyle:(id)a3
{
  v7 = a3;
  if (!self->_componentStyleRenderer || ![(SXJSONObject *)self->_componentStyle isEqual:v7])
  {
    objc_storeStrong(&self->_componentStyle, a3);
    v5 = [(SXComponentStyleRendererFactory *)self->_componentStyleRendererFactory componentStyleRendererForComponentStyle:v7];
    componentStyleRenderer = self->_componentStyleRenderer;
    self->_componentStyleRenderer = v5;

    self->_hasRenderedComponentStyle = 0;
  }
}

- (void)renderComponentStyle
{
  if (!self->_hasRenderedComponentStyle)
  {
    [(SXComponentStyleRenderer *)self->_componentStyleRenderer applyComponentStyle];
    self->_hasRenderedComponentStyle = 1;
  }
}

- (void)invalidateComponentStyle
{
  componentStyleRenderer = self->_componentStyleRenderer;
  self->_componentStyleRenderer = 0;

  self->_hasRenderedComponentStyle = 0;
}

- (CGRect)transitionContentFrame
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)transitionViewIsVisible
{
  [(SXComponentView *)self absoluteFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SXComponentView *)self viewport];
  [v11 dynamicBounds];
  v19.origin.x = v12;
  v19.origin.y = v13;
  v19.size.width = v14;
  v19.size.height = v15;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v16 = CGRectIntersectsRect(v18, v19);

  return v16;
}

- (CGRect)transitionVisibleFrame
{
  [(SXComponentView *)self absoluteFrame];
  v4 = v3;
  v6 = v5;
  [(SXComponentView *)self frame];
  if (v9 == v6 && v8 == v4)
  {
    v11 = v6;
  }

  else
  {
    v11 = v6 - v7;
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = v4;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)transitionContainerFrame
{
  v3 = [(SXComponentView *)self viewport];
  [(SXComponentView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SXComponentView *)self superview];
  [v3 convertRect:v12 fromView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)prepareForTransitionType:(unint64_t)a3
{
  v10 = [(SXComponentView *)self component];
  v4 = [v10 animation];
  if (v4)
  {
    v5 = v4;
    v6 = [(SXComponentView *)self component];
    v7 = [v6 animation];
    v8 = [v7 transitionBehavior];

    if (v8 != 1)
    {
      return;
    }

    v10 = [(SXComponentView *)self presentationDelegate];
    v9 = [v10 animationController];
    [v9 stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }
}

- (void)setAnimationsAndBehaviorsEnabled:(BOOL)a3
{
  self->_animationsAndBehaviorsEnabled = a3;
  if (!a3)
  {
    v5 = [(SXComponentView *)self component];
    v6 = [v5 animation];

    if (v6)
    {
      v7 = [(SXComponentView *)self presentationDelegate];
      v8 = [v7 animationController];
      [v8 stopUpdatingAnimationForComponentView:self finishAnimation:1];
    }

    v9 = [(SXComponentView *)self component];
    v10 = [v9 behaviors];
    v13 = [v10 firstObject];

    if (v13)
    {
      v11 = [(SXComponentView *)self presentationDelegate];
      v12 = [v11 behaviorController];
      [v12 unregisterComponentView:self];
    }
  }
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v7 = a3;
  if ([a4 isEqualToString:@"unitConverter"])
  {
    objc_storeStrong(&self->_unitConverter, a3);
  }
}

- (CGRect)absoluteFrame
{
  x = self->_absoluteFrame.origin.x;
  y = self->_absoluteFrame.origin.y;
  width = self->_absoluteFrame.size.width;
  height = self->_absoluteFrame.size.height;
  if ([(SXComponentView *)self requiresThoroughFrameCalculations])
  {
    [(SXComponentView *)self presentationFrame];
    if (!CGRectEqualToRect(v15, *MEMORY[0x1E695F058]))
    {
      [(SXComponentView *)self presentationFrame];
      x = v7;
      y = v8;
      width = v9;
      height = v10;
    }
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setAbsoluteFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  self->_absoluteFrame.origin.x = x;
  self->_absoluteFrame.origin.y = y;
  self->_absoluteFrame.size.width = width;
  self->_absoluteFrame.size.height = height;
}

- (id)classification
{
  v2 = [(SXComponentView *)self component];
  v3 = [v2 classification];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SXComponentView *)self component];
  v6 = [v5 identifier];
  [(SXComponentView *)self contentFrame];
  v7 = NSStringFromCGRect(v11);
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: '%@', contentFrame: %@>", v4, self, v6, v7];;

  return v8;
}

- (void)assistiveTechnologyStatusDidChange
{
  v4 = [(SXComponentView *)self component];
  v3 = [(SXComponentView *)self componentStyle];
  [(SXComponentView *)self updateAllowHierarchyRemovalWithComponent:v4 componentStyle:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = SXComponentView;
  v5 = [(SXComponentView *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 != self)
  {
    v6 = [(SXComponentView *)self contentView];
    if (v5 != v6)
    {
      v7 = [(SXComponentView *)self backgroundView];
      v8 = v7;
      if (v5 != v7)
      {
        v9 = [(SXComponentView *)self fillView];

        if (v5 != v9)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:

  v5 = 0;
LABEL_9:

  return v5;
}

- (SXPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (SXFillView)fillView
{
  WeakRetained = objc_loadWeakRetained(&self->_fillView);

  return WeakRetained;
}

- (UIEdgeInsets)componentLayoutMargins
{
  top = self->_componentLayoutMargins.top;
  left = self->_componentLayoutMargins.left;
  bottom = self->_componentLayoutMargins.bottom;
  right = self->_componentLayoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)borderInsets
{
  top = self->_borderInsets.top;
  left = self->_borderInsets.left;
  bottom = self->_borderInsets.bottom;
  right = self->_borderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backgroundViewFrame
{
  x = self->_backgroundViewFrame.origin.x;
  y = self->_backgroundViewFrame.origin.y;
  width = self->_backgroundViewFrame.size.width;
  height = self->_backgroundViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)originalFrame
{
  x = self->_originalFrame.origin.x;
  y = self->_originalFrame.origin.y;
  width = self->_originalFrame.size.width;
  height = self->_originalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SXComponentHosting)componentHost
{
  WeakRetained = objc_loadWeakRetained(&self->_componentHost);

  return WeakRetained;
}

- (CGRect)presentationFrame
{
  x = self->_presentationFrame.origin.x;
  y = self->_presentationFrame.origin.y;
  width = self->_presentationFrame.size.width;
  height = self->_presentationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end