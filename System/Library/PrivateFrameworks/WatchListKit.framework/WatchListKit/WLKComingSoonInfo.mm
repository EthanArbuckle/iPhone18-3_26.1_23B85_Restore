@interface WLKComingSoonInfo
+ (id)comingSoonItemsWithDictionaries:(id)dictionaries;
- (WLKComingSoonInfo)initWithDictionary:(id)dictionary;
- (WLKComingSoonInfo)initWithDictionary:(id)dictionary brandID:(id)d;
- (void)_initializeDatesStrings;
@end

@implementation WLKComingSoonInfo

+ (id)comingSoonItemsWithDictionaries:(id)dictionaries
{
  v22 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [WLKComingSoonInfo alloc];
        v12 = [(WLKComingSoonInfo *)v11 initWithDictionary:v10, v17];
        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (WLKComingSoonInfo)initWithDictionary:(id)dictionary brandID:(id)d
{
  dCopy = d;
  v7 = [dictionary mutableCopy];
  [v7 setObject:dCopy forKeyedSubscript:@"channelId"];

  v8 = [(WLKComingSoonInfo *)self initWithDictionary:v7];
  return v8;
}

- (WLKComingSoonInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = [dictionaryCopy objectForKey:@"isComingSoon"];

  if (selfCopy)
  {
    v16.receiver = self;
    v16.super_class = WLKComingSoonInfo;
    v6 = [(WLKComingSoonInfo *)&v16 init];
    if (v6)
    {
      v6->_comingSoon = [dictionaryCopy wlk_BOOLForKey:@"isComingSoon" defaultValue:0];
      v7 = [dictionaryCopy wlk_stringForKey:@"comingSoonDate"];
      dateFormat = v6->_dateFormat;
      v6->_dateFormat = v7;

      v9 = [dictionaryCopy wlk_stringForKey:@"channelId"];
      v10 = [v9 copy];
      brandID = v6->_brandID;
      v6->_brandID = v10;

      if ([(NSString *)v6->_dateFormat length])
      {
        [(WLKComingSoonInfo *)v6 _initializeDatesStrings];
      }

      else if (v6->_comingSoon)
      {
        v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
        v13 = [v12 localizedStringForKey:@"COMING_SOON" value:&stru_288206BC0 table:@"WatchListKit"];
        dateString = v6->_dateString;
        v6->_dateString = v13;
      }
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_initializeDatesStrings
{
  v28 = [(NSString *)self->_dateFormat componentsSeparatedByString:@"-"];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  if ([v28 count] == 3)
  {
    self->_precision = 2;
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v5 = [v4 localizedStringForKey:@"COMING_SOON_FULL_MONTH_DATE" value:&stru_288206BC0 table:@"WatchListKit"];

    v6 = [v28 objectAtIndex:0];
    [v3 setYear:{objc_msgSend(v6, "integerValue")}];

    v7 = [v28 objectAtIndex:1];
    [v3 setMonth:{objc_msgSend(v7, "integerValue")}];

    v8 = [v28 objectAtIndex:2];
    [v3 setDay:{objc_msgSend(v8, "integerValue")}];
    v9 = @"MMMM d";
  }

  else if ([v28 count] == 2)
  {
    self->_precision = 1;
    v10 = [v28 objectAtIndex:0];
    integerValue = [v10 integerValue];

    v12 = objc_alloc(MEMORY[0x277CBEA80]);
    v8 = [v12 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    date = [MEMORY[0x277CBEAA8] date];
    v14 = [v8 components:4 fromDate:date];

    year = [v14 year];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v17 = v16;
    if (integerValue == year)
    {
      v18 = @"COMING_SOON_IN_FULL_MONTH";
    }

    else
    {
      v18 = @"COMING_SOON_FULL_MONTH_YEAR";
    }

    if (integerValue == year)
    {
      v9 = @"MMMM";
    }

    else
    {
      v9 = @"MMMM y";
    }

    v5 = [v16 localizedStringForKey:v18 value:&stru_288206BC0 table:@"WatchListKit"];

    [v3 setYear:integerValue];
    v19 = [v28 objectAtIndex:1];
    [v3 setMonth:{objc_msgSend(v19, "integerValue")}];
  }

  else
  {
    if ([v28 count] != 1)
    {
      goto LABEL_14;
    }

    self->_precision = 0;
    v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v5 = [v20 localizedStringForKey:@"COMING_SOON_YEAR" value:&stru_288206BC0 table:@"WatchListKit"];

    v8 = [v28 objectAtIndex:0];
    [v3 setYear:{objc_msgSend(v8, "integerValue")}];
    v9 = @"y";
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v22 = [currentCalendar dateFromComponents:v3];
  v23 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v23 setTimeStyle:0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v23 setLocale:currentLocale];

  [v23 setLocalizedDateFormatFromTemplate:v9];
  v25 = [v23 stringFromDate:v22];
  v26 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v25];
  dateString = self->_dateString;
  self->_dateString = v26;

LABEL_14:
}

@end