@interface CallHistoryDataSourcePredicate
+ (id)predicateFilteringOutCallTypes:(unint64_t)types;
+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes;
+ (id)predicateForCallsAfterDate:(id)date beforeDate:(id)beforeDate;
+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes;
+ (id)predicateForCallsWithCallCategory:(unsigned int)category;
+ (id)predicateForJustMissedCalls;
+ (id)predicateForMissedCallsSinceDate:(id)date;
+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)values;
+ (id)predicateForRemoteParticipantsWithValues:(id)values;
+ (id)predicateForRemoteParticipantsWithValues:(id)values caseInsensitiveValues:(id)insensitiveValues normalizedValues:(id)normalizedValues;
+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)insensitive;
+ (id)predicateForTelephonyOrFaceTimeCalls;
@end

@implementation CallHistoryDataSourcePredicate

+ (id)predicateForJustMissedCalls
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:-15.0];
  v3 = [CallHistoryDataSourcePredicate predicateForMissedCallsSinceDate:v2];

  return v3;
}

+ (id)predicateForMissedCallsSinceDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc_init(NSMutableArray);
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

  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v10;
}

+ (id)predicateForCallsAfterDate:(id)date beforeDate:(id)beforeDate
{
  dateCopy = date;
  beforeDateCopy = beforeDate;
  if (dateCopy | beforeDateCopy)
  {
    v7 = objc_alloc_init(NSMutableArray);
    if (dateCopy)
    {
      dateCopy = [NSPredicate predicateWithFormat:@"date > %@", dateCopy];
      [v7 addObject:dateCopy];
    }

    if (beforeDateCopy)
    {
      beforeDateCopy = [NSPredicate predicateWithFormat:@"date < %@", beforeDateCopy];
      [v7 addObject:beforeDateCopy];
    }

    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  }

  else
  {
    v10 = [NSPredicate predicateWithValue:1];
  }

  return v10;
}

+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes
{
  handlesCopy = handles;
  codesCopy = codes;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v27 = objc_alloc_init(NSMutableOrderedSet);
  v29 = objc_alloc_init(NSMutableOrderedSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = handlesCopy;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = [CHHandle tu_normalizedCHHandlesFromTUHandle:v11 isoCountryCodes:codesCopy];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              normalizedValue = [*(*(&v31 + 1) + 8 * j) normalizedValue];
              if ([normalizedValue length])
              {
                [v6 addObject:normalizedValue];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        type = [v11 type];
        v19 = type == 1 || type == 3;
        v20 = v29;
        if (!v19)
        {
          if (type != 2)
          {
            goto LABEL_22;
          }

          value = [v11 value];
          v20 = v27;
          [v27 addObject:value];
        }

        value2 = [v11 value];
        destinationIDWithoutControlOrPhoneNumberSeparatorCharacters = [value2 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
        [v20 addObject:destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];

LABEL_22:
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v24 = [self predicateForRemoteParticipantsWithValues:v27 caseInsensitiveValues:v29 normalizedValues:v6];

  return v24;
}

+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)handles isoCountryCodes:(id)codes
{
  selfCopy = self;
  handlesCopy = handles;
  codesCopy = codes;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v26 = objc_alloc_init(NSMutableOrderedSet);
  v25 = objc_alloc_init(NSMutableOrderedSet);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = handlesCopy;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        selfCopy = [CHHandle tu_normalizedCHHandlesFromTUHandle:v10 isoCountryCodes:codesCopy, selfCopy];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = [selfCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v31;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(selfCopy);
              }

              normalizedValue = [*(*(&v30 + 1) + 8 * j) normalizedValue];
              if ([normalizedValue length])
              {
                [v6 addObject:normalizedValue];
              }

              else
              {
                v14 = 1;
              }
            }

            v13 = [selfCopy countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if (![selfCopy count] || (v14 & 1) != 0)
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

            v21 = v26;
            if (type == 2)
            {
LABEL_25:
              [v21 addObject:destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
            }

            else if (type == 1)
            {
LABEL_24:
              v21 = v25;
              goto LABEL_25;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v22 = [selfCopy predicateForRemoteParticipantsWithValues:v26 caseInsensitiveValues:v25 normalizedValues:v6];

  return v22;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)values caseInsensitiveValues:(id)insensitiveValues normalizedValues:(id)normalizedValues
{
  normalizedValuesCopy = normalizedValues;
  insensitiveValuesCopy = insensitiveValues;
  valuesCopy = values;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [objc_opt_class() predicateForRemoteParticipantsWithNormalizedValues:normalizedValuesCopy];

  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [objc_opt_class() predicateForRemoteParticipantsWithValues:valuesCopy];

  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [objc_opt_class() predicateForRemoteParticipantsWithValuesCaseInsensitive:insensitiveValuesCopy];

  [v10 addObjectsFromArray:v13];
  if ([v10 count] == 1)
  {
    firstObject = [v10 firstObject];
  }

  else
  {
    v15 = [v10 copy];
    firstObject = [NSCompoundPredicate orPredicateWithSubpredicates:v15];
  }

  return firstObject;
}

+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count] == 1)
  {
    firstObject = [valuesCopy firstObject];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue == %@", firstObject];
    v5 = LABEL_5:;

    goto LABEL_7;
  }

  if ([valuesCopy count] >= 2)
  {
    firstObject = [valuesCopy array];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", firstObject];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count] == 1)
  {
    firstObject = [valuesCopy firstObject];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.value == %@", firstObject];
    v5 = LABEL_5:;

    goto LABEL_7;
  }

  if ([valuesCopy count] >= 2)
  {
    firstObject = [valuesCopy array];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", firstObject];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)insensitive
{
  insensitiveCopy = insensitive;
  v4 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = insensitiveCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.value ==[c] %@", *(*(&v13 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)predicateForTelephonyOrFaceTimeCalls
{
  predicateForTelephonyCalls = [self predicateForTelephonyCalls];
  v8[0] = predicateForTelephonyCalls;
  predicateForFaceTimeCalls = [self predicateForFaceTimeCalls];
  v8[1] = predicateForFaceTimeCalls;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateForCallsWithCallCategory:(unsigned int)category
{
  v3 = [NSNumber numberWithInteger:category];
  v4 = [NSPredicate predicateWithFormat:@"call_category == %@", v3];

  return v4;
}

+ (id)predicateFilteringOutCallTypes:(unint64_t)types
{
  typesCopy = types;
  v4 = objc_alloc_init(NSMutableArray);
  if (typesCopy)
  {
    v5 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
    [v4 addObject:v5];
  }

  if ((~typesCopy & 6) != 0)
  {
    if ((typesCopy & 2) != 0)
    {
      v7 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      v15[0] = v7;
      v8 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
      v15[1] = v8;
      v9 = v15;
    }

    else
    {
      if ((typesCopy & 4) == 0)
      {
        goto LABEL_11;
      }

      v7 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      v14[0] = v7;
      v8 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
      v14[1] = v8;
      v9 = v14;
    }

    v10 = [NSArray arrayWithObjects:v9 count:2];
    v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
  }

  else
  {
    v6 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
  }

  [v4 addObject:v6];

LABEL_11:
  if ([v4 count])
  {
    v11 = [NSCompoundPredicate orPredicateWithSubpredicates:v4];
    v12 = [NSCompoundPredicate notPredicateWithSubpredicate:v11];
  }

  else
  {
    v12 = [NSPredicate predicateWithValue:1];
  }

  return v12;
}

@end