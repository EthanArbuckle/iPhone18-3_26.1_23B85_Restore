@interface _PSInteractionStoreUtils
+ (id)allAirDropInteractionsFromStore:(id)a3 fetchLimit:(unint64_t)a4;
+ (id)conversationIdFromInteraction:(id)a3;
+ (id)conversationIdFromInteraction:(id)a3 bundleIds:(id)a4;
+ (id)conversationIdWithExactMatchWithContactHandles:(id)a3 store:(id)a4 bundleIds:(id)a5 messageInteractionCache:(id)a6;
+ (id)conversationIdWithMaximalIntersectionWithContactIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6;
+ (id)groupInteractionsContainingSearchStringInDisplayName:(id)a3 excludingInteractionUUIDs:(id)a4 account:(id)a5 directions:(id)a6 bundleIds:(id)a7 excludedDomainIdentifiers:(id)a8 startDate:(id)a9 store:(id)a10 fetchLimit:(unint64_t)a11 offset:(unint64_t)a12;
+ (id)interactionCacheFromStore:(id)a3 size:(unint64_t)a4 queryPredicate:(id)a5 filterBlock:(id)a6;
+ (id)interactionsContainingSearchStringInDisplayName:(id)a3 account:(id)a4 directions:(id)a5 bundleIds:(id)a6 store:(id)a7 fetchLimit:(unint64_t)a8;
+ (id)interactionsFromStore:(id)a3 referenceDate:(id)a4 withMechanisms:(id)a5 withAccount:(id)a6 withBundleIds:(id)a7 withTargetBundleIds:(id)a8 withDirections:(id)a9 fetchLimit:(unint64_t)a10;
+ (id)interactionsFromStore:(id)a3 referenceDate:(id)a4 withMechanisms:(id)a5 withAccount:(id)a6 withBundleIds:(id)a7 withTargetBundleIds:(id)a8 withDirections:(id)a9 singleRecipient:(BOOL)a10 fetchLimit:(unint64_t)a11;
+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 singleRecipient:(BOOL)a11 fetchLimit:(unint64_t)a12;
+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 withNsUserName:(id)a11 singleRecipient:(BOOL)a12 excludeAnonymousTemporaryRecipients:(BOOL)a13 fetchLimit:(unint64_t)a14 fetchOffset:(unint64_t)a15 sortAscending:(BOOL)a16;
+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 withNsUserName:(id)a11 singleRecipient:(BOOL)a12 fetchLimit:(unint64_t)a13;
+ (id)interactionsHyperRecentFromReferenceDate:(id)a3 bundleIds:(id)a4 recencyMargin:(double)a5 store:(id)a6;
+ (id)interactionsMatchingAnyHandles:(id)a3 account:(id)a4 directions:(id)a5 mechanisms:(id)a6 bundleIds:(id)a7 store:(id)a8 fetchLimit:(unint64_t)a9 messageInteractionCache:(id)a10;
+ (id)interactionsMatchingAnyHandles:(id)a3 directions:(id)a4 mechanisms:(id)a5 interactionDuration:(double)a6 store:(id)a7 fetchLimit:(unint64_t)a8;
+ (id)interactionsMatchingAnyHandlesOrContactIds:(id)a3 identifiers:(id)a4 account:(id)a5 directions:(id)a6 mechanisms:(id)a7 bundleIds:(id)a8 store:(id)a9 fetchLimit:(unint64_t)a10 messageInteractionCache:(id)a11;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 account:(id)a4 directions:(id)a5 bundleIds:(id)a6 store:(id)a7 fetchLimit:(unint64_t)a8 singleRecipientOnly:(BOOL)a9;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 account:(id)a4 directions:(id)a5 mechanisms:(id)a6 bundleIds:(id)a7 store:(id)a8 fetchLimit:(unint64_t)a9;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 store:(id)a4 fetchLimit:(unint64_t)a5 messageInteractionCache:(id)a6;
+ (id)interactionsMatchingAnySender:(id)a3 store:(id)a4 fetchLimit:(unint64_t)a5 messageInteractionCache:(id)a6;
+ (id)interactionsMostRecentForBundleId:(id)a3 store:(id)a4 resultLimit:(unint64_t)a5 interactions:(id)a6;
+ (id)interactionsWithContactIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6;
+ (id)metadataFromFeedbackEvent:(id)a3;
+ (id)mostRecentInteractionInvolvingMatchingIdentifier:(id)a3 store:(id)a4 bundleIds:(id)a5;
+ (id)mostRecentInteractionWithExactMatchingIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6;
+ (id)mostRecentInteractionWithRecipientMatchingContactIdentifier:(id)a3 bundleIds:(id)a4 store:(id)a5 singleRecipient:(BOOL)a6;
+ (id)mostRecentInteractionWithSenderOrRecipientMatchingContactIdentifier:(id)a3 bundleIds:(id)a4 store:(id)a5 singleRecipient:(BOOL)a6;
+ (id)mostRecentInteractionWithSingleRecipientMatchingContactIdentifier:(id)a3 store:(id)a4;
+ (id)mostRecentInteractionWithSingleRecipientMatchingHandle:(id)a3 store:(id)a4;
+ (id)recentInteractionsFromStore:(id)a3 bundleIDs:(id)a4;
+ (id)someIMessageInteractionInvolvingContactIdentifier:(id)a3 store:(id)a4 contactType:(unint64_t)a5 afterStartDate:(id)a6;
+ (id)someInteractionWithMatchingIdentifier:(id)a3 store:(id)a4 bundleIds:(id)a5 afterStartDate:(id)a6;
+ (int64_t)getHandleTypeFromHandleString:(id)a3;
@end

@implementation _PSInteractionStoreUtils

+ (id)recentInteractionsFromStore:(id)a3 bundleIDs:(id)a4
{
  v46[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v35 = [v5 predicateWithFormat:@"(NOT derivedIntentIdentifier == NULL)"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8BD48];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v6];
  v10 = MEMORY[0x1E696AB28];
  v39 = v9;
  v40 = v8;
  v46[0] = v9;
  v46[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8BD60];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", v6];

  v15 = MEMORY[0x1E696AB28];
  v36 = v14;
  v37 = v13;
  v45[0] = v13;
  v45[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  v18 = MEMORY[0x1E696AB28];
  v38 = v12;
  v44[0] = v12;
  v44[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v20 = [v18 orPredicateWithSubpredicates:v19];

  v21 = MEMORY[0x1E696AE18];
  v22 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C5B8];
  v23 = [v21 predicateWithFormat:@"(direction IN %@)", v22];

  v24 = MEMORY[0x1E696AB28];
  v43[0] = v20;
  v43[1] = v35;
  v43[2] = v23;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  v26 = [v24 andPredicateWithSubpredicates:v25];

  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v42 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v41 = 0;
  v29 = [v7 queryInteractionsUsingPredicate:v26 sortDescriptors:v28 limit:500 error:&v41];

  v30 = v41;
  if (v30)
  {
    v31 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v32 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v32 = v29;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)interactionCacheFromStore:(id)a3 size:(unint64_t)a4 queryPredicate:(id)a5 filterBlock:(id)a6
{
  v9 = MEMORY[0x1E695DF70];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v9 array];
  [v13 addObject:v11];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  v15 = [objc_alloc(MEMORY[0x1E69978E8]) initWithInteractionStore:v12 size:a4 queryPredicate:v14 filterBlock:v10];

  return v15;
}

+ (id)interactionsFromStore:(id)a3 referenceDate:(id)a4 withMechanisms:(id)a5 withAccount:(id)a6 withBundleIds:(id)a7 withTargetBundleIds:(id)a8 withDirections:(id)a9 fetchLimit:(unint64_t)a10
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  LOBYTE(v25) = 0;
  v23 = [objc_opt_class() interactionsFromStore:v22 referenceDate:v21 withMechanisms:v20 withAccount:v19 withBundleIds:v18 withTargetBundleIds:v17 withDirections:v16 singleRecipient:v25 fetchLimit:a10];

  return v23;
}

