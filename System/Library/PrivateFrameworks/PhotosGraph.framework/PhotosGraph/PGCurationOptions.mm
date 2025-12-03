@interface PGCurationOptions
+ (id)defaultOptions;
- (PGCurationOptions)initWithDictionaryRepresentation:(id)representation;
- (PGCurationOptions)initWithDuration:(unint64_t)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PGCurationOptions

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_duration];
  [v3 setObject:v4 forKeyedSubscript:@"duration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_includesAllFaces];
  [v3 setObject:v5 forKeyedSubscript:@"includesAllFaces"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_identicalDedupingEnabled];
  [v3 setObject:v6 forKeyedSubscript:@"identicalDedupingEnabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_semanticalDedupingEnabled];
  [v3 setObject:v7 forKeyedSubscript:@"semanticalDedupingEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_semanticalDedupingUsesAdaptiveSimilarStacking];
  [v3 setObject:v8 forKeyedSubscript:@"semanticalDedupingUsesAdaptiveSimilarStacking"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_movieDedupingEnabled];
  [v3 setObject:v9 forKeyedSubscript:@"movieDedupingEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_lastPassMovieAdditionEnabled];
  [v3 setObject:v10 forKeyedSubscript:@"lastPassMovieAdditionEnabled"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldSkipClustering];
  [v3 setObject:v11 forKeyedSubscript:@"shouldSkipClustering"];

  allObjects = [(NSSet *)self->_uuidsOfRequiredAssets allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"uuidsOfRequiredAssets"];

  allObjects2 = [(NSSet *)self->_uuidsOfEligibleAssets allObjects];
  [v3 setObject:allObjects2 forKeyedSubscript:@"uuidsOfEligibleAssets"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_focusOnPeople];
  [v3 setObject:v14 forKeyedSubscript:@"focusOnPeople"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_focusOnInterestingItems];
  [v3 setObject:v15 forKeyedSubscript:@"focusOnInterestingItems"];

  allObjects3 = [(NSSet *)self->_personLocalIdentifiersToFocus allObjects];
  [v3 setObject:allObjects3 forKeyedSubscript:@"personLocalIdentifiersToFocus"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_useDurationBasedCuration];
  [v3 setObject:v17 forKeyedSubscript:@"useDurationBasedCuration"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_failIfMinimumDurationNotReached];
  [v3 setObject:v18 forKeyedSubscript:@"failIfMinimumDurationNotReached"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_skipCurationIfEligibleItemsFitTargetDuration];
  [v3 setObject:v19 forKeyedSubscript:@"skipCurationIfEligibleItemsFitTargetDuration"];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_defaultDurationOfStillPhoto];
  [v3 setObject:v20 forKeyedSubscript:@"defaultDurationOfStillPhoto"];

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_defaultDurationOfLivePhoto];
  [v3 setObject:v21 forKeyedSubscript:@"defaultDurationOfLivePhoto"];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_defaultDurationOfVideo];
  [v3 setObject:v22 forKeyedSubscript:@"defaultDurationOfVideo"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumDuration];
  [v3 setObject:v23 forKeyedSubscript:@"minimumDuration"];

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_targetDuration];
  [v3 setObject:v24 forKeyedSubscript:@"targetDuration"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_minimumNumberOfItems];
  [v3 setObject:v25 forKeyedSubscript:@"minimumNumberOfItems"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_sharingFilter];
  [v3 setObject:v26 forKeyedSubscript:@"sharingFilter"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_targetNumberOfItems];
  [v3 setObject:v27 forKeyedSubscript:@"targetNumberOfItems"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 24) = self->_duration;
  *(v4 + 15) = self->_focusOnPeople;
  *(v4 + 16) = self->_focusOnInterestingItems;
  *(v4 + 8) = self->_includesAllFaces;
  *(v4 + 9) = self->_identicalDedupingEnabled;
  *(v4 + 10) = self->_semanticalDedupingEnabled;
  *(v4 + 11) = self->_semanticalDedupingUsesAdaptiveSimilarStacking;
  *(v4 + 12) = self->_movieDedupingEnabled;
  *(v4 + 13) = self->_lastPassMovieAdditionEnabled;
  *(v4 + 14) = self->_shouldSkipClustering;
  v5 = [(NSSet *)self->_uuidsOfRequiredAssets copy];
  v6 = *(v4 + 32);
  *(v4 + 32) = v5;

  v7 = [(NSSet *)self->_uuidsOfEligibleAssets copy];
  v8 = *(v4 + 40);
  *(v4 + 40) = v7;

  v9 = [(NSSet *)self->_personLocalIdentifiersToFocus copy];
  v10 = *(v4 + 48);
  *(v4 + 48) = v9;

  *(v4 + 17) = self->_useDurationBasedCuration;
  *(v4 + 18) = self->_failIfMinimumDurationNotReached;
  *(v4 + 19) = self->_skipCurationIfEligibleItemsFitTargetDuration;
  *(v4 + 56) = self->_defaultDurationOfStillPhoto;
  *(v4 + 64) = self->_defaultDurationOfLivePhoto;
  *(v4 + 72) = self->_defaultDurationOfVideo;
  *(v4 + 80) = self->_minimumDuration;
  *(v4 + 88) = self->_targetDuration;
  *(v4 + 96) = self->_minimumNumberOfItems;
  *(v4 + 20) = self->_sharingFilter;
  *(v4 + 104) = self->_targetNumberOfItems;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGCurationOptions;
  v4 = [(PGCurationOptions *)&v8 description];
  dictionaryRepresentation = [(PGCurationOptions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, dictionaryRepresentation];

  return v6;
}

