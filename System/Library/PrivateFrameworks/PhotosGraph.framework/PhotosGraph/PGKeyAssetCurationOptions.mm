@interface PGKeyAssetCurationOptions
- (PGKeyAssetCurationOptions)init;
- (PGKeyAssetCurationOptions)initWithDictionaryRepresentation:(id)representation;
- (PGKeyAssetCurationOptions)initWithReferenceAsset:(id)asset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation PGKeyAssetCurationOptions

- (id)dictionaryRepresentation
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  referenceLocation = self->_referenceLocation;
  if (referenceLocation)
  {
    [(CLLocation *)referenceLocation coordinate];
    v6 = v5;
    v27[0] = @"latitude";
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v27[1] = @"longitude";
    v28[0] = v7;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v28[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 setObject:v9 forKeyedSubscript:@"referenceLocation"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minimumNumberOfReferencePersons];
  [v3 setObject:v10 forKeyedSubscript:@"minimumNumberOfReferencePersons"];

  allObjects = [(NSSet *)self->_referencePersonLocalIdentifiers allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"referencePersonLocalIdentifiers"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_focusOnPeople];
  [v3 setObject:v12 forKeyedSubscript:@"focusOnPeople"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_complete];
  [v3 setObject:v13 forKeyedSubscript:@"complete"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowContextualTrip];
  [v3 setObject:v14 forKeyedSubscript:@"allowContextualTrip"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_useSummarizer];
  [v3 setObject:v15 forKeyedSubscript:@"useSummarizer"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_useContextualCurationOnly];
  [v3 setObject:v16 forKeyedSubscript:@"useContextualCurationOnly"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_prefilterAssetsWithFaces];
  [v3 setObject:v17 forKeyedSubscript:@"prefilterAssetsWithFaces"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_prefilterAssetsWithFacesThreshold];
  [v3 setObject:v18 forKeyedSubscript:@"prefilterAssetsWithFacesThreshold"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_promoteAutoplayableItems];
  [v3 setObject:v19 forKeyedSubscript:@"promoteAutoplayableItems"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isForMemories];
  [v3 setObject:v20 forKeyedSubscript:@"isForMemories"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowGuestAsset];
  [v3 setObject:v21 forKeyedSubscript:@"allowGuestAsset"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsGoodSquareCropScore];
  [v3 setObject:v22 forKeyedSubscript:@"wantsGoodSquareCropScore"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_useIconicScore];
  [v3 setObject:v23 forKeyedSubscript:@"useIconicScore"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_avoidPromotingAutoplayableItemsWhenUsingIconicScore];
  [v3 setObject:v24 forKeyedSubscript:@"avoidPromotingAutoplayableItemsWhenUsingIconicScore"];

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PGKeyAssetCurationOptions);
  objc_storeStrong(&v4->_referenceLocation, self->_referenceLocation);
  v4->_minimumNumberOfReferencePersons = self->_minimumNumberOfReferencePersons;
  objc_storeStrong(&v4->_referencePersonLocalIdentifiers, self->_referencePersonLocalIdentifiers);
  v4->_focusOnPeople = self->_focusOnPeople;
  v4->_complete = self->_complete;
  v4->_allowContextualTrip = self->_allowContextualTrip;
  v4->_useSummarizer = self->_useSummarizer;
  v4->_useContextualCurationOnly = self->_useContextualCurationOnly;
  v4->_prefilterAssetsWithFaces = self->_prefilterAssetsWithFaces;
  v4->_prefilterAssetsWithFacesThreshold = self->_prefilterAssetsWithFacesThreshold;
  v4->_promoteAutoplayableItems = self->_promoteAutoplayableItems;
  v4->_isForMemories = self->_isForMemories;
  v4->_allowGuestAsset = self->_allowGuestAsset;
  v4->_wantsGoodSquareCropScore = self->_wantsGoodSquareCropScore;
  v4->_useIconicScore = self->_useIconicScore;
  v4->_avoidPromotingAutoplayableItemsWhenUsingIconicScore = self->_avoidPromotingAutoplayableItemsWhenUsingIconicScore;
  objc_storeStrong(&v4->_referenceAsset, self->_referenceAsset);
  objc_storeStrong(&v4->_curationCriteria, self->_curationCriteria);
  return v4;
}

