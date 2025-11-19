@interface UIImage
@end

@implementation UIImage

void __38__UIImage_MTAdditions__nowPlayingIcon__block_invoke()
{
  v3 = [MEMORY[0x277D755B8] imageNamed:@"Equalizer"];
  v0 = [v3 imageFlippedForRightToLeftLayoutDirection];
  v1 = [v0 imageWithRenderingMode:2];
  v2 = nowPlayingIcon_templateNowPlayingIcon;
  nowPlayingIcon_templateNowPlayingIcon = v1;
}

uint64_t __54__UIImage_MTAdditions__unplayedIconForDarkBackground___block_invoke()
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"Unread-Dot-Full-Stroke"];
  v1 = unplayedIconForDarkBackground__strokedUnplayedIcon;
  unplayedIconForDarkBackground__strokedUnplayedIcon = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __56__UIImage_MTAdditions__halfPlayedIconForDarkBackground___block_invoke()
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"Unread-Dot-Half-Stroke"];
  v1 = halfPlayedIconForDarkBackground__strokedHalfPlayedIcon;
  halfPlayedIconForDarkBackground__strokedHalfPlayedIcon = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __52__UIImage_MTAdditions__backCatalogIconForTintColor___block_invoke()
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"Unread-Dot-Full"];
  v1 = backCatalogIconForTintColor__untintedIcon;
  backCatalogIconForTintColor__untintedIcon = v0;

  v2 = objc_opt_new();
  v3 = backCatalogIconForTintColor__tintedIcons;
  backCatalogIconForTintColor__tintedIcons = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t __67__UIImage_MTAdditions__backCatalogPartiallyPlayedIconForTintColor___block_invoke()
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"Unread-Dot-Half"];
  v1 = backCatalogPartiallyPlayedIconForTintColor__untintedIcon;
  backCatalogPartiallyPlayedIconForTintColor__untintedIcon = v0;

  v2 = objc_opt_new();
  v3 = backCatalogPartiallyPlayedIconForTintColor__tintedIcons;
  backCatalogPartiallyPlayedIconForTintColor__tintedIcons = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void __38__UIImage_MTAdditions__multiCheckIcon__block_invoke()
{
  v2 = [MEMORY[0x277D755B8] imageNamed:@"SelectControlMultiCheckedImage"];
  v0 = [v2 imageWithRenderingMode:2];
  v1 = multiCheckIcon_templateMultiCheckIcon;
  multiCheckIcon_templateMultiCheckIcon = v0;
}

void __40__UIImage_MTAdditions__multiUncheckIcon__block_invoke()
{
  v2 = [MEMORY[0x277D755B8] imageNamed:@"SelectControlMultiNotCheckedImage"];
  v0 = [v2 imageWithRenderingMode:2];
  v1 = multiUncheckIcon_templateMultiUncheckIcon;
  multiUncheckIcon_templateMultiUncheckIcon = v0;
}

void __32__UIImage_MTAdditions__infoIcon__block_invoke()
{
  v2 = [MEMORY[0x277D755B8] imageNamed:@"UITableInfo"];
  v0 = [v2 imageWithRenderingMode:2];
  v1 = infoIcon_templateInfoIcon;
  infoIcon_templateInfoIcon = v0;
}

@end