+ (id)interactionsFromStore:(id)a3 referenceDate:(id)a4 withMechanisms:(id)a5 withAccount:(id)a6 withBundleIds:(id)a7 withTargetBundleIds:(id)a8 withDirections:(id)a9 singleRecipient:(BOOL)a10 fetchLimit:(unint64_t)a11
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  LOBYTE(v26) = a10;
  v24 = [objc_opt_class() interactionsFromStore:v23 startDate:v22 tillDate:0 withMechanisms:v21 withAccount:v20 withBundleIds:v19 withTargetBundleIds:v18 withDirections:v17 singleRecipient:v26 fetchLimit:a11];

  return v24;
}

+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 singleRecipient:(BOOL)a11 fetchLimit:(unint64_t)a12
{
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LOBYTE(v28) = a11;
  v26 = [objc_opt_class() interactionsFromStore:v25 startDate:v24 tillDate:v23 withMechanisms:v22 withAccount:v21 withBundleIds:v20 withTargetBundleIds:v19 withDirections:v18 withNsUserName:0 singleRecipient:v28 fetchLimit:a12];

  return v26;
}

+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 withNsUserName:(id)a11 singleRecipient:(BOOL)a12 fetchLimit:(unint64_t)a13
{
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a5;
  v26 = a4;
  v27 = a3;
  LOBYTE(v31) = 0;
  BYTE1(v30) = 1;
  LOBYTE(v30) = a12;
  v28 = [objc_opt_class() interactionsFromStore:v27 startDate:v26 tillDate:v25 withMechanisms:v24 withAccount:v23 withBundleIds:v22 withTargetBundleIds:v21 withDirections:v20 withNsUserName:v19 singleRecipient:v30 excludeAnonymousTemporaryRecipients:a13 fetchLimit:0 fetchOffset:v31 sortAscending:?];

  return v28;
}

