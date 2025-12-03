@interface PHQuestion(PhotosUICore)
+ (id)_px_configurationCache;
+ (id)_px_requestQueue;
+ (uint64_t)_px_fetchRequestIdAndIncrement;
- (BOOL)px_assetCollectionAndAssetFetchResultForAsset:()PhotosUICore assetCollection:assetFetchResult:;
- (PXSurveyQuestionAlbumConfiguration)_px_requestQueue_configurationForAlbum;
- (PXSurveyQuestionAssetGroupConfiguration)_px_requestQueue_configurationForMoment;
- (PXSurveyQuestionCustomizableAssetGroupConfiguration)_px_requestQueue_configurationForExternalAssetRelevance;
- (PXSurveyQuestionMapConfiguration)_px_requestQueue_configurationForAsset;
- (PXSurveyQuestionMemoryConfiguration)_px_requestQueue_configurationForMemory:()PhotosUICore assetCollection:customKeyAssetIdentifier:;
- (PXSurveyQuestionPersonConfiguration)_px_requestQueue_configurationForPerson;
- (PXSurveyQuestionPersonGroupConfiguration)_px_requestQueue_configurationForPersonGroup;
- (PXSurveyQuestionTextConfiguration)_px_requestQueue_configurationForTextWithScalingForLongText:()PhotosUICore;
- (PXSurveyQuestionTextConfiguration)_px_requestQueue_fetchConfiguration;
- (__CFString)_px_localizedQuestionTextForLocationRepresentativeAsset:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromAgeCategory:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromBusinessName:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromHolidayName:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromMemoryMusicEnergySongTitle:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromMemoryMusicQualitySongTitle:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromPersonContactMatchingContactName:()PhotosUICore;
- (__CFString)_px_localizedQuestionTextFromPublicEventName:()PhotosUICore;
- (id)_px_fetchOptions;
- (id)_px_localizedQuestionTextForPetInitial:()PhotosUICore;
- (id)_px_localizedQuestionTextFromMeaningLabel:()PhotosUICore;
- (id)_px_localizedQuestionTextFromPersonActivityMeaningLabel:()PhotosUICore;
- (id)_px_localizedQuestionTextFromRelationshipLabel:()PhotosUICore initial:;
- (id)_px_requestQueue_configurationForDayHighlight;
- (id)_px_requestQueue_configurationForMemory;
- (id)_px_requestQueue_configurationForTrip;
- (id)px_displayTitle;
- (uint64_t)px_requestConfigurationWithResultHandler:()PhotosUICore;
- (void)_px_localizedQuestionTextForHighlightTitlingForTitle:()PhotosUICore;
- (void)_px_localizedQuestionTextForTripKeyAssetWithTripName:()PhotosUICore;
- (void)_px_localizedQuestionTextForTripTitlingForTitle:()PhotosUICore;
@end

@implementation PHQuestion(PhotosUICore)

- (BOOL)px_assetCollectionAndAssetFetchResultForAsset:()PhotosUICore assetCollection:assetFetchResult:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHQuestion+PhotosUICore.m" lineNumber:809 description:{@"Invalid parameter not satisfying: %@", @"assetCollection"}];

    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHQuestion+PhotosUICore.m" lineNumber:808 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHQuestion+PhotosUICore.m" lineNumber:810 description:{@"Invalid parameter not satisfying: %@", @"assetFetchResult"}];

