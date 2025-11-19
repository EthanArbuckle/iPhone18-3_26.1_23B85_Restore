@interface PGCityMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3;
@end

@implementation PGCityMeaningAggregationMemoryGenerator

+ (id)supportedMeaningLabels
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = @"Entertainment";
  v5[1] = @"Performance";
  v5[2] = @"SportEvent";
  v5[3] = @"NightOut";
  v5[4] = @"Lunch";
  v5[5] = @"Dinner";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    result = 11008;
  }

  else
  {
    v3 = a3;
    if (a3 == 3)
    {
      result = 11009;
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