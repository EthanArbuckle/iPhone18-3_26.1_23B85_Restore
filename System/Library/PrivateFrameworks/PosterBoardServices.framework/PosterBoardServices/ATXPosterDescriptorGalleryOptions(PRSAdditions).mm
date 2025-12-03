@interface ATXPosterDescriptorGalleryOptions(PRSAdditions)
- (PRSPosterGalleryItemOptions)posterBoardRepresentation;
- (id)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXPosterDescriptorGalleryOptions(PRSAdditions)

- (id)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = &off_1F42800A0;
  v5 = objc_msgSendSuper2(&v22, sel_init);
  if (v5)
  {
    modularComplications = [v4 modularComplications];
    v7 = [modularComplications bs_map:&__block_literal_global_3];
    [v5 setModularComplications:v7];

    modularLandscapeComplications = [v4 modularLandscapeComplications];
    v9 = [modularLandscapeComplications bs_map:&__block_literal_global_12];
    [v5 setModularLandscapeComplications:v9];

    inlineComplication = [v4 inlineComplication];
    proactiveRepresentation = [inlineComplication proactiveRepresentation];
    [v5 setInlineComplication:proactiveRepresentation];

    [v5 setAllowsSystemSuggestedComplications:{objc_msgSend(v4, "allowsSystemSuggestedComplications")}];
    [v5 setAllowsSystemSuggestedComplicationsInLandscape:{objc_msgSend(v4, "allowsSystemSuggestedComplicationsInLandscape")}];
    featuredConfidenceLevel = [v4 featuredConfidenceLevel];
    if (featuredConfidenceLevel == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = featuredConfidenceLevel == 1;
    }

    [v5 setFeaturedConfidenceLevel:v13];
    displayNameLocalizationKey = [v4 displayNameLocalizationKey];
    [v5 setDisplayNameLocalizationKey:displayNameLocalizationKey];

    spokenNameLocalizationKey = [v4 spokenNameLocalizationKey];
    [v5 setSpokenNameLocalizationKey:spokenNameLocalizationKey];

    descriptiveTextLocalizationKey = [v4 descriptiveTextLocalizationKey];
    [v5 setDescriptiveTextLocalizationKey:descriptiveTextLocalizationKey];

    [v5 setHero:{objc_msgSend(v4, "isHero")}];
    [v5 setShouldShowAsShuffleStack:{objc_msgSend(v4, "shouldShowAsShuffleStack")}];
    photoSubtype = [v4 photoSubtype];
    if ((photoSubtype - 1) >= 8)
    {
      v18 = 0;
    }

    else
    {
      v18 = photoSubtype;
    }

    [v5 setPhotoSubtype:v18];
    focus = [v4 focus];
    if ((focus - 1) >= 9)
    {
      v20 = 0;
    }

    else
    {
      v20 = focus;
    }

    [v5 setFocus:v20];
    [v5 setOnlyEligibleForMadeForFocusSection:{objc_msgSend(v4, "isOnlyEligibleForMadeForFocusSection")}];
  }

  return v5;
}

- (PRSPosterGalleryItemOptions)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItemOptions alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end