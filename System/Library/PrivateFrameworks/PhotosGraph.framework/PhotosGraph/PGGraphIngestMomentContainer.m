@interface PGGraphIngestMomentContainer
- (BOOL)happensAtSensitiveLocation;
- (BOOL)hasAssetsWithInterestingScenes;
- (BOOL)hasHigherThanImprovedAssets;
- (BOOL)isInteresting;
- (BOOL)isInterestingWithAlternateJunking;
- (BOOL)isSmartInteresting;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (NSString)encodedCLIPFeatureVector;
- (NSString)uuid;
- (double)contentScore;
- (double)facesProcessedRatio;
- (double)inhabitationScore;
- (double)scenesProcessedRatio;
- (id)assetsInExtendedCuration;
- (id)initMomentContainerWithFeeder:(id)a3 clueCollection:(id)a4 curationManager:(id)a5 topTierAestheticScore:(double)a6 curationContext:(id)a7;
- (unint64_t)numberOfAssetsInExtendedCuration;
- (unint64_t)numberOfItemsWithPersons;
- (unint64_t)totalNumberOfPersons;
- (unsigned)sharingComposition;
- (void)_computeScoresIfNeeded;
@end

@implementation PGGraphIngestMomentContainer

- (NSString)encodedCLIPFeatureVector
{
  v16 = *MEMORY[0x277D85DE8];
  if (+[PGUserDefaults enableMomentCLIPFeatureGraphIngest])
  {
    v3 = [[PGMomentIngestCLIPFeatureVectorExtractor alloc] initWithIngestMomentContainer:self];
    v11 = 0;
    v4 = [(PGMomentIngestCLIPFeatureVectorExtractor *)v3 extractCLIPFeatureVectorWithError:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = [PGMomentIngestCLIPFeatureVectorExtractor encodeCLIPFeatureVector:v4];
    }

    else
    {
      v7 = [(PGCurationManager *)self->_curationManager curationLoggingConnection];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [(PGGraphIngestMomentContainer *)self uuid];
        *buf = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Failed to extract moment CLIP feature vector for moment with uuid: %@, error: %@", buf, 0x16u);
      }

      v6 = &stru_2843F5C58;
    }
  }

  else
  {
    v6 = &stru_2843F5C58;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)happensAtSensitiveLocation
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [(PGGraphIngestMomentContainer *)self localStartDate];
  v5 = [(PGGraphIngestMomentContainer *)self localEndDate];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  clueCollection = self->_clueCollection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__PGGraphIngestMomentContainer_happensAtSensitiveLocation__block_invoke;
  v10[3] = &unk_27887FD18;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = &v13;
  [(CLSClueCollection *)clueCollection enumerateLocationClues:v10];
  LOBYTE(v6) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v6;
}

void __58__PGGraphIngestMomentContainer_happensAtSensitiveLocation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 location];
  if (v6)
  {
    v8 = v6;
    v7 = [*(a1 + 32) location:v6 isSensitiveDuringDateInterval:*(a1 + 40)];
    v6 = v8;
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (unsigned)sharingComposition
{
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder assetCollection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder assetCollection];
  v6 = [v5 sharingComposition];

  return v6;
}

- (double)facesProcessedRatio
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
  v4 = [v3 count];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 += [*(*(&v14 + 1) + 8 * i) clsIsFaceProcessed];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    result = v11 / v4;
  }

  else
  {
    result = 1.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)scenesProcessedRatio
{
  v22 = *MEMORY[0x277D85DE8];
  scenesProcessedRatioAsNumber = self->_scenesProcessedRatioAsNumber;
  if (scenesProcessedRatioAsNumber)
  {
LABEL_14:
    [(NSNumber *)scenesProcessedRatioAsNumber doubleValue];
    goto LABEL_15;
  }

  v4 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
  v5 = [v4 count];

  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 += [*(*(&v17 + 1) + 8 * i) clsIsSceneProcessed];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
      v12 = v9;
    }

    else
    {
      v12 = 0.0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12 / v5];
    v15 = self->_scenesProcessedRatioAsNumber;
    self->_scenesProcessedRatioAsNumber = v14;

    scenesProcessedRatioAsNumber = self->_scenesProcessedRatioAsNumber;
    goto LABEL_14;
  }

  result = 1.0;
LABEL_15:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSString)uuid
{
  v2 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder assetCollection];
  v3 = [v2 uuid];

  return v3;
}

- (BOOL)hasAssetsWithInterestingScenes
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 clsIsUtility] & 1) == 0 && (objc_msgSend(v6, "clsHasInterestingScenes"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasHigherThanImprovedAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    v5 = *MEMORY[0x277D3C770];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 clsContentScore];
        if (v8 > v5 && ![v7 clsIsUtility])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (double)inhabitationScore
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder numberOfItems];
  if (v3)
  {
    v4 = v3;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v8 += [*(*(&v14 + 1) + 8 * i) clsIsInhabited];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    result = v11 / v4;
  }

  else
  {
    result = 0.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)totalNumberOfPersons
{
  feeder = self->_feeder;
  if (feeder)
  {
    return [(CLSInvestigationPhotoKitFeeder *)feeder numberOfAllPeople];
  }

  else
  {
    return [(CLSClueCollection *)self->_clueCollection numberOfPersons];
  }
}

- (unint64_t)numberOfItemsWithPersons
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder allItems];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v10 + 1) + 8 * i) clsPeopleCount])
        {
          ++v5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)numberOfAssetsInExtendedCuration
{
  v2 = [(PGGraphIngestMomentContainer *)self assetsInExtendedCuration];
  v3 = [v2 count];

  return v3;
}

