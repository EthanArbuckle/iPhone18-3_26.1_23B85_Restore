@interface SHUDOnenessUnlockedPillViewController
- (SHUDOnenessUnlockedPillViewController)init;
- (id)leadingImage;
@end

@implementation SHUDOnenessUnlockedPillViewController

- (SHUDOnenessUnlockedPillViewController)init
{
  v3.receiver = self;
  v3.super_class = SHUDOnenessUnlockedPillViewController;
  return [(SHUDPillViewController *)&v3 initWithNeedsButton:1];
}

- (id)leadingImage
{
  v2 = [[UIColor alloc] initWithDynamicProvider:&stru_1000143D8];
  v3 = [UIImage _systemImageNamed:@"apps.iphone.and.cursorarrow"];
  v4 = [v3 imageWithTintColor:v2 renderingMode:1];

  return v4;
}

@end