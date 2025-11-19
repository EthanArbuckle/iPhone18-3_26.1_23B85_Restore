@interface PHAMetricsHelper
+ (id)aggregatedStatsForMiroMoodCountVector:(id)a3;
+ (id)aggregatedStatsForMoodKeywordCountedSet:(id)a3;
+ (id)aggregatedStatsForPossibleMoodCountVector:(id)a3;
+ (id)aggregatedStatsForSuggestedMoodCountVector:(id)a3;
+ (id)dataAggregationKeyForCategory:(unint64_t)a3 subCategory:(unint64_t)a4 lookupTable:(id)a5;
+ (id)fullMemoryTypeStringForMemory:(id)a3 withWorkingContext:(id)a4;
+ (id)legacyMemoryCategoryValueToDataAggregationKeyLookup;
+ (id)memoryBlockableFeatureTypeValueToDataAggregationKeyLookup;
+ (id)memoryBlockedFeatureTypeValueToDataAggregationKeyLookup;
+ (id)memoryCategoryValueToDataAggregationKeyLookup;
@end

@implementation PHAMetricsHelper

+ (id)fullMemoryTypeStringForMemory:(id)a3 withWorkingContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__983;
  v24 = __Block_byref_object_dispose__984;
  v25 = @"Unknown";
  v7 = [v5 photosGraphProperties];
  v8 = [v7 objectForKeyedSubscript:@"memoryCategorySubcategory"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 photosGraphProperties];
  v11 = [v10 objectForKeyedSubscript:@"encodedFeatures"];

  v12 = [MEMORY[0x277D3B6C8] featuresForEncodedFeatures:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__PHAMetricsHelper_fullMemoryTypeStringForMemory_withWorkingContext___block_invoke;
  v16[3] = &unk_2788B18A0;
  v13 = v12;
  v17 = v13;
  v18 = &v20;
  v19 = v9;
  [v6 performSynchronousConcurrentGraphReadUsingBlock:v16];
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __69__PHAMetricsHelper_fullMemoryTypeStringForMemory_withWorkingContext___block_invoke(void *a1, void *a2)
{
  v7 = [a2 graph];
  v3 = [MEMORY[0x277D3B930] featureNodeCollectionWithFeatures:a1[4] inGraph:v7];
  v4 = [MEMORY[0x277D3B958] fullMemoryTypeStringWithMemoryCategorySubcategory:a1[6] featureNodes:v3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)dataAggregationKeyForCategory:(unint64_t)a3 subCategory:(unint64_t)a4 lookupTable:(id)a5
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a5;
  v9 = [v7 numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKey:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v12 = [v10 objectForKey:v11];
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

+ (id)aggregatedStatsForMoodKeywordCountedSet:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:18];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEB8])}];
  [v5 setValue:v6 forKey:@"disneyKeywordCount"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BF10])}];
  [v5 setValue:v7 forKey:@"universalKeywordCount"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEE8])}];
  [v5 setValue:v8 forKey:@"newYorkCityKeywordCount"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BED8])}];
  [v5 setValue:v9 forKey:@"londonKeywordCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEF0])}];
  [v5 setValue:v10 forKey:@"parisKeywordCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BED0])}];
  [v5 setValue:v11 forKey:@"hawaiiKeywordCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BF08])}];
  [v5 setValue:v12 forKey:@"sportsKeywordCount"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BE90])}];
  [v5 setValue:v13 forKey:@"anniversaryKeywordCount"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEA8])}];
  [v5 setValue:v14 forKey:@"birthdayKeywordCount"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BF18])}];
  [v5 setValue:v15 forKey:@"weddingKeywordCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEC0])}];
  [v5 setValue:v16 forKey:@"familyKeywordCount"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEF8])}];
  [v5 setValue:v17 forKey:@"partyKeywordCount"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEC8])}];
  [v5 setValue:v18 forKey:@"gatheringKeywordCount"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BF00])}];
  [v5 setValue:v19 forKey:@"petsKeywordCount"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BE98])}];
  [v5 setValue:v20 forKey:@"babiesKeywordCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BF20])}];
  [v5 setValue:v21 forKey:@"winterHolidayKeywordCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEA0])}];
  [v5 setValue:v22 forKey:@"beachKeywordCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEE0])}];
  [v5 setValue:v23 forKey:@"natureKeywordCount"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "countForObject:", *MEMORY[0x277D3BEB0])}];
  [v5 setValue:v24 forKey:@"chineseLunarNewYearKeywordCount"];

  v25 = MEMORY[0x277CCABB0];
  v26 = [v4 countForObject:@"None"];

  v27 = [v25 numberWithUnsignedInteger:v26];
  [v5 setValue:v27 forKey:@"noneKeywordCount"];

  return v5;
}

