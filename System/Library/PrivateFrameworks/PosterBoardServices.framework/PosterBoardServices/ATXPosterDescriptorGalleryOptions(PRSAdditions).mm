@interface ATXPosterDescriptorGalleryOptions(PRSAdditions)
- (PRSPosterGalleryItemOptions)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXPosterDescriptorGalleryOptions(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v22.receiver = a1;
  v22.super_class = &off_1F42800A0;
  v5 = objc_msgSendSuper2(&v22, sel_init);
  if (v5)
  {
    v6 = [v4 modularComplications];
    v7 = [v6 bs_map:&__block_literal_global_3];
    [v5 setModularComplications:v7];

    v8 = [v4 modularLandscapeComplications];
    v9 = [v8 bs_map:&__block_literal_global_12];
    [v5 setModularLandscapeComplications:v9];

    v10 = [v4 inlineComplication];
    v11 = [v10 proactiveRepresentation];
    [v5 setInlineComplication:v11];

    [v5 setAllowsSystemSuggestedComplications:{objc_msgSend(v4, "allowsSystemSuggestedComplications")}];
    [v5 setAllowsSystemSuggestedComplicationsInLandscape:{objc_msgSend(v4, "allowsSystemSuggestedComplicationsInLandscape")}];
    v12 = [v4 featuredConfidenceLevel];
    if (v12 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12 == 1;
    }

    [v5 setFeaturedConfidenceLevel:v13];
    v14 = [v4 displayNameLocalizationKey];
    [v5 setDisplayNameLocalizationKey:v14];

    v15 = [v4 spokenNameLocalizationKey];
    [v5 setSpokenNameLocalizationKey:v15];

    v16 = [v4 descriptiveTextLocalizationKey];
    [v5 setDescriptiveTextLocalizationKey:v16];

    [v5 setHero:{objc_msgSend(v4, "isHero")}];
    [v5 setShouldShowAsShuffleStack:{objc_msgSend(v4, "shouldShowAsShuffleStack")}];
    v17 = [v4 photoSubtype];
    if ((v17 - 1) >= 8)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    [v5 setPhotoSubtype:v18];
    v19 = [v4 focus];
    if ((v19 - 1) >= 9)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    [v5 setFocus:v20];
    [v5 setOnlyEligibleForMadeForFocusSection:{objc_msgSend(v4, "isOnlyEligibleForMadeForFocusSection")}];
  }

  return v5;
}

- (PRSPosterGalleryItemOptions)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItemOptions alloc] initWithProactiveRepresentation:a1];

  return v1;
}

@end