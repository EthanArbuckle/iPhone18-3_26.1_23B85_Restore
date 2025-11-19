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
  v11 = [a1 superview];
  v12 = [v10 constraintWithItem:v11 attribute:6 relatedBy:0 toItem:a1 attribute:6 multiplier:1.0 constant:a5];

  v13 = MEMORY[0x277CCAAD0];
  v14 = [a1 superview];
  v15 = [v13 constraintWithItem:v14 attribute:5 relatedBy:0 toItem:a1 attribute:5 multiplier:1.0 constant:-a3];

  v16 = MEMORY[0x277CCAAD0];
  v17 = [a1 superview];
  v18 = [v16 constraintWithItem:v17 attribute:4 relatedBy:0 toItem:a1 attribute:4 multiplier:1.0 constant:a4];

  v19 = MEMORY[0x277CCAAD0];
  v20 = [a1 superview];
  v21 = [v19 constraintWithItem:v20 attribute:3 relatedBy:0 toItem:a1 attribute:3 multiplier:1.0 constant:a2];

  v22 = [a1 superview];
  v28[0] = v15;
  v28[1] = v12;
  v28[2] = v21;
  v28[3] = v18;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v22 addConstraints:v23];

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
  v5 = [v4 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  v8 = [v4 topAnchor];
  v9 = [a1 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  v11 = [v4 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  v14 = [a1 bottomAnchor];
  v15 = [v4 bottomAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];

  v22[0] = v7;
  v22[1] = v13;
  v22[2] = v10;
  v22[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [a1 addConstraints:v17];

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
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:5 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:5 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:6 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:6 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:-a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_centerHorizontallyWithItem:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:9 relatedBy:0 toItem:a4 attribute:9 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_centerVerticallyWithItem:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:10 relatedBy:0 toItem:a4 attribute:10 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:3 relatedBy:0 toItem:a4 attribute:3 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:4 relatedBy:0 toItem:a4 attribute:4 multiplier:1.0 constant:-a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:4 relatedBy:0 toItem:a4 attribute:3 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinLastBaselineToFirstBaseline:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:11 relatedBy:0 toItem:a4 attribute:12 multiplier:1.0 constant:-a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinLeadingTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:5 relatedBy:0 toItem:a4 attribute:5 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_pinTrailingTo:()SiriUIAutoLayout withMargin:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:6 relatedBy:0 toItem:a4 attribute:6 multiplier:1.0 constant:a2];
  v6 = [a1 superview];
  [v6 addConstraint:v5];

  return v5;
}

- (id)siriui_addWidthConstraint:()SiriUIAutoLayout
{
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  [a1 addConstraint:v3];

  return v3;
}

- (id)siriui_addHeightConstraint:()SiriUIAutoLayout
{
  v3 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  [a1 addConstraint:v3];

  return v3;
}

- (id)siriui_pinTopTo:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:3 relatedBy:0 toItem:a5 attribute:3 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinBottomTo:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:4 relatedBy:0 toItem:a5 attribute:4 multiplier:1.0 constant:-a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinBottomToTopOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:4 relatedBy:0 toItem:a5 attribute:3 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinLeadingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:5 relatedBy:0 toItem:a5 attribute:5 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinTrailingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:6 relatedBy:0 toItem:a5 attribute:6 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinLeadingToTrailingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:5 relatedBy:0 toItem:a5 attribute:6 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_pinTrailingToLeadingEdgeOf:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:6 relatedBy:0 toItem:a5 attribute:5 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_centerVerticallyWithView:()SiriUIAutoLayout withMargin:priority:
{
  v7 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:10 relatedBy:0 toItem:a5 attribute:10 multiplier:1.0 constant:a2];
  *&v8 = a3;
  [v7 setPriority:v8];
  v9 = [a1 superview];
  [v9 addConstraint:v7];

  return v7;
}

- (id)siriui_addWidthConstraint:()SiriUIAutoLayout priority:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  *&v6 = a3;
  [v5 setPriority:v6];
  [a1 addConstraint:v5];

  return v5;
}

- (id)siriui_addHeightConstraint:()SiriUIAutoLayout priority:
{
  v5 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:a2];
  *&v6 = a3;
  [v5 setPriority:v6];
  [a1 addConstraint:v5];

  return v5;
}

@end