+ (id)aggregatedStatsForMiroMoodCountVector:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:9];
  v6 = [v4 objectAtIndexedSubscript:1];
  [v5 setValue:v6 forKey:@"dreamyMiroMoodCount"];

  v7 = [v4 objectAtIndexedSubscript:2];
  [v5 setValue:v7 forKey:@"sentimentalMiroMoodCount"];

  v8 = [v4 objectAtIndexedSubscript:4];
  [v5 setValue:v8 forKey:@"gentleMiroMoodCount"];

  v9 = [v4 objectAtIndexedSubscript:8];
  [v5 setValue:v9 forKey:@"chillMiroMoodCount"];

  v10 = [v4 objectAtIndexedSubscript:32];
  [v5 setValue:v10 forKey:@"happyMiroMoodCount"];

  v11 = [v4 objectAtIndexedSubscript:64];
  [v5 setValue:v11 forKey:@"upliftingMiroMoodCount"];

  v12 = [v4 objectAtIndexedSubscript:128];
  [v5 setValue:v12 forKey:@"epicMiroMoodCount"];

  v13 = [v4 objectAtIndexedSubscript:256];
  [v5 setValue:v13 forKey:@"clubMiroMoodCount"];

  v14 = [v4 objectAtIndexedSubscript:512];

  [v5 setValue:v14 forKey:@"extremeMiroMoodCount"];

  return v5;
}

+ (id)aggregatedStatsForPossibleMoodCountVector:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:9];
  v6 = [v4 objectAtIndexedSubscript:1];
  [v5 setValue:v6 forKey:@"dreamyPossibleMoodCount"];

  v7 = [v4 objectAtIndexedSubscript:2];
  [v5 setValue:v7 forKey:@"sentimentalPossibleMoodCount"];

  v8 = [v4 objectAtIndexedSubscript:4];
  [v5 setValue:v8 forKey:@"gentlePossibleMoodCount"];

  v9 = [v4 objectAtIndexedSubscript:8];
  [v5 setValue:v9 forKey:@"chillPossibleMoodCount"];

  v10 = [v4 objectAtIndexedSubscript:32];
  [v5 setValue:v10 forKey:@"happyPossibleMoodCount"];

  v11 = [v4 objectAtIndexedSubscript:64];
  [v5 setValue:v11 forKey:@"upliftingPossibleMoodCount"];

  v12 = [v4 objectAtIndexedSubscript:128];
  [v5 setValue:v12 forKey:@"epicPossibleMoodCount"];

  v13 = [v4 objectAtIndexedSubscript:256];
  [v5 setValue:v13 forKey:@"clubPossibleMoodCount"];

  v14 = [v4 objectAtIndexedSubscript:512];

  [v5 setValue:v14 forKey:@"extremePossibleMoodCount"];

  return v5;
}

+ (id)aggregatedStatsForSuggestedMoodCountVector:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:9];
  v6 = [v4 objectAtIndexedSubscript:1];
  [v5 setValue:v6 forKey:@"dreamySuggestedMoodCount"];

  v7 = [v4 objectAtIndexedSubscript:2];
  [v5 setValue:v7 forKey:@"sentimentalSuggestedMoodCount"];

  v8 = [v4 objectAtIndexedSubscript:4];
  [v5 setValue:v8 forKey:@"gentleSuggestedMoodCount"];

  v9 = [v4 objectAtIndexedSubscript:8];
  [v5 setValue:v9 forKey:@"chillSuggestedMoodCount"];

  v10 = [v4 objectAtIndexedSubscript:32];
  [v5 setValue:v10 forKey:@"happySuggestedMoodCount"];

  v11 = [v4 objectAtIndexedSubscript:64];
  [v5 setValue:v11 forKey:@"upliftingSuggestedMoodCount"];

  v12 = [v4 objectAtIndexedSubscript:128];
  [v5 setValue:v12 forKey:@"epicSuggestedMoodCount"];

  v13 = [v4 objectAtIndexedSubscript:256];
  [v5 setValue:v13 forKey:@"clubSuggestedMoodCount"];

  v14 = [v4 objectAtIndexedSubscript:512];
  [v5 setValue:v14 forKey:@"extremeSuggestedMoodCount"];

  [v4 valueForMood:16];
  v16 = v15;
  v17 = v15;
  [v4 sum];
  v19 = v18;

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v19 - v16)];
  [v5 setValue:v20 forKey:@"suggestedMoodCount"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
  [v5 setValue:v21 forKey:@"nonSuggestedMoodCount"];

  return v5;
}

