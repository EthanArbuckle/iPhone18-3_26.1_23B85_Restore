@interface PGTitleSpecFactory
+ (id)_publicEventSpecCategoryNameAtBusiness;
+ (id)_publicEventSpecEventName;
+ (id)_publicEventSpecPerformerNames;
+ (id)_specForActivity;
+ (id)_specForAnniversary;
+ (id)_specForBaby;
+ (id)_specForBabyGrowingUp;
+ (id)_specForBeaching;
+ (id)_specForBirthday;
+ (id)_specForBreakfast;
+ (id)_specForCelebration;
+ (id)_specForClimbing;
+ (id)_specForDinner;
+ (id)_specForDiving;
+ (id)_specForEarlyMomentsWithPersonNodes:(id)a3;
+ (id)_specForEntertainment;
+ (id)_specForFoodieWithPersonNodes:(id)a3 locationName:(id)a4 tripTitleLocationType:(unint64_t)a5 allowInspiredTastesTitle:(BOOL)a6 genericOnly:(BOOL)a7;
+ (id)_specForGathering;
+ (id)_specForHiking;
+ (id)_specForLunch;
+ (id)_specForNightOut;
+ (id)_specForPeopleVisiting;
+ (id)_specForPerformance;
+ (id)_specForPet;
+ (id)_specForSportEvent;
+ (id)_specForThrowbackThursday;
+ (id)_specForWedding;
+ (id)_specForWinterSport;
+ (id)specCollectionForMeaningLabel:(id)a3;
+ (id)specCollectionForMemoryCategory:(unint64_t)a3 subcategory:(unint64_t)a4 personNodes:(id)a5;
@end

@implementation PGTitleSpecFactory

