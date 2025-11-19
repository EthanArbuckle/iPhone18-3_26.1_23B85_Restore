@interface ATXFaceGalleryItem(PRSAdditions)
- (PRSPosterGalleryItem)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXFaceGalleryItem(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v29.receiver = a1;
  v29.super_class = &off_1F4281C48;
  v5 = objc_msgSendSuper2(&v29, sel_init);
  if (v5)
  {
    v6 = [v4 identifier];
    [v5 setIdentifier:v6];

    v7 = [v4 descriptorIdentifier];
    [v5 setDescriptorIdentifier:v7];

    v8 = [v4 extensionBundleIdentifier];
    [v5 setExtensionBundleIdentifier:v8];

    v9 = [v4 displayNameLocalizationKey];
    [v5 setDisplayNameLocalizationKey:v9];

    v10 = [v4 spokenNameLocalizationKey];
    [v5 setSpokenNameLocalizationKey:v10];

    v11 = [v4 descriptiveTextLocalizationKey];
    [v5 setDescriptiveTextLocalizationKey:v11];

    v12 = [v4 localizedDisplayName];
    [v5 setLocalizedDisplayName:v12];

    v13 = [v4 localizedSubtitle];
    [v5 setLocalizedSubtitle:v13];

    v14 = [v4 titleFontName];
    [v5 setTitleFontName:v14];

    v15 = [v4 titleColor];
    [v5 setTitleColor:v15];

    v16 = [v4 subtitleComplication];
    v17 = [v16 proactiveRepresentation];
    [v5 setSubtitleComplication:v17];

    v18 = [v4 layoutType];
    if ((v18 - 1) >= 4)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    [v5 setLayoutType:v19];
    v20 = [v4 modeSemanticType];
    [v5 setModeSemanticType:v20];

    v21 = [v4 modeUUID];
    [v5 setModeUUID:v21];

    v22 = [v4 complications];
    v23 = [v22 bs_map:&__block_literal_global_6];
    [v5 setComplications:v23];

    v24 = [v4 landscapeComplications];
    v25 = [v24 bs_map:&__block_literal_global_12_0];
    [v5 setLandscapeComplications:v25];

    [v5 setBlankTemplate:{objc_msgSend(v4, "isBlankTemplate")}];
    [v5 setShouldShowAsShuffleStack:{objc_msgSend(v4, "shouldShowAsShuffleStack")}];
    v26 = [v4 source];
    if ((v26 - 1) >= 6)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    [v5 setSource:v27];
  }

  return v5;
}

- (PRSPosterGalleryItem)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItem alloc] initWithProactiveRepresentation:a1];

  return v1;
}

@end