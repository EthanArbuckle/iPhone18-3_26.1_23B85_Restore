@interface PGMeaningFeatureExtractor
+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label;
+ (id)_labelsForVersion:(int64_t)version;
- (PGMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
@end

@implementation PGMeaningFeatureExtractor

- (PGMeaningFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v6 = [objc_opt_class() _labelsForVersion:version];
  v7 = +[PGMeaningFeatureExtractor name];
  v8 = +[PGGraphMomentNode meaningHierarchyOfMoment];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__PGMeaningFeatureExtractor_initWithVersion_error___block_invoke;
  v12[3] = &__block_descriptor_40_e42___NSString_24__0__PGGraphMeaningNode_8__16l;
  v12[4] = version;
  v11.receiver = self;
  v11.super_class = PGMeaningFeatureExtractor;
  v9 = [(PGGraphFeatureExtractor *)&v11 initWithName:v7 featureNames:v6 relation:v8 labelForTargetBlock:v12];

  return v9;
}

id __51__PGMeaningFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  v4 = [PGMeaningFeatureExtractor _labelProcessingForVersion:v2 label:v3];

  return v4;
}

+ (id)_labelProcessingForVersion:(int64_t)version label:(id)label
{
  labelCopy = label;
  v7 = labelCopy;
  if (version == 2)
  {
    v9 = MEMORY[0x277CCACA8];
    prefix = [self prefix];
    v8 = [v9 stringWithFormat:@"%@_%@", prefix, v7];
  }

  else if (version == 1)
  {
    v8 = labelCopy;
  }

  else
  {
    v8 = @"unknown";
  }

  return v8;
}

+ (id)_labelsForVersion:(int64_t)version
{
  v24[19] = *MEMORY[0x277D85DE8];
  if (version == 2)
  {
    v23[0] = @"Activity";
    v23[1] = @"Hiking";
    v23[2] = @"Climbing";
    v23[3] = @"Beaching";
    v23[4] = @"Diving";
    v23[5] = @"WinterSport";
    v23[6] = @"Entertainment";
    v23[7] = @"AmusementPark";
    v23[8] = @"Performance";
    v23[9] = @"Concert";
    v23[10] = @"Festival";
    v23[11] = @"Theater";
    v23[12] = @"Dance";
    v23[13] = @"SportEvent";
    v23[14] = @"NightOut";
    v23[15] = @"Museum";
    v23[16] = @"Celebration";
    v23[17] = @"Birthday";
    v23[18] = @"Anniversary";
    v23[19] = @"Wedding";
    v23[20] = @"HolidayEvent";
    v23[21] = @"Gathering";
    v23[22] = @"Restaurant";
    v23[23] = @"Breakfast";
    v23[24] = @"Lunch";
    v23[25] = @"Dinner";
    v5 = MEMORY[0x277CBEA60];
    v6 = v23;
    v7 = 26;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v24[0] = @"Activity";
    v24[1] = @"Beaching";
    v24[2] = @"Birthday";
    v24[3] = @"Breakfast";
    v24[4] = @"Celebration";
    v24[5] = @"Concert";
    v24[6] = @"Dinner";
    v24[7] = @"Entertainment";
    v24[8] = @"Gathering";
    v24[9] = @"Hiking";
    v24[10] = @"HolidayEvent";
    v24[11] = @"Lunch";
    v24[12] = @"Museum";
    v24[13] = @"NightOut";
    v24[14] = @"Performance";
    v24[15] = @"Restaurant";
    v24[16] = @"SportEvent";
    v24[17] = @"Theater";
    v24[18] = @"WinterSport";
    v5 = MEMORY[0x277CBEA60];
    v6 = v24;
    v7 = 19;
LABEL_5:
    v8 = [v5 arrayWithObjects:v6 count:v7];
    goto LABEL_7;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_7:
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [self _labelProcessingForVersion:version label:{*(*(&v18 + 1) + 8 * i), v18}];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

@end