LABEL_4:
  if ([self type] == 18)
  {
    PXContentSyndicationCollectionAndFetchResultForAsset(v9, a4, a5);
    v10 = 1;
  }

  else
  {
    photoLibrary = [v9 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v13 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v9 withType:3 options:librarySpecificFetchOptions];
    firstObject = [v13 firstObject];
    if (firstObject)
    {
      v15 = [MEMORY[0x1E6978830] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:photoLibrary];
      v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v26[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      [v15 setSortDescriptors:v17];

      v18 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:firstObject options:v15];
      v19 = [v18 count];
      v10 = v19 != 0;
      if (v19)
      {
        v20 = firstObject;
        *a4 = firstObject;
        v21 = v18;
        *a5 = v18;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_px_localizedQuestionTextForHighlightTitlingForTitle:()PhotosUICore
{
  a3;
  PXLocalizedStringFromTable(@"PXInternalPhotosChallengeDayHighlightTitlingQuestionText", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (__CFString)_px_localizedQuestionTextForLocationRepresentativeAsset:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengeLocationRepresentativeAssetQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"LOCATION REPRESENTATIVE ASSET TEXT PLACEHOLDER";
}

- (void)_px_localizedQuestionTextForTripTitlingForTitle:()PhotosUICore
{
  a3;
  PXLocalizedStringFromTable(@"PXInternalPhotosChallengeTripTitlingQuestionText", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (id)_px_localizedQuestionTextForPetInitial:()PhotosUICore
{
  if (a3)
  {
    v3 = @"PXInternalPhotosChallengePetInitialQuestionText";
  }

  else
  {
    v3 = @"PXInternalPhotosChallengePetQuestionText";
  }

  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v4];

  return v5;
}

- (__CFString)_px_localizedQuestionTextFromAgeCategory:()PhotosUICore
{
  if ([a3 unsignedIntegerValue])
  {
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengePersonAgeCategoryQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"PERSON AGE CATEGORY MATCHING QUESTION TEXT PLACEHOLDER";
}

- (__CFString)_px_localizedQuestionTextFromPersonContactMatchingContactName:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengePersonContactMatchingQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"PERSON CONTACT MATCHING QUESTION TEXT PLACEHOLDER";
}

- (__CFString)_px_localizedQuestionTextFromHolidayName:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHolidayQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"HOLIDAY QUESTION TEXT PLACEHOLDER";
}

- (void)_px_localizedQuestionTextForTripKeyAssetWithTripName:()PhotosUICore
{
  a3;
  PXLocalizedStringFromTable(@"PXInternalPhotosChallengeTripKeyAssetQuestionText", @"PhotosUICore");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

- (__CFString)_px_localizedQuestionTextFromMemoryMusicEnergySongTitle:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicEnergyQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"MEMORY MUSIC ENERGY QUESTION TEXT PLACEHOLDER";
}

- (__CFString)_px_localizedQuestionTextFromMemoryMusicQualitySongTitle:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengeMemoryMusicQualityQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"MEMORY MUSIC QUALITY QUESTION TEXT PLACEHOLDER";
}

- (__CFString)_px_localizedQuestionTextFromPublicEventName:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengePublicEventQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"PUBLIC EVENT QUESTION TEXT PLACEHOLDER";
}

- (__CFString)_px_localizedQuestionTextFromBusinessName:()PhotosUICore
{
  if (a3)
  {
    a3;
    PXLocalizedStringFromTable(@"PXInternalPhotosChallengeBusinessItemQuestionText", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  return @"BUSINESS ITEM QUESTION TEXT PLACEHOLDER";
}

- (id)_px_localizedQuestionTextFromRelationshipLabel:()PhotosUICore initial:
{
  v5 = a3;
  if ([v5 isEqualToString:@"FAMILY"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipFamilyQuestionText";
LABEL_11:
    v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"FRIEND"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipFriendQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"COWORKER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipCoworkerQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"PARTNER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipPartnerQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"PARENT"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipParentQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"SIBLING"])
  {
    if (a4)
    {
      v6 = @"PXInternalPhotosChallengeRelationshipSiblingInitialQuestionText";
    }

    else
    {
      v6 = @"PXInternalPhotosChallengeRelationshipSiblingQuestionText";
    }

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"SISTER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipSisterQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"BROTHER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipBrotherQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"FATHER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipFatherQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MOTHER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipMotherQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"ALUMNI"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipAlumniQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"CHILD"])
  {
    if (a4)
    {
      v6 = @"PXInternalPhotosChallengeRelationshipChildInitialQuestionText";
    }

    else
    {
      v6 = @"PXInternalPhotosChallengeRelationshipChildQuestionText";
    }

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"SON"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipSonQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"DAUGHTER"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipDaughterQuestionText";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"ME"])
  {
    v6 = @"PXInternalPhotosChallengeRelationshipMeQuestionText";
    goto LABEL_11;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RELATIONSHIP QUESTION TEXT PLACEHOLDER (%@)", v5];
LABEL_12:
  v8 = v7;

  return v8;
}

- (id)_px_localizedQuestionTextFromPersonActivityMeaningLabel:()PhotosUICore
{
  v3 = a3;
  if ([v3 isEqualToString:@"PersonBeachWater"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonBeachWaterQuestionText";
LABEL_13:
    v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"PersonToys"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonToysQuestionText";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"PersonPlayground"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonPlaygroundQuestionText";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"PersonActionSwimming"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonActionSwimmingQuestionText";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"PersonActionPlayingOnASwing"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonActionPlayingOnASwingQuestionText";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"PersonActionPlayingOnASlide"])
  {
    v4 = @"PXInternalPhotosChallengePersonActivityMeaningPersonActionPlayingOnASlideQuestionText";
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PERSON ACTIVITY MEANING QUESTION TEXT PLACEHOLDER (%@)", v3];
LABEL_14:
  v6 = v5;

  return v6;
}

- (id)_px_localizedQuestionTextFromMeaningLabel:()PhotosUICore
{
  v3 = a3;
  if ([v3 isEqualToString:@"Hiking"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningHikingQuestionText";
LABEL_51:
    v5 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
    goto LABEL_52;
  }

  if ([v3 isEqualToString:@"Climbing"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningClimbingQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Beaching"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningBeachingQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Diving"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningDivingQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"WinterSport"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningWinterSportQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Entertainment"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningEntertainmentQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"AmusementPark"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningAmusementParkQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Performance"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningPerformanceQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Concert"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningConcertQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Festival"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningFestivalQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Theater"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningTheaterQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Dance"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningDanceQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"SportEvent"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningSportEventQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"NightOut"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningNightOutQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Museum"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningMuseumQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Celebration"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningCelebrationQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Birthday"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningBirthdayQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Anniversary"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningAnniversaryQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Wedding"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningWeddingQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"HolidayEvent"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningHolidayEventQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Gathering"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningGatheringQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Restaurant"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningRestaurantQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Breakfast"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningBreakfastQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Lunch"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningLunchQuestionText";
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"Dinner"])
  {
    v4 = @"PXInternalPhotosChallengeMeaningDinnerQuestionText";
    goto LABEL_51;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MEANING QUESTION TEXT PLACEHOLDER (%@)", v3];
LABEL_52:
  v6 = v5;

  return v6;
}

- (id)px_displayTitle
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QUESTION TEXT PLACEHOLDER FOR TYPE (%d)", objc_msgSend(self, "type")];
  switch([self type])
  {
    case 1u:
      additionalInfo = [self additionalInfo];
      v4 = [additionalInfo objectForKeyedSubscript:@"contactName"];

      v5 = [self _px_localizedQuestionTextFromPersonContactMatchingContactName:v4];
      goto LABEL_27;
    case 3u:
      additionalInfo2 = [self additionalInfo];
      v4 = [additionalInfo2 objectForKeyedSubscript:*MEMORY[0x1E69C1638]];

      v5 = [self _px_localizedQuestionTextFromMeaningLabel:v4];
      goto LABEL_27;
    case 4u:
      additionalInfo3 = [self additionalInfo];
      v4 = [additionalInfo3 objectForKeyedSubscript:@"businessName"];

      v5 = [self _px_localizedQuestionTextFromBusinessName:v4];
      goto LABEL_27;
    case 5u:
      additionalInfo4 = [self additionalInfo];
      v4 = [additionalInfo4 objectForKeyedSubscript:*MEMORY[0x1E69C1688]];

      additionalInfo5 = [self additionalInfo];
      v13 = [additionalInfo5 objectForKeyedSubscript:*MEMORY[0x1E69C1608]];
      v14 = v13 != 0;

      v5 = [self _px_localizedQuestionTextFromRelationshipLabel:v4 initial:v14];
      goto LABEL_27;
    case 6u:
      additionalInfo6 = [self additionalInfo];
      v4 = [additionalInfo6 objectForKeyedSubscript:@"publicEventName"];

      v5 = [self _px_localizedQuestionTextFromPublicEventName:v4];
      goto LABEL_27;
    case 7u:
      additionalInfo7 = [self additionalInfo];
      v4 = [additionalInfo7 objectForKeyedSubscript:@"localizedHolidayName"];

      v5 = [self _px_localizedQuestionTextFromHolidayName:v4];
      goto LABEL_27;
    case 8u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForFrequentLocation];
      goto LABEL_31;
    case 0xAu:
      additionalInfo8 = [self additionalInfo];
      v4 = [additionalInfo8 objectForKeyedSubscript:@"ageCategory"];

      v5 = [self _px_localizedQuestionTextFromAgeCategory:v4];
      goto LABEL_27;
    case 0xBu:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForMemoryQuality];
      goto LABEL_31;
    case 0xCu:
      additionalInfo9 = [self additionalInfo];
      v4 = [additionalInfo9 objectForKeyedSubscript:@"tripName"];

      v5 = [self _px_localizedQuestionTextForTripKeyAssetWithTripName:v4];
      goto LABEL_27;
    case 0xDu:
      additionalInfo10 = [self additionalInfo];
      v22 = [additionalInfo10 objectForKeyedSubscript:*MEMORY[0x1E69C1608]];
      v23 = v22 != 0;

      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForPetInitial:v23];
      goto LABEL_31;
    case 0xEu:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForFeaturedPhoto];
      goto LABEL_31;
    case 0xFu:
      additionalInfo11 = [self additionalInfo];
      v4 = [additionalInfo11 objectForKeyedSubscript:@"songTitle"];

      v5 = [self _px_localizedQuestionTextFromMemoryMusicQualitySongTitle:v4];
      goto LABEL_27;
    case 0x10u:
      additionalInfo12 = [self additionalInfo];
      v4 = [additionalInfo12 objectForKeyedSubscript:@"songTitle"];

      v5 = [self _px_localizedQuestionTextFromMemoryMusicEnergySongTitle:v4];
      goto LABEL_27;
    case 0x11u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForSocialGroups];
      goto LABEL_31;
    case 0x12u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForSyndicatedAssets];
      goto LABEL_31;
    case 0x13u:
      additionalInfo13 = [self additionalInfo];
      v4 = [additionalInfo13 objectForKeyedSubscript:@"personActivityMeaningLabel"];

      v5 = [self _px_localizedQuestionTextFromPersonActivityMeaningLabel:v4];
      goto LABEL_27;
    case 0x14u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForSharedLibraryAssets];
      goto LABEL_31;
    case 0x15u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForSharedLibraryStart];
      goto LABEL_31;
    case 0x16u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForWallpaper];
      goto LABEL_31;
    case 0x17u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForCameraLibrarySwitch];
      goto LABEL_31;
    case 0x18u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForAlbumClassification];
      goto LABEL_31;
    case 0x19u:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForExhaustiveMomentLabelling];
      goto LABEL_31;
    case 0x1Au:
      additionalInfo14 = [self additionalInfo];
      v4 = [additionalInfo14 objectForKeyedSubscript:@"tripTitle"];

      v5 = [self _px_localizedQuestionTextForTripTitlingForTitle:v4];
      goto LABEL_27;
    case 0x1Bu:
      additionalInfo15 = [self additionalInfo];
      v4 = [additionalInfo15 objectForKeyedSubscript:@"localizedLocationName"];

      v5 = [self _px_localizedQuestionTextForLocationRepresentativeAsset:v4];
      goto LABEL_27;
    case 0x1Cu:
      additionalInfo16 = [self additionalInfo];
      v4 = [additionalInfo16 objectForKeyedSubscript:@"highlightTitle"];

      v5 = [self _px_localizedQuestionTextForHighlightTitlingForTitle:v4];
