@interface PGHighlightsTitleSpecFactory
+ (id)orderedHighlightTitleSpecTypesForMeaningLabel:(id)a3;
+ (id)specPoolForAOILocation;
+ (id)specPoolForBusinessItem;
+ (id)specPoolForPublicEvent;
+ (id)specPoolForPublicEventWithBusiness;
+ (id)specPoolsForBirthdayIncludingLocationIfPossible:(BOOL)a3 allowAllCities:(BOOL)a4;
+ (id)titleSpecForGenericLocation:(BOOL)a3;
+ (id)titleSpecForHolidayEventIncludingLocationIfPossible:(BOOL)a3;
@end

@implementation PGHighlightsTitleSpecFactory

+ (id)orderedHighlightTitleSpecTypesForMeaningLabel:(id)a3
{
  v3 = orderedHighlightTitleSpecTypesForMeaningLabel__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&orderedHighlightTitleSpecTypesForMeaningLabel__onceToken, &__block_literal_global_34243);
  }

  v5 = [orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel objectForKeyedSubscript:v4];

  return v5;
}

void __78__PGHighlightsTitleSpecFactory_orderedHighlightTitleSpecTypesForMeaningLabel___block_invoke()
{
  v5[27] = *MEMORY[0x277D85DE8];
  v4[0] = @"Activity";
  v4[1] = @"Hiking";
  v5[0] = &unk_284485AF0;
  v5[1] = &unk_284485AF0;
  v4[2] = @"Climbing";
  v4[3] = @"Beaching";
  v5[2] = &unk_284485AF0;
  v5[3] = &unk_284485AF0;
  v4[4] = @"Diving";
  v4[5] = @"WinterSport";
  v5[4] = &unk_284485AF0;
  v5[5] = &unk_284485AF0;
  v4[6] = @"Entertainment";
  v4[7] = @"Theater";
  v5[6] = &unk_284485B08;
  v5[7] = &unk_284485B08;
  v4[8] = @"Dance";
  v4[9] = @"AmusementPark";
  v5[8] = &unk_284485B08;
  v5[9] = &unk_284485B08;
  v4[10] = @"SportEvent";
  v4[11] = @"Performance";
  v5[10] = &unk_284485B08;
  v5[11] = &unk_284485B08;
  v4[12] = @"Concert";
  v4[13] = @"Festival";
  v5[12] = &unk_284485B08;
  v5[13] = &unk_284485B08;
  v4[14] = @"NightOut";
  v4[15] = @"Museum";
  v5[14] = &unk_284485B20;
  v5[15] = &unk_284485B08;
  v4[16] = @"Celebration";
  v4[17] = @"Birthday";
  v5[16] = &unk_284485AD8;
  v5[17] = &unk_284485B68;
  v4[18] = @"Anniversary";
  v4[19] = @"Wedding";
  v5[18] = &unk_284485AD8;
  v5[19] = &unk_284485AD8;
  v4[20] = @"HolidayEvent";
  v4[21] = @"Restaurant";
  v5[20] = &unk_284485B80;
  v5[21] = &unk_284485B38;
  v4[22] = @"Breakfast";
  v4[23] = @"Lunch";
  v5[22] = &unk_284485B38;
  v5[23] = &unk_284485B38;
  v4[24] = @"Dinner";
  v4[25] = @"Gathering";
  v5[24] = &unk_284485B38;
  v5[25] = &unk_284485AD8;
  v0 = [MEMORY[0x277D27780] appleEvents];
  v4[26] = v0;
  v5[26] = &unk_284485B50;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:27];
  v2 = orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel;
  orderedHighlightTitleSpecTypesForMeaningLabel__specTypesByMeaningLabel = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)titleSpecForHolidayEventIncludingLocationIfPossible:(BOOL)a3
{
  v3 = a3;
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [PGTitleSpecTimeArgument argumentWithTimeType:3];
  v5 = [PGTitleSpec alloc];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v3)
  {
    v8 = [v6 localizedStringForKey:@"PGLocalizedHolidayLocation %@ holidayEventName %@" value:@"PGLocalizedHolidayLocation %@ holidayEventName %@" table:@"Localizable"];
    v9 = [(PGTitleSpec *)v5 initWithFormat:v8 titleCategory:0];

    v10 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
    v16[0] = v10;
    v16[1] = v4;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [(PGTitleSpec *)v9 setArguments:v11];
  }

  else
  {
    v12 = [v6 localizedStringForKey:@"PGLocalizedHolidayEventName %@" value:@"PGLocalizedHolidayEventName %@" table:@"Localizable"];
    v9 = [(PGTitleSpec *)v5 initWithFormat:v12 titleCategory:0];

    v15 = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [(PGTitleSpec *)v9 setArguments:v10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)specPoolsForBirthdayIncludingLocationIfPossible:(BOOL)a3 allowAllCities:(BOOL)a4
{
  v43 = a4;
  v45 = a3;
  v59[2] = *MEMORY[0x277D85DE8];
  v5 = [PGTitleSpecPeopleArgument argumentWithPeopleType:4];
  v6 = [PGTitleSpecTimeArgument argumentWithTimeType:0];
  v7 = [PGTitleSpec alloc];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" value:@"PGPeopleBirthdayTitleFormatWithName %@ ordinalYearsString %@" table:@"Localizable"];
  v10 = [(PGTitleSpec *)v7 initWithFormat:v9 titleCategory:3];

  v11 = [PGTitleSpec alloc];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithName %@" value:@"PGPeopleBirthdayTitleFormatWithName %@" table:@"Localizable"];
  v14 = [(PGTitleSpec *)v11 initWithFormat:v13 titleCategory:3];

  v15 = v6;
  v59[0] = v5;
  v59[1] = v6;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  [(PGTitleSpec *)v10 setArguments:v16];

  v58 = v5;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  [(PGTitleSpec *)v14 setArguments:v17];

  v47 = v10;
  v57 = v10;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v19 = [PGTitleSpecPool poolWithSpecs:v18];

  v56 = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v48 = [PGTitleSpecPool poolWithSpecs:v20];

  v21 = [a1 titleSpecForGenericLocation:v43];
  v55 = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v23 = [PGTitleSpecPool poolWithSpecs:v22];

  if (v45)
  {
    v42 = v21;
    v24 = [PGTitleSpec alloc];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v46 = v15;
    [v25 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithLocation %@ name %@ ordinalYearsString %@" value:@"PGPeopleBirthdayTitleFormatWithLocation %@ name %@ ordinalYearsString %@" table:@"Localizable"];
    v26 = v44 = v19;
    v41 = [(PGTitleSpec *)v24 initWithFormat:v26 titleCategory:3];

    v27 = [PGTitleSpec alloc];
    v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"PGPeopleBirthdayTitleFormatWithLocation %@ andName %@" value:@"PGPeopleBirthdayTitleFormatWithLocation %@ andName %@" table:@"Localizable"];
    v30 = [(PGTitleSpec *)v27 initWithFormat:v29 titleCategory:4];

    v31 = [PGTitleSpecLocationArgument argumentWithLocationType:1 filterLocations:1];
    v54[0] = v31;
    v54[1] = v5;
    v54[2] = v46;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
    [(PGTitleSpec *)v41 setArguments:v32];

    v53[0] = v31;
    v53[1] = v5;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    [(PGTitleSpec *)v30 setArguments:v33];

    v52 = v41;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v35 = [PGTitleSpecPool poolWithSpecs:v34];

    v51 = v30;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v37 = [PGTitleSpecPool poolWithSpecs:v36];

    v15 = v46;
    v50[0] = v35;
    v50[1] = v37;
    v50[2] = v44;
    v50[3] = v48;
    v50[4] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];

    v21 = v42;
    v19 = v44;
  }

  else
  {
    v49[0] = v19;
    v49[1] = v48;
    v49[2] = v23;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)specPoolForAOILocation
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v3 = [PGTitleSpecLocationArgument argumentWithLocationType:8 filterLocations:1];
  [v3 setLineBreakBehavior:2];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  [(PGTitleSpec *)v2 setHasSpecArgumentHandlingLineBreakBehavior:1];
  v9 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)titleSpecForGenericLocation:(BOOL)a3
{
  v3 = a3;
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  if (v3)
  {
    v5 = 481;
  }

  else
  {
    v5 = 353;
  }

  v6 = [PGTitleSpecLocationArgument argumentWithLocationType:v5 filterLocations:1];
  [v6 setLineBreakBehavior:2];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(PGTitleSpec *)v4 setArguments:v7];

  [(PGTitleSpec *)v4 setHasSpecArgumentHandlingLineBreakBehavior:1];
  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)specPoolForBusinessItem
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:4];
  v3 = [PGTitleSpecLocationArgument argumentWithLocationType:2 filterLocations:1];
  [v3 setLineBreakBehavior:2];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  [(PGTitleSpec *)v2 setHasSpecArgumentHandlingLineBreakBehavior:1];
  v9 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)specPoolForPublicEvent
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:0 shouldUseLongPublicEventTitle:1];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [(PGTitleSpec *)v2 setArguments:v4];

  v9 = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v6 = [PGTitleSpecPool poolWithSpecs:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)specPoolForPublicEventWithBusiness
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [[PGTitleSpec alloc] initWithFormat:@"%@ - %@" titleCategory:0];
  v3 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:0];
  v4 = [PGTitleSpecPublicEventArgument argumentWithPublicEventType:1];
  v11[0] = v4;
  v11[1] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [(PGTitleSpec *)v2 setArguments:v5];

  v10 = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v7 = [PGTitleSpecPool poolWithSpecs:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end