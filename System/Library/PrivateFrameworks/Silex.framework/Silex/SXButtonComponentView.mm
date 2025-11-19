@interface SXButtonComponentView
- (BOOL)accessibilityActivate;
- (CGRect)absoluteTextViewFrame;
- (CGRect)typographicBounds;
- (SXButtonComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6;
- (id)accessibilityContextualLabelForTextView:(id)a3;
- (id)accessibilityCustomRotorMembershipForTextView:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)componentIdentifierForTextView:(id)a3;
- (id)textRulesForTextView:(id)a3;
- (void)didMoveToSuperview;
- (void)presentComponentWithChanges:(id)a3;
- (void)provideInfosLayoutTo:(id)a3;
- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4;
- (void)setAbsoluteFrame:(CGRect)a3;
- (void)setPresentationFrame:(CGRect)a3;
@end

@implementation SXButtonComponentView

- (SXButtonComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6
{
  v11.receiver = self;
  v11.super_class = SXButtonComponentView;
  v6 = [(SXComponentView *)&v11 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6];
  if (v6)
  {
    v7 = objc_alloc_init(SXTextView);
    textView = v6->_textView;
    v6->_textView = v7;

    [(SXTextView *)v6->_textView setDelegate:v6];
    v9 = [(SXComponentView *)v6 contentView];
    [v9 addSubview:v6->_textView];

    [(SXButtonComponentView *)v6 setIsAccessibilityElement:1];
    [(SXButtonComponentView *)v6 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(SXButtonComponentView *)self textView];
  v4 = [v3 rep];
  v5 = [v4 accessibilityLabel];

  if (!v5)
  {
    v6 = [(SXButtonComponentView *)self textView];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityValue
{
  v2 = [(SXButtonComponentView *)self textView];
  v3 = [v2 rep];
  v4 = [v3 accessibilityValue];

  return v4;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = SXButtonComponentView;
  v4 = [(SXButtonComponentView *)&v9 accessibilityUserInputLabels];
  v5 = [v3 initWithArray:v4];

  v6 = [(SXButtonComponentView *)self accessibilityLabel];
  if (v6)
  {
    [v5 addObject:v6];
  }

  v7 = [(SXButtonComponentView *)self accessibilityValue];
  if (v7)
  {
    [v5 addObject:v7];
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  v3 = [(SXComponentView *)self presentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXComponentView *)self presentationDelegate];
    v6 = [v5 accessibilityShouldHandleInteractionForView:self];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SXButtonComponentView;
    return [(SXButtonComponentView *)&v8 accessibilityActivate];
  }
}

- (id)accessibilityHint
{
  v2 = [(SXButtonComponentView *)self textView];
  v3 = [v2 accessibilityHint];

  return v3;
}

- (void)presentComponentWithChanges:(id)a3
{
  v16.receiver = self;
  v16.super_class = SXButtonComponentView;
  [(SXComponentView *)&v16 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  v4 = [(SXButtonComponentView *)self textView];
  [(SXComponentView *)self contentFrame];
  v6 = v5;
  [(SXComponentView *)self contentFrame];
  v8 = v7;
  [(SXButtonComponentView *)self typographicBounds];
  v10 = v8 - v9;
  [(SXComponentView *)self contentFrame];
  v12 = v11;
  [(SXComponentView *)self contentFrame];
  [v4 setFrame:{v6, v10, v12}];

  v13 = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [v13 setFrameInCanvas:?];

  v14 = [(SXButtonComponentView *)self textView];
  [(SXComponentView *)self absoluteFrame];
  [v14 setParentFrame:?];

  v15 = [(SXButtonComponentView *)self textView];
  [v15 invalidate];
}

- (void)didMoveToSuperview
{
  v7.receiver = self;
  v7.super_class = SXButtonComponentView;
  [(SXButtonComponentView *)&v7 didMoveToSuperview];
  v3 = [(SXButtonComponentView *)self superview];

  v4 = [(SXComponentView *)self presentationDelegate];
  v5 = [v4 tangierController];
  v6 = [(SXButtonComponentView *)self textView];
  if (v3)
  {
    [v5 didStartPresentingTextView:v6];
  }

  else
  {
    [v5 didStopPresentingTextView:v6];
  }
}

- (void)setAbsoluteFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SXButtonComponentView;
  [(SXComponentView *)&v5 setAbsoluteFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [v4 setFrameInCanvas:?];
}

- (void)setPresentationFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SXButtonComponentView;
  [(SXComponentView *)&v5 setPresentationFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [v4 setFrameInCanvas:?];
}

- (void)receivedInfo:(id)a3 fromLayoutingPhaseWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = SXButtonComponentView;
  [(SXComponentView *)&v9 receivedInfo:v6 fromLayoutingPhaseWithIdentifier:v7];
  if ([v7 isEqualToString:@"TextLayouter"])
  {
    v8 = [(SXButtonComponentView *)self textView];
    [v8 setTextLayouter:v6];
  }

  else if ([v7 isEqualToString:@"TypographicBounds"])
  {
    [v6 CGRectValue];
    [(SXButtonComponentView *)self setTypographicBounds:?];
  }
}

- (void)provideInfosLayoutTo:(id)a3
{
  v4 = a3;
  v5 = [(SXButtonComponentView *)self textView];
  [v5 provideInfosLayoutTo:v4];
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
  v4 = [(SXComponentView *)self component];
  v5 = [v4 accessibilityLabel];

  if (!v5)
  {
    v6 = [(SXComponentView *)self component];
    v7 = [v6 classification];
    v5 = [v7 accessibilityContextualLabel];
  }

  return v5;
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

- (CGRect)typographicBounds
{
  x = self->_typographicBounds.origin.x;
  y = self->_typographicBounds.origin.y;
  width = self->_typographicBounds.size.width;
  height = self->_typographicBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end