+ (id)_publicEventSpecCategoryNameAtBusiness
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypePublicEvent %@ atBusiness %@" value:@"PGMeaningfulEventMemoryTitleTypePublicEvent %@ atBusiness %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:0];

  v6 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:3];
  v11[0] = v6;
  v7 = [PGTitleSpecLocationArgument argumentWithLocationType:2 filterLocations:1];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(PGTitleSpec *)v5 setArguments:v8];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_publicEventSpecPerformerNames
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:2];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_publicEventSpecEventName
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:0];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)_specForFoodieWithPersonNodes:(id)a3 locationName:(id)a4 tripTitleLocationType:(unint64_t)a5 allowInspiredTastesTitle:(BOOL)a6 genericOnly:(BOOL)a7
{
  v7 = a7;
  v65 = a6;
  v83[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v69 = a4;
  v10 = [PGTitleSpec alloc];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PGFoodieMemoryTitleGeneric" value:@"PGFoodieMemoryTitleGeneric" table:@"Localizable"];
  v13 = [(PGTitleSpec *)v10 initWithFormat:v12 titleCategory:0];

  v14 = [PGTitleSpec alloc];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PGFoodieMemoryTitleGeneric2" value:@"PGFoodieMemoryTitleGeneric2" table:@"Localizable"];
  v17 = [(PGTitleSpec *)v14 initWithFormat:v16 titleCategory:0];

  v18 = [PGTitleSpec alloc];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PGFoodieMemoryTitleGeneric3" value:@"PGFoodieMemoryTitleGeneric3" table:@"Localizable"];
  v21 = [(PGTitleSpec *)v18 initWithFormat:v20 titleCategory:0];

  v83[0] = v13;
  v83[1] = v17;
  v67 = v17;
  v83[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  v68 = v9;
  if (!v7)
  {
    if ([v9 count])
    {
      v26 = v9;
      v27 = [PGTitleSpec alloc];
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = [v28 localizedStringForKey:@"PGFoodieMemoryTitleWithPerson %@" value:@"PGFoodieMemoryTitleWithPerson %@" table:@"Localizable"];
      v24 = [(PGTitleSpec *)v27 initWithFormat:v29 titleCategory:3];

      v30 = [PGTitleSpecPeopleArgument argumentWithPeopleType:0 personNodes:v26];
      v81 = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
      [(PGTitleSpec *)v24 setArguments:v31];

      [(PGTitleSpec *)v24 setHasLineBreak:1];
      v80 = v24;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
      v33 = [PGTitleSpecPool poolWithSpecs:v32];

      v79[0] = v33;
      v79[1] = v23;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
      v25 = [PGTitleSpecCollection collectionWithSpecPools:v34];
LABEL_28:

      goto LABEL_29;
    }

    v35 = [v69 length];
    v36 = [PGTitleSpec alloc];
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"PGFoodieMemoryTitleWithLocationName %@" value:@"PGFoodieMemoryTitleWithLocationName %@" table:@"Localizable"];
    v24 = [(PGTitleSpec *)v36 initWithFormat:v38 titleCategory:4];

    if (v35)
    {
      v39 = [PGTitleSpecLocationArgument argumentWithLocationTypeLocationForLocationName:v69];
      v78 = v39;
      v40 = &v78;
    }

    else
    {
      v39 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
      v77 = v39;
      v40 = &v77;
    }

    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    [(PGTitleSpec *)v24 setArguments:v41];

    v42 = [PGTitleSpec alloc];
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"PGFoodieMemoryTitleWithLocationName2 %@" value:@"PGFoodieMemoryTitleWithLocationName2 %@" table:@"Localizable"];
    v33 = [(PGTitleSpec *)v42 initWithFormat:v44 titleCategory:4];

    if (v35)
    {
      v45 = [PGTitleSpecLocationArgument argumentWithLocationTypeLocationForLocationName:v69];
      v76 = v45;
      v46 = &v76;
    }

    else
    {
      v45 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
      v75 = v45;
      v46 = &v75;
    }

    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:{1, v35}];
    [(PGTitleSpec *)v33 setArguments:v47];

    if (!v65)
    {
      v71[0] = v24;
      v71[1] = v33;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
      v34 = [PGTitleSpecPool poolWithSpecs:v53];
LABEL_27:

      v70[0] = v34;
      v70[1] = v23;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      v25 = [PGTitleSpecCollection collectionWithSpecPools:v59];

      goto LABEL_28;
    }

    v48 = 0;
    if (a5 > 2)
    {
      v49 = v63;
      if (a5 == 3)
      {
        v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v51 = v50;
        v52 = @"PGFoodieMemoryTitleWithCountryLocationName %@";
        goto LABEL_22;
      }

      if (a5 == 4)
      {
        v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v51 = v50;
        v52 = @"PGFoodieMemoryTitleWithAOIName %@";
        goto LABEL_22;
      }
    }

    else
    {
      v49 = v63;
      if (a5 < 2)
      {
        v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v51 = v50;
        v52 = @"PGFoodieMemoryTitleWithCityLocationName %@";
LABEL_22:
        v48 = [v50 localizedStringForKey:v52 value:v52 table:@"Localizable"];

        goto LABEL_23;
      }

      if (a5 == 2)
      {
        v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v51 = v50;
        v52 = @"PGFoodieMemoryTitleWithStateLocationName %@";
        goto LABEL_22;
      }
    }

LABEL_23:
    v54 = [[PGTitleSpec alloc] initWithFormat:v48 titleCategory:4];
    v66 = v48;
    if (v49)
    {
      v55 = [PGTitleSpecLocationArgument argumentWithLocationTypeLocationForLocationName:v69];
      v74 = v55;
      v56 = &v74;
    }

    else
    {
      v55 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
      v73 = v55;
      v56 = &v73;
    }

    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    [(PGTitleSpec *)v54 setArguments:v57];

    v72[0] = v24;
    v72[1] = v33;
    v72[2] = v54;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:3];
    v34 = [PGTitleSpecPool poolWithSpecs:v58];

    v53 = v66;
    goto LABEL_27;
  }

  v82 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v25 = [PGTitleSpecCollection collectionWithSpecPools:v24];