LABEL_27:
      v26 = v5;

      v2 = v4;
      goto LABEL_32;
    case 0x1Du:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForExternalAssetRelevance];
      goto LABEL_31;
    case 0x1Eu:
      _px_localizedQuestionTextForFrequentLocation = [self _px_localizedQuestionTextForStoryPromptSuggestions];
LABEL_31:
      v26 = _px_localizedQuestionTextForFrequentLocation;
LABEL_32:

      v2 = v26;
      break;
    default:
      break;
  }

  return v2;
}

- (PXSurveyQuestionAlbumConfiguration)_px_requestQueue_configurationForAlbum
{
  v12[1] = *MEMORY[0x1E69E9840];
  entityIdentifier = [self entityIdentifier];
  v3 = MEMORY[0x1E6978650];
  v12[0] = entityIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  _px_fetchOptions = [self _px_fetchOptions];
  v6 = [v3 fetchAssetCollectionsWithLocalIdentifiers:v4 options:_px_fetchOptions];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [PXSurveyQuestionAlbumConfiguration alloc];
    px_displayTitle = [self px_displayTitle];
    v10 = [(PXSurveyQuestionAlbumConfiguration *)v8 initWithTitle:px_displayTitle album:firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXSurveyQuestionMemoryConfiguration)_px_requestQueue_configurationForMemory:()PhotosUICore assetCollection:customKeyAssetIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  px_displayTitle = [self px_displayTitle];
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  if ([self type] == 15 || objc_msgSend(self, "type") == 16)
  {
    additionalInfo = [self additionalInfo];
    v15 = [additionalInfo objectForKeyedSubscript:*MEMORY[0x1E69C1670]];

    if (v15)
    {
      v16 = [[PXSurveyQuestionMemoryConfiguration alloc] initWithTitle:px_displayTitle memory:v13 songAdamId:v15 customKeyAssetIdentifier:v10];
    }

    else
    {
      v16 = [[PXSurveyQuestionTextConfiguration alloc] initWithTitle:@"This Photos Challenge Special Edition question is no longer valid. Please select Skip." questionText:@"⚠️" shouldScaleForLongText:0];
    }

    v17 = v16;
  }

  else
  {
    v17 = [[PXSurveyQuestionMemoryConfiguration alloc] initWithTitle:px_displayTitle memory:v13 songAdamId:0 customKeyAssetIdentifier:v10];
  }

  return v17;
}

