@interface OneUpChromeViewController.ChromeView
- (int64_t)hitTestTransparentView:(id)view hitTestBehaviorForView:(id)forView;
- (void)layoutSubviews;
@end

@implementation OneUpChromeViewController.ChromeView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B3748C30();
}

- (int64_t)hitTestTransparentView:(id)view hitTestBehaviorForView:(id)forView
{
  viewCopy = view;
  forViewCopy = forView;
  selfCopy = self;
  sub_1B3748CE0();
  v10 = v9;

  return v10;
}

@end