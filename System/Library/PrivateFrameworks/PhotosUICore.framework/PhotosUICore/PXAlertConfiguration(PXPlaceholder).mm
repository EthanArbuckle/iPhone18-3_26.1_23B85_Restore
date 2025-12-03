@interface PXAlertConfiguration(PXPlaceholder)
- (void)configureForPlaceholder:()PXPlaceholder;
- (void)featureNotEnabledWithDocumentationURLString:()PXPlaceholder;
- (void)notImplementedWithTrackingRadar:()PXPlaceholder;
@end

@implementation PXAlertConfiguration(PXPlaceholder)

- (void)configureForPlaceholder:()PXPlaceholder
{
  v4 = a3;
  title = [v4 title];
  [self setTitle:title];

  subtitle = [v4 subtitle];
  [self setMessage:subtitle];

  fallbackActionTitle = [v4 fallbackActionTitle];
  if (fallbackActionTitle)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__PXAlertConfiguration_PXPlaceholder__configureForPlaceholder___block_invoke;
    v8[3] = &unk_1E774C648;
    v9 = v4;
    [self addActionWithTitle:fallbackActionTitle style:0 action:v8];
  }

  [self addActionWithTitle:@"OK" style:1 action:0];
}

- (void)featureNotEnabledWithDocumentationURLString:()PXPlaceholder
{
  v2 = [PXPlaceholder featureNotEnabledWithDocumentationURLString:?];
  [self configureForPlaceholder:v2];
}

- (void)notImplementedWithTrackingRadar:()PXPlaceholder
{
  v2 = [PXPlaceholder featureNotImplementedWithTrackingRadar:?];
  [self configureForPlaceholder:v2];
}

@end