- (id)_px_requestQueue_configurationForTrip
{
  entityIdentifier = [self entityIdentifier];
  _px_fetchOptions = [self _px_fetchOptions];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"dayGroupAssets.uuid CONTAINS %@", entityIdentifier];
  [_px_fetchOptions setInternalPredicate:v4];

  v5 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:6 subtype:1000000304 options:_px_fetchOptions];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = [self _px_requestQueue_configurationForMemory:0 assetCollection:firstObject customKeyAssetIdentifier:entityIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_px_requestQueue_configurationForDayHighlight
{
  entityIdentifier = [self entityIdentifier];
  _px_fetchOptions = [self _px_fetchOptions];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assets.uuid CONTAINS %@", entityIdentifier];
  [_px_fetchOptions setInternalPredicate:v4];

  v5 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:6 subtype:1000000301 options:_px_fetchOptions];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = [self _px_requestQueue_configurationForMemory:0 assetCollection:firstObject customKeyAssetIdentifier:entityIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXSurveyQuestionAssetGroupConfiguration)_px_requestQueue_configurationForMoment
{
  v12[1] = *MEMORY[0x1E69E9840];
  entityIdentifier = [self entityIdentifier];
  v3 = MEMORY[0x1E6978650];
  v12[0] = entityIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  _px_fetchOptions = [self _px_fetchOptions];
  v6 = [v3 fetchAssetCollectionsWithType:3 localIdentifiers:v4 options:_px_fetchOptions];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [PXSurveyQuestionAssetGroupConfiguration alloc];
    px_displayTitle = [self px_displayTitle];
    v10 = [(PXSurveyQuestionAssetGroupConfiguration *)v8 initWithTitle:px_displayTitle assetCollection:firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXSurveyQuestionCustomizableAssetGroupConfiguration)_px_requestQueue_configurationForExternalAssetRelevance
{
  v30[1] = *MEMORY[0x1E69E9840];
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  additionalInfo = [self additionalInfo];
  v5 = [additionalInfo objectForKeyedSubscript:*MEMORY[0x1E6978F40]];

  v6 = MEMORY[0x1E6978650];
  allObjects = [v5 allObjects];
  v8 = [v6 fetchAssetCollectionsWithType:3 localIdentifiers:allObjects options:librarySpecificFetchOptions];

  if (![v8 count])
  {
    v26 = 0;
    goto LABEL_13;
  }

  photoLibrary2 = [self photoLibrary];
  librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

  v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollections:v8 options:librarySpecificFetchOptions2];
  fetchedObjects = [v11 fetchedObjects];

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:fetchedObjects];
  if ([v13 count])
  {
    v28 = librarySpecificFetchOptions2;
    v14 = MEMORY[0x1E6978630];
    entityIdentifier = [self entityIdentifier];
    v29 = [v14 localIdentifierWithUUID:entityIdentifier];

    additionalInfo2 = [self additionalInfo];
    v17 = [additionalInfo2 objectForKeyedSubscript:*MEMORY[0x1E69C1620]];
    LODWORD(v14) = [v17 isEqual:MEMORY[0x1E695E110]];

    if (v14)
    {
      photoLibrary3 = [self photoLibrary];
      librarySpecificFetchOptions3 = [photoLibrary3 librarySpecificFetchOptions];

      v20 = MEMORY[0x1E6978630];
      v30[0] = v29;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v22 = [v20 fetchAssetsWithLocalIdentifiers:v21 options:librarySpecificFetchOptions3];
      firstObject = [v22 firstObject];

      if (!firstObject)
      {
        goto LABEL_10;
      }

      [v13 addObject:firstObject];
    }

    librarySpecificFetchOptions3 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:v13 title:0];
    if (librarySpecificFetchOptions3)
    {
      _px_localizedQuestionTextForExternalAssetRelevance = [self _px_localizedQuestionTextForExternalAssetRelevance];
      v25 = v29;
      v26 = [[PXSurveyQuestionCustomizableAssetGroupConfiguration alloc] initWithTitle:_px_localizedQuestionTextForExternalAssetRelevance assetCollection:librarySpecificFetchOptions3 customMaximumPreviewAssetCount:&unk_1F190A1F8 keyAssetLocalIdentifier:v29];

      librarySpecificFetchOptions2 = v28;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v26 = 0;
    librarySpecificFetchOptions2 = v28;
    v25 = v29;
    goto LABEL_11;
  }

  v26 = 0;
LABEL_12:

LABEL_13:

  return v26;
}

