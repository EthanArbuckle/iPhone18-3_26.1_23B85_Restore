@interface WASevereWeatherStringBuilder
+ (BOOL)_hasImportantEvent:(id)event;
+ (id)_capitalizeFirstWordOfString:(id)string;
+ (id)_displayDescriptionForEvent:(id)event useSentenceCase:(BOOL)case isFirstEvent:(BOOL)firstEvent;
+ (id)attributedImportantHeadlineForEvents:(id)events;
+ (id)atttributedHeadlineForEvents:(id)events;
+ (id)descriptionForEvents:(id)events includeLearnMore:(BOOL)more useSentenceCase:(BOOL)case;
+ (id)headlineForEvents:(id)events shouldUppercase:(BOOL)uppercase;
+ (id)importantHeadlineForEvents:(id)events;
@end

@implementation WASevereWeatherStringBuilder

+ (id)headlineForEvents:(id)events shouldUppercase:(BOOL)uppercase
{
  uppercaseCopy = uppercase;
  v33 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = eventsCopy;
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
        eventDescription = [v12 eventDescription];

        if (eventDescription)
        {
          eventDescription2 = [v12 eventDescription];
          v15 = eventDescription2;
          if (uppercaseCopy)
          {
            localizedUppercaseString = [eventDescription2 localizedUppercaseString];

            v15 = localizedUppercaseString;
          }

          [orderedSet addObject:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v17 = [orderedSet count];
  firstObject = [orderedSet firstObject];
  v19 = @"%2$@ & %1$li more";
  if (uppercaseCopy)
  {
    v19 = @"%2$@ & %1$li MORE";
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = MEMORY[0x277CCA8D8];
  v22 = v19;
  v23 = [v21 bundleForClass:objc_opt_class()];
  v24 = [v23 localizedStringForKey:v22 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  v25 = [v20 stringWithFormat:v24, v17 - 1, firstObject, v28];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)descriptionForEvents:(id)events includeLearnMore:(BOOL)more useSentenceCase:(BOOL)case
{
  caseCopy = case;
  v49 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    source = 0;
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
        eventDescription = [v15 eventDescription];
        if (eventDescription && ([orderedSet containsObject:eventDescription] & 1) == 0)
        {
          [array addObject:v15];
          [orderedSet addObject:eventDescription];
        }

        if (!source)
        {
          source = [v15 source];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  else
  {
    source = 0;
  }

  v17 = [v9 count];
  v18 = [array count];
  if (v18 == 2)
  {
    firstObject = [array firstObject];
    firstObject2 = [self _displayDescriptionForEvent:firstObject useSentenceCase:caseCopy isFirstEvent:1];

    lastObject = [array lastObject];
    areaName = [self _displayDescriptionForEvent:lastObject useSentenceCase:caseCopy isFirstEvent:0];

    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v30;
    if (source)
    {
      v31 = [v30 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_TWO_EVENTS_WITH_SOURCE_WITH_DESCRIPTIONS" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v29 stringWithFormat:v31, source, firstObject2, areaName];
    }

    else
    {
      v31 = [v30 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_TWO_EVENTS_WITHOUT_SOURCE_WITH_DESCRIPTIONS" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v29 stringWithFormat:v31, firstObject2, areaName, v42];
    }
    v38 = ;

    goto LABEL_45;
  }

  v19 = v18 - 1;
  if (v18 == 1)
  {
    firstObject2 = [array firstObject];
    areaName = [firstObject2 areaName];
    v22 = [self _displayDescriptionForEvent:firstObject2 useSentenceCase:caseCopy isFirstEvent:1];
    if (source)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      if (v17 == 1 && areaName)
      {
        v26 = [v24 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITH_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v23 stringWithFormat:v26, source, v22, areaName];
      }

      else
      {
        v26 = [v24 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITH_DESCRIPTION_WITHOUT_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v23 stringWithFormat:v26, source, v22, v42];
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
      firstObject3 = [array firstObject];
      firstObject2 = [self _displayDescriptionForEvent:firstObject3 useSentenceCase:caseCopy isFirstEvent:1];

      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      areaName = v34;
      if (source)
      {
        v22 = [v34 localizedStringForKey:@"%2$@: %3$@ and %1$li other alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v33 localizedStringWithFormat:v22, v19, source, firstObject2];
      }

      else
      {
        v22 = [v34 localizedStringForKey:@"Severe weather alerts: %2$@ and %1$li other alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v33 localizedStringWithFormat:v22, v19, firstObject2, v42];
      }
      v38 = ;
      goto LABEL_45;
    }

    if (!v17)
    {
      v38 = 0;
      goto LABEL_46;
    }

    firstObject2 = [v9 firstObject];
    areaName = [firstObject2 areaName];
    v35 = MEMORY[0x277CCACA8];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = v36;
    if (v17 == 1 && areaName)
    {
      if (source)
      {
        v25 = [v36 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITH_SOURCE_WITHOUT_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v35 stringWithFormat:v25, source, areaName];
      }

      else
      {
        v25 = [v36 localizedStringForKey:@"SEVERE_WEATHER_DESCRIPTION_ONE_EVENT_WITHOUT_SOURCE_WITHOUT_DESCRIPTION_WITH_AREA_NAME" value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
        [v35 stringWithFormat:v25, areaName, v41];
      }
    }

    else if (source)
    {
      v25 = [v36 localizedStringForKey:@"%2$@: %1$li severe weather alert/alerts." value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];
      [v35 localizedStringWithFormat:v25, v17, source];
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

+ (id)attributedImportantHeadlineForEvents:(id)events
{
  eventsCopy = events;
  if ([self _hasImportantEvent:eventsCopy])
  {
    v5 = [self atttributedHeadlineForEvents:eventsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)importantHeadlineForEvents:(id)events
{
  eventsCopy = events;
  if ([self _hasImportantEvent:eventsCopy])
  {
    v5 = [self headlineForEvents:eventsCopy shouldUppercase:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_hasImportantEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  eventCopy = event;
  v4 = [eventCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(eventCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 description];

        if (v8)
        {
          LOBYTE(v4) = [v7 importance] == 1;
          goto LABEL_11;
        }
      }

      v4 = [eventCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (id)atttributedHeadlineForEvents:(id)events
{
  v3 = [self headlineForEvents:events];
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

+ (id)_displayDescriptionForEvent:(id)event useSentenceCase:(BOOL)case isFirstEvent:(BOOL)firstEvent
{
  firstEventCopy = firstEvent;
  caseCopy = case;
  eventCopy = event;
  eventDescription = [eventCopy eventDescription];
  v10 = eventDescription;
  if (caseCopy)
  {
    lowercaseString = [eventDescription lowercaseString];
    if (firstEventCopy)
    {
      v12 = [self _capitalizeFirstWordOfString:lowercaseString];

      lowercaseString = v12;
    }

    v10 = lowercaseString;
  }

  return v10;
}

+ (id)_capitalizeFirstWordOfString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy mutableCopy];
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
  v5 = [stringCopy length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__WASevereWeatherStringBuilder__capitalizeFirstWordOfString___block_invoke;
  v10[3] = &unk_279E688E0;
  v10[4] = &v17;
  v10[5] = &v11;
  [stringCopy enumerateSubstringsInRange:0 options:v5 usingBlock:{1027, v10}];
  v6 = v18[5];
  if (v6)
  {
    v7 = v12;
    localizedCapitalizedString = [v6 localizedCapitalizedString];
    [v4 replaceCharactersInRange:v7[4] withString:{v7[5], localizedCapitalizedString}];
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