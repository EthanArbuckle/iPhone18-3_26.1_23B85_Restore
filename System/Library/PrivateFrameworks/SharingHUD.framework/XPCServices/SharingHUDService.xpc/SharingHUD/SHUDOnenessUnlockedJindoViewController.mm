@interface SHUDOnenessUnlockedJindoViewController
- (SHUDOnenessUnlockedJindoViewController)init;
- (id)leadingImage;
@end

@implementation SHUDOnenessUnlockedJindoViewController

- (SHUDOnenessUnlockedJindoViewController)init
{
  v3.receiver = self;
  v3.super_class = SHUDOnenessUnlockedJindoViewController;
  return [(SHUDJindoViewController *)&v3 initWithNeedsButton:1];
}

- (id)leadingImage
{
  v2 = [UIImage _systemImageNamed:@"apps.iphone.and.cursorarrow"];
  v3 = +[UIColor systemWhiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  v5 = [v4 imageWithAlignmentRectInsets:{-5.0, -5.0, -5.0, -5.0}];

  return v5;
}

@end