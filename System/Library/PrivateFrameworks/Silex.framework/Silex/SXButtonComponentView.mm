@interface SXButtonComponentView
- (BOOL)accessibilityActivate;
- (CGRect)absoluteTextViewFrame;
- (CGRect)typographicBounds;
- (SXButtonComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory;
- (id)accessibilityContextualLabelForTextView:(id)view;
- (id)accessibilityCustomRotorMembershipForTextView:(id)view;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (id)componentIdentifierForTextView:(id)view;
- (id)textRulesForTextView:(id)view;
- (void)didMoveToSuperview;
- (void)presentComponentWithChanges:(id)changes;
- (void)provideInfosLayoutTo:(id)to;
- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier;
- (void)setAbsoluteFrame:(CGRect)frame;
- (void)setPresentationFrame:(CGRect)frame;
@end

@implementation SXButtonComponentView

- (SXButtonComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory
{
  v11.receiver = self;
  v11.super_class = SXButtonComponentView;
  v6 = [(SXComponentView *)&v11 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory];
  if (v6)
  {
    v7 = objc_alloc_init(SXTextView);
    textView = v6->_textView;
    v6->_textView = v7;

    [(SXTextView *)v6->_textView setDelegate:v6];
    contentView = [(SXComponentView *)v6 contentView];
    [contentView addSubview:v6->_textView];

    [(SXButtonComponentView *)v6 setIsAccessibilityElement:1];
    [(SXButtonComponentView *)v6 setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  }

  return v6;
}

- (id)accessibilityLabel
{
  textView = [(SXButtonComponentView *)self textView];
  v4 = [textView rep];
  accessibilityLabel = [v4 accessibilityLabel];

  if (!accessibilityLabel)
  {
    textView2 = [(SXButtonComponentView *)self textView];
    accessibilityLabel = [textView2 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  textView = [(SXButtonComponentView *)self textView];
  v3 = [textView rep];
  accessibilityValue = [v3 accessibilityValue];

  return accessibilityValue;
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v9.receiver = self;
  v9.super_class = SXButtonComponentView;
  accessibilityUserInputLabels = [(SXButtonComponentView *)&v9 accessibilityUserInputLabels];
  v5 = [v3 initWithArray:accessibilityUserInputLabels];

  accessibilityLabel = [(SXButtonComponentView *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    [v5 addObject:accessibilityLabel];
  }

  accessibilityValue = [(SXButtonComponentView *)self accessibilityValue];
  if (accessibilityValue)
  {
    [v5 addObject:accessibilityValue];
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    presentationDelegate2 = [(SXComponentView *)self presentationDelegate];
    v6 = [presentationDelegate2 accessibilityShouldHandleInteractionForView:self];

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
  textView = [(SXButtonComponentView *)self textView];
  accessibilityHint = [textView accessibilityHint];

  return accessibilityHint;
}

- (void)presentComponentWithChanges:(id)changes
{
  v16.receiver = self;
  v16.super_class = SXButtonComponentView;
  [(SXComponentView *)&v16 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  textView = [(SXButtonComponentView *)self textView];
  [(SXComponentView *)self contentFrame];
  v6 = v5;
  [(SXComponentView *)self contentFrame];
  v8 = v7;
  [(SXButtonComponentView *)self typographicBounds];
  v10 = v8 - v9;
  [(SXComponentView *)self contentFrame];
  v12 = v11;
  [(SXComponentView *)self contentFrame];
  [textView setFrame:{v6, v10, v12}];

  textView2 = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [textView2 setFrameInCanvas:?];

  textView3 = [(SXButtonComponentView *)self textView];
  [(SXComponentView *)self absoluteFrame];
  [textView3 setParentFrame:?];

  textView4 = [(SXButtonComponentView *)self textView];
  [textView4 invalidate];
}

- (void)didMoveToSuperview
{
  v7.receiver = self;
  v7.super_class = SXButtonComponentView;
  [(SXButtonComponentView *)&v7 didMoveToSuperview];
  superview = [(SXButtonComponentView *)self superview];

  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  tangierController = [presentationDelegate tangierController];
  textView = [(SXButtonComponentView *)self textView];
  if (superview)
  {
    [tangierController didStartPresentingTextView:textView];
  }

  else
  {
    [tangierController didStopPresentingTextView:textView];
  }
}

- (void)setAbsoluteFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SXButtonComponentView;
  [(SXComponentView *)&v5 setAbsoluteFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  textView = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [textView setFrameInCanvas:?];
}

- (void)setPresentationFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SXButtonComponentView;
  [(SXComponentView *)&v5 setPresentationFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  textView = [(SXButtonComponentView *)self textView];
  [(SXButtonComponentView *)self absoluteTextViewFrame];
  [textView setFrameInCanvas:?];
}

- (void)receivedInfo:(id)info fromLayoutingPhaseWithIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SXButtonComponentView;
  [(SXComponentView *)&v9 receivedInfo:infoCopy fromLayoutingPhaseWithIdentifier:identifierCopy];
  if ([identifierCopy isEqualToString:@"TextLayouter"])
  {
    textView = [(SXButtonComponentView *)self textView];
    [textView setTextLayouter:infoCopy];
  }

  else if ([identifierCopy isEqualToString:@"TypographicBounds"])
  {
    [infoCopy CGRectValue];
    [(SXButtonComponentView *)self setTypographicBounds:?];
  }
}

- (void)provideInfosLayoutTo:(id)to
{
  toCopy = to;
  textView = [(SXButtonComponentView *)self textView];
  [textView provideInfosLayoutTo:toCopy];
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
  accessibilityLabel = [component accessibilityLabel];

  if (!accessibilityLabel)
  {
    component2 = [(SXComponentView *)self component];
    classification = [component2 classification];
    accessibilityLabel = [classification accessibilityContextualLabel];
  }

  return accessibilityLabel;
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