- (id)_px_requestQueue_configurationForMemory
{
  v10[1] = *MEMORY[0x1E69E9840];
  entityIdentifier = [self entityIdentifier];
  v3 = MEMORY[0x1E6978650];
  v10[0] = entityIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  _px_fetchOptions = [self _px_fetchOptions];
  v6 = [v3 fetchAssetCollectionsWithType:4 localIdentifiers:v4 options:_px_fetchOptions];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [self _px_requestQueue_configurationForMemory:firstObject assetCollection:0 customKeyAssetIdentifier:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXSurveyQuestionPersonGroupConfiguration)_px_requestQueue_configurationForPersonGroup
{
  additionalInfo = [self additionalInfo];
  v3 = [additionalInfo objectForKeyedSubscript:@"personUUIDs"];

  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setPersonContext:1];
  v6 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v3 options:librarySpecificFetchOptions];
  fetchedObjects = [v6 fetchedObjects];
  v8 = [v3 count];
  if (v8 == [v6 count])
  {
    v9 = [PXSurveyQuestionPersonGroupConfiguration alloc];
    px_displayTitle = [self px_displayTitle];
    v11 = [(PXSurveyQuestionPersonGroupConfiguration *)v9 initWithTitle:px_displayTitle personGroup:fetchedObjects];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PXSurveyQuestionPersonConfiguration)_px_requestQueue_configurationForPerson
{
  v12[1] = *MEMORY[0x1E69E9840];
  entityIdentifier = [self entityIdentifier];
  v3 = MEMORY[0x1E6978980];
  v12[0] = entityIdentifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  _px_fetchOptions = [self _px_fetchOptions];
  v6 = [v3 fetchPersonsWithLocalIdentifiers:v4 options:_px_fetchOptions];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [PXSurveyQuestionPersonConfiguration alloc];
    px_displayTitle = [self px_displayTitle];
    v10 = [(PXSurveyQuestionPersonConfiguration *)v8 initWithTitle:px_displayTitle person:firstObject];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXSurveyQuestionMapConfiguration)_px_requestQueue_configurationForAsset
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!selfCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchResult<PHAsset *> * _Nullable _AssetFetchForQuestion(PHQuestion *__strong)"];
    [currentHandler handleFailureInFunction:v21 file:@"PHQuestion+PhotosUICore.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"question"}];
  }

  if ([selfCopy type] != 18)
  {
    displayType = [selfCopy displayType];
    photoLibrary = [selfCopy photoLibrary];
    entityIdentifier = [selfCopy entityIdentifier];
    if (displayType == 1)
    {
      photoLibrary = photoLibrary;
      if (!photoLibrary)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PHFetchOptions *_LimitedFetchOptionsForPhotoLibraryAssetGroup(PHPhotoLibrary *__strong)"];
        [currentHandler2 handleFailureInFunction:v23 file:@"PHQuestion+PhotosUICore.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
      }

      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
      [librarySpecificFetchOptions setFetchLimit:9];
    }

    else
    {
      librarySpecificFetchOptions = _LimitedFetchOptionsForPhotoLibrary(photoLibrary);
    }

    v10 = MEMORY[0x1E6978630];
    *buf = entityIdentifier;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v8 = [v10 fetchAssetsWithLocalIdentifiers:v5 options:librarySpecificFetchOptions];
    goto LABEL_12;
  }

  v24 = 0;
  entityIdentifier = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v24];
  photoLibrary = v24;
  if (entityIdentifier)
  {
    librarySpecificFetchOptions = [selfCopy entityIdentifier];
    v5 = _LimitedFetchOptionsForPhotoLibrary(entityIdentifier);
    [v5 setIncludeGuestAssets:1];
    v6 = MEMORY[0x1E6978630];
    *buf = librarySpecificFetchOptions;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
    v8 = [v6 fetchAssetsWithSyndicationIdentifiers:v7 options:v5];

LABEL_12:
    goto LABEL_13;
  }

  entityIdentifier = PLUIGetLog();
  if (os_log_type_enabled(entityIdentifier, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = photoLibrary;
    _os_log_impl(&dword_1A3C1C000, entityIdentifier, OS_LOG_TYPE_ERROR, "Failed to open the syndication photo library: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_13:

  firstObject = [v8 firstObject];
  if (!firstObject)
  {
    v13 = 0;
    goto LABEL_23;
  }

  if ([selfCopy displayType] == 7)
  {
    v12 = PXSurveyQuestionWallpaperConfiguration;
LABEL_21:
    v18 = [v12 alloc];
    px_displayTitle = [selfCopy px_displayTitle];
    v13 = [v18 initWithTitle:px_displayTitle asset:firstObject];
    goto LABEL_22;
  }

  if ([selfCopy displayType] != 4 || (objc_msgSend(firstObject, "location"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v12 = PXSurveyQuestionAssetConfiguration;
    goto LABEL_21;
  }

  v15 = [PXSurveyQuestionMapConfiguration alloc];
  px_displayTitle = [selfCopy px_displayTitle];
  location = [firstObject location];
  v13 = [(PXSurveyQuestionMapConfiguration *)v15 initWithTitle:px_displayTitle location:location];

LABEL_22:
LABEL_23:

  return v13;
}

- (PXSurveyQuestionTextConfiguration)_px_requestQueue_configurationForTextWithScalingForLongText:()PhotosUICore
{
  additionalInfo = [self additionalInfo];
  v6 = [additionalInfo objectForKeyedSubscript:*MEMORY[0x1E69C1608]];

  v7 = [PXSurveyQuestionTextConfiguration alloc];
  px_displayTitle = [self px_displayTitle];
  v9 = [(PXSurveyQuestionTextConfiguration *)v7 initWithTitle:px_displayTitle questionText:v6 shouldScaleForLongText:a3];

  return v9;
}

- (PXSurveyQuestionTextConfiguration)_px_requestQueue_fetchConfiguration
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self displayType] == 6)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForTextWithScalingForLongText:{objc_msgSend(self, "type") == 30}];
    goto LABEL_22;
  }

  if ([self displayType] == 8)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForAlbum];
    goto LABEL_22;
  }

  if (![self entityType])
  {
    if ([self type] == 29)
    {
      [self _px_requestQueue_configurationForExternalAssetRelevance];
    }

    else
    {
      [self _px_requestQueue_configurationForAsset];
    }
    _px_requestQueue_configurationForAlbum = ;
LABEL_22:
    v3 = _px_requestQueue_configurationForAlbum;
    if (_px_requestQueue_configurationForAlbum)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ([self entityType] == 1)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForPerson];
    goto LABEL_22;
  }

  if ([self entityType] == 5)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForPersonGroup];
    goto LABEL_22;
  }

  if ([self entityType] == 2)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForMemory];
    goto LABEL_22;
  }

  if ([self entityType] == 3)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForTrip];
    goto LABEL_22;
  }

  if ([self entityType] == 7)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForMoment];
    goto LABEL_22;
  }

  if ([self entityType] == 8)
  {
    _px_requestQueue_configurationForAlbum = [self _px_requestQueue_configurationForDayHighlight];
    goto LABEL_22;
  }