- (PGCurationOptions)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v48.receiver = self;
  v48.super_class = PGCurationOptions;
  v5 = [(PGCurationOptions *)&v48 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"duration"];
    v5->_duration = [v6 integerValue];

    v7 = [representationCopy objectForKeyedSubscript:@"includesAllFaces"];
    v5->_includesAllFaces = [v7 BOOLValue];

    v8 = [representationCopy objectForKeyedSubscript:@"identicalDedupingEnabled"];
    v5->_identicalDedupingEnabled = [v8 BOOLValue];

    v9 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingEnabled"];
    v5->_semanticalDedupingEnabled = [v9 BOOLValue];

    v10 = [representationCopy objectForKeyedSubscript:@"semanticalDedupingUsesAdaptiveSimilarStacking"];
    v5->_semanticalDedupingUsesAdaptiveSimilarStacking = [v10 BOOLValue];

    v11 = [representationCopy objectForKeyedSubscript:@"movieDedupingEnabled"];
    v5->_movieDedupingEnabled = [v11 BOOLValue];

    v12 = [representationCopy objectForKeyedSubscript:@"lastPassMovieAdditionEnabled"];
    v5->_lastPassMovieAdditionEnabled = [v12 BOOLValue];

    v13 = [representationCopy objectForKeyedSubscript:@"shouldSkipClustering"];
    v5->_shouldSkipClustering = [v13 BOOLValue];

    v14 = MEMORY[0x277CBEB98];
    v15 = [representationCopy objectForKeyedSubscript:@"uuidsOfRequiredAssets"];
    v16 = [v14 setWithArray:v15];
    uuidsOfRequiredAssets = v5->_uuidsOfRequiredAssets;
    v5->_uuidsOfRequiredAssets = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = [representationCopy objectForKeyedSubscript:@"uuidsOfEligibleAssets"];
    v20 = [v18 setWithArray:v19];
    uuidsOfEligibleAssets = v5->_uuidsOfEligibleAssets;
    v5->_uuidsOfEligibleAssets = v20;

    v22 = [representationCopy objectForKeyedSubscript:@"focusOnPeople"];
    v5->_focusOnPeople = [v22 BOOLValue];

    v23 = [representationCopy objectForKeyedSubscript:@"focusOnInterestingItems"];
    v5->_focusOnInterestingItems = [v23 BOOLValue];

    v24 = MEMORY[0x277CBEB98];
    v25 = [representationCopy objectForKeyedSubscript:@"personLocalIdentifiersToFocus"];
    v26 = [v24 setWithArray:v25];
    personLocalIdentifiersToFocus = v5->_personLocalIdentifiersToFocus;
    v5->_personLocalIdentifiersToFocus = v26;

    v28 = [representationCopy objectForKeyedSubscript:@"useDurationBasedCuration"];
    v5->_useDurationBasedCuration = [v28 BOOLValue];

    v29 = [representationCopy objectForKeyedSubscript:@"failIfMinimumDurationNotReached"];
    v5->_failIfMinimumDurationNotReached = [v29 BOOLValue];

    v30 = [representationCopy objectForKeyedSubscript:@"skipCurationIfEligibleItemsFitTargetDuration"];
    v5->_skipCurationIfEligibleItemsFitTargetDuration = [v30 BOOLValue];

    v31 = [representationCopy objectForKeyedSubscript:@"defaultDurationOfStillPhoto"];
    v32 = v31;
    if (v31)
    {
      [v31 doubleValue];
      v5->_defaultDurationOfStillPhoto = v33;
    }

    else
    {
      v34 = [representationCopy objectForKeyedSubscript:@"defaultDurationOfPhoto"];
      [v34 doubleValue];
      v5->_defaultDurationOfStillPhoto = v35;
    }

    v36 = [representationCopy objectForKeyedSubscript:@"defaultDurationOfLivePhoto"];
    [v36 doubleValue];
    v5->_defaultDurationOfLivePhoto = v37;

    v38 = [representationCopy objectForKeyedSubscript:@"defaultDurationOfVideo"];
    [v38 doubleValue];
    v5->_defaultDurationOfVideo = v39;

    v40 = [representationCopy objectForKeyedSubscript:@"minimumDuration"];
    [v40 doubleValue];
    v5->_minimumDuration = v41;

    v42 = [representationCopy objectForKeyedSubscript:@"targetDuration"];
    [v42 doubleValue];
    v5->_targetDuration = v43;

    v44 = [representationCopy objectForKeyedSubscript:@"minimumNumberOfItems"];
    v5->_minimumNumberOfItems = [v44 unsignedIntegerValue];

    v45 = [representationCopy objectForKeyedSubscript:@"sharingFilter"];
    v5->_sharingFilter = [v45 unsignedShortValue];

    v46 = [representationCopy objectForKeyedSubscript:@"targetNumberOfItems"];
    v5->_targetNumberOfItems = [v46 unsignedIntegerValue];
  }

  return v5;
}

- (PGCurationOptions)initWithDuration:(unint64_t)duration
{
  v5.receiver = self;
  v5.super_class = PGCurationOptions;
  result = [(PGCurationOptions *)&v5 init];
  if (result)
  {
    result->_duration = duration;
    result->_identicalDedupingEnabled = 1;
    result->_semanticalDedupingUsesAdaptiveSimilarStacking = 1;
    result->_lastPassMovieAdditionEnabled = 1;
    *&result->_useDurationBasedCuration = 0;
    result->_skipCurationIfEligibleItemsFitTargetDuration = 0;
    *&result->_defaultDurationOfStillPhoto = xmmword_22F78BFF0;
    *&result->_defaultDurationOfVideo = xmmword_22F78C000;
    result->_targetDuration = 60.0;
    result->_minimumNumberOfItems = 13;
    result->_sharingFilter = 2;
    result->_targetNumberOfItems = 0;
  }

  return result;
}

+ (id)defaultOptions
{
  v2 = [[self alloc] initWithDuration:2];

  return v2;
}

@end