LABEL_29:

  v60 = v25;
  v61 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)_specForThrowbackThursday
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:5];
  v3 = [PGTitleSpecTimeArgument argumentWithTimeType:2];
  v21[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  [(PGTitleSpec *)v2 setHasLineBreak:1];
  v5 = [PGTitleSpec alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PGThrowbackThursdayTitleFormat2" value:@"PGThrowbackThursdayTitleFormat2" table:@"Localizable"];
  v8 = [(PGTitleSpec *)v5 initWithFormat:v7 titleCategory:5];

  v9 = [PGTitleSpec alloc];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGThrowbackThursdayTitleFormat3" value:@"PGThrowbackThursdayTitleFormat3" table:@"Localizable"];
  v12 = [(PGTitleSpec *)v9 initWithFormat:v11 titleCategory:5];

  v20[0] = v2;
  v20[1] = v8;
  v20[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v14 = [PGTitleSpecPool poolWithSpecs:v13];

  v19 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v16 = [PGTitleSpecCollection collectionWithSpecPools:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_specForPeopleVisiting
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGPeopleVisitingMemoryTitleStringVisiting" value:@"PGPeopleVisitingMemoryTitleStringVisiting" table:@"Localizable"];
  v4 = [PGTitleSpec specWithFormat:v3 titleCategory:0];

  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v11 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [PGTitleSpecCollection collectionWithSpecPools:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_specForEarlyMomentsWithPersonNodes:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [PGTitleSpec alloc];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PGEarlyMomentsWithPeopleTitleFormatOnePersonWithName %@" value:@"PGEarlyMomentsWithPeopleTitleFormatOnePersonWithName %@" table:@"Localizable"];
  v7 = [(PGTitleSpec *)v4 initWithFormat:v6 titleCategory:0];

  v8 = [PGTitleSpecPeopleArgument argumentWithPeopleType:0 personNodes:v3];

  v25[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(PGTitleSpec *)v7 setArguments:v9];

  [(PGTitleSpec *)v7 setHasLineBreak:1];
  v10 = [PGTitleSpec alloc];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PGEarlyMomentsWithPeopleTitleFormatWithUnnamedPerson" value:@"PGEarlyMomentsWithPeopleTitleFormatWithUnnamedPerson" table:@"Localizable"];
  v13 = [(PGTitleSpec *)v10 initWithFormat:v12 titleCategory:3];

  [(PGTitleSpec *)v13 setHasLineBreak:1];
  v24 = v7;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [PGTitleSpecPool poolWithSpecs:v14];

  v23 = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v17 = [PGTitleSpecPool poolWithSpecs:v16];

  v22[0] = v15;
  v22[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v19 = [PGTitleSpecCollection collectionWithSpecPools:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_specForBabyGrowingUp
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGBabyMemoryTypeFormat1" value:@"PGBabyMemoryTypeFormat1" table:@"Localizable"];
  v4 = [PGTitleSpec specWithFormat:v3 titleCategory:0];

  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v11 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [PGTitleSpecCollection collectionWithSpecPools:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_specForBaby
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGBabyMemoryTypeFormat2" value:@"PGBabyMemoryTypeFormat2" table:@"Localizable"];
  v4 = [PGTitleSpec specWithFormat:v3 titleCategory:0];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PGBabyMemoryTypeFormat3" value:@"PGBabyMemoryTypeFormat3" table:@"Localizable"];
  v7 = [PGTitleSpec specWithFormat:v6 titleCategory:0];

  v15[0] = v4;
  v15[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [PGTitleSpecPool poolWithSpecs:v8];

  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [PGTitleSpecCollection collectionWithSpecPools:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_specForPet
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGPetMemoryTypeFormatPet" value:@"PGPetMemoryTypeFormatPet" table:@"Localizable"];
  v4 = [PGTitleSpec specWithFormat:v3 titleCategory:0];

  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v11 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [PGTitleSpecCollection collectionWithSpecPools:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_specForGathering
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v3 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:0];
  v13[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  v12 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v11 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v8 = [PGTitleSpecCollection collectionWithSpecPools:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_specForDinner
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDinnerWithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeDinnerWithLocationName %@" table:@"Localizable"];
  v35 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v5 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v39[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  [(PGTitleSpec *)v35 setArguments:v6];

  v7 = [PGTitleSpec alloc];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeFridayDinner" value:@"PGMeaningfulEventMemoryTitleTypeFridayDinner" table:@"Localizable"];
  v10 = [(PGTitleSpec *)v7 initWithFormat:v9 titleCategory:1];

  [(PGTitleSpec *)v10 setWeekdayCriteria:1];
  v11 = [PGTitleSpec alloc];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSaturdayDinner" value:@"PGMeaningfulEventMemoryTitleTypeSaturdayDinner" table:@"Localizable"];
  v14 = [(PGTitleSpec *)v11 initWithFormat:v13 titleCategory:1];

  [(PGTitleSpec *)v14 setWeekdayCriteria:2];
  v15 = [PGTitleSpec alloc];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSundayDinner" value:@"PGMeaningfulEventMemoryTitleTypeSundayDinner" table:@"Localizable"];
  v18 = [(PGTitleSpec *)v15 initWithFormat:v17 titleCategory:1];

  [(PGTitleSpec *)v18 setWeekdayCriteria:3];
  v19 = [PGTitleSpec alloc];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeFamilyDinner" value:@"PGMeaningfulEventMemoryTitleTypeFamilyDinner" table:@"Localizable"];
  v22 = [(PGTitleSpec *)v19 initWithFormat:v21 titleCategory:3];

  v23 = [PGTitleSpecPeopleArgument argumentWithPeopleType:3];
  v38 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  [(PGTitleSpec *)v22 setArguments:v24];

  v25 = [PGTitleSpec alloc];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDinnerGeneric" value:@"PGMeaningfulEventMemoryTitleTypeDinnerGeneric" table:@"Localizable"];
  v28 = [(PGTitleSpec *)v25 initWithFormat:v27 titleCategory:1];

  [(PGTitleSpec *)v28 setHasLineBreak:1];
  v37[0] = v35;
  v37[1] = v10;
  v37[2] = v14;
  v37[3] = v18;
  v37[4] = v22;
  v37[5] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];
  v30 = [PGTitleSpecPool poolWithSpecs:v29];

  v36 = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v32 = [PGTitleSpecCollection collectionWithSpecPools:v31];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)_specForLunch
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeLunchWithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeLunchWithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v31[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSaturdayBrunch" value:@"PGMeaningfulEventMemoryTitleTypeSaturdayBrunch" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:1];

  [(PGTitleSpec *)v11 setWeekdayCriteria:2];
  v12 = [PGTitleSpec alloc];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSundayBrunch" value:@"PGMeaningfulEventMemoryTitleTypeSundayBrunch" table:@"Localizable"];
  v15 = [(PGTitleSpec *)v12 initWithFormat:v14 titleCategory:1];

  [(PGTitleSpec *)v15 setWeekdayCriteria:3];
  v16 = [PGTitleSpec alloc];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeFamilyLunch" value:@"PGMeaningfulEventMemoryTitleTypeFamilyLunch" table:@"Localizable"];
  v19 = [(PGTitleSpec *)v16 initWithFormat:v18 titleCategory:3];

  v20 = [PGTitleSpecPeopleArgument argumentWithPeopleType:3];
  v30 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  [(PGTitleSpec *)v19 setArguments:v21];

  v29[0] = v5;
  v29[1] = v11;
  v29[2] = v15;
  v29[3] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  v28 = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v25 = [PGTitleSpecCollection collectionWithSpecPools:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)_specForBreakfast
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeBreakfastWithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeBreakfastWithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v24[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSaturdayBrunch" value:@"PGMeaningfulEventMemoryTitleTypeSaturdayBrunch" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:1];

  [(PGTitleSpec *)v11 setWeekdayCriteria:2];
  v12 = [PGTitleSpec alloc];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSundayBrunch" value:@"PGMeaningfulEventMemoryTitleTypeSundayBrunch" table:@"Localizable"];
  v15 = [(PGTitleSpec *)v12 initWithFormat:v14 titleCategory:1];

  [(PGTitleSpec *)v15 setWeekdayCriteria:3];
  v23[0] = v5;
  v23[1] = v11;
  v23[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v17 = [PGTitleSpecPool poolWithSpecs:v16];

  v22 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v19 = [PGTitleSpecCollection collectionWithSpecPools:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_specForDiving
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDiving1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeDiving1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v34[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDiving2WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeDiving2WithLocationName %@" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:4];

  v12 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v33 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [(PGTitleSpec *)v11 setArguments:v13];

  [(PGTitleSpec *)v11 setHasLineBreak:1];
  v14 = [PGTitleSpec alloc];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDiving3" value:@"PGMeaningfulEventMemoryTitleTypeDiving3" table:@"Localizable"];
  v17 = [(PGTitleSpec *)v14 initWithFormat:v16 titleCategory:1];

  v18 = [PGTitleSpec alloc];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeDiving4" value:@"PGMeaningfulEventMemoryTitleTypeDiving4" table:@"Localizable"];
  v21 = [(PGTitleSpec *)v18 initWithFormat:v20 titleCategory:1];

  v32[0] = v5;
  v32[1] = v11;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  v31[0] = v17;
  v31[1] = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v25 = [PGTitleSpecPool poolWithSpecs:v24];

  v30[0] = v23;
  v30[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v27 = [PGTitleSpecCollection collectionWithSpecPools:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_specForClimbing
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeClimbing1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeClimbing1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v23[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeClimbing2" value:@"PGMeaningfulEventMemoryTitleTypeClimbing2" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:1];

  v22 = v5;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v13 = [PGTitleSpecPool poolWithSpecs:v12];

  v21 = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v15 = [PGTitleSpecPool poolWithSpecs:v14];

  v20[0] = v13;
  v20[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [PGTitleSpecCollection collectionWithSpecPools:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)_specForHiking
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeHiking1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeHiking1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v20[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeHiking2" value:@"PGMeaningfulEventMemoryTitleTypeHiking2" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:1];

  v19[0] = v5;
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = [PGTitleSpecPool poolWithSpecs:v12];

  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [PGTitleSpecCollection collectionWithSpecPools:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_specForBeaching
{
  v37[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeBeaching1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeBeaching1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v37[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeBeaching2WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeBeaching2WithLocationName %@" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:4];

  v12 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v36 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [(PGTitleSpec *)v11 setArguments:v13];

  [(PGTitleSpec *)v11 setHasLineBreak:1];
  v14 = [PGTitleSpec alloc];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeBeaching3WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeBeaching3WithLocationName %@" table:@"Localizable"];
  v17 = [(PGTitleSpec *)v14 initWithFormat:v16 titleCategory:4];

  v18 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v35 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  [(PGTitleSpec *)v17 setArguments:v19];

  [(PGTitleSpec *)v17 setHasLineBreak:1];
  v20 = [PGTitleSpec alloc];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeBeaching4" value:@"PGMeaningfulEventMemoryTitleTypeBeaching4" table:@"Localizable"];
  v23 = [(PGTitleSpec *)v20 initWithFormat:v22 titleCategory:1];

  v34[0] = v5;
  v34[1] = v11;
  v34[2] = v17;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v25 = [PGTitleSpecPool poolWithSpecs:v24];

  v33 = v23;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v27 = [PGTitleSpecPool poolWithSpecs:v26];

  v32[0] = v25;
  v32[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v29 = [PGTitleSpecCollection collectionWithSpecPools:v28];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_specForWinterSport
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeWinterSport1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeWinterSport1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v20[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeWinterSport2" value:@"PGMeaningfulEventMemoryTitleTypeWinterSport2" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:1];

  v19[0] = v5;
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = [PGTitleSpecPool poolWithSpecs:v12];

  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [PGTitleSpecCollection collectionWithSpecPools:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_specForActivity
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeActivity1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeActivity1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v20[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v8 = [PGTitleSpec alloc];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeActivity2" value:@"PGMeaningfulEventMemoryTitleTypeActivity2" table:@"Localizable"];
  v11 = [(PGTitleSpec *)v8 initWithFormat:v10 titleCategory:0];

  v19[0] = v5;
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v13 = [PGTitleSpecPool poolWithSpecs:v12];

  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v15 = [PGTitleSpecCollection collectionWithSpecPools:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_specForPerformance
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = [PGTitleSpec alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypePerformance1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypePerformance1WithLocationName %@" table:@"Localizable"];
  v6 = [(PGTitleSpec *)v3 initWithFormat:v5 titleCategory:4];

  v7 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v28[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [(PGTitleSpec *)v6 setArguments:v8];

  [(PGTitleSpec *)v6 setHasLineBreak:1];
  v9 = [PGTitleSpec alloc];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypePerformance2" value:@"PGMeaningfulEventMemoryTitleTypePerformance2" table:@"Localizable"];
  v12 = [(PGTitleSpec *)v9 initWithFormat:v11 titleCategory:1];

  v13 = [a1 _publicEventSpecEventName];
  v27 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v15 = [PGTitleSpecPool poolWithSpecs:v14];

  v26 = v6;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v17 = [PGTitleSpecPool poolWithSpecs:v16];

  v25 = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v19 = [PGTitleSpecPool poolWithSpecs:v18];

  v24[0] = v15;
  v24[1] = v17;
  v24[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v21 = [PGTitleSpecCollection collectionWithSpecPools:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_specForSportEvent
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [PGTitleSpec alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSportEvent1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeSportEvent1WithLocationName %@" table:@"Localizable"];
  v6 = [(PGTitleSpec *)v3 initWithFormat:v5 titleCategory:4];

  v7 = [PGTitleSpecLocationArgument argumentWithLocationType:5 filterLocations:1];
  v25[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(PGTitleSpec *)v6 setArguments:v8];

  [(PGTitleSpec *)v6 setHasLineBreak:1];
  v9 = [PGTitleSpec alloc];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeSportEvent2" value:@"PGMeaningfulEventMemoryTitleTypeSportEvent2" table:@"Localizable"];
  v12 = [(PGTitleSpec *)v9 initWithFormat:v11 titleCategory:1];

  v13 = [a1 _publicEventSpecEventName];
  v24 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [PGTitleSpecPool poolWithSpecs:v14];

  v23[0] = v6;
  v23[1] = v12;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v17 = [PGTitleSpecPool poolWithSpecs:v16];

  v22[0] = v15;
  v22[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v19 = [PGTitleSpecCollection collectionWithSpecPools:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_specForNightOut
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [PGTitleSpec alloc];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeNightOut1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeNightOut1WithLocationName %@" table:@"Localizable"];
  v6 = [(PGTitleSpec *)v3 initWithFormat:v5 titleCategory:4];

  v7 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v35[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [(PGTitleSpec *)v6 setArguments:v8];

  v9 = [PGTitleSpec alloc];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeNightOut2WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeNightOut2WithLocationName %@" table:@"Localizable"];
  v12 = [(PGTitleSpec *)v9 initWithFormat:v11 titleCategory:4];

  v13 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v34 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [(PGTitleSpec *)v12 setArguments:v14];

  v15 = [PGTitleSpec alloc];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeNightOut3" value:@"PGMeaningfulEventMemoryTitleTypeNightOut3" table:@"Localizable"];
  v18 = [(PGTitleSpec *)v15 initWithFormat:v17 titleCategory:1];

  v19 = [a1 _publicEventSpecEventName];
  v33 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v21 = [PGTitleSpecPool poolWithSpecs:v20];

  v32[0] = v6;
  v32[1] = v12;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  v31 = v18;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v25 = [PGTitleSpecPool poolWithSpecs:v24];

  v30[0] = v21;
  v30[1] = v23;
  v30[2] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v27 = [PGTitleSpecCollection collectionWithSpecPools:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)_specForEntertainment
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v4 = [PGTitleSpecLocationArgument argumentWithLocationType:4 filterLocations:1];
  v35[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  [(PGTitleSpec *)v3 setArguments:v5];

  v6 = [PGTitleSpec alloc];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeEntertainment1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeEntertainment1WithLocationName %@" table:@"Localizable"];
  v9 = [(PGTitleSpec *)v6 initWithFormat:v8 titleCategory:4];

  v10 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v34 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  [(PGTitleSpec *)v9 setArguments:v11];

  v12 = [PGTitleSpec alloc];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeEntertainment2WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeEntertainment2WithLocationName %@" table:@"Localizable"];
  v15 = [(PGTitleSpec *)v12 initWithFormat:v14 titleCategory:4];

  v16 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v33 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [(PGTitleSpec *)v15 setArguments:v17];

  v18 = [a1 _publicEventSpecEventName];
  v32 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v20 = [PGTitleSpecPool poolWithSpecs:v19];

  v31 = v3;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v22 = [PGTitleSpecPool poolWithSpecs:v21];

  v30[0] = v9;
  v30[1] = v15;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v24 = [PGTitleSpecPool poolWithSpecs:v23];

  v29[0] = v20;
  v29[1] = v22;
  v29[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v26 = [PGTitleSpecCollection collectionWithSpecPools:v25];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_specForAnniversary
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeAnniversary1WithYearOrdinal %@" value:@"PGMeaningfulEventMemoryTitleTypeAnniversary1WithYearOrdinal %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:1];

  v6 = [PGTitleSpecTimeArgument argumentWithTimeType:1];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  [(PGTitleSpec *)v5 setHasLineBreak:1];
  v15 = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v9 = [PGTitleSpecPool poolWithSpecs:v8];

  v14 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v11 = [PGTitleSpecCollection collectionWithSpecPools:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_specForBirthday
{
  v26[2] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" value:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:3];

  v6 = [PGTitleSpecPeopleArgument argumentWithPeopleType:4];
  v7 = [PGTitleSpecTimeArgument argumentWithTimeType:0];
  v26[0] = v6;
  v26[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [(PGTitleSpec *)v5 setArguments:v8];

  v9 = [PGTitleSpec alloc];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@" value:@"PGPeopleBirthdayTitleFormatWithName %@" table:@"Localizable"];
  v12 = [(PGTitleSpec *)v9 initWithFormat:v11 titleCategory:3];

  v25 = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [(PGTitleSpec *)v12 setArguments:v13];

  v24 = v5;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v15 = [PGTitleSpecPool poolWithSpecs:v14];

  v23 = v12;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v17 = [PGTitleSpecPool poolWithSpecs:v16];

  v22[0] = v15;
  v22[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v19 = [PGTitleSpecCollection collectionWithSpecPools:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_specForWedding
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [PGTitleSpec alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeWedding1WithLocationName %@" value:@"PGMeaningfulEventMemoryTitleTypeWedding1WithLocationName %@" table:@"Localizable"];
  v5 = [(PGTitleSpec *)v2 initWithFormat:v4 titleCategory:4];

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
  v19[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(PGTitleSpec *)v5 setArguments:v7];

  v18[0] = v5;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeWedding2" value:@"PGMeaningfulEventMemoryTitleTypeWedding2" table:@"Localizable"];
  v10 = [PGTitleSpec specWithFormat:v9 titleCategory:1];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

  v12 = [PGTitleSpecPool poolWithSpecs:v11];
  v17 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v14 = [PGTitleSpecCollection collectionWithSpecPools:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_specForCelebration
{
  v21[4] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v19 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeCelebration1" value:@"PGMeaningfulEventMemoryTitleTypeCelebration1" table:@"Localizable"];
  v17 = [PGTitleSpec specWithFormat:v18 titleCategory:1];
  v21[0] = v17;
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeCelebration2" value:@"PGMeaningfulEventMemoryTitleTypeCelebration2" table:@"Localizable"];
  v4 = [PGTitleSpec specWithFormat:v3 titleCategory:1];
  v21[1] = v4;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeCelebration3" value:@"PGMeaningfulEventMemoryTitleTypeCelebration3" table:@"Localizable"];
  v7 = [PGTitleSpec specWithFormat:v6 titleCategory:1];
  v21[2] = v7;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGMeaningfulEventMemoryTitleTypeCelebration4" value:@"PGMeaningfulEventMemoryTitleTypeCelebration4" table:@"Localizable"];
  v10 = [PGTitleSpec specWithFormat:v9 titleCategory:1];
  v21[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v12 = [PGTitleSpecPool poolWithSpecs:v11];
  v20 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v14 = [PGTitleSpecCollection collectionWithSpecPools:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)specCollectionForMeaningLabel:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"Celebration"])
  {
    v5 = [a1 _specForCelebration];
LABEL_37:
    v6 = v5;
    goto LABEL_38;
  }

  if ([v4 isEqualToString:@"Wedding"])
  {
    v5 = [a1 _specForWedding];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Birthday"])
  {
    v5 = [a1 _specForBirthday];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Anniversary"])
  {
    v5 = [a1 _specForAnniversary];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Entertainment"])
  {
    v5 = [a1 _specForEntertainment];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"NightOut"])
  {
    v5 = [a1 _specForNightOut];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"SportEvent"])
  {
    v5 = [a1 _specForSportEvent];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Performance"])
  {
    v5 = [a1 _specForPerformance];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Activity"])
  {
    v5 = [a1 _specForActivity];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"WinterSport"])
  {
    v5 = [a1 _specForWinterSport];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Beaching"])
  {
    v5 = [a1 _specForBeaching];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Hiking"])
  {
    v5 = [a1 _specForHiking];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Climbing"])
  {
    v5 = [a1 _specForClimbing];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Diving"])
  {
    v5 = [a1 _specForDiving];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Breakfast"])
  {
    v5 = [a1 _specForBreakfast];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Lunch"])
  {
    v5 = [a1 _specForLunch];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Dinner"])
  {
    v5 = [a1 _specForDinner];
    goto LABEL_37;
  }

  if ([v4 isEqualToString:@"Gathering"])
  {
    v5 = [a1 _specForGathering];
    goto LABEL_37;
  }

  v9 = +[PGLogging sharedLogging];
  v10 = [v9 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "No spec for %@", &v11, 0xCu);
  }

  v6 = 0;
LABEL_38:

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)specCollectionForMemoryCategory:(unint64_t)a3 subcategory:(unint64_t)a4 personNodes:(id)a5
{
  v8 = a5;
  if (a4 > 216)
  {
    if (a4 == 217)
    {
      if (a3 == 219)
      {
        v9 = [a1 _specForBaby];
        goto LABEL_18;
      }

      if (a3 == 220)
      {
        v9 = [a1 _specForBabyGrowingUp];
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (a4 == 218)
    {
      v9 = [a1 _specForFoodieWithPersonNodes:v8 locationName:0 tripTitleLocationType:0 allowInspiredTastesTitle:0 genericOnly:0];
      goto LABEL_18;
    }

LABEL_8:
    if (a3 == 214)
    {
      v9 = [a1 _specForThrowbackThursday];
      goto LABEL_18;
    }

    if (a3 == 219)
    {
      v9 = [a1 _specForEarlyMomentsWithPersonNodes:v8];
      goto LABEL_18;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_19;
  }

  if (a4 == 212)
  {
    v9 = [a1 _specForPet];
    goto LABEL_18;
  }

  if (a4 != 216)
  {
    goto LABEL_8;
  }

  v9 = [a1 _specForPeopleVisiting];
LABEL_18:
  v10 = v9;
LABEL_19:

  return v10;
}

@end