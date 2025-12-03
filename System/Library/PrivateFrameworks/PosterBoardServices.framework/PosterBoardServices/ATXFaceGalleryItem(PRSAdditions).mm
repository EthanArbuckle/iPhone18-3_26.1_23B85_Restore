@interface ATXFaceGalleryItem(PRSAdditions)
- (PRSPosterGalleryItem)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXFaceGalleryItem(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = &off_1F4281C48;
  v5 = objc_msgSendSuper2(&v29, sel_init);
  if (v5)
  {
    identifier = [v4 identifier];
    [v5 setIdentifier:identifier];

    descriptorIdentifier = [v4 descriptorIdentifier];
    [v5 setDescriptorIdentifier:descriptorIdentifier];

    extensionBundleIdentifier = [v4 extensionBundleIdentifier];
    [v5 setExtensionBundleIdentifier:extensionBundleIdentifier];

    displayNameLocalizationKey = [v4 displayNameLocalizationKey];
    [v5 setDisplayNameLocalizationKey:displayNameLocalizationKey];

    spokenNameLocalizationKey = [v4 spokenNameLocalizationKey];
    [v5 setSpokenNameLocalizationKey:spokenNameLocalizationKey];

    descriptiveTextLocalizationKey = [v4 descriptiveTextLocalizationKey];
    [v5 setDescriptiveTextLocalizationKey:descriptiveTextLocalizationKey];

    localizedDisplayName = [v4 localizedDisplayName];
    [v5 setLocalizedDisplayName:localizedDisplayName];

    localizedSubtitle = [v4 localizedSubtitle];
    [v5 setLocalizedSubtitle:localizedSubtitle];

    titleFontName = [v4 titleFontName];
    [v5 setTitleFontName:titleFontName];

    titleColor = [v4 titleColor];
    [v5 setTitleColor:titleColor];

    subtitleComplication = [v4 subtitleComplication];
    proactiveRepresentation = [subtitleComplication proactiveRepresentation];
    [v5 setSubtitleComplication:proactiveRepresentation];

    layoutType = [v4 layoutType];
    if ((layoutType - 1) >= 4)
    {
      v19 = 0;
    }

    else
    {
      v19 = layoutType;
    }

    [v5 setLayoutType:v19];
    modeSemanticType = [v4 modeSemanticType];
    [v5 setModeSemanticType:modeSemanticType];

    modeUUID = [v4 modeUUID];
    [v5 setModeUUID:modeUUID];

    complications = [v4 complications];
    v23 = [complications bs_map:&__block_literal_global_6];
    [v5 setComplications:v23];

    landscapeComplications = [v4 landscapeComplications];
    v25 = [landscapeComplications bs_map:&__block_literal_global_12_0];
    [v5 setLandscapeComplications:v25];

    [v5 setBlankTemplate:{objc_msgSend(v4, "isBlankTemplate")}];
    [v5 setShouldShowAsShuffleStack:{objc_msgSend(v4, "shouldShowAsShuffleStack")}];
    source = [v4 source];
    if ((source - 1) >= 6)
    {
      v27 = 0;
    }

    else
    {
      v27 = source;
    }

    [v5 setSource:v27];
  }

  return v5;
}

- (PRSPosterGalleryItem)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItem alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end