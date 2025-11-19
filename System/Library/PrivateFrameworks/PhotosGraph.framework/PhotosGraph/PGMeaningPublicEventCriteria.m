@interface PGMeaningPublicEventCriteria
+ (id)_publicEventCategoryForPublicEventCategoryName:(id)a3;
+ (id)criteriaWithDictionary:(id)a3;
- (BOOL)isValid;
- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4;
- (NSString)description;
@end

@implementation PGMeaningPublicEventCriteria

+ (id)_publicEventCategoryForPublicEventCategoryName:(id)a3
{
  v26[13] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v25[0] = @"musicConcerts";
  v22 = [MEMORY[0x277D27780] musicConcerts];
  v26[0] = v22;
  v25[1] = @"nightLife";
  v21 = [MEMORY[0x277D27780] nightLife];
  v26[1] = v21;
  v25[2] = @"theater";
  v20 = [MEMORY[0x277D27780] theater];
  v26[2] = v20;
  v25[3] = @"dance";
  v18 = [MEMORY[0x277D27780] dance];
  v26[3] = v18;
  v25[4] = @"festivalsAndFairs";
  v3 = [MEMORY[0x277D27780] festivalsAndFairs];
  v26[4] = v3;
  v25[5] = @"artsAndMuseums";
  v4 = [MEMORY[0x277D27780] artsAndMuseums];
  v26[5] = v4;
  v25[6] = @"sports";
  v5 = [MEMORY[0x277D27780] sports];
  v26[6] = v5;
  v25[7] = @"businessAndTechnology";
  v6 = [MEMORY[0x277D27780] businessAndTechnology];
  v26[7] = v6;
  v25[8] = @"community";
  v7 = [MEMORY[0x277D27780] community];
  v26[8] = v7;
  v25[9] = @"educational";
  v8 = [MEMORY[0x277D27780] educational];
  v26[9] = v8;
  v25[10] = @"familyEvents";
  v9 = [MEMORY[0x277D27780] familyEvents];
  v26[10] = v9;
  v25[11] = @"tours";
  v10 = [MEMORY[0x277D27780] tours];
  v26[11] = v10;
  v25[12] = @"appleEvents";
  v11 = [MEMORY[0x277D27780] appleEvents];
  v26[12] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:13];

  v13 = [v12 objectForKeyedSubscript:v19];
  if (!v13)
  {
    v14 = +[PGLogging sharedLogging];
    v15 = [v14 loggingConnection];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid public event category name %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)criteriaWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"publicEventCategory"];

  if (v6)
  {
    [v5 setPublicEventCategoryNameString:v6];
    v7 = [a1 _publicEventCategoryForPublicEventCategoryName:v6];
    [v5 setPublicEventCategory:v7];
  }

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PGMeaningPublicEventCriteria *)self publicEventCategory];
  v4 = [v2 stringWithFormat:@"publicEventCategory: %@\n", v3];

  return v4;
}

- (BOOL)isValid
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PGMeaningPublicEventCriteria *)self publicEventCategory];

  if (!v3)
  {
    v4 = +[PGLogging sharedLogging];
    v5 = [v4 loggingConnection];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(PGMeaningPublicEventCriteria *)self publicEventCategoryNameString];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[MEANING CRITERIA] Invalid public event category name %@", &v9, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)passesForMomentNode:(id)a3 momentNodeCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PGMeaningPublicEventCriteria *)self publicEventCategory];

  if (v8)
  {
    v9 = [(PGMeaningPublicEventCriteria *)self publicEventCategory];
    v10 = [v6 graph];
    v11 = [PGGraphPublicEventCategoryNodeCollection publicEventCategoryNodesForCategory:v9 inGraph:v10];

    if ([v11 count])
    {
      v12 = [v7 publicEventCategoryNodes];
      v13 = [v12 intersectsCollection:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end