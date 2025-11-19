@interface OneUpChromeViewController.ChromeView
- (int64_t)hitTestTransparentView:(id)a3 hitTestBehaviorForView:(id)a4;
- (void)layoutSubviews;
@end

@implementation OneUpChromeViewController.ChromeView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B3748C30();
}

- (int64_t)hitTestTransparentView:(id)a3 hitTestBehaviorForView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1B3748CE0();
  v10 = v9;

  return v10;
}

@end