LABEL_23:
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    entityIdentifier = [self entityIdentifier];
    v9 = 138412802;
    v10 = entityIdentifier;
    v11 = 1024;
    entityType = [self entityType];
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Could not find entity (%@) of type %hu backing question (%@)", &v9, 0x1Cu);
  }

  v6 = [PXSurveyQuestionTextConfiguration alloc];
  v7 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeInvalidQuestionText", @"PhotosUICore");
  v3 = [(PXSurveyQuestionTextConfiguration *)v6 initWithTitle:v7 questionText:@"😱" shouldScaleForLongText:0];

LABEL_26:

  return v3;
}

- (id)_px_fetchOptions
{
  photoLibrary = [self photoLibrary];
  v2 = _LimitedFetchOptionsForPhotoLibrary(photoLibrary);

  return v2;
}

- (uint64_t)px_requestConfigurationWithResultHandler:()PhotosUICore
{
  v4 = a3;
  _px_fetchRequestIdAndIncrement = [objc_opt_class() _px_fetchRequestIdAndIncrement];
  _px_requestQueue = [objc_opt_class() _px_requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PHQuestion_PhotosUICore__px_requestConfigurationWithResultHandler___block_invoke;
  block[3] = &unk_1E774C508;
  block[4] = self;
  v10 = v4;
  v11 = _px_fetchRequestIdAndIncrement;
  v7 = v4;
  dispatch_async(_px_requestQueue, block);

  return _px_fetchRequestIdAndIncrement;
}

+ (uint64_t)_px_fetchRequestIdAndIncrement
{
  if (_px_fetchRequestIdAndIncrement_onceToken != -1)
  {
    dispatch_once(&_px_fetchRequestIdAndIncrement_onceToken, &__block_literal_global_192_32385);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _px_fetchRequestIdAndIncrement__px_requestId++;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)_px_configurationCache
{
  if (_px_configurationCache_onceToken != -1)
  {
    dispatch_once(&_px_configurationCache_onceToken, &__block_literal_global_190_32387);
  }

  v1 = _px_configurationCache_cache;

  return v1;
}

+ (id)_px_requestQueue
{
  if (_px_requestQueue_onceToken != -1)
  {
    dispatch_once(&_px_requestQueue_onceToken, &__block_literal_global_32389);
  }

  v1 = _px_requestQueue_queue;

  return v1;
}

@end