@interface CallHistoryDataSourcePredicate
+ (id)predicateFilteringOutCallTypes:(unint64_t)a3;
+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4;
+ (id)predicateForCallsAfterDate:(id)a3 beforeDate:(id)a4;
+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4;
+ (id)predicateForCallsWithCallCategory:(unsigned int)a3;
+ (id)predicateForJustMissedCalls;
+ (id)predicateForMissedCallsSinceDate:(id)a3;
+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)a3;
+ (id)predicateForRemoteParticipantsWithValues:(id)a3;
+ (id)predicateForRemoteParticipantsWithValues:(id)a3 caseInsensitiveValues:(id)a4 normalizedValues:(id)a5;
+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)a3;
+ (id)predicateForTelephonyOrFaceTimeCalls;
@end

@implementation CallHistoryDataSourcePredicate

+ (id)predicateForJustMissedCalls
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:-15.0];
  v3 = [CallHistoryDataSourcePredicate predicateForMissedCallsSinceDate:v2];

  return v3;
}

+ (id)predicateForMissedCallsSinceDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [a1 predicateForCallsThatWereAnswered:0];
  [v5 addObject:v6];

  v7 = [a1 predicateForCallsThatWereOriginated:0];
  [v5 addObject:v7];

  v8 = [a1 predicateForCallsWithNoDuration];
  [v5 addObject:v8];

  if (v4)
  {
    v9 = [a1 predicateForCallsAfterDate:v4 beforeDate:0];
    [v5 addObject:v9];
  }

  v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  return v10;
}

+ (id)predicateForCallsAfterDate:(id)a3 beforeDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    if (v5)
    {
      v8 = [NSPredicate predicateWithFormat:@"date > %@", v5];
      [v7 addObject:v8];
    }

    if (v6)
    {
      v9 = [NSPredicate predicateWithFormat:@"date < %@", v6];
      [v7 addObject:v9];
    }

    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  }

  else
  {
    v10 = [NSPredicate predicateWithValue:1];
  }

  return v10;
}

+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4
{
  v5 = a3;
  v30 = a4;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v27 = objc_alloc_init(NSMutableOrderedSet);
  v29 = objc_alloc_init(NSMutableOrderedSet);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
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
        v12 = [CHHandle tu_normalizedCHHandlesFromTUHandle:v11 isoCountryCodes:v30];
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

              v17 = [*(*(&v31 + 1) + 8 * j) normalizedValue];
              if ([v17 length])
              {
                [v6 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        v18 = [v11 type];
        v19 = v18 == 1 || v18 == 3;
        v20 = v29;
        if (!v19)
        {
          if (v18 != 2)
          {
            goto LABEL_22;
          }

          v21 = [v11 value];
          v20 = v27;
          [v27 addObject:v21];
        }

        v22 = [v11 value];
        v23 = [v22 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
        [v20 addObject:v23];

LABEL_22:
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v24 = [a1 predicateForRemoteParticipantsWithValues:v27 caseInsensitiveValues:v29 normalizedValues:v6];

  return v24;
}

+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4
{
  v24 = a1;
  v5 = a3;
  v29 = a4;
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v26 = objc_alloc_init(NSMutableOrderedSet);
  v25 = objc_alloc_init(NSMutableOrderedSet);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
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
        v11 = [CHHandle tu_normalizedCHHandlesFromTUHandle:v10 isoCountryCodes:v29, v24];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v30 + 1) + 8 * j) normalizedValue];
              if ([v17 length])
              {
                [v6 addObject:v17];
              }

              else
              {
                v14 = 1;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        if (![v11 count] || (v14 & 1) != 0)
        {
          v18 = [v10 value];
          v19 = [v18 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];

          if ([v19 length])
          {
            v20 = [v10 type];
            if (v20 == 3)
            {
              goto LABEL_24;
            }

            v21 = v26;
            if (v20 == 2)
            {
LABEL_25:
              [v21 addObject:v19];
            }

            else if (v20 == 1)
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

  v22 = [v24 predicateForRemoteParticipantsWithValues:v26 caseInsensitiveValues:v25 normalizedValues:v6];

  return v22;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)a3 caseInsensitiveValues:(id)a4 normalizedValues:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = [objc_opt_class() predicateForRemoteParticipantsWithNormalizedValues:v7];

  if (v11)
  {
    [v10 addObject:v11];
  }

  v12 = [objc_opt_class() predicateForRemoteParticipantsWithValues:v9];

  if (v12)
  {
    [v10 addObject:v12];
  }

  v13 = [objc_opt_class() predicateForRemoteParticipantsWithValuesCaseInsensitive:v8];

  [v10 addObjectsFromArray:v13];
  if ([v10 count] == 1)
  {
    v14 = [v10 firstObject];
  }

  else
  {
    v15 = [v10 copy];
    v14 = [NSCompoundPredicate orPredicateWithSubpredicates:v15];
  }

  return v14;
}

+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue == %@", v4];
    v5 = LABEL_5:;

    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v4 = [v3 array];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", v4];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.value == %@", v4];
    v5 = LABEL_5:;

    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v4 = [v3 array];
    [NSPredicate predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", v4];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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
  v3 = [a1 predicateForTelephonyCalls];
  v8[0] = v3;
  v4 = [a1 predicateForFaceTimeCalls];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateForCallsWithCallCategory:(unsigned int)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [NSPredicate predicateWithFormat:@"call_category == %@", v3];

  return v4;
}

+ (id)predicateFilteringOutCallTypes:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v5 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
    [v4 addObject:v5];
  }

  if ((~v3 & 6) != 0)
  {
    if ((v3 & 2) != 0)
    {
      v7 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      v15[0] = v7;
      v8 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
      v15[1] = v8;
      v9 = v15;
    }

    else
    {
      if ((v3 & 4) == 0)
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