+ (id)interactionsFromStore:(id)a3 startDate:(id)a4 tillDate:(id)a5 withMechanisms:(id)a6 withAccount:(id)a7 withBundleIds:(id)a8 withTargetBundleIds:(id)a9 withDirections:(id)a10 withNsUserName:(id)a11 singleRecipient:(BOOL)a12 excludeAnonymousTemporaryRecipients:(BOOL)a13 fetchLimit:(unint64_t)a14 fetchOffset:(unint64_t)a15 sortAscending:(BOOL)a16
{
  v59[1] = *MEMORY[0x1E69E9840];
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = v21;
  v57 = v23;
  v56 = a7;
  v55 = a8;
  v54 = a9;
  v25 = a10;
  v26 = a11;
  v27 = MEMORY[0x1E695DF70];
  v28 = a3;
  v29 = [v27 array];
  if (v24)
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@)", v24];
    [v29 addObject:v30];
  }

  if (v22)
  {
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate <= %@)", v22];
    [v29 addObject:v31];
  }

  if (v57)
  {
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v57];
    [v29 addObject:v32];
  }

  if (v55)
  {
    v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v55];
    [v29 addObject:v33];
  }

  if (v56)
  {
    v34 = MEMORY[0x1E696AE18];
    v35 = [MEMORY[0x1E695DFD8] setWithObject:v56];
    v36 = [v34 predicateWithFormat:@"(account IN %@)", v35];

    [v29 addObject:v36];
  }

  if (v54)
  {
    v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", v54];
    [v29 addObject:v37];
  }

  if (v25)
  {
    v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", v25];
    [v29 addObject:v38];
  }

  if (v26)
  {
    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(nsUserName == nil OR nsUserName == %@ OR nsUserName == %@)", @"root", v26];
    [v29 addObject:v39];
  }

  v40 = v25;
  if (a12)
  {
    v41 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(recipientCount == 1)"];
    [v29 addObject:v41];
  }

  v42 = v22;
  v53 = v24;
  if (a13)
  {
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.identifier BEGINSWITH %@).@count == 0)", @"temp:"];
    [v29 addObject:v43];
  }

  v44 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v29];
  v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:a16];
  v59[0] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
  v58 = 0;
  v47 = [v28 queryInteractionsUsingPredicate:v44 sortDescriptors:v46 limit:a14 offset:a15 error:&v58];

  v48 = v58;
  if (v48)
  {
    v49 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v50 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v50 = v47;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

+ (id)interactionsHyperRecentFromReferenceDate:(id)a3 bundleIds:(id)a4 recencyMargin:(double)a5 store:(id)a6
{
  v35[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E695DF70];
  v12 = a6;
  v13 = [v11 array];
  if (v10)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v10];
    [v13 addObject:v14];
  }

  if (v9)
  {
    v15 = MEMORY[0x1E696AE18];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v9 sinceDate:-a5];
    v17 = [v15 predicateWithFormat:@"(startDate >= %@)", v16];

    v18 = MEMORY[0x1E696AE18];
    v19 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v9 sinceDate:-0.5];
    v20 = [v18 predicateWithFormat:@"(startDate <= %@)", v19];

    v21 = MEMORY[0x1E696AB28];
    v35[0] = v17;
    v35[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [v13 addObject:v23];
  }

  v24 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v13];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v34 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v33 = 0;
  v27 = [v12 queryInteractionsUsingPredicate:v24 sortDescriptors:v26 limit:1 error:&v33];

  v28 = v33;
  if (v28)
  {
    v29 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v30 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v30 = v27;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)mostRecentInteractionWithSenderOrRecipientMatchingContactIdentifier:(id)a3 bundleIds:(id)a4 store:(id)a5 singleRecipient:(BOOL)a6
{
  v6 = a6;
  v37[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 length])
  {
    if (v6)
    {
      v12 = @"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    else
    {
      v12 = @"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:v12, v9];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.personId == %@", v9];
    v15 = MEMORY[0x1E696AB28];
    v31 = v14;
    v32 = v13;
    v37[0] = v14;
    v37[1] = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v17 = [v15 orPredicateWithSubpredicates:v16];

    v33 = v10;
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v10];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C5D0];
    v20 = MEMORY[0x1E696AB28];
    v36[0] = v17;
    v36[1] = v18;
    v36[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    v22 = [v20 andPredicateWithSubpredicates:v21];

    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v35 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v34 = 0;
    v25 = [v11 queryInteractionsUsingPredicate:v22 sortDescriptors:v24 limit:1 error:&v34];
    v26 = v34;

    if (v26)
    {
      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v28 = 0;
    }

    else
    {
      v28 = [v25 firstObject];
    }

    v10 = v33;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)mostRecentInteractionWithRecipientMatchingContactIdentifier:(id)a3 bundleIds:(id)a4 store:(id)a5 singleRecipient:(BOOL)a6
{
  v6 = a6;
  v30[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 length])
  {
    if (v6)
    {
      v12 = @"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    else
    {
      v12 = @"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:v12, v9];
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v10];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C5E8];
    v16 = MEMORY[0x1E696AB28];
    v27 = v13;
    v30[0] = v13;
    v30[1] = v14;
    v30[2] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v29 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v28 = 0;
    v21 = [v11 queryInteractionsUsingPredicate:v18 sortDescriptors:v20 limit:1 error:&v28];
    v22 = v28;

    if (v22)
    {
      v23 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v24 = 0;
    }

    else
    {
      v24 = [v21 firstObject];
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)mostRecentInteractionWithSingleRecipientMatchingContactIdentifier:(id)a3 store:(id)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0", v5];
    v8 = MEMORY[0x1E696AE18];
    v9 = +[_PSConstants eligibleShareSheetTargets];
    v10 = [v8 predicateWithFormat:@"(bundleId IN %@)", v9];

    v11 = MEMORY[0x1E696AB28];
    v24[0] = v7;
    v24[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v23 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v22 = 0;
    v16 = [v6 queryInteractionsUsingPredicate:v13 sortDescriptors:v15 limit:500 error:&v22];
    v17 = v22;

    if (v17)
    {
      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v19 = 0;
    }

    else
    {
      v19 = [v16 firstObject];
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)mostRecentInteractionWithSingleRecipientMatchingHandle:(id)a3 store:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ![v6 length])
  {
    v13[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [a1 interactionsMatchingAnyHandlesOrDomainIds:v9 account:0 directions:&unk_1F2D8C600 mechanisms:0 bundleIds:0 store:v7 fetchLimit:1];
    v8 = [v10 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 account:(id)a4 directions:(id)a5 mechanisms:(id)a6 bundleIds:(id)a7 store:(id)a8 fetchLimit:(unint64_t)a9
{
  v76 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v67 = a8;
  v19 = [MEMORY[0x1E695DF70] array];
  if (v18)
  {
    v20 = MEMORY[0x1E696AE18];
    v21 = [MEMORY[0x1E695DFD8] setWithArray:v18];
    v22 = [v20 predicateWithFormat:@"(bundleId IN %@)", v21];

    [v19 addObject:v22];
  }

  if (v15)
  {
    v23 = MEMORY[0x1E696AE18];
    v24 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    v25 = [v23 predicateWithFormat:@"(account IN %@)", v24];

    [v19 addObject:v25];
  }

  if (v16)
  {
    v26 = MEMORY[0x1E696AE18];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:v16];
    v28 = [v26 predicateWithFormat:@"(direction IN %@)", v27];

    [v19 addObject:v28];
  }

  v29 = 0x1E696A000;
  v66 = v19;
  if (v14)
  {
    v62 = v18;
    v63 = v17;
    v64 = v15;
    v30 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v14];
    v31 = MEMORY[0x1E695DFD8];
    v61 = v30;
    v32 = [v30 allValues];
    v33 = [v31 setWithArray:v32];
    v34 = [v33 mutableCopy];

    v60 = v34;
    v59 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v34];
    v58 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", v14];
    v35 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v65 = v14;
    v36 = v14;
    v37 = [v36 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v70;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v70 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v69 + 1) + 8 * i);
          v42 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v43 = [v41 stringByAddingPercentEncodingWithAllowedCharacters:v42];

          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)", v43];
          [v35 addObject:v44];
        }

        v38 = [v36 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v38);
    }

    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"derivedIntentIdentifier IN %@", v35];
    v46 = MEMORY[0x1E696AB28];
    v74[0] = v58;
    v74[1] = v59;
    v74[2] = v45;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v48 = [v46 orPredicateWithSubpredicates:v47];
    [v19 addObject:v48];

    v29 = 0x1E696A000uLL;
    v15 = v64;
    v14 = v65;
    v17 = v63;
    v18 = v62;
  }

  if (v17)
  {
    v49 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", v17];
    [v19 addObject:v49];
  }

  v50 = [*(v29 + 2856) andPredicateWithSubpredicates:v19];
  v51 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v73 = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v68 = 0;
  v53 = [v67 queryInteractionsUsingPredicate:v50 sortDescriptors:v52 limit:a9 error:&v68];
  v54 = v68;

  if (v54)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:];
    }

    v55 = 0;
  }

  else
  {
    v55 = v53;
  }

  v56 = *MEMORY[0x1E69E9840];

  return v55;
}

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 store:(id)a4 fetchLimit:(unint64_t)a5 messageInteractionCache:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = v12;
  v14 = 0x1E696A000;
  v15 = 0x1E695D000;
  if (v9)
  {
    v47 = a5;
    v48 = v12;
    v49 = v10;
    v16 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v9];
    v17 = MEMORY[0x1E695DFD8];
    v46 = v16;
    v18 = [v16 allValues];
    v19 = [v17 setWithArray:v18];
    v20 = [v19 mutableCopy];

    v45 = v20;
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v20];
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", v9];
    v21 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v50 = v9;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v53;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v53 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v52 + 1) + 8 * i);
          v28 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v29 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:v28];

          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)", v29];
          [v21 addObject:v30];
        }

        v24 = [v22 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v24);
    }

    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"derivedIntentIdentifier IN %@", v21];
    v14 = 0x1E696A000uLL;
    v32 = MEMORY[0x1E696AB28];
    v57[0] = v43;
    v57[1] = v44;
    v57[2] = v31;
    v15 = 0x1E695D000uLL;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    v34 = [v32 orPredicateWithSubpredicates:v33];
    v13 = v48;
    [v48 addObject:v34];

    v10 = v49;
    v9 = v50;
    a5 = v47;
  }

  v35 = [*(v14 + 2856) andPredicateWithSubpredicates:v13];
  if (v11)
  {
    v36 = [v11 interactions];
    v37 = [v36 filteredArrayUsingPredicate:v35];
  }

  else
  {
    v36 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v56 = v36;
    v38 = [*(v15 + 3784) arrayWithObjects:&v56 count:1];
    v51 = 0;
    v39 = [v10 queryInteractionsUsingPredicate:v35 sortDescriptors:v38 limit:a5 error:&v51];
    v40 = v51;

    if (v40)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:];
      }

      v37 = 0;
    }

    else
    {
      v37 = v39;
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)a3 account:(id)a4 directions:(id)a5 bundleIds:(id)a6 store:(id)a7 fetchLimit:(unint64_t)a8 singleRecipientOnly:(BOOL)a9
{
  v49[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v46 = a5;
  v15 = a6;
  v16 = MEMORY[0x1E695DF70];
  v17 = a7;
  v18 = [v16 array];
  if (v15)
  {
    v19 = MEMORY[0x1E696AE18];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v21 = [v19 predicateWithFormat:@"(bundleId IN %@)", v20];

    [v18 addObject:v21];
  }

  if (v14)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v14];
    v24 = [v22 predicateWithFormat:@"(account IN %@)", v23];

    [v18 addObject:v24];
  }

  if (v46)
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v27 = [v25 predicateWithFormat:@"(direction IN %@)", v26];

    [v18 addObject:v27];
  }

  v45 = v14;
  if (a9)
  {
    v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount == 1"];
    [v18 addObject:v28];
  }

  if (v13)
  {
    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v13];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", v13];
    v31 = MEMORY[0x1E696AB28];
    v49[0] = v30;
    v49[1] = v29;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v33 = [v31 orPredicateWithSubpredicates:v32];
    [v18 addObject:v33];
  }

  v34 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  v35 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v48 = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v47 = 0;
  v37 = [v17 queryInteractionsUsingPredicate:v34 sortDescriptors:v36 limit:a8 error:&v47];

  v38 = v47;
  if (v38)
  {
    v39 = v46;
    v40 = v15;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:];
    }

    v41 = 0;
  }

  else
  {
    v41 = v37;
    v39 = v46;
    v40 = v15;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)allAirDropInteractionsFromStore:(id)a3 fetchLimit:(unint64_t)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"(targetBundleId == %@)", @"com.apple.UIKit.activity.AirDrop"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8BD60];
  v9 = MEMORY[0x1E696AB28];
  v21[0] = v8;
  v21[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v20 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v19 = 0;
  v14 = [v6 queryInteractionsUsingPredicate:v11 sortDescriptors:v13 limit:a4 error:&v19];

  v15 = v19;
  if (v15)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:];
    }

    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)interactionsMatchingAnySender:(id)a3 store:(id)a4 fetchLimit:(unint64_t)a5 messageInteractionCache:(id)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.identifier IN %@", v9];
    [v12 addObject:v13];
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v12];
  if (v11)
  {
    v15 = [v11 interactions];
    v16 = [v15 filteredArrayUsingPredicate:v14];
  }

  else
  {
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v25[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v24 = 0;
    v19 = [v10 queryInteractionsUsingPredicate:v14 sortDescriptors:v18 limit:a5 error:&v24];
    v20 = v24;

    if (v20)
    {
      v21 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v16 = 0;
    }

    else
    {
      v16 = v19;
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)interactionsMatchingAnyHandles:(id)a3 directions:(id)a4 mechanisms:(id)a5 interactionDuration:(double)a6 store:(id)a7 fetchLimit:(unint64_t)a8
{
  v41[1] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:a3];
  v17 = MEMORY[0x1E695DFD8];
  v18 = [v16 allValues];
  v19 = [v17 setWithArray:v18];
  v20 = [v19 mutableCopy];

  v21 = [MEMORY[0x1E695DF70] array];
  if (v13)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    v24 = [v22 predicateWithFormat:@"(direction IN %@)", v23];

    [v21 addObject:v24];
  }

  v25 = [v20 allObjects];

  if (v25)
  {
    v26 = MEMORY[0x1E696AE18];
    v27 = [v20 allObjects];
    v28 = [v26 predicateWithFormat:@"ANY recipients.identifier IN %@", v27];

    [v21 addObject:v28];
  }

  if (v14)
  {
    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", v14];
    [v21 addObject:v29];
  }

  if (a6 > 0.0)
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"endDate - startDate >= %f", *&a6];
    [v21 addObject:v30];
  }

  v31 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
  v32 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v41[0] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v40 = 0;
  v34 = [v15 queryInteractionsUsingPredicate:v31 sortDescriptors:v33 limit:a8 error:&v40];

  v35 = v40;
  if (v35)
  {
    v36 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)interactionsMatchingAnyHandles:(id)a3 account:(id)a4 directions:(id)a5 mechanisms:(id)a6 bundleIds:(id)a7 store:(id)a8 fetchLimit:(unint64_t)a9 messageInteractionCache:(id)a10
{
  v45[1] = *MEMORY[0x1E69E9840];
  v43 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v42 = a8;
  v19 = a10;
  v20 = [MEMORY[0x1E695DF70] array];
  if (v18)
  {
    v21 = MEMORY[0x1E696AE18];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v18];
    v23 = [v21 predicateWithFormat:@"(bundleId IN %@)", v22];

    [v20 addObject:v23];
  }

  if (v15)
  {
    v24 = MEMORY[0x1E696AE18];
    v25 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    v26 = [v24 predicateWithFormat:@"(account IN %@)", v25];

    [v20 addObject:v26];
  }

  if (v16)
  {
    v27 = MEMORY[0x1E696AE18];
    v28 = [MEMORY[0x1E695DFD8] setWithArray:v16];
    v29 = [v27 predicateWithFormat:@"(direction IN %@)", v28];

    [v20 addObject:v29];
  }

  if (v43)
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v43];
    [v20 addObject:v30];
  }

  if (v17)
  {
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", v17];
    [v20 addObject:v31];
  }

  v32 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v20];
  if (v19)
  {
    v33 = [v19 interactions];
    v34 = [v33 filteredArrayUsingPredicate:v32];
  }

  else
  {
    v41 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v45[0] = v41;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v44 = 0;
    v36 = [v42 queryInteractionsUsingPredicate:v32 sortDescriptors:v35 limit:a9 error:&v44];
    v37 = v44;

    if (v37)
    {
      v38 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v34 = 0;
    }

    else
    {
      v34 = v36;
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v34;
}

+ (id)interactionsMatchingAnyHandlesOrContactIds:(id)a3 identifiers:(id)a4 account:(id)a5 directions:(id)a6 mechanisms:(id)a7 bundleIds:(id)a8 store:(id)a9 fetchLimit:(unint64_t)a10 messageInteractionCache:(id)a11
{
  v87 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v77 = a9;
  v76 = a11;
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = 0x1E696A000;
  if (v21)
  {
    v24 = MEMORY[0x1E696AE18];
    v25 = [MEMORY[0x1E695DFD8] setWithArray:v21];
    v26 = [v24 predicateWithFormat:@"(bundleId IN %@)", v25];

    [v22 addObject:v26];
    v23 = 0x1E696A000;
  }

  if (v18)
  {
    v27 = MEMORY[0x1E696AE18];
    v28 = [MEMORY[0x1E695DFD8] setWithObject:v18];
    v29 = [v27 predicateWithFormat:@"(account IN %@)", v28];

    [v22 addObject:v29];
    v23 = 0x1E696A000;
  }

  if (v19)
  {
    v30 = MEMORY[0x1E696AE18];
    v31 = [MEMORY[0x1E695DFD8] setWithArray:v19];
    v32 = [v30 predicateWithFormat:@"(direction IN %@)", v31];

    [v22 addObject:v32];
    v23 = 0x1E696A000uLL;
  }

  v33 = 0x1E696A000;
  v78 = v22;
  v74 = v21;
  v75 = v20;
  if (v16)
  {
    v70 = v19;
    v71 = v18;
    v72 = v17;
    v34 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v16];
    v35 = v23;
    v36 = MEMORY[0x1E695DFD8];
    v69 = v34;
    v37 = [v34 allValues];
    v38 = [v36 setWithArray:v37];
    v39 = [v38 mutableCopy];

    v68 = v39;
    v67 = [*(v35 + 3608) predicateWithFormat:@"ANY recipients.identifier IN %@", v39];
    v40 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v73 = v16;
    v41 = v16;
    v42 = [v41 countByEnumeratingWithState:&v80 objects:v86 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v81;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v81 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v80 + 1) + 8 * i);
          v47 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v48 = [v46 stringByAddingPercentEncodingWithAllowedCharacters:v47];

          v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)", v48];
          [v40 addObject:v49];
        }

        v43 = [v41 countByEnumeratingWithState:&v80 objects:v86 count:16];
      }

      while (v43);
    }

    v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"derivedIntentIdentifier IN %@", v40];
    v51 = MEMORY[0x1E696AB28];
    v85[0] = v67;
    v85[1] = v50;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
    v53 = [v51 orPredicateWithSubpredicates:v52];
    [v78 addObject:v53];

    v22 = v78;
    v23 = 0x1E696A000uLL;

    v33 = 0x1E696A000uLL;
    v17 = v72;
    v16 = v73;
    v19 = v70;
    v18 = v71;
    v20 = v75;
  }

  if (v17)
  {
    v54 = [*(v23 + 3608) predicateWithFormat:@"ANY recipients.personId IN %@", v17];
    [v22 addObject:v54];
  }

  if (v20)
  {
    v55 = [*(v23 + 3608) predicateWithFormat:@"mechanism IN %@", v20];
    [v22 addObject:v55];
  }

  v56 = [*(v33 + 2856) andPredicateWithSubpredicates:v22];
  v57 = v76;
  if (v76)
  {
    v58 = [v76 interactions];
    v59 = [v58 filteredArrayUsingPredicate:v56];
  }

  else
  {
    v60 = v19;
    v58 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v84 = v58;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v79 = 0;
    v62 = [v77 queryInteractionsUsingPredicate:v56 sortDescriptors:v61 limit:a10 error:&v79];
    v63 = v79;

    if (v63)
    {
      v64 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v59 = 0;
    }

    else
    {
      v59 = v62;
    }

    v57 = 0;

    v19 = v60;
    v21 = v74;
    v20 = v75;
  }

  v65 = *MEMORY[0x1E69E9840];

  return v59;
}

