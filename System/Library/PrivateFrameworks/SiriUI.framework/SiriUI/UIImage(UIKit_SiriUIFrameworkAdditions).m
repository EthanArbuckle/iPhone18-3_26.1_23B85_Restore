@interface UIImage(UIKit_SiriUIFrameworkAdditions)
+ (id)siriui_semiTransparentChevronImageAndAllowNaturalLayout:()UIKit_SiriUIFrameworkAdditions;
+ (uint64_t)siriui_semiTransparentChevronImageWithColor:()UIKit_SiriUIFrameworkAdditions allowNaturalLayout:;
@end

@implementation UIImage(UIKit_SiriUIFrameworkAdditions)

+ (id)siriui_semiTransparentChevronImageAndAllowNaturalLayout:()UIKit_SiriUIFrameworkAdditions
{
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277D75348] siriui_semiTransparentTextColor];
  v6 = [v4 siriui_semiTransparentChevronImageWithColor:v5 allowNaturalLayout:a3];

  return v6;
}

+ (uint64_t)siriui_semiTransparentChevronImageWithColor:()UIKit_SiriUIFrameworkAdditions allowNaturalLayout:
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__UIImage_UIKit_SiriUIFrameworkAdditions__siriui_semiTransparentChevronImageWithColor_allowNaturalLayout___block_invoke;
  block[3] = &unk_279C59D78;
  v10 = v3;
  v4 = siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__onceToken, block);
  }

  v6 = siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__chevronImage;
  v7 = siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__chevronImage;

  return v6;
}

@end