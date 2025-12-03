@interface SXTextComponentView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)absoluteTextViewFrame;
- (CGSize)calculatedSize;
- (SXTangierController)tangierController;
- (SXTextComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory tangierController:(id)controller;
- (id)accessibilityContextualLabelForTextView:(id)view;
- (id)accessibilityCustomRotorMembershipForTextView:(id)view;
- (id)componentIdentifierForTextView:(id)view;
- (id)textRulesForTextView:(id)view;
- (id)textSource;
- (void)animationDidFinish:(id)finish;
- (void)animationDidStart:(id)start;
- (void)didApplyBehavior:(id)behavior;
- (void)didMoveToWindow;
- (void)presentComponentWithChanges:(id)changes;
- (void)provideInfosLayoutTo:(id)to;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)setAbsoluteFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPresentationFrame:(CGRect)frame;
- (void)setupTextView;
@end

@implementation SXTextComponentView

- (SXTextComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory tangierController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = SXTextComponentView;
  v13 = [(SXComponentView *)&v16 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_tangierController, controllerCopy);
  }

  return v14;
}

- (void)presentComponentWithChanges:(id)changes
{
  v12.receiver = self;
  v12.super_class = SXTextComponentView;
  [(SXComponentView *)&v12 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  [(SXTextComponentView *)self setupTextView];
  textView = [(SXTextComponentView *)self textView];
  [(SXComponentView *)self contentFrame];
  [textView setFrame:?];

  textView2 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [textView2 setFrameInCanvas:?];

  textView3 = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self frame];
  [textView3 setParentFrame:?];

  textView4 = [(SXTextComponentView *)self textView];
  [textView4 invalidate];

  textView5 = [(SXTextComponentView *)self textView];
  superview = [textView5 superview];

  if (!superview)
  {
    contentView = [(SXComponentView *)self contentView];
    textView6 = [(SXTextComponentView *)self textView];
    [contentView addSubview:textView6];
  }
}

- (void)didMoveToWindow
{
  v16.receiver = self;
  v16.super_class = SXTextComponentView;
  [(SXComponentView *)&v16 didMoveToWindow];
  window = [(SXTextComponentView *)self window];

  textView = [(SXTextComponentView *)self textView];
  v5 = textView;
  if (!window)
  {

    if (!v5)
    {
      return;
    }

    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    tangierController = [presentationDelegate tangierController];
    textView2 = [(SXTextComponentView *)self textView];
    [tangierController didStopPresentingTextView:textView2];
    goto LABEL_8;
  }

  v6 = [textView rep];
  updateFromVisualPosition = [v6 updateFromVisualPosition];

  if (updateFromVisualPosition)
  {
    textView3 = [(SXTextComponentView *)self textView];
    v9 = [textView3 rep];
    v10 = [v9 icc];
    [v10 invalidateLayers];
  }

  textView4 = [(SXTextComponentView *)self textView];

  if (textView4)
  {
    textView5 = [(SXTextComponentView *)self textView];
    [(SXTextComponentView *)self absoluteTextViewFrame];
    [textView5 setFrameInCanvas:?];

    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    tangierController = [presentationDelegate tangierController];
    textView2 = [(SXTextComponentView *)self textView];
    [tangierController didStartPresentingTextView:textView2];
LABEL_8:
  }
}

- (void)setAbsoluteFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setAbsoluteFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  textView = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [textView setFrameInCanvas:?];
}

- (void)setPresentationFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setPresentationFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  textView = [(SXTextComponentView *)self textView];
  [(SXTextComponentView *)self absoluteTextViewFrame];
  [textView setFrameInCanvas:?];
}

