@interface PGMoodHolidayResolver
+ (id)moodVectorForHolidayCategory:(unint64_t)category;
+ (id)moodVectorForMoodIdentifier:(id)identifier;
+ (void)initialize;
@end

@implementation PGMoodHolidayResolver

+ (id)moodVectorForMoodIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"Holiday."])
  {
    v4 = [identifierCopy componentsSeparatedByString:@"."];
    lastObject = [v4 lastObject];
    integerValue = [lastObject integerValue];

    v7 = [PGMoodHolidayResolver moodVectorForHolidayCategory:integerValue];
    if (v7 && ([identifierCopy containsString:@"Celebrated"] & 1) == 0)
    {
      [v7 filterWithMoods:{objc_msgSend(v7, "moodsWithThreshold:", 1.0)}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)moodVectorForHolidayCategory:(unint64_t)category
{
  v12 = *MEMORY[0x277D85DE8];
  if (category > 4)
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      categoryCopy = category;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unknown holiday category: %lu", &v10, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v4 = [sPGHolidayMoodDictionary objectForKeyedSubscript:off_2788817E0[category]];
    if (v4)
    {
      v5 = [[PGMoodVector alloc] initWithArray:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___PGMoodHolidayResolver;
    objc_msgSendSuper2(&v4, sel_initialize);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PGMoodHolidayResolver_initialize__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (initialize_onceToken != -1)
    {
      dispatch_once(&initialize_onceToken, block);
    }
  }
}

void __35__PGMoodHolidayResolver_initialize__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v4 = [v1 URLForResource:@"MoodForHoliday" withExtension:@"plist"];

  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  v3 = sPGHolidayMoodDictionary;
  sPGHolidayMoodDictionary = v2;
}

@end