@interface OBPrivacyLinkController(PKAppearanceAdditions)
- (uint64_t)pk_applyAppearance:()PKAppearanceAdditions;
@end

@implementation OBPrivacyLinkController(PKAppearanceAdditions)

- (uint64_t)pk_applyAppearance:()PKAppearanceAdditions
{
  v9.receiver = self;
  v9.super_class = &off_1F3DFC7E0;
  v4 = a3;
  objc_msgSendSuper2(&v9, sel_pk_applyAppearance_, v4);
  view = [self view];
  tintColor = [v4 tintColor];
  [view setTintColor:tintColor];

  hasDarkAppearance = [v4 hasDarkAppearance];
  return [self setPresentedViewControllerShouldUseDarkMode:hasDarkAppearance];
}

@end