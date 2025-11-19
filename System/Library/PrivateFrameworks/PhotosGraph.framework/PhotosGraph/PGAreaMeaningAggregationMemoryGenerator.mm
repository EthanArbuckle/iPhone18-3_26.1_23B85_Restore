@interface PGAreaMeaningAggregationMemoryGenerator
+ (id)requiredFeatureRelation;
+ (id)supportedMeaningLabels;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
@end

@implementation PGAreaMeaningAggregationMemoryGenerator

+ (id)requiredFeatureRelation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphMomentNode addressOfMoment];
  v9[0] = v3;
  v4 = +[PGGraphAddressNode areaOfAddress];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 chain:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)supportedMeaningLabels
{
  v5[11] = *MEMORY[0x277D85DE8];
  v5[0] = @"Hiking";
  v5[1] = @"Climbing";
  v5[2] = @"Beaching";
  v5[3] = @"Diving";
  v5[4] = @"WinterSport";
  v5[5] = @"Entertainment";
  v5[6] = @"Performance";
  v5[7] = @"SportEvent";
  v5[8] = @"NightOut";
  v5[9] = @"Lunch";
  v5[10] = @"Dinner";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:11];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 11006;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 11007;
    }

    else
    {
      v5 = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = v3;
        _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end