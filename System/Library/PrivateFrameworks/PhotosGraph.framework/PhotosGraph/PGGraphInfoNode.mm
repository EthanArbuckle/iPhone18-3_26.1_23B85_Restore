@interface PGGraphInfoNode
+ (id)assetPropertiesWithNumberOfUtilityAssets:(unint64_t)assets numberOfDefaultAssets:(unint64_t)defaultAssets numberOfImprovedAssets:(unint64_t)improvedAssets numberOfBetterAssets:(unint64_t)betterAssets;
+ (id)numberOfSelfies:(unint64_t)selfies;
+ (id)propertiesWithLastIncrementalUpdateInvocationOnDate:(id)date;
+ (id)routineInfoPropertiesWithServiceManager:(id)manager;
+ (id)topTierScorePropertiesWithAestheticScore:(double)score aestheticScoreForTripKeyAsset:(double)asset;
- (BOOL)hasProperties:(id)properties;
- (NSArray)languageIdentifiers;
- (NSLocale)locale;
- (PGGraphInfoNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (double)topTierAestheticScore;
- (double)topTierAestheticScoreForTripKeyAsset;
- (id)propertyDictionary;
- (void)setLocalProperties:(id)properties;
@end

@implementation PGGraphInfoNode

- (double)topTierAestheticScoreForTripKeyAsset
{
  result = self->_topTierAestheticScoreForTripKeyAsset;
  if (result < 0.52)
  {
    return 0.52;
  }

  return result;
}

- (double)topTierAestheticScore
{
  result = self->_topTierAestheticScore;
  if (result < 0.52)
  {
    return 0.52;
  }

  return result;
}

- (NSArray)languageIdentifiers
{
  v3 = objc_opt_class();
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;

  return [v3 deserializeLanguageIdentifiers:flattenedLanguageIdentifiers];
}

- (NSLocale)locale
{
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:self->_localeIdentifier];

  return v2;
}

