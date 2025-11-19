@interface UIImage
@end

@implementation UIImage

void __106__UIImage_UIKit_SiriUIFrameworkAdditions__siriui_semiTransparentChevronImageWithColor_allowNaturalLayout___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D755B8] kitImageNamed:@"UITableNext"];
  v2 = [v5 _flatImageWithColor:*(a1 + 32)];
  v3 = [v2 imageFlippedForRightToLeftLayoutDirection];
  v4 = siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__chevronImage;
  siriui_semiTransparentChevronImageWithColor_allowNaturalLayout__chevronImage = v3;
}

@end