- (id)assetsInExtendedCuration
{
  v13[1] = *MEMORY[0x277D85DE8];
  assetsInExtendedCuration = self->_assetsInExtendedCuration;
  if (!assetsInExtendedCuration)
  {
    v4 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder assetCollection];
    v5 = [v4 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingExtendedAssets != nil"];
    [v6 setInternalPredicate:v7];

    v13[0] = *MEMORY[0x277CD9AA8];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [v6 setFetchPropertySets:v8];

    [v6 setShouldPrefetchCount:1];
    [v6 setIncludeGuestAssets:1];
    v9 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v4 options:v6];
    v10 = self->_assetsInExtendedCuration;
    self->_assetsInExtendedCuration = v9;

    assetsInExtendedCuration = self->_assetsInExtendedCuration;
  }

  v11 = *MEMORY[0x277D85DE8];

  return assetsInExtendedCuration;
}

- (NSDate)universalEndDate
{
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder universalEndDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CLSClueCollection *)self->_clueCollection universalEndDate];
  }

  v6 = v5;

  return v6;
}

- (NSDate)universalStartDate
{
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder universalStartDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CLSClueCollection *)self->_clueCollection universalStartDate];
  }

  v6 = v5;

  return v6;
}

- (NSDate)localEndDate
{
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder localEndDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CLSClueCollection *)self->_clueCollection localEndDate];
  }

  v6 = v5;

  return v6;
}

- (NSDate)localStartDate
{
  v3 = [(CLSInvestigationPhotoKitFeeder *)self->_feeder localStartDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CLSClueCollection *)self->_clueCollection localStartDate];
  }

  v6 = v5;

  return v6;
}

- (void)_computeScoresIfNeeded
{
  isInterestingNumber = self->_isInterestingNumber;
  if (!isInterestingNumber || !self->_isInterestingWithAlternateJunkingNumber || !self->_isSmartInterestingNumber || !self->_contentScoreNumber)
  {
    feeder = self->_feeder;
    if (feeder)
    {
      v5 = [(PGCurationManager *)self->_curationManager isAssetFeederInteresting:feeder withAlternateJunking:0 smart:0];
      v6 = [MEMORY[0x277CCABB0] numberWithBool:v5];
      v7 = self->_isInterestingNumber;
      self->_isInterestingNumber = v6;

      v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[PGCurationManager isAssetFeederInteresting:withAlternateJunking:smart:](self->_curationManager, "isAssetFeederInteresting:withAlternateJunking:smart:", self->_feeder, 0, 1)}];
      isSmartInterestingNumber = self->_isSmartInterestingNumber;
      self->_isSmartInterestingNumber = v8;

      v10 = MEMORY[0x277CCABB0];
      [(PGCurationManager *)self->_curationManager contentScoreForAssetFeeder:self->_feeder];
      v11 = [v10 numberWithDouble:?];
      contentScoreNumber = self->_contentScoreNumber;
      self->_contentScoreNumber = v11;

      objc_storeStrong(&self->_isInterestingWithAlternateJunkingNumber, self->_isInterestingNumber);
      if (v5)
      {
        v21 = 0;
        v13 = [PGMemoryGenerationHelper feederForMemoriesWithFeeder:self->_feeder topTierAestheticScore:&v21 didFeederChange:self->_curationContext curationContext:self->_topTierAestheticScore];
        if (v21 == 1)
        {
          v14 = [(PGCurationManager *)self->_curationManager isAssetFeederInteresting:v13 withAlternateJunking:1 smart:0];
          v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
          isInterestingWithAlternateJunkingNumber = self->_isInterestingWithAlternateJunkingNumber;
          self->_isInterestingWithAlternateJunkingNumber = v15;
        }
      }
    }

    else
    {
      v17 = MEMORY[0x277CBEC38];
      self->_isInterestingNumber = MEMORY[0x277CBEC38];

      v18 = self->_isInterestingWithAlternateJunkingNumber;
      self->_isInterestingWithAlternateJunkingNumber = v17;

      v19 = self->_isSmartInterestingNumber;
      self->_isSmartInterestingNumber = v17;

      v20 = self->_contentScoreNumber;
      self->_contentScoreNumber = &unk_2844870B8;
    }
  }
}

- (double)contentScore
{
  [(PGGraphIngestMomentContainer *)self _computeScoresIfNeeded];
  contentScoreNumber = self->_contentScoreNumber;

  [(NSNumber *)contentScoreNumber doubleValue];
  return result;
}

- (BOOL)isSmartInteresting
{
  [(PGGraphIngestMomentContainer *)self _computeScoresIfNeeded];
  isSmartInterestingNumber = self->_isSmartInterestingNumber;

  return [(NSNumber *)isSmartInterestingNumber BOOLValue];
}

- (BOOL)isInterestingWithAlternateJunking
{
  [(PGGraphIngestMomentContainer *)self _computeScoresIfNeeded];
  isInterestingWithAlternateJunkingNumber = self->_isInterestingWithAlternateJunkingNumber;

  return [(NSNumber *)isInterestingWithAlternateJunkingNumber BOOLValue];
}

- (BOOL)isInteresting
{
  [(PGGraphIngestMomentContainer *)self _computeScoresIfNeeded];
  isInterestingNumber = self->_isInterestingNumber;

  return [(NSNumber *)isInterestingNumber BOOLValue];
}

- (id)initMomentContainerWithFeeder:(id)a3 clueCollection:(id)a4 curationManager:(id)a5 topTierAestheticScore:(double)a6 curationContext:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PGGraphIngestMomentContainer;
  v17 = [(PGGraphIngestMomentContainer *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_feeder, a3);
    objc_storeStrong(&v18->_clueCollection, a4);
    objc_storeStrong(&v18->_curationManager, a5);
    v18->_topTierAestheticScore = a6;
    objc_storeStrong(&v18->_curationContext, a7);
  }

  return v18;
}

@end