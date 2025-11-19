@interface CallHistoryDataSourcePredicate
+ (id)predicateFilteringOutCallTypes:(unint64_t)a3;
+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4;
+ (id)predicateForCallsAfterDate:(id)a3 beforeDate:(id)a4;
+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4;
+ (id)predicateForCallsWithCallCategory:(unsigned int)a3;
+ (id)predicateForMissedCallsSinceDate:(id)a3;
+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)a3;
+ (id)predicateForRemoteParticipantsWithValues:(id)a3;
+ (id)predicateForRemoteParticipantsWithValues:(id)a3 caseInsensitiveValues:(id)a4 normalizedValues:(id)a5;
+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)a3;
+ (id)predicateForTelephonyOrFaceTimeCalls;
@end

@implementation CallHistoryDataSourcePredicate

+ (id)predicateForMissedCallsSinceDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];

  return v10;
}

+ (id)predicateForCallsAfterDate:(id)a3 beforeDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v5)
    {
      v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date > %@", v5];
      [v7 addObject:v8];
    }

    if (v6)
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date < %@", v6];
      [v7 addObject:v9];
    }

    v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  }

  else
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  return v10;
}

+ (id)predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v31 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
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
        v12 = [MEMORY[0x277CF7D30] tu_normalizedCHHandlesFromTUHandle:v11 isoCountryCodes:v31];
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

              v17 = [*(*(&v32 + 1) + 8 * j) normalizedValue];
              if ([v17 length])
              {
                [v6 addObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v14);
        }

        v18 = [v11 type];
        v19 = v18 == 1 || v18 == 3;
        v20 = v30;
        if (!v19)
        {
          if (v18 != 2)
          {
            goto LABEL_22;
          }

          v21 = [v11 value];
          v20 = v28;
          [v28 addObject:v21];
        }

        v22 = [v11 value];
        v23 = [v22 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];
        [v20 addObject:v23];

LABEL_22:
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v24 = [a1 predicateForRemoteParticipantsWithValues:v28 caseInsensitiveValues:v30 normalizedValues:v6];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)predicateForCallsWithAnyOfTheseRemoteParticipantHandles:(id)a3 isoCountryCodes:(id)a4
{
  v25 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
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
        v11 = [MEMORY[0x277CF7D30] tu_normalizedCHHandlesFromTUHandle:v10 isoCountryCodes:{v30, v25}];
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

              v17 = [*(*(&v31 + 1) + 8 * j) normalizedValue];
              if ([v17 length])
              {
                [v6 addObject:v17];
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
          v18 = [v10 value];
          v19 = [v18 destinationIDWithoutControlOrPhoneNumberSeparatorCharacters];

          if ([v19 length])
          {
            v20 = [v10 type];
            if (v20 == 3)
            {
              goto LABEL_24;
            }

            v21 = v27;
            if (v20 == 2)
            {
LABEL_25:
              [v21 addObject:v19];
            }

            else if (v20 == 1)
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

  v22 = [v25 predicateForRemoteParticipantsWithValues:v27 caseInsensitiveValues:v26 normalizedValues:v6];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)a3 caseInsensitiveValues:(id)a4 normalizedValues:(id)a5
{
  v7 = MEMORY[0x277CBEB18];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [objc_opt_class() predicateForRemoteParticipantsWithNormalizedValues:v8];

  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = [objc_opt_class() predicateForRemoteParticipantsWithValues:v10];

  if (v13)
  {
    [v11 addObject:v13];
  }

  v14 = [objc_opt_class() predicateForRemoteParticipantsWithValuesCaseInsensitive:v9];

  [v11 addObjectsFromArray:v14];
  if ([v11 count] == 1)
  {
    v15 = [v11 firstObject];
  }

  else
  {
    v16 = MEMORY[0x277CCA920];
    v17 = [v11 copy];
    v15 = [v16 orPredicateWithSubpredicates:v17];
  }

  return v15;
}

+ (id)predicateForRemoteParticipantsWithNormalizedValues:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue == %@", v4];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v5 = MEMORY[0x277CCAC30];
    v4 = [v3 array];
    [v5 predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)predicateForRemoteParticipantsWithValues:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY remoteParticipantHandles.value == %@", v4];
    v6 = LABEL_5:;

    goto LABEL_7;
  }

  if ([v3 count] >= 2)
  {
    v5 = MEMORY[0x277CCAC30];
    v4 = [v3 array];
    [v5 predicateWithFormat:@"ANY remoteParticipantHandles.value IN %@", v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)predicateForRemoteParticipantsWithValuesCaseInsensitive:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
  v4 = [a1 predicateForTelephonyCalls];
  v10[0] = v4;
  v5 = [a1 predicateForFaceTimeCalls];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 orPredicateWithSubpredicates:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)predicateForCallsWithCallCategory:(unsigned int)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [v3 predicateWithFormat:@"call_category == %@", v4];

  return v5;
}

+ (id)predicateFilteringOutCallTypes:(unint64_t)a3
{
  v3 = a3;
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    v5 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
    [v4 addObject:v5];
  }

  if ((~v3 & 6) != 0)
  {
    if ((v3 & 2) != 0)
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
      if ((v3 & 4) == 0)
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