+ (id)interactionsContainingSearchStringInDisplayName:(id)a3 account:(id)a4 directions:(id)a5 bundleIds:(id)a6 store:(id)a7 fetchLimit:(unint64_t)a8
{
  v40[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = MEMORY[0x1E695DF70];
  v17 = a7;
  v18 = [v16 array];
  if (v15)
  {
    v19 = MEMORY[0x1E696AE18];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v21 = [v19 predicateWithFormat:@"(bundleId IN %@)", v20];

    [v18 addObject:v21];
  }

  if (v13)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v13];
    v24 = [v22 predicateWithFormat:@"(account IN %@)", v23];

    [v18 addObject:v24];
  }

  if (v14)
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [MEMORY[0x1E695DFD8] setWithArray:v14];
    v27 = [v25 predicateWithFormat:@"(direction IN %@)", v26];

    [v18 addObject:v27];
  }

  if (v12)
  {
    v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.displayName CONTAINS[cd] %@).@count > 0", v12];
    [v18 addObject:v28];
  }

  v29 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v40[0] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v39 = 0;
  v32 = [v17 queryInteractionsUsingPredicate:v29 sortDescriptors:v31 limit:a8 error:&v39];

  v33 = v39;
  if (v33)
  {
    v34 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v35 = 0;
  }

  else
  {
    v35 = v32;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

+ (id)groupInteractionsContainingSearchStringInDisplayName:(id)a3 excludingInteractionUUIDs:(id)a4 account:(id)a5 directions:(id)a6 bundleIds:(id)a7 excludedDomainIdentifiers:(id)a8 startDate:(id)a9 store:(id)a10 fetchLimit:(unint64_t)a11 offset:(unint64_t)a12
{
  v74[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v71 = a5;
  v19 = a6;
  v70 = a7;
  v69 = a8;
  v20 = a9;
  v65 = a10;
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = MEMORY[0x1E696AE18];
  v23 = NSUserName();
  v24 = [v22 predicateWithFormat:@"(noindex:(nsUserName) = %@)", v23];

  v64 = v24;
  [v21 addObject:v24];
  if (v20)
  {
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate > %@)", v20];
    [v21 addObject:v25];
  }

  v68 = v20;
  if ([v18 count])
  {
    v26 = MEMORY[0x1E696AE18];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:v18];
    v28 = [v26 predicateWithFormat:@"(uuid != %@)", v27];

    [v21 addObject:v28];
  }

  if (v70)
  {
    v29 = @"(noindex:(bundleId) IN %@)";
    if (!v20)
    {
      v29 = @"(bundleId IN %@)";
    }

    v30 = MEMORY[0x1E696AE18];
    v31 = MEMORY[0x1E695DFD8];
    v32 = v19;
    v33 = v29;
    v34 = [v31 setWithArray:v70];
    v35 = [v30 predicateWithFormat:v33, v34];

    v19 = v32;
    [v21 addObject:v35];
  }

  if (v71)
  {
    v36 = MEMORY[0x1E696AE18];
    v37 = [MEMORY[0x1E695DFD8] setWithObject:?];
    v38 = [v36 predicateWithFormat:@"(account IN %@)", v37];

    [v21 addObject:v38];
  }

  if (v19)
  {
    v39 = MEMORY[0x1E696AE18];
    v40 = [MEMORY[0x1E695DFD8] setWithArray:v19];
    v41 = [v39 predicateWithFormat:@"(direction IN %@)", v40];

    [v21 addObject:v41];
  }

  v66 = v19;
  v67 = v18;
  v42 = v69;
  if ([v69 count])
  {
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(domainIdentifier IN %@)", v69];
    [v21 addObject:v43];
  }

  v44 = 0x1E695D000;
  if (v17)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = [@" " stringByAppendingString:v17];
    v47 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(   (recipientCount > 1)   OR    (recipientCount >= 1 AND sender != nil)) AND(  (SUBQUERY(recipients, $recipient, ANY $recipient.displayName BEGINSWITH[cd] %@).@count > 0)   OR    (direction != %d AND sender != nil AND sender.displayName BEGINSWITH[cd] %@))", v17, 1, v17];
    v48 = objc_alloc(MEMORY[0x1E696AEC0]);
    v49 = [MEMORY[0x1E696AE70] escapedPatternForString:v17];
    v50 = [v48 initWithFormat:@"(^|.*(?w:\\b))(?:.\\N{VARIATION SELECTOR-16})?\\P{alnum}+(?i)%@.*", v49];

    v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(groupName BEGINSWITH[cd] %@ OR groupName CONTAINS[cd] %@ OR groupName MATCHES %@)", v17, v46, v50];
    v52 = MEMORY[0x1E696AB28];
    v74[0] = v51;
    v74[1] = v47;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v54 = [v52 orPredicateWithSubpredicates:v53];
    [v21 addObject:v54];

    v42 = v69;
    v44 = 0x1E695D000uLL;

    objc_autoreleasePoolPop(v45);
  }

  v55 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
  v56 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v73 = v56;
  v57 = [*(v44 + 3784) arrayWithObjects:&v73 count:1];
  v72 = 0;
  v58 = [v65 queryInteractionsUsingPredicate:v55 sortDescriptors:v57 limit:a11 offset:a12 error:&v72];
  v59 = v72;

  if (v59)
  {
    v60 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v61 = 0;
  }

  else
  {
    v61 = v58;
  }

  v62 = *MEMORY[0x1E69E9840];

  return v61;
}