- (id)propertyDictionary
{
  v56[48] = *MEMORY[0x277D85DE8];
  v55[0] = @"creationDate";
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDateTimeInterval];
  v56[0] = v54;
  v55[1] = @"dateOfLastIncrementalUpdateInvocation";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateOfLastIncrementalUpdateInvocationTimeInterval];
  v53 = v3;
  localeIdentifier = self->_localeIdentifier;
  geoServiceProviderID = &stru_2843F5C58;
  if (!localeIdentifier)
  {
    localeIdentifier = &stru_2843F5C58;
  }

  v56[1] = v3;
  v56[2] = localeIdentifier;
  v55[2] = @"localeIdentifier";
  v55[3] = @"languageIdentifiers";
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;
  if (!flattenedLanguageIdentifiers)
  {
    flattenedLanguageIdentifiers = &stru_2843F5C58;
  }

  if (self->_geoServiceProviderID)
  {
    geoServiceProviderID = self->_geoServiceProviderID;
  }

  v56[3] = flattenedLanguageIdentifiers;
  v56[4] = geoServiceProviderID;
  v55[4] = @"geoServiceProviderID";
  v55[5] = @"curationAlgorithmsVersion";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_curationAlgorithmsVersion];
  v56[5] = v52;
  v55[6] = @"memoriesAlgorithmsVersion";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_memoriesAlgorithmsVersion];
  v56[6] = v51;
  v55[7] = @"meaningAlgorithmsVersion";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_meaningAlgorithmsVersion];
  v56[7] = v50;
  v55[8] = @"eventLabelingV2ModelVersion";
  v49 = [MEMORY[0x277CCABB0] numberWithInteger:self->_eventLabelingV2ModelVersion];
  v56[8] = v49;
  v55[9] = @"personalTraitsEntityNamesVersion";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:self->_personalTraitsEntityNamesVersion];
  v56[9] = v48;
  v55[10] = @"personActivityMeaningAlgorithmsVersion";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_personActivityMeaningAlgorithmsVersion];
  v56[10] = v47;
  v55[11] = @"relationshipAlgorithmsVersion";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_relationshipAlgorithmsVersion];
  v56[11] = v46;
  v55[12] = @"businessitemAlgorithmsVersion";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_businessItemAlgorithmsVersion];
  v56[12] = v45;
  v55[13] = @"publiceventAlgorithmsVersion";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_publicEventAlgorithmsVersion];
  v56[13] = v44;
  v55[14] = @"holidayAlgorithmsVersion";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_holidayAlgorithmsVersion];
  v56[14] = v43;
  v55[15] = @"frequentlocationAlgorithmsVersion";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_frequentLocationAlgorithmsVersion];
  v56[15] = v42;
  v55[16] = @"autonamingAlgorithmsVersion";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_autonamingAlgorithmsVersion];
  v56[16] = v41;
  v55[17] = @"questionsVersion";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionsVersion];
  v56[17] = v40;
  v55[18] = @"tripKeyAssetAlgorithmsVersion";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tripKeyAssetAlgorithmsVersion];
  v56[18] = v39;
  v55[19] = @"ageCategoryAlgorithmsVersion";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_ageCategoryAlgorithmsVersion];
  v56[19] = v38;
  v55[20] = @"memoryQualityAlgorithmsVersion";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_memoryQualityAlgorithmsVersion];
  v56[20] = v37;
  v55[21] = @"petAlgorithmsVersion";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_petAlgorithmsVersion];
  v56[21] = v36;
  v55[22] = @"featuredPhotoAlgorithmsVersion";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_featuredPhotoAlgorithmsVersion];
  v56[22] = v35;
  v55[23] = @"longTailFeaturedPhotoAlgorithmsVersion";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_longTailFeaturedPhotoAlgorithmsVersion];
  v56[23] = v34;
  v55[24] = @"sharedLibrarySuggestionsAlgorithmsVersion";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibrarySuggestionsAlgorithmsVersion];
  v56[24] = v33;
  v55[25] = @"sharedLibraryStartAlgorithmsVersion";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibraryStartAlgorithmsVersion];
  v56[25] = v32;
  v55[26] = @"sharedLibraryCameraLibrarySwitchAlgorithmsVersion";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion];
  v56[26] = v31;
  v55[27] = @"wallpaperAlgorithmsVersion";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_wallpaperAlgorithmsVersion];
  v56[27] = v30;
  v55[28] = @"locationRepresentativeAssetAlgorithmsVersion";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_locationRepresentativeAssetAlgorithmsVersion];
  v56[28] = v29;
  v55[29] = @"canUseLocationDomain";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:self->_canUseLocationDomain];
  v56[29] = v28;
  v55[30] = @"routineAvailable";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_routineInfo.routineAvailable];
  v56[30] = v27;
  v55[31] = @"routineNumberOfLocationsOfInterest";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfLocationsOfInterest];
  v56[31] = v26;
  v55[32] = @"routineNumberOfVisits";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfVisits];
  v56[32] = v25;
  v55[33] = @"routineNumberOfTimeMatches";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfTimeMatches];
  v56[33] = v24;
  v55[34] = @"routineNumberOfClosebyLocationMatches";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfCloseByLocationMatches];
  v56[34] = v23;
  v55[35] = @"routineNumberOfRemoteLocationMatches";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfRemoteLocationMatches];
  v56[35] = v22;
  v55[36] = @"routineNumberofMatchRequests";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_routineInfo.numberOfMatchRequests];
  v56[36] = v21;
  v55[37] = @"routinePinningVisitsRatio";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_routineInfo.pinningVisitsRatio];
  v56[37] = v20;
  v55[38] = @"numberOfSelfies";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfSelfies];
  v56[38] = v19;
  v55[39] = @"topTierAestheticScore";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topTierAestheticScore];
  v56[39] = v7;
  v55[40] = @"topTierAestheticScoreForTripKeyAsset";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_topTierAestheticScoreForTripKeyAsset];
  v56[40] = v8;
  v55[41] = @"numberOfUtilityAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfUtilityAssets];
  v56[41] = v9;
  v55[42] = @"numberOfDefaultAssets";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfDefaultAssets];
  v56[42] = v10;
  v55[43] = @"numberOfImprovedAssets";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfImprovedAssets];
  v56[43] = v11;
  v55[44] = @"numberOfBetterAssets";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_numberOfBetterAssets];
  v56[44] = v12;
  v55[45] = @"canAccessContactsStore";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_canAccessContactsStore];
  v56[45] = v13;
  v55[46] = @"mergeCandidateConfidenceThreshold";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mergeCandidateConfidenceThreshold];
  v56[46] = v14;
  v55[47] = @"IntelligencePlatformVersion";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_intelligencePlatformVersion];
  v56[47] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:48];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"creationDate"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_creationDateTimeInterval)
      {
        goto LABEL_99;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"dateOfLastIncrementalUpdateInvocation"];
    v7 = v9;
    if (v9)
    {
      [v9 doubleValue];
      if (v10 != self->_dateOfLastIncrementalUpdateInvocationTimeInterval)
      {
        goto LABEL_99;
      }
    }

    v11 = [v5 objectForKeyedSubscript:@"localeIdentifier"];
    v7 = v11;
    if (v11)
    {
      if (![v11 isEqual:self->_localeIdentifier])
      {
        goto LABEL_99;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"languageIdentifiers"];
    v7 = v12;
    if (v12)
    {
      if (![v12 isEqual:self->_flattenedLanguageIdentifiers])
      {
        goto LABEL_99;
      }
    }

    v13 = [v5 objectForKeyedSubscript:@"geoServiceProviderID"];
    v7 = v13;
    if (v13)
    {
      if (![v13 isEqual:self->_geoServiceProviderID])
      {
        goto LABEL_99;
      }
    }

    v14 = [v5 objectForKeyedSubscript:@"curationAlgorithmsVersion"];
    v7 = v14;
    if (v14)
    {
      if ([v14 unsignedIntegerValue] != self->_curationAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v15 = [v5 objectForKeyedSubscript:@"memoriesAlgorithmsVersion"];
    v7 = v15;
    if (v15)
    {
      if ([v15 unsignedIntegerValue] != self->_memoriesAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v16 = [v5 objectForKeyedSubscript:@"meaningAlgorithmsVersion"];
    v7 = v16;
    if (v16)
    {
      if ([v16 unsignedIntegerValue] != self->_meaningAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v17 = [v5 objectForKeyedSubscript:@"personActivityMeaningAlgorithmsVersion"];
    v7 = v17;
    if (v17)
    {
      if ([v17 unsignedIntegerValue] != self->_personActivityMeaningAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v18 = [v5 objectForKeyedSubscript:@"relationshipAlgorithmsVersion"];
    v7 = v18;
    if (v18)
    {
      if ([v18 unsignedIntegerValue] != self->_relationshipAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v19 = [v5 objectForKeyedSubscript:@"businessitemAlgorithmsVersion"];
    v7 = v19;
    if (v19)
    {
      if ([v19 unsignedIntegerValue] != self->_businessItemAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v20 = [v5 objectForKeyedSubscript:@"publiceventAlgorithmsVersion"];
    v7 = v20;
    if (v20)
    {
      if ([v20 unsignedIntegerValue] != self->_publicEventAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v21 = [v5 objectForKeyedSubscript:@"holidayAlgorithmsVersion"];
    v7 = v21;
    if (v21)
    {
      if ([v21 unsignedIntegerValue] != self->_holidayAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v22 = [v5 objectForKeyedSubscript:@"frequentlocationAlgorithmsVersion"];
    v7 = v22;
    if (v22)
    {
      if ([v22 unsignedIntegerValue] != self->_frequentLocationAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v23 = [v5 objectForKeyedSubscript:@"autonamingAlgorithmsVersion"];
    v7 = v23;
    if (v23)
    {
      if ([v23 unsignedIntegerValue] != self->_autonamingAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v24 = [v5 objectForKeyedSubscript:@"questionsVersion"];
    v7 = v24;
    if (v24)
    {
      if ([v24 unsignedIntegerValue] != self->_questionsVersion)
      {
        goto LABEL_99;
      }
    }

    v25 = [v5 objectForKeyedSubscript:@"tripKeyAssetAlgorithmsVersion"];
    v7 = v25;
    if (v25)
    {
      if ([v25 unsignedIntegerValue] != self->_tripKeyAssetAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v26 = [v5 objectForKeyedSubscript:@"ageCategoryAlgorithmsVersion"];
    v7 = v26;
    if (v26)
    {
      if ([v26 unsignedIntegerValue] != self->_ageCategoryAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v27 = [v5 objectForKeyedSubscript:@"memoryQualityAlgorithmsVersion"];
    v7 = v27;
    if (v27)
    {
      if ([v27 unsignedIntegerValue] != self->_memoryQualityAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v28 = [v5 objectForKeyedSubscript:@"petAlgorithmsVersion"];
    v7 = v28;
    if (v28)
    {
      if ([v28 unsignedIntegerValue] != self->_petAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v29 = [v5 objectForKeyedSubscript:@"featuredPhotoAlgorithmsVersion"];
    v7 = v29;
    if (v29)
    {
      if ([v29 unsignedIntegerValue] != self->_featuredPhotoAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v30 = [v5 objectForKeyedSubscript:@"longTailFeaturedPhotoAlgorithmsVersion"];
    v7 = v30;
    if (v30)
    {
      if ([v30 unsignedIntegerValue] != self->_longTailFeaturedPhotoAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v31 = [v5 objectForKeyedSubscript:@"sharedLibrarySuggestionsAlgorithmsVersion"];
    v7 = v31;
    if (v31)
    {
      if ([v31 unsignedIntegerValue] != self->_sharedLibrarySuggestionsAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v32 = [v5 objectForKeyedSubscript:@"sharedLibraryStartAlgorithmsVersion"];
    v7 = v32;
    if (v32)
    {
      if ([v32 unsignedIntegerValue] != self->_sharedLibraryStartAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v33 = [v5 objectForKeyedSubscript:@"sharedLibraryCameraLibrarySwitchAlgorithmsVersion"];
    v7 = v33;
    if (v33)
    {
      if ([v33 unsignedIntegerValue] != self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v34 = [v5 objectForKeyedSubscript:@"wallpaperAlgorithmsVersion"];
    v7 = v34;
    if (v34)
    {
      if ([v34 unsignedIntegerValue] != self->_wallpaperAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v35 = [v5 objectForKeyedSubscript:@"locationRepresentativeAssetAlgorithmsVersion"];
    v7 = v35;
    if (v35)
    {
      if ([v35 unsignedIntegerValue] != self->_locationRepresentativeAssetAlgorithmsVersion)
      {
        goto LABEL_99;
      }
    }

    v36 = [v5 objectForKeyedSubscript:@"eventLabelingV2ModelVersion"];
    v7 = v36;
    if (v36)
    {
      if ([v36 integerValue] != self->_eventLabelingV2ModelVersion)
      {
        goto LABEL_99;
      }
    }

    v37 = [v5 objectForKeyedSubscript:@"personalTraitsEntityNamesVersion"];
    v7 = v37;
    if (v37)
    {
      if ([v37 integerValue] != self->_personalTraitsEntityNamesVersion)
      {
        goto LABEL_99;
      }
    }

    v38 = [v5 objectForKeyedSubscript:@"canUseLocationDomain"];
    v7 = v38;
    if (v38)
    {
      if (self->_canUseLocationDomain != [v38 BOOLValue])
      {
        goto LABEL_99;
      }
    }

    v39 = [v5 objectForKeyedSubscript:@"routineAvailable"];
    v7 = v39;
    if (v39)
    {
      if (self->_routineInfo.routineAvailable != [v39 BOOLValue])
      {
        goto LABEL_99;
      }
    }

    v40 = [v5 objectForKeyedSubscript:@"routineNumberOfLocationsOfInterest"];
    v7 = v40;
    if (v40)
    {
      if ([v40 unsignedIntegerValue] != self->_routineInfo.numberOfLocationsOfInterest)
      {
        goto LABEL_99;
      }
    }

    v41 = [v5 objectForKeyedSubscript:@"routineNumberOfVisits"];
    v7 = v41;
    if (v41)
    {
      if ([v41 unsignedIntegerValue] != self->_routineInfo.numberOfVisits)
      {
        goto LABEL_99;
      }
    }

    v42 = [v5 objectForKeyedSubscript:@"routineNumberOfTimeMatches"];
    v7 = v42;
    if (v42)
    {
      if ([v42 unsignedIntegerValue] != self->_routineInfo.numberOfTimeMatches)
      {
        goto LABEL_99;
      }
    }

    v43 = [v5 objectForKeyedSubscript:@"routineNumberOfClosebyLocationMatches"];
    v7 = v43;
    if (v43)
    {
      if ([v43 unsignedIntegerValue] != self->_routineInfo.numberOfCloseByLocationMatches)
      {
        goto LABEL_99;
      }
    }

    v44 = [v5 objectForKeyedSubscript:@"routineNumberOfRemoteLocationMatches"];
    v7 = v44;
    if (v44)
    {
      if ([v44 unsignedIntegerValue] != self->_routineInfo.numberOfRemoteLocationMatches)
      {
        goto LABEL_99;
      }
    }

    v45 = [v5 objectForKeyedSubscript:@"routineNumberofMatchRequests"];
    v7 = v45;
    if (v45)
    {
      if ([v45 unsignedIntegerValue] != self->_routineInfo.numberOfMatchRequests)
      {
        goto LABEL_99;
      }
    }

    v46 = [v5 objectForKeyedSubscript:@"routinePinningVisitsRatio"];
    v7 = v46;
    if (v46)
    {
      if (self->_routineInfo.pinningVisitsRatio != [v46 unsignedIntegerValue])
      {
        goto LABEL_99;
      }
    }

    v47 = [v5 objectForKeyedSubscript:@"numberOfSelfies"];
    v7 = v47;
    if (v47)
    {
      if ([v47 unsignedIntegerValue] != self->_numberOfSelfies)
      {
        goto LABEL_99;
      }
    }

    v48 = [v5 objectForKeyedSubscript:@"topTierAestheticScore"];
    v7 = v48;
    if (v48)
    {
      [v48 doubleValue];
      if (v49 != self->_topTierAestheticScore)
      {
        goto LABEL_99;
      }
    }

    v50 = [v5 objectForKeyedSubscript:@"topTierAestheticScoreForTripKeyAsset"];
    v7 = v50;
    if (v50)
    {
      [v50 doubleValue];
      if (v51 != self->_topTierAestheticScoreForTripKeyAsset)
      {
        goto LABEL_99;
      }
    }

    v52 = [v5 objectForKeyedSubscript:@"numberOfUtilityAssets"];
    v7 = v52;
    if (v52)
    {
      if ([v52 unsignedIntegerValue] != self->_numberOfUtilityAssets)
      {
        goto LABEL_99;
      }
    }

    v53 = [v5 objectForKeyedSubscript:@"numberOfDefaultAssets"];
    v7 = v53;
    if (v53)
    {
      if ([v53 unsignedIntegerValue] != self->_numberOfDefaultAssets)
      {
        goto LABEL_99;
      }
    }

    v54 = [v5 objectForKeyedSubscript:@"numberOfImprovedAssets"];
    v7 = v54;
    if (v54)
    {
      if ([v54 unsignedIntegerValue] != self->_numberOfImprovedAssets)
      {
        goto LABEL_99;
      }
    }

    v55 = [v5 objectForKeyedSubscript:@"numberOfBetterAssets"];
    v7 = v55;
    if (v55)
    {
      if ([v55 unsignedIntegerValue] != self->_numberOfBetterAssets)
      {
        goto LABEL_99;
      }
    }

    v56 = [v5 objectForKeyedSubscript:@"canAccessContactsStore"];
    v7 = v56;
    if (v56)
    {
      if (self->_canAccessContactsStore != [v56 BOOLValue])
      {
        goto LABEL_99;
      }
    }

    v57 = [v5 objectForKeyedSubscript:@"mergeCandidateConfidenceThreshold"];
    v7 = v57;
    if (v57)
    {
      [v57 doubleValue];
      if (v58 != self->_mergeCandidateConfidenceThreshold)
      {
        goto LABEL_99;
      }
    }

    v59 = [v5 objectForKeyedSubscript:@"IntelligencePlatformVersion"];
    v7 = v59;
    if (!v59 || ([v59 doubleValue], v60 == self->_intelligencePlatformVersion))
    {
      v61 = 1;
    }

    else
    {
LABEL_99:
      v61 = 0;
    }
  }

  else
  {
    v61 = 1;
  }

  return v61;
}

- (void)setLocalProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"creationDate"];
  [v4 doubleValue];
  self->_creationDateTimeInterval = v5;

  v6 = [propertiesCopy objectForKeyedSubscript:@"dateOfLastIncrementalUpdateInvocation"];
  [v6 doubleValue];
  self->_dateOfLastIncrementalUpdateInvocationTimeInterval = v7;

  v8 = [propertiesCopy objectForKeyedSubscript:@"localeIdentifier"];
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v8;

  v10 = [propertiesCopy objectForKeyedSubscript:@"languageIdentifiers"];
  flattenedLanguageIdentifiers = self->_flattenedLanguageIdentifiers;
  self->_flattenedLanguageIdentifiers = v10;

  v12 = [propertiesCopy objectForKeyedSubscript:@"geoServiceProviderID"];
  geoServiceProviderID = self->_geoServiceProviderID;
  self->_geoServiceProviderID = v12;

  v14 = [propertiesCopy objectForKeyedSubscript:@"curationAlgorithmsVersion"];
  self->_curationAlgorithmsVersion = [v14 unsignedIntegerValue];

  v15 = [propertiesCopy objectForKeyedSubscript:@"memoriesAlgorithmsVersion"];
  self->_memoriesAlgorithmsVersion = [v15 unsignedIntegerValue];

  v16 = [propertiesCopy objectForKeyedSubscript:@"meaningAlgorithmsVersion"];
  self->_meaningAlgorithmsVersion = [v16 unsignedIntegerValue];

  v17 = [propertiesCopy objectForKeyedSubscript:@"personActivityMeaningAlgorithmsVersion"];
  self->_personActivityMeaningAlgorithmsVersion = [v17 unsignedIntegerValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"relationshipAlgorithmsVersion"];
  self->_relationshipAlgorithmsVersion = [v18 unsignedIntegerValue];

  v19 = [propertiesCopy objectForKeyedSubscript:@"businessitemAlgorithmsVersion"];
  self->_businessItemAlgorithmsVersion = [v19 unsignedIntegerValue];

  v20 = [propertiesCopy objectForKeyedSubscript:@"publiceventAlgorithmsVersion"];
  self->_publicEventAlgorithmsVersion = [v20 unsignedIntegerValue];

  v21 = [propertiesCopy objectForKeyedSubscript:@"holidayAlgorithmsVersion"];
  self->_holidayAlgorithmsVersion = [v21 unsignedIntegerValue];

  v22 = [propertiesCopy objectForKeyedSubscript:@"frequentlocationAlgorithmsVersion"];
  self->_frequentLocationAlgorithmsVersion = [v22 unsignedIntegerValue];

  v23 = [propertiesCopy objectForKeyedSubscript:@"autonamingAlgorithmsVersion"];
  self->_autonamingAlgorithmsVersion = [v23 unsignedIntegerValue];

  v24 = [propertiesCopy objectForKeyedSubscript:@"questionsVersion"];
  self->_questionsVersion = [v24 unsignedIntegerValue];

  v25 = [propertiesCopy objectForKeyedSubscript:@"tripKeyAssetAlgorithmsVersion"];
  self->_tripKeyAssetAlgorithmsVersion = [v25 unsignedIntegerValue];

  v26 = [propertiesCopy objectForKeyedSubscript:@"ageCategoryAlgorithmsVersion"];
  self->_ageCategoryAlgorithmsVersion = [v26 unsignedIntegerValue];

  v27 = [propertiesCopy objectForKeyedSubscript:@"memoryQualityAlgorithmsVersion"];
  self->_memoryQualityAlgorithmsVersion = [v27 unsignedIntegerValue];

  v28 = [propertiesCopy objectForKeyedSubscript:@"petAlgorithmsVersion"];
  self->_petAlgorithmsVersion = [v28 unsignedIntegerValue];

  v29 = [propertiesCopy objectForKeyedSubscript:@"featuredPhotoAlgorithmsVersion"];
  self->_featuredPhotoAlgorithmsVersion = [v29 unsignedIntegerValue];

  v30 = [propertiesCopy objectForKeyedSubscript:@"longTailFeaturedPhotoAlgorithmsVersion"];
  self->_longTailFeaturedPhotoAlgorithmsVersion = [v30 unsignedIntegerValue];

  v31 = [propertiesCopy objectForKeyedSubscript:@"sharedLibrarySuggestionsAlgorithmsVersion"];
  self->_sharedLibrarySuggestionsAlgorithmsVersion = [v31 unsignedIntegerValue];

  v32 = [propertiesCopy objectForKeyedSubscript:@"sharedLibraryStartAlgorithmsVersion"];
  self->_sharedLibraryStartAlgorithmsVersion = [v32 unsignedIntegerValue];

  v33 = [propertiesCopy objectForKeyedSubscript:@"sharedLibraryCameraLibrarySwitchAlgorithmsVersion"];
  self->_sharedLibraryCameraLibrarySwitchAlgorithmsVersion = [v33 unsignedIntegerValue];

  v34 = [propertiesCopy objectForKeyedSubscript:@"wallpaperAlgorithmsVersion"];
  self->_wallpaperAlgorithmsVersion = [v34 unsignedIntegerValue];

  v35 = [propertiesCopy objectForKeyedSubscript:@"locationRepresentativeAssetAlgorithmsVersion"];
  self->_locationRepresentativeAssetAlgorithmsVersion = [v35 unsignedIntegerValue];

  v36 = [propertiesCopy objectForKeyedSubscript:@"eventLabelingV2ModelVersion"];
  self->_eventLabelingV2ModelVersion = [v36 integerValue];

  v37 = [propertiesCopy objectForKeyedSubscript:@"personalTraitsEntityNamesVersion"];
  self->_personalTraitsEntityNamesVersion = [v37 integerValue];

  v38 = [propertiesCopy objectForKeyedSubscript:@"canUseLocationDomain"];
  v39 = v38;
  if (v38)
  {
    bOOLValue = [v38 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  self->_canUseLocationDomain = bOOLValue;
  v41 = [propertiesCopy objectForKeyedSubscript:@"routineAvailable"];
  self->_routineInfo.routineAvailable = [v41 BOOLValue];

  v42 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfLocationsOfInterest"];
  self->_routineInfo.numberOfLocationsOfInterest = [v42 unsignedIntegerValue];

  v43 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfVisits"];
  self->_routineInfo.numberOfVisits = [v43 unsignedIntegerValue];

  v44 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfTimeMatches"];
  self->_routineInfo.numberOfTimeMatches = [v44 unsignedIntegerValue];

  v45 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfClosebyLocationMatches"];
  self->_routineInfo.numberOfCloseByLocationMatches = [v45 unsignedIntegerValue];

  v46 = [propertiesCopy objectForKeyedSubscript:@"routineNumberOfRemoteLocationMatches"];
  self->_routineInfo.numberOfRemoteLocationMatches = [v46 unsignedIntegerValue];

  v47 = [propertiesCopy objectForKeyedSubscript:@"routineNumberofMatchRequests"];
  self->_routineInfo.numberOfMatchRequests = [v47 unsignedIntegerValue];

  v48 = [propertiesCopy objectForKeyedSubscript:@"routinePinningVisitsRatio"];
  [v48 doubleValue];
  self->_routineInfo.pinningVisitsRatio = v49;

  v50 = [propertiesCopy objectForKeyedSubscript:@"numberOfSelfies"];
  self->_numberOfSelfies = [v50 unsignedIntegerValue];

  v51 = [propertiesCopy objectForKeyedSubscript:@"topTierAestheticScore"];
  [v51 doubleValue];
  self->_topTierAestheticScore = v52;

  v53 = [propertiesCopy objectForKeyedSubscript:@"topTierAestheticScoreForTripKeyAsset"];
  [v53 doubleValue];
  self->_topTierAestheticScoreForTripKeyAsset = v54;

  v55 = [propertiesCopy objectForKeyedSubscript:@"numberOfUtilityAssets"];
  self->_numberOfUtilityAssets = [v55 unsignedIntegerValue];

  v56 = [propertiesCopy objectForKeyedSubscript:@"numberOfDefaultAssets"];
  self->_numberOfDefaultAssets = [v56 unsignedIntegerValue];

  v57 = [propertiesCopy objectForKeyedSubscript:@"numberOfImprovedAssets"];
  self->_numberOfImprovedAssets = [v57 unsignedIntegerValue];

  v58 = [propertiesCopy objectForKeyedSubscript:@"numberOfBetterAssets"];
  self->_numberOfBetterAssets = [v58 unsignedIntegerValue];

  v59 = [propertiesCopy objectForKeyedSubscript:@"canAccessContactsStore"];
  v60 = v59;
  if (v59)
  {
    bOOLValue2 = [v59 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  self->_canAccessContactsStore = bOOLValue2;
  v62 = [propertiesCopy objectForKeyedSubscript:@"mergeCandidateConfidenceThreshold"];
  [v62 doubleValue];
  self->_mergeCandidateConfidenceThreshold = v63;

  v64 = [propertiesCopy objectForKeyedSubscript:@"IntelligencePlatformVersion"];
  [v64 doubleValue];
  self->_intelligencePlatformVersion = v65;
}

- (PGGraphInfoNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(PGGraphNode *)self init];
  v8 = v7;
  if (v7)
  {
    [(PGGraphInfoNode *)v7 setLocalProperties:propertiesCopy];
  }

  return v8;
}

+ (id)numberOfSelfies:(unint64_t)selfies
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"numberOfSelfies";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfies];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)topTierScorePropertiesWithAestheticScore:(double)score aestheticScoreForTripKeyAsset:(double)asset
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"topTierAestheticScore";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v10[1] = @"topTierAestheticScoreForTripKeyAsset";
  v11[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:asset];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)assetPropertiesWithNumberOfUtilityAssets:(unint64_t)assets numberOfDefaultAssets:(unint64_t)defaultAssets numberOfImprovedAssets:(unint64_t)improvedAssets numberOfBetterAssets:(unint64_t)betterAssets
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"numberOfUtilityAssets";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:assets];
  v17[0] = v9;
  v16[1] = @"numberOfDefaultAssets";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:defaultAssets];
  v17[1] = v10;
  v16[2] = @"numberOfImprovedAssets";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:improvedAssets];
  v17[2] = v11;
  v16[3] = @"numberOfBetterAssets";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:betterAssets];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)routineInfoPropertiesWithServiceManager:(id)manager
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19[0] = @"routineAvailable";
  v3 = MEMORY[0x277CCABB0];
  managerCopy = manager;
  v5 = [v3 numberWithBool:{objc_msgSend(managerCopy, "routineIsAvailable")}];
  v20[0] = v5;
  v19[1] = @"routineNumberOfLocationsOfInterest";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfLocationsOfInterest")}];
  v20[1] = v6;
  v19[2] = @"routineNumberOfVisits";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfVisits")}];
  v20[2] = v7;
  v19[3] = @"routineNumberOfTimeMatches";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfTimeMatches")}];
  v20[3] = v8;
  v19[4] = @"routineNumberOfClosebyLocationMatches";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfCloseByLocationMatches")}];
  v20[4] = v9;
  v19[5] = @"routineNumberOfRemoteLocationMatches";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfRemoteLocationMatches")}];
  v20[5] = v10;
  v19[6] = @"routineNumberofMatchRequests";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(managerCopy, "numberOfMatchRequests")}];
  v20[6] = v11;
  v19[7] = @"routinePinningVisitsRatio";
  v12 = MEMORY[0x277CCABB0];
  [managerCopy pinningVisitsRatio];
  v14 = v13;

  v15 = [v12 numberWithDouble:v14];
  v20[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)propertiesWithLastIncrementalUpdateInvocationOnDate:(id)date
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"dateOfLastIncrementalUpdateInvocation";
  v3 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end