@interface OBPrivacyLinkController(PKAppearanceAdditions)
- (uint64_t)pk_applyAppearance:()PKAppearanceAdditions;
@end

@implementation OBPrivacyLinkController(PKAppearanceAdditions)

- (uint64_t)pk_applyAppearance:()PKAppearanceAdditions
{
  v9.receiver = a1;
  v9.super_class = &off_1F3DFC7E0;
  v4 = a3;
  objc_msgSendSuper2(&v9, sel_pk_applyAppearance_, v4);
  v5 = [a1 view];
  v6 = [v4 tintColor];
  [v5 setTintColor:v6];

  v7 = [v4 hasDarkAppearance];
  return [a1 setPresentedViewControllerShouldUseDarkMode:v7];
}

@end