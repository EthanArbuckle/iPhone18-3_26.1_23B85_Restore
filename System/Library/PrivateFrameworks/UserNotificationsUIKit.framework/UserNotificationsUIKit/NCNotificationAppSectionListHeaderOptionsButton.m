@interface NCNotificationAppSectionListHeaderOptionsButton
- (UIBezierPath)visiblePathForPreview;
@end

@implementation NCNotificationAppSectionListHeaderOptionsButton

- (UIBezierPath)visiblePathForPreview
{
  [(NCNotificationAppSectionListHeaderOptionsButton *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  CGRectGetHeight(v10);
  UIRectCenteredIntegralRect();
  v6 = MEMORY[0x277D75208];

  return [v6 bezierPathWithRoundedRect:? cornerRadius:?];
}

@end