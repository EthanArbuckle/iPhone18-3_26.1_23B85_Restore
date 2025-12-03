@interface NSLayoutConstraint(WBSNSLayoutConstraintExtras)
+ (id)safari_constraintsMatchingFrameOfView:()WBSNSLayoutConstraintExtras withFrameOfView:directionalInsets:;
+ (id)safari_constraintsMatchingFrameOfView:()WBSNSLayoutConstraintExtras withFrameOfView:edgeInsets:;
@end

@implementation NSLayoutConstraint(WBSNSLayoutConstraintExtras)

+ (id)safari_constraintsMatchingFrameOfView:()WBSNSLayoutConstraintExtras withFrameOfView:edgeInsets:
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = a8;
  v15 = a7;
  v16 = [self constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:a2];
  v22[0] = v16;
  v17 = [self constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:-a4];
  v22[1] = v17;
  v18 = [self constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:a3];
  v22[2] = v18;
  v19 = [self constraintWithItem:v15 attribute:6 relatedBy:0 toItem:v14 attribute:6 multiplier:1.0 constant:-a5];

  v22[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  return v20;
}

+ (id)safari_constraintsMatchingFrameOfView:()WBSNSLayoutConstraintExtras withFrameOfView:directionalInsets:
{
  v29[4] = *MEMORY[0x1E69E9840];
  v13 = a8;
  v14 = a7;
  topAnchor = [v14 topAnchor];
  topAnchor2 = [v13 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self];
  v29[0] = v26;
  bottomAnchor = [v14 bottomAnchor];
  bottomAnchor2 = [v13 bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-a3];
  v29[1] = v17;
  leadingAnchor = [v14 leadingAnchor];
  leadingAnchor2 = [v13 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:a2];
  v29[2] = v20;
  trailingAnchor = [v14 trailingAnchor];

  trailingAnchor2 = [v13 trailingAnchor];

  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-a4];
  v29[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  return v24;
}

@end