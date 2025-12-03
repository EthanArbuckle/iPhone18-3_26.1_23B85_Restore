@interface CallHistoryDataSourcePredicate
+ (id)predicateFilteringOutCallTypes:(unint64_t)types;
+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes;
+ (id)predicateForCallsAfterDate:(id)date beforeDate:(id)beforeDate;
+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes;
+ (id)predicateForCallsWithCallCategory:(unsigned int)category;
+ (id)predicateForMissedCallsSinceDate:(id)date;
+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)values;
+ (id)predicateForRemoteParticipantsWithValues:(id)values;
+ (id)predicateForRemoteParticipantsWithValues:(id)values caseInsensitiveValues:(id)insensitiveValues normalizedValues:(id)normalizedValues;
+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)insensitive;
+ (id)predicateForTelephonyOrFaceTimeCalls;
@end

@implementation CallHistoryDataSourcePredicate

+ (id)predicateForMissedCallsSinceDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [self predicateForCallsThatWereAnswered:0];
  [v5 addObject:v6];

  v7 = [self predicateForCallsThatWereOriginated:0];
  [v5 addObject:v7];

  predicateForCallsWithNoDuration = [self predicateForCallsWithNoDuration];
  [v5 addObject:predicateForCallsWithNoDuration];

  if (dateCopy)
  {
    v9 = [self predicateForCallsAfterDate:dateCopy beforeDate:0];
    [v5 addObject:v9];
  }

  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];

  return v10;
}

+ (id)predicateForCallsAfterDate:(id)date beforeDate:(id)beforeDate
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  if (dateCopy | beforeDateCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (dateCopy)
    {
      dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"date > %@", dateCopy];
      [v7 addObject:dateCopy];
    }

    if (beforeDateCopy)
    {
      beforeDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", beforeDateCopy];
      [v7 addObject:beforeDateCopy];
    }

    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  return v10;
}

+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes
{
  v42 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  codesCopy = codes;
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = handlesCopy;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [MEMORY[0x277CF7D30] tu_normalizedCHHandlesFromTUHandle:v11 isoCountryCodes:codesCopy];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v33;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v33 != v15)
              {
                objc_enumerationMutation(v12);
              }

              normalizedValue = [*(*(&v32 + 1) + 8 * j) normalizedValue];
              if ([normalizedValue length])
              {
                [v6 addObject:normalizedValue];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v14);
        }

        type = [v11 type];
        v19 = type == 1 || type == 3;
        v20 = v30;
        if (!v19)
        {
          if (type != 2)
          {
            goto LABEL_22;
          }

          value = [v11 value];
          v20 = v28;
          [v28 addObject:value];
        }

        value2 = [v11 value];
        destinationIDWithoutControlOrPhoneNumberSeparatorCharacters = [value2 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
        [v20 addObject:destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];

LABEL_22:
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v24 = [self predicateForRemoteParticipantsWithValues:v28 caseInsensitiveValues:v30 normalizedValues:v6];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  codesCopy = codes;
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = handlesCopy;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [MEMORY[0x277CF7D30] tu_normalizedCHHandlesFromTUHandle:v10 isoCountryCodes:{codesCopy, selfCopy}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v32;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v11);
              }

              normalizedValue = [*(*(&v31 + 1) + 8 * j) normalizedValue];
              if ([normalizedValue length])
              {
                [v6 addObject:normalizedValue];
              }

              else
              {
                v14 = 1;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if (![v11 count] || (v14 & 1) != 0)
        {
          value = [v10 value];
          destinationIDWithoutControlOrPhoneNumberSeparatorCharacters = [value destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];

          if ([destinationIDWithoutControlOrPhoneNumberSeparatorCharacters length])
          {
            type = [v10 type];
            if (type == 3)
            {
              goto LABEL_24;
            }

            v21 = v27;
            if (type == 2)
            {
LABEL_25:
              [v21 addObject:destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
            }

            else if (type == 1)
            {
LABEL_24:
              v21 = v26;
              goto LABEL_25;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v22 = [selfCopy predicateForRemoteParticipantsWithValues:v27 caseInsensitiveValues:v26 normalizedValues:v6];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)values caseInsensitiveValues:(id)insensitiveValues normalizedValues:(id)normalizedValues
{
  v7 = MEMORY[0x277CBEB18];
  normalizedValuesCopy = normalizedValues;
  insensitiveValuesCopy = insensitiveValues;
  valuesCopy = values;
  v11 = objc_alloc_init(v7);
  v12 = [objc_opt_class() predicateForRemoteParticipantsWithNormalizedValues:normalizedValuesCopy];

  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = [objc_opt_class() predicateForRemoteParticipantsWithValues:valuesCopy];

  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [objc_opt_class() predicateForRemoteParticipantsWithValuesCaseInsensitive:insensitiveValuesCopy];

  [v11 addObjectsFromArray:v14];
  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    v16 = MEMORY[0x277CCA920];
    v17 = [v11 copy];
    firstObject = [v16 orPredicateWithSubpredicates:v17];
  }

  return firstObject;
}

+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count] == 1)
  {
    firstObject = [valuesCopy firstObject];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue == %@", firstObject];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([valuesCopy count] >= 2)
  {
    v5 = MEMORY[0x277CCAC30];
    firstObject = [valuesCopy array];
    [v5 predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", firstObject];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count] == 1)
  {
    firstObject = [valuesCopy firstObject];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY remoteParticipantHandles.value == %@", firstObject];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([valuesCopy count] >= 2)
  {
    v5 = MEMORY[0x277CCAC30];
    firstObject = [valuesCopy array];
    [v5 predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", firstObject];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)insensitive
{
  v19 = *MEMORY[0x277D85DE8];
  insensitiveCopy = insensitive;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = insensitiveCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY remoteParticipantHandles.value ==[c] %@", *(*(&v14 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)predicateForTelephonyOrFaceTimeCalls
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForTelephonyCalls = [self predicateForTelephonyCalls];
  v10[0] = predicateForTelephonyCalls;
  predicateForFaceTimeCalls = [self predicateForFaceTimeCalls];
  v10[1] = predicateForFaceTimeCalls;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)predicateForCallsWithCallCategory:(unsigned int)category
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v5 = [v3 predicateWithFormat:@"call_category == %@", v4];

  return v5;
}

+ (id)predicateFilteringOutCallTypes:(unint64_t)types
{
  typesCopy = types;
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (typesCopy)
  {
    v5 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
    [v4 addObject:v5];
  }

  if ((~typesCopy & 6) != 0)
  {
    if ((typesCopy & 2) != 0)
    {
      v7 = MEMORY[0x277CCA920];
      v8 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      v19[0] = v8;
      v9 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
      v19[1] = v9;
      v10 = MEMORY[0x277CBEA60];
      v11 = v19;
    }

    else
    {
      if ((typesCopy & 4) == 0)
      {
        goto LABEL_11;
      }

      v7 = MEMORY[0x277CCA920];
      v8 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      v18[0] = v8;
      v9 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
      v18[1] = v9;
      v10 = MEMORY[0x277CBEA60];
      v11 = v18;
    }

    v12 = [v10 arrayWithObjects:v11 count:2];
    v6 = [v7 andPredicateWithSubpredicates:v12];
  }

  else
  {
    v6 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
  }

  [v4 addObject:v6];

LABEL_11:
  if ([v4 count])
  {
    v13 = MEMORY[0x277CCA920];
    v14 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];
    v15 = [v13 notPredicateWithSubpredicate:v14];
  }

  else
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end