@interface WASevereWeatherStringBuilder
+ (BOOL)_hasImportantEvent:(id)a3;
+ (id)_capitalizeFirstWordOfString:(id)a3;
+ (id)_displayDescriptionForEvent:(id)a3 useSentenceCase:(BOOL)a4 isFirstEvent:(BOOL)a5;
+ (id)attributedImportantHeadlineForEvents:(id)a3;
+ (id)atttributedHeadlineForEvents:(id)a3;
+ (id)descriptionForEvents:(id)a3 includeLearnMore:(BOOL)a4 useSentenceCase:(BOOL)a5;
+ (id)headlineForEvents:(id)a3 shouldUppercase:(BOOL)a4;
+ (id)importantHeadlineForEvents:(id)a3;
@end

@implementation WASevereWeatherStringBuilder

+ (id)headlineForEvents:(id)a3 shouldUppercase:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB40] orderedSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v12 eventDescription];

        if (v13)
        {
          v14 = [v12 eventDescription];
          v15 = v14;
          if (v4)
          {
            v16 = [v14 localizedUppercaseString];

            v15 = v16;
          }

          [v6 addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v17 = [v6 count];
  v18 = [v6 firstObject];
  v19 = @"%2$@ & %1$li more";
  if (v4)
  {
    v19 = @"%2$@ & %1$li MORE";
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = MEMORY[0x277CCA8D8];
  v22 = v19;
  v23 = [v21 bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:v22 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  v25 = [v20 stringWithFormat:v24, v17 - 1, v18, v28];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)descriptionForEvents:(id)a3 includeLearnMore:(BOOL)a4 useSentenceCase:(BOOL)a5
{
  v43 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB40] orderedSet];
  v8 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = [v15 eventDescription];
        if (v16 && ([v7 containsObject:v16] & 1) == 0)
        {
          [v8 addObject:v15];
          [v7 addObject:v16];
        }

        if (!v12)
        {
          v12 = [v15 source];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = [v9 count];
  v18 = [v8 count];
  if (v18 == 2)
  {
    v27 = [v8 firstObject];
    v20 = [a1 _displayDescriptionForEvent:v27 useSentenceCase:v43 isFirstEvent:1];

    v28 = [v8 lastObject];
    v21 = [a1 _displayDescriptionForEvent:v28 useSentenceCase:v43 isFirstEvent:0];

    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v30;
    if (v12)
    {
      v31 = [v30 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_TWO_EVENTS_WITH_SOURCE_WITH_DESCRIPTIONS" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v29 stringWithFormat:v31, v12, v20, v21];
    }

    else
    {
      v31 = [v30 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_TWO_EVENTS_WITHOUT_SOURCE_WITH_DESCRIPTIONS" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v29 stringWithFormat:v31, v20, v21, v42];
    }
    v38 = ;

    goto LABEL_45;
  }

  v19 = v18 - 1;
  if (v18 == 1)
  {
    v20 = [v8 firstObject];
    v21 = [v20 areaName];
    v22 = [a1 _displayDescriptionForEvent:v20 useSentenceCase:v43 isFirstEvent:1];
    if (v12)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      if (v17 == 1 && v21)
      {
        v26 = [v24 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITH_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v23 stringWithFormat:v26, v12, v22, v21];
      }

      else
      {
        v26 = [v24 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITH_DESCRIPTION_WITHOUT_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v23 stringWithFormat:v26, v12, v22, v42];
      }
    }

    else
    {
      v37 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITHOUT_SOURCE_WITH_DESCRIPTION_WITHOUT_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v37 stringWithFormat:v26, v22, v41, v42];
    }
    v38 = ;
  }

  else
  {
    if (v18 >= 3)
    {
      v32 = [v8 firstObject];
      v20 = [a1 _displayDescriptionForEvent:v32 useSentenceCase:v43 isFirstEvent:1];

      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = v34;
      if (v12)
      {
        v22 = [v34 localizedStringForKey:@"%2$@: %3$@ and %1$li other alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v33 localizedStringWithFormat:v22, v19, v12, v20];
      }

      else
      {
        v22 = [v34 localizedStringForKey:@"Severe weather alerts: %2$@ and %1$li other alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v33 localizedStringWithFormat:v22, v19, v20, v42];
      }
      v38 = ;
      goto LABEL_45;
    }

    if (!v17)
    {
      v38 = 0;
      goto LABEL_46;
    }

    v20 = [v9 firstObject];
    v21 = [v20 areaName];
    v35 = MEMORY[0x277CCACA8];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v36;
    if (v17 == 1 && v21)
    {
      if (v12)
      {
        v25 = [v36 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITHOUT_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v35 stringWithFormat:v25, v12, v21];
      }

      else
      {
        v25 = [v36 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITHOUT_SOURCE_WITHOUT_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v35 stringWithFormat:v25, v21, v41];
      }
    }

    else if (v12)
    {
      v25 = [v36 localizedStringForKey:@"%2$@: %1$li severe weather alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v35 localizedStringWithFormat:v25, v17, v12];
    }

    else
    {
      v25 = [v36 localizedStringForKey:@"There are %li severe weather alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v35 localizedStringWithFormat:v25, v17, v41];
    }
    v38 = ;
  }

LABEL_45:
LABEL_46:

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)attributedImportantHeadlineForEvents:(id)a3
{
  v4 = a3;
  if ([a1 _hasImportantEvent:v4])
  {
    v5 = [a1 atttributedHeadlineForEvents:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)importantHeadlineForEvents:(id)a3
{
  v4 = a3;
  if ([a1 _hasImportantEvent:v4])
  {
    v5 = [a1 headlineForEvents:v4 shouldUppercase:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_hasImportantEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 description];

        if (v8)
        {
          LOBYTE(v4) = [v7 importance] == 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)atttributedHeadlineForEvents:(id)a3
{
  v3 = [a1 headlineForEvents:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0] scale:1];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:v4];
    v6 = [MEMORY[0x277D74270] textAttachmentWithImage:v5];
    v7 = objc_alloc(MEMORY[0x277CCAB48]);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v3];
    v9 = [v7 initWithString:v8];

    v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v6];
    [v9 insertAttributedString:v10 atIndex:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_displayDescriptionForEvent:(id)a3 useSentenceCase:(BOOL)a4 isFirstEvent:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 eventDescription];
  v10 = v9;
  if (v6)
  {
    v11 = [v9 lowercaseString];
    if (v5)
    {
      v12 = [a1 _capitalizeFirstWordOfString:v11];

      v11 = v12;
    }

    v10 = v11;
  }

  return v10;
}

+ (id)_capitalizeFirstWordOfString:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v15 = 0;
  v16 = 0;
  v14 = "";
  v5 = [v3 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__WASevereWeatherStringBuilder__capitalizeFirstWordOfString___block_invoke;
  v10[3] = &unk_279E688E0;
  v10[4] = &v17;
  v10[5] = &v11;
  [v3 enumerateSubstringsInRange:0 options:v5 usingBlock:{1027, v10}];
  v6 = v18[5];
  if (v6)
  {
    v7 = v12;
    v8 = [v6 localizedCapitalizedString];
    [v4 replaceCharactersInRange:v7[4] withString:{v7[5], v8}];
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v4;
}

void __61__WASevereWeatherStringBuilder__capitalizeFirstWordOfString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v12 = a2;
  v13 = *(*(a1 + 40) + 8);
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  *a7 = 1;
}

@end