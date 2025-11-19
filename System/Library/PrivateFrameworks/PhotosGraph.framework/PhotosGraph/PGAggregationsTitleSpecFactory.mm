@interface PGAggregationsTitleSpecFactory
+ (id)_buildSpecCollectionForMeaningLabel:(id)a3 withSpecDefinition:(id)a4 features:(id)a5;
+ (id)_featureTypesFromFeatureKey:(id)a3;
+ (id)_specCollectionForBirthday;
+ (id)_specCollectionForGathering;
+ (id)_specDefinitionForActivity;
+ (id)_specDefinitionForBeaching;
+ (id)_specDefinitionForBreakfast;
+ (id)_specDefinitionForClimbing;
+ (id)_specDefinitionForDinner;
+ (id)_specDefinitionForDiving;
+ (id)_specDefinitionForEntertainment;
+ (id)_specDefinitionForHiking;
+ (id)_specDefinitionForLunch;
+ (id)_specDefinitionForNightOut;
+ (id)_specDefinitionForPerformance;
+ (id)_specDefinitionForSportEvent;
+ (id)_specDefinitionForWinterSport;
+ (id)specCollectionForMeaningLabel:(id)a3 features:(id)a4;
@end

@implementation PGAggregationsTitleSpecFactory

+ (id)_buildSpecCollectionForMeaningLabel:(id)a3 withSpecDefinition:(id)a4 features:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v29 = a1;
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v9;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "type")}];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __98__PGAggregationsTitleSpecFactory__buildSpecCollectionForMeaningLabel_withSpecDefinition_features___block_invoke;
    v32[3] = &unk_27887F9B8;
    v33 = v12;
    v38 = v29;
    v34 = v8;
    v19 = v31;
    v35 = v31;
    v36 = v11;
    v37 = v10;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    [v34 enumerateKeysAndObjectsUsingBlock:v32];
    v23 = [PGTitleSpecPool poolWithSpecs:v20];
    v24 = [PGTitleSpecPool poolWithSpecs:v21];
    v43[0] = v23;
    v43[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v26 = [PGTitleSpecCollection collectionWithSpecPools:v25];

    v9 = v30;
  }

  else
  {
    v26 = 0;
    v19 = v31;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __98__PGAggregationsTitleSpecFactory__buildSpecCollectionForMeaningLabel_withSpecDefinition_features___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v38 = [a3 unsignedIntegerValue];
  v6 = v5;
  v37 = [(__CFString *)v6 isEqualToString:@"none"];
  v7 = [(__CFString *)v6 isEqualToString:@"LocationIncludingAOI"];
  v8 = [(__CFString *)v6 isEqualToString:@"LocationIncludingLineBreak"];
  v9 = v8;
  v36 = v7 | v8;
  if (((v7 | v8) & 1) != 0 || ([(__CFString *)v6 isEqualToString:@"Location"]& 1) != 0)
  {
    v10 = 1;
    v34 = 1;
  }

  else
  {
    v34 = [(__CFString *)v6 isEqualToString:@"Person"];
    v10 = 0;
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 72) _featureTypesFromFeatureKey:v6];
  v13 = [v11 intersectsSet:v12];

  v33 = v6;
  if (!v10)
  {
    if ([(__CFString *)v6 isEqualToString:@"Person"])
    {
      v17 = 0;
    }

    else if ([(__CFString *)v6 isEqualToString:@"Family"])
    {
      v17 = 3;
    }

    else
    {
      if (![(__CFString *)v6 isEqualToString:@"SocialGroup"])
      {
        v22 = 0;
        goto LABEL_20;
      }

      v17 = 1;
    }

    v22 = [PGTitleSpecPeopleArgument argumentWithPeopleType:v17];
LABEL_20:
    v15 = 0;
    v35 = v6;
    goto LABEL_21;
  }

  if (v7)
  {
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"Location"];
    v15 = [v14 unsignedIntegerValue];

    v38 += v15;
    v16 = 21;
  }

  else
  {
    if (v9)
    {
      v18 = [*(a1 + 40) objectForKeyedSubscript:@"Location"];
      v19 = [v18 unsignedIntegerValue];

      v20 = [*(a1 + 40) objectForKeyedSubscript:@"LocationIncludingAOI"];
      v21 = [v20 unsignedIntegerValue];

      v15 = v21 + v19;
      v38 += v15;
    }

    else
    {
      v15 = 0;
    }

    v16 = 17;
  }

  v22 = [PGTitleSpecLocationArgument argumentWithLocationType:v16 filterLocations:0];
  v35 = @"Location";
LABEL_21:
  if (v15 < v38)
  {
    if (v13)
    {
      v23 = 64;
    }

    else
    {
      v23 = 56;
    }

    do
    {
      if (v37)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGMeaningfulEventAggregationMemoryTitleType%@%lu", *(a1 + 48), v15];
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"PGMeaningfulEventAggregationMemoryTitleType%@%luWith%@", *(a1 + 48), v15, v35, v33];
        v24 = v25;
        if (v34)
        {
          v26 = [v25 stringByAppendingString:@" %@"];

          v24 = v26;
        }
      }

      v27 = *(a1 + 72);
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:v24 value:v24 table:@"Localizable"];

      v30 = [[PGTitleSpec alloc] initWithFormat:v29 titleCategory:0];
      [(PGTitleSpec *)v30 setHasLineBreak:v36 & 1];
      if (v22)
      {
        v39[0] = v22;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
        [(PGTitleSpec *)v30 setArguments:v31];
      }

      [*(a1 + v23) addObject:v30];

      ++v15;
    }

    while (v38 != v15);
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (id)_featureTypesFromFeatureKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [v3 isEqualToString:@"LocationIncludingAOI"];
  if ([v3 isEqualToString:@"Location"] & 1) != 0 || ((objc_msgSend(v3, "isEqualToString:", @"LocationIncludingLineBreak") | v5))
  {
    [v4 addObject:&unk_284482448];
    [v4 addObject:&unk_284482460];
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = &unk_284482478;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"Person"])
  {
    v6 = &unk_284482490;
LABEL_10:
    [v4 addObject:v6];
    goto LABEL_11;
  }

  if (([v3 isEqualToString:@"Family"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"SocialGroup"))
  {
    v6 = &unk_2844824A8;
    goto LABEL_10;
  }

LABEL_11:

  return v4;
}

