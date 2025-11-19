@interface PXAlertConfiguration(PXPlaceholder)
- (void)configureForPlaceholder:()PXPlaceholder;
- (void)featureNotEnabledWithDocumentationURLString:()PXPlaceholder;
- (void)notImplementedWithTrackingRadar:()PXPlaceholder;
@end

@implementation PXAlertConfiguration(PXPlaceholder)

- (void)configureForPlaceholder:()PXPlaceholder
{
  v4 = a3;
  v5 = [v4 title];
  [a1 setTitle:v5];

  v6 = [v4 subtitle];
  [a1 setMessage:v6];

  v7 = [v4 fallbackActionTitle];
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PXAlertConfiguration_PXPlaceholder__configureForPlaceholder___block_invoke;
    v8[3] = &unk_1E774C648;
    v9 = v4;
    [a1 addActionWithTitle:v7 style:0 action:v8];
  }

  [a1 addActionWithTitle:@"OK" style:1 action:0];
}

- (void)featureNotEnabledWithDocumentationURLString:()PXPlaceholder
{
  v2 = [PXPlaceholder featureNotEnabledWithDocumentationURLString:?];
  [a1 configureForPlaceholder:v2];
}

- (void)notImplementedWithTrackingRadar:()PXPlaceholder
{
  v2 = [PXPlaceholder featureNotImplementedWithTrackingRadar:?];
  [a1 configureForPlaceholder:v2];
}

@end