+ (id)interactionsMostRecentForBundleId:(id)a3 store:(id)a4 resultLimit:(unint64_t)a5 interactions:(id)a6
{
  v56[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    v47 = v11;
    v13 = MEMORY[0x1E696AE18];
    v14 = MEMORY[0x1E695DFD8];
    v45 = v9;
    v56[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v16 = [v14 setWithArray:v15];
    v17 = [v13 predicateWithFormat:@"(bundleId IN %@)", v16];

    v18 = MEMORY[0x1E696AE18];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C618];
    v20 = [v18 predicateWithFormat:@"(direction IN %@)", v19];

    v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v46 = v10;
    v43 = v21;
    v44 = v20;
    if (v11)
    {
      v22 = [v11 filteredArrayUsingPredicate:v17];
      v42 = 0;
    }

    else
    {
      v23 = v21;
      v24 = MEMORY[0x1E696AB28];
      v55[0] = v17;
      v55[1] = v20;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
      v26 = [v24 andPredicateWithSubpredicates:v25];
      v54 = v23;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      v52 = 0;
      v22 = [v10 queryInteractionsUsingPredicate:v26 sortDescriptors:v27 limit:500 error:&v52];
      v42 = v52;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = v22;
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
LABEL_7:
      v32 = 0;
      while (1)
      {
        v33 = v17;
        if (*v49 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v48 + 1) + 8 * v32);
        v35 = [v34 domainIdentifier];

        if (v35)
        {
          v36 = [v34 domainIdentifier];
          v37 = [v12 containsObject:v36];

          if ((v37 & 1) == 0)
          {
            v38 = [v34 domainIdentifier];
            [v12 addObject:v38];
          }
        }

        v17 = v33;
        if ([v12 count] >= a5)
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v30)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v10 = v46;
    v11 = v47;
    v9 = v45;
  }

  v39 = [v12 copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)conversationIdFromInteraction:(id)a3 bundleIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = [a1 conversationIdFromInteraction:v6];
LABEL_7:
    v14 = v10;
    goto LABEL_8;
  }

  v8 = [v6 bundleId];
  v9 = +[_PSConstants mobileMessagesBundleId];
  if ([v8 isEqualToString:v9])
  {

LABEL_6:
    v10 = [v6 domainIdentifier];
    goto LABEL_7;
  }

  v11 = [v6 targetBundleId];
  v12 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_6;
  }

  v16 = [v6 bundleId];
  v17 = +[_PSConstants mobileMailBundleId];
  if ([v16 isEqualToString:v17])
  {

LABEL_14:
    v21 = MEMORY[0x1E69978D0];
    v22 = [v6 recipients];
    v14 = [v21 generateConversationIdFromInteractionRecipients:v22];

    goto LABEL_8;
  }

  v18 = [v6 targetBundleId];
  v19 = +[_PSConstants shareSheetTargetBundleIdMail];
  v20 = [v18 isEqualToString:v19];

  if (v20)
  {
    goto LABEL_14;
  }

  v23 = [v6 bundleId];
  if ([v7 containsObject:v23])
  {

LABEL_18:
    v10 = [v6 derivedIntentIdentifier];
    goto LABEL_7;
  }

  v24 = [v6 targetBundleId];
  v25 = [v7 containsObject:v24];

  if (v25)
  {
    goto LABEL_18;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)conversationIdFromInteraction:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleId];
  v5 = +[_PSConstants mobileMessagesBundleId];
  if ([v4 isEqualToString:v5])
  {

LABEL_4:
    v9 = [v3 domainIdentifier];
LABEL_5:
    v10 = v9;
    goto LABEL_6;
  }

  v6 = [v3 targetBundleId];
  v7 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    goto LABEL_4;
  }

  v12 = [v3 bundleId];
  v13 = +[_PSConstants mobileMailBundleId];
  if ([v12 isEqualToString:v13])
  {
  }

  else
  {
    v14 = [v3 targetBundleId];
    v15 = +[_PSConstants shareSheetTargetBundleIdMail];
    v16 = [v14 isEqualToString:v15];

    if (!v16)
    {
      v9 = [v3 derivedIntentIdentifier];
      goto LABEL_5;
    }
  }

  v17 = MEMORY[0x1E69978D0];
  v18 = [v3 recipients];
  v10 = [v17 generateConversationIdFromInteractionRecipients:v18];