+ (id)_specCollectionForGathering
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeGatheringWithLocation %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeGatheringWithLocation %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:0];
  v24[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeFamilyGatheringWithLocation %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeFamilyGatheringWithLocation %@" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:4];

  v12 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:0];
  v23[0] = v12;
  v13 = [PGTitleSpecPeopleArgument argumentWithPeopleType:3];
  v23[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [(PGTitleSpec *)v11 setArguments:v14];

  v22[0] = v5;
  v22[1] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v16 = [PGTitleSpecPool poolWithSpecs:v15];

  v21 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v18 = [PGTitleSpecCollection collectionWithSpecPools:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_specDefinitionForDinner
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"Location";
  v5[1] = @"Person";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForLunch
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"Location";
  v5[1] = @"Person";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForBreakfast
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"Location";
  v5[1] = @"Person";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForClimbing
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingAOI";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForWinterSport
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingAOI";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482400;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482400;
  v6[3] = &unk_284482400;
  v5[4] = @"Family";
  v6[4] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForHiking
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingAOI";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v5[4] = @"Family";
  v6[4] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForDiving
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingAOI";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482400;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482400;
  v6[3] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForBeaching
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingLineBreak";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482400;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482400;
  v6[3] = &unk_284482400;
  v5[4] = @"Family";
  v6[4] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForActivity
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"none";
  v5[1] = @"LocationIncludingLineBreak";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482400;
  v5[2] = @"Person";
  v5[3] = @"SocialGroup";
  v6[2] = &unk_284482400;
  v6[3] = &unk_284482400;
  v5[4] = @"Family";
  v6[4] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForPerformance
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"LocationIncludingLineBreak";
  v5[1] = @"Person";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482430;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForSportEvent
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"LocationIncludingAOI";
  v5[1] = @"Person";
  v6[0] = &unk_284482430;
  v6[1] = &unk_284482400;
  v5[2] = @"SocialGroup";
  v6[2] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForNightOut
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"Location";
  v5[1] = @"Person";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482430;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482430;
  v6[3] = &unk_284482430;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specDefinitionForEntertainment
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"LocationIncludingAOI";
  v5[1] = @"Person";
  v6[0] = &unk_284482400;
  v6[1] = &unk_284482418;
  v5[2] = @"SocialGroup";
  v5[3] = @"Family";
  v6[2] = &unk_284482400;
  v6[3] = &unk_284482400;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specCollectionForBirthday
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventAggregationMemoryTitleTypeBirthdayWithPerson %@" value:@"PGMeaningfulEventAggregationMemoryTitleTypeBirthdayWithPerson %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:3];

  v6 = [PGTitleSpecPeopleArgument argumentWithPeopleType:4];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v15 = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v9 = [PGTitleSpecPool poolWithSpecs:v8];

  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [PGTitleSpecCollection collectionWithSpecPools:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)specCollectionForMeaningLabel:(id)a3 features:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"Birthday"])
  {
    v8 = [a1 _specCollectionForBirthday];
    goto LABEL_3;
  }

  if ([v6 isEqualToString:@"Entertainment"])
  {
    v11 = [a1 _specDefinitionForEntertainment];
LABEL_31:
    v10 = v11;
    goto LABEL_32;
  }

  if ([v6 isEqualToString:@"NightOut"])
  {
    v11 = [a1 _specDefinitionForNightOut];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"SportEvent"])
  {
    v11 = [a1 _specDefinitionForSportEvent];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Performance"])
  {
    v11 = [a1 _specDefinitionForPerformance];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Activity"])
  {
    v11 = [a1 _specDefinitionForActivity];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"WinterSport"])
  {
    v11 = [a1 _specDefinitionForWinterSport];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Beaching"])
  {
    v11 = [a1 _specDefinitionForBeaching];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Hiking"])
  {
    v11 = [a1 _specDefinitionForHiking];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Diving"])
  {
    v11 = [a1 _specDefinitionForDiving];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Climbing"])
  {
    v11 = [a1 _specDefinitionForClimbing];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Breakfast"])
  {
    v11 = [a1 _specDefinitionForBreakfast];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Lunch"])
  {
    v11 = [a1 _specDefinitionForLunch];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Dinner"])
  {
    v11 = [a1 _specDefinitionForDinner];
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"Gathering"])
  {
    v8 = [a1 _specCollectionForGathering];
LABEL_3:
    v9 = v8;
    if (v8)
    {
      goto LABEL_33;
    }

    goto LABEL_4;
  }

  v14 = +[PGLogging sharedLogging];
  v15 = [v14 loggingConnection];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "No spec definition for %@", &v16, 0xCu);
  }

LABEL_4:
  v10 = 0;
LABEL_32:
  v9 = [a1 _buildSpecCollectionForMeaningLabel:v6 withSpecDefinition:v10 features:v7];

LABEL_33:
  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

@end