+ (id)memoryBlockedFeatureTypeValueToDataAggregationKeyLookup
{
  if (memoryBlockedFeatureTypeValueToDataAggregationKeyLookup_onceToken != -1)
  {
    dispatch_once(&memoryBlockedFeatureTypeValueToDataAggregationKeyLookup_onceToken, &__block_literal_global_340);
  }

  v3 = memoryBlockedFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable;

  return v3;
}

void __75__PHAMetricsHelper_memoryBlockedFeatureTypeValueToDataAggregationKeyLookup__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2844CC858;
  v2[1] = &unk_2844CC870;
  v3[0] = @"numberOfLocationBlacklistedFeatures";
  v3[1] = @"numberOfAreaBlacklistedFeatures";
  v2[2] = &unk_2844CC888;
  v2[3] = &unk_2844CC4C8;
  v3[2] = @"numberOfPersonBlacklistedFeatures";
  v3[3] = @"numberOfDateBlacklistedFeatures";
  v2[4] = &unk_2844CC8A0;
  v2[5] = &unk_2844CC8B8;
  v3[4] = @"numberOfDateBlacklistedFeatures";
  v3[5] = @"numberOfHolidayBlacklistedFeatures";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = memoryBlockedFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable;
  memoryBlockedFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable = v0;
}

+ (id)memoryBlockableFeatureTypeValueToDataAggregationKeyLookup
{
  if (memoryBlockableFeatureTypeValueToDataAggregationKeyLookup_onceToken != -1)
  {
    dispatch_once(&memoryBlockableFeatureTypeValueToDataAggregationKeyLookup_onceToken, &__block_literal_global_328);
  }

  v3 = memoryBlockableFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable;

  return v3;
}

void __77__PHAMetricsHelper_memoryBlockableFeatureTypeValueToDataAggregationKeyLookup__block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2844CC858;
  v2[1] = &unk_2844CC870;
  v3[0] = @"numberOfLocationBlacklistableFeatures";
  v3[1] = @"numberOfAreaBlacklistableFeatures";
  v2[2] = &unk_2844CC888;
  v2[3] = &unk_2844CC4C8;
  v3[2] = @"numberOfPersonBlacklistableFeatures";
  v3[3] = @"numberOfDateBlacklistableFeatures";
  v2[4] = &unk_2844CC8A0;
  v2[5] = &unk_2844CC8B8;
  v3[4] = @"numberOfDateBlacklistableFeatures";
  v3[5] = @"numberOfHolidayBlacklistableFeatures";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = memoryBlockableFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable;
  memoryBlockableFeatureTypeValueToDataAggregationKeyLookup_featureTypeLookupTable = v0;
}

+ (id)legacyMemoryCategoryValueToDataAggregationKeyLookup
{
  if (legacyMemoryCategoryValueToDataAggregationKeyLookup_onceToken != -1)
  {
    dispatch_once(&legacyMemoryCategoryValueToDataAggregationKeyLookup_onceToken, &__block_literal_global_266);
  }

  v3 = legacyMemoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable;

  return v3;
}

