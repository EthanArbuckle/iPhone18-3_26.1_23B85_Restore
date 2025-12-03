@interface SXComponentView
- (BOOL)transitionViewIsVisible;
- (CGRect)absoluteFrame;
- (CGRect)backgroundViewFrame;
- (CGRect)contentFrame;
- (CGRect)originalFrame;
- (CGRect)originalFrameForContentView:(id)view behavior:(id)behavior;
- (CGRect)presentationFrame;
- (CGRect)transitionContainerFrame;
- (CGRect)transitionContentFrame;
- (CGRect)transitionVisibleFrame;
- (NSString)description;
- (SXComponentHosting)componentHost;
- (SXComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory;
- (SXFillView)fillView;
- (SXPresentationDelegate)presentationDelegate;
- (UIEdgeInsets)borderInsets;
- (UIEdgeInsets)componentLayoutMargins;
- (id)classification;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)assistiveTechnologyStatusDidChange;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didReceiveMemoryWarning;
- (void)invalidateComponentStyle;
- (void)loadComponent:(id)component;
- (void)prepareForTransitionType:(unint64_t)type;
- (void)presentComponentWithChanges:(id)changes;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)renderComponentStyle;
- (void)renderContentsIfNeeded;
- (void)restoreBehavior;
- (void)setAbsoluteFrame:(CGRect)frame;
- (void)setAnimationsAndBehaviorsEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRequiresThoroughFrameCalculations:(BOOL)calculations;
- (void)setVisibilityState:(int64_t)state;
- (void)setupComponentStyleRendererForStyle:(id)style;
- (void)updateAllowHierarchyRemovalWithComponent:(id)component componentStyle:(id)style;
- (void)visibilityStateDidChangeFromState:(int64_t)state;
- (void)willPresentComponentWithChanges:(id)changes;
@end

@implementation SXComponentView

