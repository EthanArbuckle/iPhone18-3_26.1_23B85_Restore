@interface PGPublicEventCategoryFeatureExtractor
+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label;
+ (id)_processedLabelsForVersion:(int64_t)version;
+ (id)_rawLabelsForVersion:(int64_t)version;
- (PGPublicEventCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGPublicEventCategoryFeatureExtractor

- (PGPublicEventCategoryFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() _processedLabelsForVersion:version];
  v7 = MEMORY[0x277CBEB98];
  v8 = [objc_opt_class() _rawLabelsForVersion:version];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277D22C90];
  v11 = +[PGGraphMomentNode publicEventOfMoment];
  v24[0] = v11;
  v12 = +[PGGraphPublicEventNode categoryOfPublicEvent];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v14 = [v10 chain:v13];

  v15 = [objc_opt_class() _labelProcessingForVersion:version label:@"None"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__PGPublicEventCategoryFeatureExtractor_initWithVersion_error___block_invoke;
  v21[3] = &unk_27887FBF8;
  v22 = v9;
  versionCopy = version;
  v20.receiver = self;
  v20.super_class = PGPublicEventCategoryFeatureExtractor;
  v16 = v9;
  v17 = [(MARelationCollectionFeatureExtractor *)&v20 initWithName:@"PublicEventCategory" featureNames:v6 relation:v14 labelForEmptyRelation:v15 labelForTargetBlock:v21];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

id __63__PGPublicEventCategoryFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = @"None";

    v3 = @"None";
  }

  v5 = [PGPublicEventCategoryFeatureExtractor _labelProcessingForVersion:*(a1 + 40) label:v3];

  return v5;
}

+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label
{
  labelCopy = label;
  v6 = @"None";
  v7 = @"None";
  if ((version - 2) >= 2)
  {
    if (version != 1)
    {
      goto LABEL_6;
    }

    v6 = labelCopy;
    v8 = @"None";
  }

  else
  {
    v8 = [labelCopy stringByReplacingOccurrencesOfString:@"GEOSpatialEventLookupCategory" withString:&stru_2843F5C58];
    v9 = MEMORY[0x277CCACA8];
    prefix = [objc_opt_class() prefix];
    v6 = [v9 stringWithFormat:@"%@_%@", prefix, v8];
  }

LABEL_6:

  return v6;
}

+ (id)_rawLabelsForVersion:(int64_t)version
{
  v6[8] = *MEMORY[0x277D85DE8];
  if ((version - 1) >= 2)
  {
    if (version == 3)
    {
      v6[0] = @"GEOSpatialEventLookupCategoryArtsAndMuseums";
      v6[1] = @"GEOSpatialEventLookupCategoryDance";
      v6[2] = @"GEOSpatialEventLookupCategoryFestivalsAndFairs";
      v6[3] = @"GEOSpatialEventLookupCategoryMusicConcerts";
      v6[4] = @"GEOSpatialEventLookupCategoryNightLife";
      v6[5] = @"GEOSpatialEventLookupCategorySports";
      v6[6] = @"GEOSpatialEventLookupCategoryTheater";
      v6[7] = @"None";
      v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
    }

    else
    {
      v3 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v3 = &unk_284485508;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)_processedLabelsForVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [self _rawLabelsForVersion:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [self _labelProcessingForVersion:version label:{*(*(&v15 + 1) + 8 * i), v15}];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

@end