LABEL_6:

  return v10;
}

+ (id)interactionsWithContactIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6
{
  v36[3] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [a3 mutableCopy];
  v13 = v12;
  if (v11)
  {
    [v12 removeObject:v11];
  }

  if ([v13 count] >= 2)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E695DFD8] setWithArray:v10];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v32];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount > 1 AND SUBQUERY(recipients, $recipient, $recipient.personId IN %@).@count > 1", v13];
    v18 = MEMORY[0x1E696AE18];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C630];
    v20 = [v18 predicateWithFormat:@"(direction IN %@)", v19];

    v36[0] = v20;
    v36[1] = v16;
    v30 = v17;
    v31 = v16;
    v36[2] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    [v15 addObjectsFromArray:v21];

    v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v15];
    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v35 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v33 = v9;
    v34 = 0;
    v25 = [v9 queryInteractionsUsingPredicate:v22 sortDescriptors:v24 limit:1000 error:&v34];
    v26 = v34;

    if (v26)
    {
      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v14 = 0;
    }

    else
    {
      v14 = v25;
    }

    v9 = v33;
  }

  else
  {
    v14 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)conversationIdWithMaximalIntersectionWithContactIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = 0x1E7C23000uLL;
  v46 = v9;
  v13 = [_PSInteractionStoreUtils interactionsWithContactIdentifiers:v9 store:a4 bundleIds:v10 meContactIdentifier:v11];
  v14 = v13;
  if (v13 && [v13 count])
  {
    v42 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v15 = [MEMORY[0x1E695DFA8] set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = v14;
    obj = v14;
    v16 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      v51 = 0;
      v18 = *v58;
      v50 = 1;
      v44 = v15;
      v45 = v10;
      v43 = *v58;
      do
      {
        v19 = 0;
        v47 = v17;
        do
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v57 + 1) + 8 * v19);
          v21 = [*(v12 + 1288) conversationIdFromInteraction:v20 bundleIds:{v10, v41}];
          if (v21 && ([v15 containsObject:v21] & 1) == 0)
          {
            v52 = v21;
            v22 = [MEMORY[0x1E695DFA8] set];
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v49 = v20;
            v23 = [v20 recipients];
            v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v54;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v54 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v53 + 1) + 8 * i);
                  v29 = [v28 personId];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = [v28 personId];

                    if (v31 != v11)
                    {
                      v32 = [v28 personId];
                      [v22 addObject:v32];
                    }
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
              }

              while (v25);
            }

            [v22 intersectSet:v46];
            v33 = [v22 count];
            v34 = [v46 count];
            if ([v22 count] <= v50)
            {
              v37 = v33 != v34;
              v15 = v44;
              v10 = v45;
              v12 = 0x1E7C23000;
              v18 = v43;
              v17 = v47;
              v21 = v52;
              if (((v51 | v37) & 1) == 0)
              {
                v38 = [v49 bundleId];
                [v42 setObject:v52 forKeyedSubscript:v38];

                v50 = [v22 count];
                v51 = 1;
              }
            }

            else
            {
              v35 = v33 == v34;
              v36 = [v49 bundleId];
              v21 = v52;
              [v42 setObject:v52 forKeyedSubscript:v36];

              v50 = [v22 count];
              v51 |= v35;
              v15 = v44;
              v10 = v45;
              v12 = 0x1E7C23000;
              v18 = v43;
              v17 = v47;
            }

            [v15 addObject:v21];
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v17);
    }

    v14 = v41;
  }

  else
  {
    v42 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v42;
}