- (SXComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory
{
  providerCopy = provider;
  viewportCopy = viewport;
  delegateCopy = delegate;
  factoryCopy = factory;
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
    objc_storeStrong(&v19->_DOMObjectProvider, provider);
    objc_storeStrong(&v20->_viewport, viewport);
    objc_storeWeak(&v20->_presentationDelegate, delegateCopy);
    objc_storeStrong(&v20->_componentStyleRendererFactory, factory);
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
    layer = [(SXComponentView *)v20 layer];
    [layer setAllowsGroupOpacity:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];
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

- (void)loadComponent:(id)component
{
  objc_storeStrong(&self->_component, component);
  componentCopy = component;
  self->_animationsAndBehaviorsEnabled = 1;
  behaviors = [componentCopy behaviors];
  self->_hasBehaviors = [behaviors count] != 0;

  animation = [componentCopy animation];

  self->_hasAnimation = animation != 0;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SXComponentView;
  [(SXComponentView *)&v4 didMoveToWindow];
  window = [(SXComponentView *)self window];

  if (!window)
  {
    [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }
}

- (void)dealloc
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  behaviorController = [presentationDelegate behaviorController];
  [behaviorController unregisterComponentView:self];

  presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
  animationController = [presentationDelegate2 animationController];
  [animationController unregisterComponentView:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

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

- (void)willPresentComponentWithChanges:(id)changes
{
  if ((*&changes.var0 & 0x100) != 0 || changes.var0)
  {
    self->_hasRenderedComponentStyle = 0;
  }

  dOMObjectProvider = [(SXComponentView *)self DOMObjectProvider];
  component = [(SXComponentView *)self component];
  v12 = [dOMObjectProvider componentStyleForComponent:component];

  [(SXComponentView *)self setupComponentStyleRendererForStyle:v12];
  dOMObjectProvider2 = [(SXComponentView *)self DOMObjectProvider];
  component2 = [(SXComponentView *)self component];
  layout = [component2 layout];
  v9 = [dOMObjectProvider2 componentLayoutForIdentifier:layout];
  componentLayout = self->_componentLayout;
  self->_componentLayout = v9;

  component3 = [(SXComponentView *)self component];
  [(SXComponentView *)self updateAllowHierarchyRemovalWithComponent:component3 componentStyle:v12];
}

- (void)presentComponentWithChanges:(id)changes
{
  v24 = *MEMORY[0x1E69E9840];
  [(SXComponentView *)self frame];
  [(SXComponentView *)self setOriginalFrame:?];
  [(SXComponentView *)self prepareComponentStyleRendererForStyle:self->_componentStyle];
  if ([(SXComponentView *)self hasAnimation]&& [(SXComponentView *)self animationsAndBehaviorsEnabled])
  {
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    animationController = [presentationDelegate animationController];
    component = [(SXComponentView *)self component];
    animation = [component animation];
    [animationController registerComponentView:self animation:animation];
  }

  else
  {
    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    animationController = [presentationDelegate animationController];
    [animationController unregisterComponentView:self];
  }

  if ([(SXComponentView *)self hasBehaviors]&& [(SXComponentView *)self animationsAndBehaviorsEnabled])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    component2 = [(SXComponentView *)self component];
    behaviors = [component2 behaviors];

    v10 = [behaviors countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(behaviors);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
          behaviorController = [presentationDelegate2 behaviorController];
          [behaviorController registerComponentView:self behavior:v14];
        }

        v11 = [behaviors countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    presentationDelegate3 = [(SXComponentView *)self presentationDelegate];
    behaviorController2 = [presentationDelegate3 behaviorController];
    [behaviorController2 unregisterComponentView:self];
  }
}

- (void)setVisibilityState:(int64_t)state
{
  visibilityState = self->_visibilityState;
  if (visibilityState != state)
  {
    self->_visibilityState = state;
    [(SXComponentView *)self visibilityStateDidChangeFromState:visibilityState];
  }
}

- (void)visibilityStateDidChangeFromState:(int64_t)state
{
  component = [(SXComponentView *)self component];
  animation = [component animation];

  if (animation)
  {
    if ([(SXComponentView *)self visibilityState]== 1 && [(SXComponentView *)self animationsAndBehaviorsEnabled])
    {
      presentationDelegate = [(SXComponentView *)self presentationDelegate];
      animationController = [presentationDelegate animationController];
      [animationController startUpdatingAnimationForComponentView:self];
LABEL_8:

      goto LABEL_9;
    }

    visibilityState = [(SXComponentView *)self visibilityState];
    if (state == 1 && visibilityState == 2)
    {
      presentationDelegate = [(SXComponentView *)self presentationDelegate];
      animationController = [presentationDelegate animationController];
      [animationController stopUpdatingAnimationForComponentView:self];
      goto LABEL_8;
    }
  }

LABEL_9:
  componentStyleRenderer = [(SXComponentView *)self componentStyleRenderer];
  [componentStyleRenderer componentVisiblityStateDidChange:state];
}

- (CGRect)originalFrameForContentView:(id)view behavior:(id)behavior
{
  viewCopy = view;
  fillView = [(SXComponentView *)self fillView];

  if (fillView == viewCopy)
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
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  [presentationDelegate updateBehaviorForComponentView:self];
}

- (void)updateAllowHierarchyRemovalWithComponent:(id)component componentStyle:(id)style
{
  styleCopy = style;
  componentCopy = component;
  v8 = !UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning();
  animation = [componentCopy animation];

  behaviors = [componentCopy behaviors];

  v11 = [behaviors count];
  fill = [styleCopy fill];

  attachment = [fill attachment];
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v14 = attachment == 1;
  }

  v15 = !v14;
  if (animation)
  {
    v15 = 0;
  }

  if (!v8)
  {
    v15 = 0;
  }

  self->_allowViewHierarchyRemoval = v15;
}

- (void)setRequiresThoroughFrameCalculations:(BOOL)calculations
{
  self->_requiresThoroughFrameCalculations = calculations;
  if (!calculations)
  {
    [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  highlightView = [(SXComponentView *)self highlightView];
  v6 = highlightView;
  if (highlightedCopy)
  {

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      highlightView = self->_highlightView;
      self->_highlightView = v7;

      highlightView2 = [(SXComponentView *)self highlightView];
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v11 = [blackColor colorWithAlphaComponent:0.1];
      [highlightView2 setBackgroundColor:v11];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __34__SXComponentView_setHighlighted___block_invoke;
    v15[3] = &unk_1E84FED18;
    v15[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
    contentView = [(SXComponentView *)self contentView];
    highlightView3 = [(SXComponentView *)self highlightView];
    [contentView addSubview:highlightView3];

    highlightView4 = [(SXComponentView *)self highlightView];
    [highlightView4 setAlpha:1.0];
  }

  else
  {
    [highlightView setAlpha:0.0];

    highlightView4 = [(SXComponentView *)self highlightView];
    [highlightView4 removeFromSuperview];
  }

  self->_highlighted = highlightedCopy;
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

- (void)setupComponentStyleRendererForStyle:(id)style
{
  styleCopy = style;
  if (!self->_componentStyleRenderer || ![(SXJSONObject *)self->_componentStyle isEqual:styleCopy])
  {
    objc_storeStrong(&self->_componentStyle, style);
    v5 = [(SXComponentStyleRendererFactory *)self->_componentStyleRendererFactory componentStyleRendererForComponentStyle:styleCopy];
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
  viewport = [(SXComponentView *)self viewport];
  [viewport dynamicBounds];
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
  viewport = [(SXComponentView *)self viewport];
  [(SXComponentView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  superview = [(SXComponentView *)self superview];
  [viewport convertRect:superview fromView:{v5, v7, v9, v11}];
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

- (void)prepareForTransitionType:(unint64_t)type
{
  component = [(SXComponentView *)self component];
  animation = [component animation];
  if (animation)
  {
    v5 = animation;
    component2 = [(SXComponentView *)self component];
    animation2 = [component2 animation];
    transitionBehavior = [animation2 transitionBehavior];

    if (transitionBehavior != 1)
    {
      return;
    }

    component = [(SXComponentView *)self presentationDelegate];
    animationController = [component animationController];
    [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];
  }
}

- (void)setAnimationsAndBehaviorsEnabled:(BOOL)enabled
{
  self->_animationsAndBehaviorsEnabled = enabled;
  if (!enabled)
  {
    component = [(SXComponentView *)self component];
    animation = [component animation];

    if (animation)
    {
      presentationDelegate = [(SXComponentView *)self presentationDelegate];
      animationController = [presentationDelegate animationController];
      [animationController stopUpdatingAnimationForComponentView:self finishAnimation:1];
    }

    component2 = [(SXComponentView *)self component];
    behaviors = [component2 behaviors];
    firstObject = [behaviors firstObject];

    if (firstObject)
    {
      presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
      behaviorController = [presentationDelegate2 behaviorController];
      [behaviorController unregisterComponentView:self];
    }
  }
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  if ([identifier isEqualToString:@"unitConverter"])
  {
    objc_storeStrong(&self->_unitConverter, info);
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

- (void)setAbsoluteFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SXComponentView *)self setPresentationFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  self->_absoluteFrame.origin.x = x;
  self->_absoluteFrame.origin.y = y;
  self->_absoluteFrame.size.width = width;
  self->_absoluteFrame.size.height = height;
}

- (id)classification
{
  component = [(SXComponentView *)self component];
  classification = [component classification];

  return classification;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  component = [(SXComponentView *)self component];
  identifier = [component identifier];
  [(SXComponentView *)self contentFrame];
  v7 = NSStringFromCGRect(v11);
  v8 = [v3 stringWithFormat:@"<%@: %p identifier: '%@', contentFrame: %@>", v4, self, identifier, v7];;

  return v8;
}

- (void)assistiveTechnologyStatusDidChange
{
  component = [(SXComponentView *)self component];
  componentStyle = [(SXComponentView *)self componentStyle];
  [(SXComponentView *)self updateAllowHierarchyRemovalWithComponent:component componentStyle:componentStyle];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SXComponentView;
  v5 = [(SXComponentView *)&v11 hitTest:event withEvent:test.x, test.y];
  if (v5 != self)
  {
    contentView = [(SXComponentView *)self contentView];
    if (v5 != contentView)
    {
      backgroundView = [(SXComponentView *)self backgroundView];
      v8 = backgroundView;
      if (v5 != backgroundView)
      {
        fillView = [(SXComponentView *)self fillView];

        if (v5 != fillView)
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