- (PGKeyAssetCurationOptions)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v35.receiver = self;
  v35.super_class = PGKeyAssetCurationOptions;
  v5 = [(PGKeyAssetCurationOptions *)&v35 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"referenceLocation"];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CE41F8]);
      v8 = [v6 objectForKeyedSubscript:@"latitude"];
      [v8 doubleValue];
      v10 = v9;
      v11 = [v6 objectForKeyedSubscript:@"longitude"];
      [v11 doubleValue];
      v13 = [v7 initWithLatitude:v10 longitude:v12];
      referenceLocation = v5->_referenceLocation;
      v5->_referenceLocation = v13;
    }

    v15 = [representationCopy objectForKeyedSubscript:@"minimumNumberOfReferencePersons"];
    v5->_minimumNumberOfReferencePersons = [v15 unsignedIntegerValue];

    v16 = [representationCopy objectForKeyedSubscript:@"referencePersonLocalIdentifiers"];
    if (v16 || ([representationCopy objectForKeyedSubscript:@"referencePersonUUIDs"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      v18 = [MEMORY[0x277CBEB98] setWithArray:v16];
      referencePersonLocalIdentifiers = v5->_referencePersonLocalIdentifiers;
      v5->_referencePersonLocalIdentifiers = v18;
    }

    v20 = [representationCopy objectForKeyedSubscript:@"focusOnPeople"];
    v5->_focusOnPeople = [v20 BOOLValue];

    v21 = [representationCopy objectForKeyedSubscript:@"complete"];
    v5->_complete = [v21 BOOLValue];

    v22 = [representationCopy objectForKeyedSubscript:@"allowContextualTrip"];
    v5->_allowContextualTrip = [v22 BOOLValue];

    v23 = [representationCopy objectForKeyedSubscript:@"useSummarizer"];
    v5->_useSummarizer = [v23 BOOLValue];

    v24 = [representationCopy objectForKeyedSubscript:@"useContextualCurationOnly"];
    v5->_useContextualCurationOnly = [v24 BOOLValue];

    v25 = [representationCopy objectForKeyedSubscript:@"prefilterAssetsWithFaces"];
    v5->_prefilterAssetsWithFaces = [v25 BOOLValue];

    v26 = [representationCopy objectForKeyedSubscript:@"prefilterAssetsWithFacesThreshold"];
    [v26 doubleValue];
    v5->_prefilterAssetsWithFacesThreshold = v27;

    v28 = [representationCopy objectForKeyedSubscript:@"promoteAutoplayableItems"];
    v5->_promoteAutoplayableItems = [v28 BOOLValue];

    v29 = [representationCopy objectForKeyedSubscript:@"isForMemories"];
    v5->_isForMemories = [v29 BOOLValue];

    v30 = [representationCopy objectForKeyedSubscript:@"allowGuestAsset"];
    v5->_allowGuestAsset = [v30 BOOLValue];

    v31 = [representationCopy objectForKeyedSubscript:@"wantsGoodSquareCropScore"];
    v5->_wantsGoodSquareCropScore = [v31 BOOLValue];

    v32 = [representationCopy objectForKeyedSubscript:@"useIconicScore"];
    v5->_useIconicScore = [v32 BOOLValue];

    v33 = [representationCopy objectForKeyedSubscript:@"avoidPromotingAutoplayableItemsWhenUsingIconicScore"];
    v5->_avoidPromotingAutoplayableItemsWhenUsingIconicScore = [v33 BOOLValue];
  }

  return v5;
}

- (PGKeyAssetCurationOptions)initWithReferenceAsset:(id)asset
{
  assetCopy = asset;
  v6 = [(PGKeyAssetCurationOptions *)self init];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    clsUnprefetchedPersonLocalIdentifiers = [assetCopy clsUnprefetchedPersonLocalIdentifiers];
    v9 = [v7 setWithArray:clsUnprefetchedPersonLocalIdentifiers];

    clsLocation = [assetCopy clsLocation];
    referencePersonLocalIdentifiers = v6->_referencePersonLocalIdentifiers;
    v6->_referencePersonLocalIdentifiers = v9;
    v12 = v9;

    referenceLocation = v6->_referenceLocation;
    v6->_referenceLocation = clsLocation;
    v14 = clsLocation;

    objc_storeStrong(&v6->_referenceAsset, asset);
  }

  return v6;
}

- (PGKeyAssetCurationOptions)init
{
  v3.receiver = self;
  v3.super_class = PGKeyAssetCurationOptions;
  result = [(PGKeyAssetCurationOptions *)&v3 init];
  if (result)
  {
    *&result->_allowContextualTrip = 257;
    result->_prefilterAssetsWithFaces = 1;
    result->_prefilterAssetsWithFacesThreshold = 0.2;
    result->_minimumNumberOfReferencePersons = 0;
  }

  return result;
}

@end