void __71__PHAMetricsHelper_legacyMemoryCategoryValueToDataAggregationKeyLookup__block_invoke()
{
  v15[22] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_2844CC588;
  v14[1] = &unk_2844CC5A0;
  v15[0] = @"dayInHistoryMemoriesCount";
  v15[1] = @"holidayInHistoryMemoriesCount";
  v14[2] = &unk_2844CC5B8;
  v14[3] = &unk_2844CC5D0;
  v15[2] = @"celebrationInHistoryMemoriesCount";
  v15[3] = @"lastWeekendMemoriesCount";
  v14[4] = &unk_2844CC5E8;
  v14[5] = &unk_2844CC600;
  v15[4] = @"lastWeekMemoriesCount";
  v15[5] = @"weekInHistoryMemoriesCount";
  v14[6] = &unk_2844CC618;
  v14[7] = &unk_2844CC630;
  v15[6] = @"throwbackThursdayMemoriesCount";
  v15[7] = @"peopleOverTimeMemoriesCount";
  v14[8] = &unk_2844CC648;
  v14[9] = &unk_2844CC660;
  v15[8] = @"earlyMomentWithPeopleMemoriesCount";
  v15[9] = @"lastSeasonMemoriesCount";
  v14[10] = &unk_2844CC678;
  v14[11] = &unk_2844CC690;
  v15[10] = @"seasonInHistoryMemoriesCount";
  v15[11] = @"contextualMemoriesCount";
  v14[12] = &unk_2844CC6A8;
  v14[13] = &unk_2844CC6C0;
  v15[12] = @"nearbyMemoriesCount";
  v15[13] = @"yearSummaryMemoriesCount";
  v14[14] = &unk_2844CC6D8;
  v14[15] = &unk_2844CC6F0;
  v15[14] = @"bestOfPastMemoriesCount";
  v15[15] = @"celebrationOverTimeMemoriesCount";
  v14[16] = &unk_2844CC708;
  v14[17] = &unk_2844CC720;
  v15[16] = @"keyPeopleForUpcomingHolidayEventMemoriesCount";
  v15[17] = @"homeAggregationMemoriesCount";
  v14[18] = &unk_2844CC738;
  v12[0] = &unk_2844CC6C0;
  v12[1] = &unk_2844CC588;
  v13[0] = @"breakOutOfRoutineMemoriesCount";
  v13[1] = @"crowdMemoriesCount";
  v12[2] = &unk_2844CC750;
  v12[3] = &unk_2844CC768;
  v13[2] = @"tripMemoriesCount";
  v13[3] = @"weekendMemoriesCount";
  v12[4] = &unk_2844CC6D8;
  v12[5] = &unk_2844CC780;
  v13[4] = @"pastSupersetMemoriesCount";
  v13[5] = @"sometimeMemoriesCount";
  v12[6] = &unk_2844CC5D0;
  v12[7] = &unk_2844CC5E8;
  v13[6] = @"socialGroupMemoriesCount";
  v13[7] = @"personMemoriesCount";
  v12[8] = &unk_2844CC798;
  v12[9] = &unk_2844CC660;
  v13[8] = @"personBirthdayMemoriesCount";
  v13[9] = @"peopleVisitingMemoriesCount";
  v12[10] = &unk_2844CC5A0;
  v12[11] = &unk_2844CC618;
  v13[10] = @"meaningfulEventMemoriesCount";
  v13[11] = @"meaningfulEventAggregationMemoriesCount";
  v12[12] = &unk_2844CC5B8;
  v12[13] = &unk_2844CC678;
  v13[12] = @"petMemoriesCount";
  v13[13] = @"babyMemoriesCount";
  v12[14] = &unk_2844CC6F0;
  v12[15] = &unk_2844CC708;
  v13[14] = @"recurrentTripMemoriesCount";
  v13[15] = @"foodieMemoriesCount";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:16];
  v14[19] = &unk_2844CC7B0;
  v10[0] = &unk_2844CC7C8;
  v10[1] = &unk_2844CC7E0;
  v11[0] = @"locationOfInterestMemoriesCount";
  v11[1] = @"regionOfInterestMemoriesCount";
  v15[18] = v0;
  v10[2] = &unk_2844CC7F8;
  v11[2] = @"areaOfInterestMemoriesCount";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v15[19] = v1;
  v14[20] = &unk_2844CC810;
  v9[0] = @"recentEventMemoriesCount";
  v9[1] = @"recentEventPeopleMemoriesCount";
  v8[0] = &unk_2844CC828;
  v8[1] = &unk_2844CC690;
  v9[2] = @"recentEventHolidayMemoriesCount";
  v9[3] = @"recentEventCalendarMemoriesCount";
  v8[2] = &unk_2844CC6A8;
  v8[3] = &unk_2844CC840;
  v8[4] = &unk_2844CC6C0;
  v8[5] = &unk_2844CC588;
  v9[4] = @"recentEventBreakOutOfRoutineMemoriesCount";
  v9[5] = @"recentEventCrowdMemoriesCount";
  v8[6] = &unk_2844CC750;
  v8[7] = &unk_2844CC768;
  v9[6] = @"recentEventTripMemoriesCount";
  v9[7] = @"recentEventWeekendMemoriesCount";
  v8[8] = &unk_2844CC5D0;
  v8[9] = &unk_2844CC5E8;
  v9[8] = @"recentEventSocialEventMemoriesCount";
  v9[9] = @"recentEventPersonMemoriesCount";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:10];
  v15[20] = v2;
  v14[21] = &unk_2844CC798;
  v6[0] = &unk_2844CC690;
  v6[1] = &unk_2844CC6A8;
  v7[0] = @"upcomingEventPeopleMemoriesCount";
  v7[1] = @"upcomingEventHolidayMemoriesCount";
  v6[2] = &unk_2844CC840;
  v7[2] = @"upcomingEventCalendarMemoriesCount";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v15[21] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:22];
  v5 = legacyMemoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable;
  legacyMemoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable = v4;
}

