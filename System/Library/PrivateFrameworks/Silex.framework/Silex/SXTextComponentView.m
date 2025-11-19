@interface SXTextComponentView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)absoluteTextViewFrame;
- (CGSize)calculatedSize;
- (SXTangierController)tangierController;
- (SXTextComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 tangierController:(id)a7;
- (id)accessibilityContextualLabelForTextView:(id)a3;
- (id)accessibilityCustomRotorMembershipForTextView:(id)a3;
- (id)componentIdentifierForTextView:(id)a3;
- (id)textRulesForTextView:(id)a3;
- (id)textSource;
- (void)animationDidFinish:(id)a3;
- (void)animationDidStart:(id)a3;
- (void)didApplyBehavior:(id)a3;
- (void)didMoveToWindow;
- (void)presentComponentWithChanges:(id)a3;
- (void)provideInfosLayoutTo:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)setAbsoluteFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPresentationFrame:(CGRect)a3;
- (void)setupTextView;
@end

@implementation SXTextComponentView

- (SXTextComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 tangierController:(id)a7
{
  v12 = a7;
  v16.receiver = self;
  v16.super_class = SXTextComponentView;
  v13 = [(SXComponentView *)&v16 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_tangierController, v12);
  }

  return v14;
}

- (void)presentComponentWithChanges:(id)a3
{
  v12.receiver = self;
  v12.super_class = SXTextComponentView;
  [(SXComponentView *)&v12 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  [(SXTextComponentView *)self setupTextView];
  v4 = [(SXTextComponentView *)self textView];
  [(SXComponentView *)self contentFrame];
  [v4 setFrame:?];

  v5 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [v5 setFrameInCanvas:?];

  v6 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self frame];
  [v6 setParentFrame:?];

  v7 = [(SXTextComponentView *)self textView];
  [v7 invalidate];

  v8 = [(SXTextComponentView *)self textView];
  v9 = [v8 superview];

  if (!v9)
  {
    v10 = [(SXComponentView *)self contentView];
    v11 = [(SXTextComponentView *)self textView];
    [v10 addSubview:v11];
  }
}

- (void)didMoveToWindow
{
  v16.receiver = self;
  v16.super_class = SXTextComponentView;
  [(SXComponentView *)&v16 didMoveToWindow];
  v3 = [(SXTextComponentView *)self window];

  v4 = [(SXTextComponentView *)self textView];
  v5 = v4;
  if (!v3)
  {

    if (!v5)
    {
      return;
    }

    v13 = [(SXComponentView *)self presentationDelegate];
    v14 = [v13 tangierController];
    v15 = [(SXTextComponentView *)self textView];
    [v14 didStopPresentingTextView:v15];
    goto LABEL_8;
  }

  v6 = [v4 rep];
  v7 = [v6 updateFromVisualPosition];

  if (v7)
  {
    v8 = [(SXTextComponentView *)self textView];
    v9 = [v8 rep];
    v10 = [v9 icc];
    [v10 invalidateLayers];
  }

  v11 = [(SXTextComponentView *)self textView];

  if (v11)
  {
    v12 = [(SXTextComponentView *)self textView];
    [(SXTextComponentView *)self absoluteTextViewFrame];
    [v12 setFrameInCanvas:?];

    v13 = [(SXComponentView *)self presentationDelegate];
    v14 = [v13 tangierController];
    v15 = [(SXTextComponentView *)self textView];
    [v14 didStartPresentingTextView:v15];
LABEL_8:
  }
}

- (void)setAbsoluteFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setAbsoluteFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [v4 setFrameInCanvas:?];
}

- (void)setPresentationFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setPresentationFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [v4 setFrameInCanvas:?];
}

