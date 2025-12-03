@interface PGCityMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
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

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    result = 11008;
  }

  else
  {
    typeCopy = type;
    if (type == 3)
    {
      result = 11009;
    }

    else
    {
      loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = 138412546;
        v10 = v8;
        v11 = 1024;
        v12 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v9, 0x12u);
      }

      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end