+ (id)conversationIdWithExactMatchWithContactHandles:(id)a3 store:(id)a4 bundleIds:(id)a5 messageInteractionCache:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v52 = v9;
  v13 = [v9 allObjects];
  v14 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:v13];

  v15 = MEMORY[0x1E695DFD8];
  v16 = [v14 allValues];
  v17 = [v15 setWithArray:v16];
  v18 = [v17 mutableCopy];

  v19 = 0x1E7C23000uLL;
  v20 = [v18 allObjects];
  v21 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:v20 account:0 directions:0 mechanisms:0 bundleIds:v11 store:v10 fetchLimit:500 messageInteractionCache:v12];

  if (v21 && [v21 count])
  {
    v43 = v18;
    v44 = v14;
    v45 = v12;
    v46 = v10;
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = [MEMORY[0x1E695DFA8] set];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v42 = v21;
    obj = v21;
    v23 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v59;
      v49 = v22;
      v50 = v11;
      v48 = *v59;
      while (2)
      {
        v26 = 0;
        v51 = v24;
        do
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v58 + 1) + 8 * v26);
          v28 = [*(v19 + 1288) conversationIdFromInteraction:v27 bundleIds:v11];
          if (v28 && ([v22 containsObject:v28] & 1) == 0)
          {
            v29 = [MEMORY[0x1E695DFA8] set];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = [v27 recipients];
            v31 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v55;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v55 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v54 + 1) + 8 * i);
                  v36 = [v35 handle];

                  if (v36)
                  {
                    v37 = [v35 handle];
                    [v29 addObject:v37];
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v32);
            }

            if ([v29 isEqualToSet:v52])
            {
              v39 = [v27 bundleId];
              [v47 setObject:v28 forKeyedSubscript:v39];

              v22 = v49;
              v11 = v50;
              goto LABEL_26;
            }

            v22 = v49;
            [v49 addObject:v28];

            v11 = v50;
            v24 = v51;
            v19 = 0x1E7C23000;
            v25 = v48;
          }

          ++v26;
        }

        while (v26 != v24);
        v24 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    v12 = v45;
    v10 = v46;
    v18 = v43;
    v14 = v44;
    v38 = v47;
    v21 = v42;
  }

  else
  {
    v38 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (id)someIMessageInteractionInvolvingContactIdentifier:(id)a3 store:(id)a4 contactType:(unint64_t)a5 afterStartDate:(id)a6
{
  v33[4] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  v10 = a4;
  v11 = a3;
  v12 = [v9 predicateWithFormat:@"(startDate >= %@)", a6];
  v13 = MEMORY[0x1E696AE18];
  v14 = +[_PSConstants mobileMessagesBundleId];
  v15 = [v13 predicateWithFormat:@"(bundleId = %@)", v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier BEGINSWITH 'iMessage')"];
  v17 = MEMORY[0x1E696AE18];
  v18 = NSUserName();
  v19 = [v17 predicateWithFormat:@"(nsUserName = nil OR nsUserName = %@ OR nsUserName = %@)", @"root", v18];

  v20 = MEMORY[0x1E695DF70];
  v33[0] = v12;
  v33[1] = v15;
  v33[2] = v16;
  v33[3] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v22 = [v20 arrayWithArray:v21];

  if (a5 - 1 > 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@).@count > 0)", v11, v31];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ AND $recipient.type = %d).@count > 0)", v11, a5];
  }
  v23 = ;

  [v22 addObject:v23];
  v24 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v22];
  v32 = 0;
  v25 = [v10 queryInteractionsUsingPredicate:v24 sortDescriptors:MEMORY[0x1E695E0F0] limit:1 error:&v32];

  v26 = v32;
  if (v26)
  {
    v27 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v28 = 0;
  }

  else
  {
    v28 = [v25 firstObject];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)someInteractionWithMatchingIdentifier:(id)a3 store:(id)a4 bundleIds:(id)a5 afterStartDate:(id)a6
{
  v30[4] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  v10 = MEMORY[0x1E695DFD8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 setWithArray:a5];
  v15 = [v9 predicateWithFormat:@"(bundleId IN %@)", v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(recipientCount == 1)"];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ OR $recipient.identifier = %@).@count == 1)", v13, v13];

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@)", v11];

  v19 = MEMORY[0x1E695DF70];
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = v17;
  v30[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v21 = [v19 arrayWithArray:v20];

  v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
  v29 = 0;
  v23 = [v12 queryInteractionsUsingPredicate:v22 sortDescriptors:MEMORY[0x1E695E0F0] limit:1 error:&v29];

  v24 = v29;
  if (v24)
  {
    v25 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v26 = 0;
  }

  else
  {
    v26 = [v23 firstObject];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

+ (id)mostRecentInteractionInvolvingMatchingIdentifier:(id)a3 store:(id)a4 bundleIds:(id)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  v8 = MEMORY[0x1E695DFD8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 setWithArray:a5];
  v12 = [v7 predicateWithFormat:@"(bundleId IN %@)", v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ or $recipient.identifier = %@).@count > 0)", v10, v10];

  v14 = MEMORY[0x1E695DF70];
  v28[0] = v12;
  v28[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v16 = [v14 arrayWithArray:v15];

  v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v16];
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v27 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v26 = 0;
  v20 = [v9 queryInteractionsUsingPredicate:v17 sortDescriptors:v19 limit:1 error:&v26];

  v21 = v26;
  if (v21)
  {
    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    v23 = 0;
  }

  else
  {
    v23 = [v20 firstObject];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)mostRecentInteractionWithExactMatchingIdentifiers:(id)a3 store:(id)a4 bundleIds:(id)a5 meContactIdentifier:(id)a6
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v9;
  v14 = v13;
  v15 = v13;
  if (v12)
  {
    v15 = [v13 mutableCopy];
    [v15 removeObject:v12];
  }

  if ([v15 count])
  {
    v54 = v12;
    v55 = v14;
    v56 = v11;
    v53 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v53];
    v17 = [MEMORY[0x1E695DF70] array];
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction = %@)", &unk_1F2D8BD90];
    v19 = MEMORY[0x1E696AE18];
    v57 = v10;
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    v21 = [v19 predicateWithFormat:@"(recipientCount = %@)", v20];

    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId IN %@ or $recipient.identifier IN %@).@count = %d)", v15, v15, objc_msgSend(v15, "count")];
    v49 = v21;
    v50 = v18;
    v62[0] = v18;
    v62[1] = v16;
    v63 = v62[2] = v21;
    v48 = v63;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
    [v17 addObjectsFromArray:v22];

    v51 = v17;
    v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v17];
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction = %@)", &unk_1F2D8BDA8];
    v26 = MEMORY[0x1E696AE18];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count") - 1}];
    v28 = [v26 predicateWithFormat:@"(recipientCount = %@)", v27];

    v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId IN %@ or $recipient.identifier IN %@).@count = %d)", v15, v15, objc_msgSend(v15, "count") - 1];
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((sender.personId IN %@) OR (sender.identifier IN %@))", v15, v15];
    v45 = v29;
    v46 = v25;
    v61[0] = v25;
    v61[1] = v16;
    v31 = v24;
    v52 = v16;
    v61[2] = v28;
    v61[3] = v29;
    v61[4] = v30;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];
    [v24 addObjectsFromArray:v32];

    v33 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v24];
    v34 = MEMORY[0x1E696AB28];
    v47 = v23;
    v60[0] = v23;
    v60[1] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v36 = [v34 orPredicateWithSubpredicates:v35];

    v37 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v59 = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    v58 = 0;
    v39 = [v57 queryInteractionsUsingPredicate:v36 sortDescriptors:v38 limit:1 error:&v58];
    v40 = v58;

    if (v40)
    {
      v41 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      v42 = 0;
    }

    else
    {
      v42 = [v39 firstObject];
    }

    v11 = v56;
    v10 = v57;
    v12 = v54;
    v14 = v55;
  }

  else
  {
    v42 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

+ (int64_t)getHandleTypeFromHandleString:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v4 = getCNHandleStringClassifierClass_softClass;
    v20 = getCNHandleStringClassifierClass_softClass;
    if (!getCNHandleStringClassifierClass_softClass)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getCNHandleStringClassifierClass_block_invoke;
      v16[3] = &unk_1E7C23BF0;
      v16[4] = &v17;
      __getCNHandleStringClassifierClass_block_invoke(v16);
      v4 = v18[3];
    }

    v5 = v4;
    _Block_object_dispose(&v17, 8);
    v21[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v7 = [v4 classificationOfHandleStrings:v6];

    v8 = [v7 emailAddresses];
    if (!v8 || ([v7 emailAddresses], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count") == 0, v9, v8, v10))
    {
      v11 = [v7 phoneNumbers];
      if (v11)
      {
        v12 = [v7 phoneNumbers];
        v13 = [v12 count] == 0;

        if (v13)
        {
          v11 = 0;
        }

        else
        {
          v11 = 2;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (id)metadataFromFeedbackEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 derivedIntentIdentifier];

  if (v5)
  {
    v6 = [v3 derivedIntentIdentifier];
    v7 = [MEMORY[0x1E69979D8] derivedIntentIdentifier];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [v3 targetBundleID];

  if (v8)
  {
    v9 = [v3 targetBundleID];
    v10 = [MEMORY[0x1E69979D8] targetBundleID];
    [v4 setObject:v9 forKeyedSubscript:v10];
  }

  v11 = [v3 extensionContextUUID];

  if (v11)
  {
    v12 = [v3 extensionContextUUID];
    v13 = [MEMORY[0x1E69979D8] extensionContextUUID];
    [v4 setObject:v12 forKeyedSubscript:v13];
  }

  v14 = [v3 attachments];

  if (v14)
  {
    v15 = [v3 attachments];
    v16 = [MEMORY[0x1E69979D8] attachments];
    [v4 setObject:v15 forKeyedSubscript:v16];
  }

  v17 = [v3 locationUUIDs];

  if (v17)
  {
    v18 = [v3 locationUUIDs];
    v19 = [MEMORY[0x1E69979D8] locationUUIDs];
    [v4 setObject:v18 forKeyedSubscript:v19];
  }

  v20 = [v3 photoSuggestedContacts];

  if (v20)
  {
    v21 = [v3 photoSuggestedContacts];
    v22 = [MEMORY[0x1E69979D8] photoSuggestedContacts];
    [v4 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v3 sourceBundleID];

  if (v23)
  {
    v24 = [v3 sourceBundleID];
    v25 = [MEMORY[0x1E69979D8] sourceBundleID];
    [v4 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = [v3 modelSuggestionProxies];

  if (v26)
  {
    v27 = [v3 modelSuggestionProxies];
    v28 = [MEMORY[0x1E69979D8] modelSuggestionProxies];
    [v4 setObject:v27 forKeyedSubscript:v28];
  }

  v29 = [v3 adaptedModelRecipeID];

  if (v29)
  {
    v30 = [v3 adaptedModelRecipeID];
    v31 = [MEMORY[0x1E69979D8] adaptedModelRecipeID];
    [v4 setObject:v30 forKeyedSubscript:v31];
  }

  v32 = [v3 supportedBundleIDs];

  if (v32)
  {
    v33 = [v3 supportedBundleIDs];
    v34 = [MEMORY[0x1E69979D8] supportedBundleIDs];
    [v4 setObject:v33 forKeyedSubscript:v34];
  }

  v35 = [v3 reasonType];

  if (v35)
  {
    v36 = [v3 reasonType];
    v37 = [MEMORY[0x1E69979D8] reasonType];
    [v4 setObject:v36 forKeyedSubscript:v37];
  }

  v38 = [v3 reason];

  if (v38)
  {
    v39 = [v3 reason];
    v40 = [MEMORY[0x1E69979D8] reason];
    [v4 setObject:v39 forKeyedSubscript:v40];
  }

  v41 = [v3 transportBundleID];

  if (v41)
  {
    v42 = [v3 transportBundleID];
    v43 = [MEMORY[0x1E69979D8] transportBundleID];
    [v4 setObject:v42 forKeyedSubscript:v43];
  }

  v44 = [v3 trackingID];

  if (v44)
  {
    v45 = [v3 trackingID];
    v46 = [MEMORY[0x1E69979D8] trackingID];
    [v4 setObject:v45 forKeyedSubscript:v46];
  }

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAdaptedModelUsed")}];
  v48 = [MEMORY[0x1E69979D8] isAdaptedModelUsed];
  [v4 setObject:v47 forKeyedSubscript:v48];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAdaptedModelCreated")}];
  v50 = [MEMORY[0x1E69979D8] isAdaptedModelCreated];
  [v4 setObject:v49 forKeyedSubscript:v50];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "indexSelected")}];
  v52 = [MEMORY[0x1E69979D8] indexSelected];
  [v4 setObject:v51 forKeyedSubscript:v52];

  v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "engagementType")}];
  v54 = [MEMORY[0x1E69979D8] engagementType];
  [v4 setObject:v53 forKeyedSubscript:v54];

  v55 = MEMORY[0x1E696AD98];
  [v3 numberOfVisibleSuggestions];
  v56 = [v55 numberWithDouble:?];
  v57 = [MEMORY[0x1E69979D8] numberOfVisibleSuggestions];
  [v4 setObject:v56 forKeyedSubscript:v57];

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "iCloudFamilyInvocation")}];
  v59 = [MEMORY[0x1E69979D8] iCloudFamilyInvocation];
  [v4 setObject:v58 forKeyedSubscript:v59];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "peopleSuggestionsDisabled")}];
  v61 = [MEMORY[0x1E69979D8] peopleSuggestionsDisabled];
  [v4 setObject:v60 forKeyedSubscript:v61];

  return v4;
}

+ (void)recentInteractionsFromStore:bundleIDs:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, v0, v1, "Error querying interactions database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1B5ED1000, MEMORY[0x1E69E9C10], v0, "Error querying interactions database: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

@end