- (void)setupTextView
{
  textView = [(SXTextComponentView *)self textView];

  if (!textView)
  {
    v4 = objc_alloc_init(SXTextView);
    textView = self->_textView;
    self->_textView = v4;

    v6 = self->_textView;
    [(SXTextComponentView *)self absoluteTextViewFrame];
    [(SXTextView *)v6 setFrameInCanvas:?];
    [(SXTextView *)self->_textView setDelegate:self];
    component = [(SXComponentView *)self component];
    classification = [component classification];
    textRules = [classification textRules];
    -[SXTextView setIsSelectable:](self->_textView, "setIsSelectable:", [textRules isSelectable]);

    presentationDelegate = [(SXComponentView *)self presentationDelegate];
    tangierController = [presentationDelegate tangierController];
    textView2 = [(SXTextComponentView *)self textView];
    [tangierController didStartPresentingTextView:textView2];
  }
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = SXTextComponentView;
  identifierCopy = identifier;
  [(SXComponentView *)&v10 receivedInfo:infoCopy fromLayoutingPhaseWithIdentifier:identifierCopy];
  v8 = [identifierCopy isEqualToString:{@"TextLayouter", v10.receiver, v10.super_class}];

  if (v8)
  {
    [(SXTextComponentView *)self setupTextView];
    textView = [(SXTextComponentView *)self textView];
    [textView setTextLayouter:infoCopy];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v39 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = SXTextComponentView;
  v7 = [(SXTextComponentView *)&v37 pointInside:event withEvent:?];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  textView = [(SXTextComponentView *)self textView];
  textLayouter = [textView textLayouter];
  exclusionPaths = [textLayouter exclusionPaths];

  v11 = [exclusionPaths countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(exclusionPaths);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        path = [(SXTextExclusionPath *)v15 path];
        [path bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        actualPosition = [(SXTextExclusionPath *)v15 actualPosition];
        [(SXTextExclusionPath *)v15 actualPosition];
        v27 = v26;
        v41.origin.x = v18;
        v41.origin.y = v20;
        v41.size.width = v22;
        v41.size.height = v24;
        v42 = CGRectOffset(v41, actualPosition, v27);
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

      v12 = [exclusionPaths countByEnumeratingWithState:&v33 objects:v38 count:16];
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
  contentView = [(SXComponentView *)self contentView];
  [contentView frame];
  v5 = MinX + CGRectGetMinX(v18);
  [(SXComponentView *)self contentFrame];
  v6 = v5 + CGRectGetMinX(v19);
  [(SXComponentView *)self absoluteFrame];
  MinY = CGRectGetMinY(v20);
  contentView2 = [(SXComponentView *)self contentView];
  [contentView2 frame];
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
  textView = [(SXTextComponentView *)self textView];
  textSource = [textView textSource];

  return textSource;
}

- (void)animationDidStart:(id)start
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 animationDidStart:start];
  textView = [(SXTextComponentView *)self textView];
  [textView setMightBeVisuallyMisplaced:1];
}

- (void)animationDidFinish:(id)finish
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 animationDidFinish:finish];
  textView = [(SXTextComponentView *)self textView];
  [textView setMightBeVisuallyMisplaced:0];
}

- (void)didApplyBehavior:(id)behavior
{
  v6.receiver = self;
  v6.super_class = SXTextComponentView;
  [(SXComponentView *)&v6 didApplyBehavior:?];
  textView = [(SXTextComponentView *)self textView];
  [textView setMightBeVisuallyMisplaced:behavior != 0];
}

- (id)componentIdentifierForTextView:(id)view
{
  component = [(SXComponentView *)self component];
  identifier = [component identifier];

  return identifier;
}

- (id)textRulesForTextView:(id)view
{
  component = [(SXComponentView *)self component];
  classification = [component classification];
  textRules = [classification textRules];

  return textRules;
}

- (id)accessibilityCustomRotorMembershipForTextView:(id)view
{
  component = [(SXComponentView *)self component];
  classification = [component classification];
  accessibilityCustomRotorMembership = [classification accessibilityCustomRotorMembership];

  return accessibilityCustomRotorMembership;
}

- (id)accessibilityContextualLabelForTextView:(id)view
{
  component = [(SXComponentView *)self component];
  classification = [component classification];
  accessibilityContextualLabel = [classification accessibilityContextualLabel];

  return accessibilityContextualLabel;
}

- (void)provideInfosLayoutTo:(id)to
{
  toCopy = to;
  textView = [(SXTextComponentView *)self textView];
  [textView provideInfosLayoutTo:toCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = SXTextComponentView;
  [(SXComponentView *)&v5 setHighlighted:highlighted];
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