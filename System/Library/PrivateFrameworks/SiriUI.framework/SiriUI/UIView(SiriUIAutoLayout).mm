@interface UIView(SiriUIAutoLayout)
- (id)siriui_addHeightConstraint:()SiriUIAutoLayout;
- (id)siriui_addHeightConstraint:()SiriUIAutoLayout priority:;
- (id)siriui_addWidthConstraint:()SiriUIAutoLayout;
- (id)siriui_addWidthConstraint:()SiriUIAutoLayout priority:;
- (id)siriui_centerHorizontallyWithItem:()SiriUIAutoLayout withMargin:;
- (id)siriui_centerVerticallyWithItem:()SiriUIAutoLayout withMargin:;
- (id)siriui_centerVerticallyWithView:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinLastBaselineToFirstBaseline:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinLeadingTo:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinLeadingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinLeadingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinToLayoutGuide:()SiriUIAutoLayout;
- (id)siriui_pinToSuperviewWithEdgeInsets:()SiriUIAutoLayout;
- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinTrailingTo:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:;
- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:;
- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:;
@end

@implementation UIView(SiriUIAutoLayout)

- (id)siriui_pinToSuperviewWithEdgeInsets:()SiriUIAutoLayout
{
  v28[4] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCAAD0];
  superview = [self superview];
  v12 = [v10 constraintWithItem:superview attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:a5];

  v13 = MEMORY[0x277CCAAD0];
  superview2 = [self superview];
  v15 = [v13 constraintWithItem:superview2 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:-a3];

  v16 = MEMORY[0x277CCAAD0];
  superview3 = [self superview];
  v18 = [v16 constraintWithItem:superview3 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:a4];

  v19 = MEMORY[0x277CCAAD0];
  superview4 = [self superview];
  v21 = [v19 constraintWithItem:superview4 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:a2];

  superview5 = [self superview];
  v28[0] = v15;
  v28[1] = v12;
  v28[2] = v21;
  v28[3] = v18;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [superview5 addConstraints:v23];

  v26[0] = &unk_287A0D2C8;
  v26[1] = &unk_287A0D2E0;
  v27[0] = v21;
  v27[1] = v18;
  v26[2] = &unk_287A0D2F8;
  v26[3] = &unk_287A0D310;
  v27[2] = v15;
  v27[3] = v12;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v24;
}

- (id)siriui_pinToLayoutGuide:()SiriUIAutoLayout
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  topAnchor = [v4 topAnchor];
  topAnchor2 = [self topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];

  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [self trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  v22[0] = v7;
  v22[1] = v13;
  v22[2] = v10;
  v22[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [self addConstraints:v17];

  v20[0] = &unk_287A0D2C8;
  v20[1] = &unk_287A0D2E0;
  v21[0] = v10;
  v21[1] = v16;
  v20[2] = &unk_287A0D2F8;
  v20[3] = &unk_287A0D310;
  v21[2] = v7;
  v21[3] = v13;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v18;
}

- (id)siriui_pinLeadingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:-a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_centerHorizontallyWithItem:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:9 relatedBy:0 toItem:a4 attribute:9 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_centerVerticallyWithItem:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:10 relatedBy:0 toItem:a4 attribute:10 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:a4 attribute:3 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:a4 attribute:4 multiplier:1.0 constant:-a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:a4 attribute:3 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinLastBaselineToFirstBaseline:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:11 relatedBy:0 toItem:a4 attribute:12 multiplier:1.0 constant:-a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinLeadingTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:a2];
  superview = [self superview];
  [superview addConstraint:v5];

  return v5;
}

- (id)siriui_addWidthConstraint:()SiriUIAutoLayout
{
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  [self addConstraint:v3];

  return v3;
}

- (id)siriui_addHeightConstraint:()SiriUIAutoLayout
{
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  [self addConstraint:v3];

  return v3;
}

- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:3 relatedBy:0 toItem:a5 attribute:3 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:a5 attribute:4 multiplier:1.0 constant:-a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:a5 attribute:3 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinLeadingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:a5 attribute:5 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:a5 attribute:6 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:5 relatedBy:0 toItem:a5 attribute:6 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:6 relatedBy:0 toItem:a5 attribute:5 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_centerVerticallyWithView:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:10 relatedBy:0 toItem:a5 attribute:10 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  superview = [self superview];
  [superview addConstraint:v7];

  return v7;
}

- (id)siriui_addWidthConstraint:()SiriUIAutoLayout priority:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  *&v6 = a3;
  [v5 setPriority:v6];
  [self addConstraint:v5];

  return v5;
}

- (id)siriui_addHeightConstraint:()SiriUIAutoLayout priority:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  *&v6 = a3;
  [v5 setPriority:v6];
  [self addConstraint:v5];

  return v5;
}

@end