+ (id)memoryCategoryValueToDataAggregationKeyLookup
{
  if (memoryCategoryValueToDataAggregationKeyLookup_onceToken != -1)
  {
    dispatch_once(&memoryCategoryValueToDataAggregationKeyLookup_onceToken, &__block_literal_global_998);
  }

  v3 = memoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable;

  return v3;
}

void __65__PHAMetricsHelper_memoryCategoryValueToDataAggregationKeyLookup__block_invoke()
{
  v3[21] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2844CC390;
  v2[1] = &unk_2844CC3A8;
  v3[0] = @"personMemoriesCount";
  v3[1] = @"personMemoriesCount";
  v2[2] = &unk_2844CC3C0;
  v2[3] = &unk_2844CC3D8;
  v3[2] = @"personMemoriesCount";
  v3[3] = @"socialGroupMemoriesCount";
  v2[4] = &unk_2844CC3F0;
  v2[5] = &unk_2844CC408;
  v3[4] = @"socialGroupMemoriesCount";
  v3[5] = @"homeAggregationMemoriesCount";
  v2[6] = &unk_2844CC420;
  v2[7] = &unk_2844CC438;
  v3[6] = @"yearSummaryMemoriesCount";
  v3[7] = @"foodieMemoriesCount";
  v2[8] = &unk_2844CC450;
  v2[9] = &unk_2844CC468;
  v3[8] = @"petMemoriesCount";
  v3[9] = @"babyMemoriesCount";
  v2[10] = &unk_2844CC480;
  v2[11] = &unk_2844CC498;
  v3[10] = @"locationOfInterestMemoriesCount";
  v3[11] = @"regionOfInterestMemoriesCount";
  v2[12] = &unk_2844CC4B0;
  v2[13] = &unk_2844CC4C8;
  v3[12] = @"areaOfInterestMemoriesCount";
  v3[13] = @"meaningfulEventMemoriesCount";
  v2[14] = &unk_2844CC4E0;
  v2[15] = &unk_2844CC4F8;
  v3[14] = @"meaningfulEventAggregationMemoriesCount";
  v3[15] = @"recurrentTripMemoriesCount";
  v2[16] = &unk_2844CC510;
  v2[17] = &unk_2844CC528;
  v3[16] = @"tripMemoriesCount";
  v3[17] = @"pastSupersetMemoriesCount";
  v2[18] = &unk_2844CC540;
  v2[19] = &unk_2844CC558;
  v3[18] = @"seasonInHistoryMemoriesCount";
  v3[19] = @"dayInHistoryMemoriesCount";
  v2[20] = &unk_2844CC570;
  v3[20] = @"bestOfPastMemoriesCount";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:21];
  v1 = memoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable;
  memoryCategoryValueToDataAggregationKeyLookup_categoryLookupTable = v0;
}

@end