- (void)setupTextView
{
  v3 = [(SXTextComponentView *)self textView];

  if (!v3)
  {
    v4 = objc_alloc_init(SXTextView);
    textView = self->_textView;
    self->_textView = v4;

    v6 = self->_textView;
    [(SXTextComponentView *)self absoluteTextViewFrame];
    [(SXTextView *)v6 setFrameInCanvas:?];
    [(SXTextView *)self->_textView setDelegate:self];
    v7 = [(SXComponentView *)self component];
    v8 = [v7 classification];
    v9 = [v8 textRules];
    -[SXTextView setIsSelectable:](self->_textView, "setIsSelectable:", [v9 isSelectable]);

    v12 = [(SXComponentView *)self presentationDelegate];
    v10 = [v12 tangierController];
    v11 = [(SXTextComponentView *)self textView];
    [v10 didStartPresentingTextView:v11];
  }
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SXTextComponentView;
  v7 = a4;
  [(SXComponentView *)&v10 receivedInfo:v6 fromLayoutingPhaseWithIdentifier:v7];
  v8 = [v7 isEqualToString:{@"TextLayouter", v10.receiver, v10.super_class}];

  if (v8)
  {
    [(SXTextComponentView *)self setupTextView];
    v9 = [(SXTextComponentView *)self textView];
    [v9 setTextLayouter:v6];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v39 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = SXTextComponentView;
  v7 = [(SXTextComponentView *)&v37 pointInside:a4 withEvent:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [(SXTextComponentView *)self textView];
  v9 = [v8 textLayouter];
  v10 = [v9 exclusionPaths];

  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(SXTextExclusionPath *)v15 path];
        [v16 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v25 = [(SXTextExclusionPath *)v15 actualPosition];
        [(SXTextExclusionPath *)v15 actualPosition];
        v27 = v26;
        v41.origin.x = v18;
        v41.origin.y = v20;
        v41.size.width = v22;
        v41.size.height = v24;
        v42 = CGRectOffset(v41, v25, v27);
        v28 = v42.origin.x;
        v29 = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;

        v43.origin.x = v28;
        v43.origin.y = v29;
        v43.size.width = width;
        v43.size.height = height;
        v40.x = x;
        v40.y = y;
        if (CGRectContainsPoint(v43, v40))
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (CGRect)absoluteTextViewFrame
{
  [(SXComponentView *)self absoluteFrame];
  MinX = CGRectGetMinX(v17);
  v4 = [(SXComponentView *)self contentView];
  [v4 frame];
  v5 = MinX + CGRectGetMinX(v18);
  [(SXComponentView *)self contentFrame];
  v6 = v5 + CGRectGetMinX(v19);
  [(SXComponentView *)self absoluteFrame];
  MinY = CGRectGetMinY(v20);
  v8 = [(SXComponentView *)self contentView];
  [v8 frame];
  v9 = MinY + CGRectGetMinY(v21);
  [(SXComponentView *)self contentFrame];
  v10 = v9 + CGRectGetMinY(v22);
  [(SXComponentView *)self contentFrame];
  Width = CGRectGetWidth(v23);
  [(SXComponentView *)self contentFrame];
  Height = CGRectGetHeight(v24);

  v13 = v6;
  v14 = v10;
  v15 = Width;
  v16 = Height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)textSource
{
  v2 = [(SXTextComponentView *)self textView];
  v3 = [v2 textSource];

  return v3;
}

- (void)animationDidStart:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 animationDidStart:a3];
  v4 = [(SXTextComponentView *)self textView];
  [v4 setMightBeVisuallyMisplaced:1];
}

- (void)animationDidFinish:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 animationDidFinish:a3];
  v4 = [(SXTextComponentView *)self textView];
  [v4 setMightBeVisuallyMisplaced:0];
}

- (void)didApplyBehavior:(id)a3
{
  v6.receiver = self;
  v6.super_class = SXTextComponentView;
  [(SXComponentView *)&v6 didApplyBehavior:?];
  v5 = [(SXTextComponentView *)self textView];
  [v5 setMightBeVisuallyMisplaced:a3 != 0];
}

- (id)componentIdentifierForTextView:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 identifier];

  return v4;
}

- (id)textRulesForTextView:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 classification];
  v5 = [v4 textRules];

  return v5;
}

- (id)accessibilityCustomRotorMembershipForTextView:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 classification];
  v5 = [v4 accessibilityCustomRotorMembership];

  return v5;
}

- (id)accessibilityContextualLabelForTextView:(id)a3
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 classification];
  v5 = [v4 accessibilityContextualLabel];

  return v5;
}

- (void)provideInfosLayoutTo:(id)a3
{
  v4 = a3;
  v5 = [(SXTextComponentView *)self textView];
  [v5 provideInfosLayoutTo:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setHighlighted:a3];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SXTextComponentView_setHighlighted___block_invoke;
  v4[3] = &unk_1E84FED18;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
}

void __38__SXTextComponentView_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) highlightView];
  v3 = [v2 layer];
  [v3 setCornerRadius:5.0];

  v5 = [*(a1 + 32) highlightView];
  v4 = [*(a1 + 32) highlightView];
  [v4 frame];
  v8 = CGRectInset(v7, -10.0, -10.0);
  [v5 setFrame:{v8.origin.x, v8.origin.y, v8.size.width, v8.size.height}];
}

- (SXTangierController)tangierController
{
  WeakRetained = objc_loadWeakRetained(&self->_tangierController);

  return WeakRetained;
}

- (CGSize)calculatedSize
{
  width = self->_calculatedSize.width;
  height = self->_calculatedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end