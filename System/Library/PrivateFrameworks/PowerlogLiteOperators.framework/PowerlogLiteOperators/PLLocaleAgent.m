@interface PLLocaleAgent
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLLocaleAgent)init;
- (void)initOperatorDependancies;
- (void)logEventForwardTimeZoneWithTrigger:(id)a3;
- (void)logTimeZoneEntry:(id)a3;
@end

@implementation PLLocaleAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLLocaleAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v27[1] = *MEMORY[0x277D85DE8];
  v26 = @"TimeZone";
  v24[0] = *MEMORY[0x277D3F4E8];
  v22 = *MEMORY[0x277D3F568];
  v23 = &unk_282C1BF48;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"LocaleId";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v21[0] = v17;
  v20[1] = @"CountryCode";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v21[1] = v15;
  v20[2] = @"TimeZoneName";
  v14 = [MEMORY[0x277D3F198] sharedInstance];
  v2 = [v14 commonTypeDict_StringFormat];
  v21[2] = v2;
  v20[3] = @"TimeZoneIsInDST";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v21[3] = v4;
  v20[4] = @"SecondsFromGMT";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[4] = v6;
  v20[5] = @"Trigger";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v21[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLLocaleAgent)init
{
  v3.receiver = self;
  v3.super_class = PLLocaleAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_logEventForwardTimeZoneWithTrigger_ name:*MEMORY[0x277CBE780] object:0];
}

- (void)logTimeZoneEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 dictionary];
  v6 = [v4 entryDate];
  [(PLOperator *)self logForSubsystem:@"LocaleMetrics" category:@"TimeZone" data:v5 date:v6];

  v7 = [v4 dictionary];
  v8 = [v4 entryDate];
  [(PLOperator *)self logForSubsystem:@"PPTStorageOperator" category:@"Locale" data:v7 date:v8];

  v10 = [v4 dictionary];
  v9 = [v4 entryDate];

  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"Locale" data:v10 date:v9];
}

- (void)logEventForwardTimeZoneWithTrigger:(id)a3
{
  v15 = a3;
  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  [MEMORY[0x277D3F268] resetTimestampFormaterTimezone];
  v4 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [(PLOperator *)PLLocaleAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TimeZone"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = CFPreferencesCopyValue(@"AppleLocale", @"Apple Global Domain", @"mobile", *MEMORY[0x277CBF030]);
  [v7 setObject:v8 forKeyedSubscript:@"LocaleId"];

  [v7 setObject:@"Unavailable" forKeyedSubscript:@"CountryCode"];
  if ([MEMORY[0x277D3F180] liteMode])
  {
    v9 = [v5 localeIdentifier];
    [v7 setObject:v9 forKeyedSubscript:@"LocaleId"];

    v10 = [v5 objectForKey:*MEMORY[0x277CBE690]];
    [v7 setObject:v10 forKeyedSubscript:@"CountryCode"];
  }

  v11 = [v4 name];
  [v7 setObject:v11 forKeyedSubscript:@"TimeZoneName"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isDaylightSavingTime")}];
  [v7 setObject:v12 forKeyedSubscript:@"TimeZoneIsInDST"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "secondsFromGMT")}];
  [v7 setObject:v13 forKeyedSubscript:@"SecondsFromGMT"];

  if (v15)
  {
    v14 = [v15 name];
    [v7 setObject:v14 forKeyedSubscript:@"Trigger"];
  }

  else
  {
    [v7 setObject:@"powerlog" forKeyedSubscript:@"Trigger"];
  }

  [(PLOperator *)self logEntry:v7];
  [(PLLocaleAgent *)self logTimeZoneEntry:v7];
}

@end