@interface _PSInteractionStoreUtils
+ (id)allAirDropInteractionsFromStore:(id)store fetchLimit:(unint64_t)limit;
+ (id)conversationIdFromInteraction:(id)interaction;
+ (id)conversationIdFromInteraction:(id)interaction bundleIds:(id)ids;
+ (id)conversationIdWithExactMatchWithContactHandles:(id)handles store:(id)store bundleIds:(id)ids messageInteractionCache:(id)cache;
+ (id)conversationIdWithMaximalIntersectionWithContactIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier;
+ (id)groupInteractionsContainingSearchStringInDisplayName:(id)name excludingInteractionUUIDs:(id)ds account:(id)account directions:(id)directions bundleIds:(id)ids excludedDomainIdentifiers:(id)identifiers startDate:(id)date store:(id)self0 fetchLimit:(unint64_t)self1 offset:(unint64_t)self2;
+ (id)interactionCacheFromStore:(id)store size:(unint64_t)size queryPredicate:(id)predicate filterBlock:(id)block;
+ (id)interactionsContainingSearchStringInDisplayName:(id)name account:(id)account directions:(id)directions bundleIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit;
+ (id)interactionsFromStore:(id)store referenceDate:(id)date withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)directions fetchLimit:(unint64_t)self0;
+ (id)interactionsFromStore:(id)store referenceDate:(id)date withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)directions singleRecipient:(BOOL)self0 fetchLimit:(unint64_t)self1;
+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 singleRecipient:(BOOL)self1 fetchLimit:(unint64_t)self2;
+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 withNsUserName:(id)self1 singleRecipient:(BOOL)self2 excludeAnonymousTemporaryRecipients:(BOOL)self3 fetchLimit:(unint64_t)self4 fetchOffset:(unint64_t)self5 sortAscending:(BOOL)self6;
+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 withNsUserName:(id)self1 singleRecipient:(BOOL)self2 fetchLimit:(unint64_t)self3;
+ (id)interactionsHyperRecentFromReferenceDate:(id)date bundleIds:(id)ids recencyMargin:(double)margin store:(id)store;
+ (id)interactionsMatchingAnyHandles:(id)handles account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)self0;
+ (id)interactionsMatchingAnyHandles:(id)handles directions:(id)directions mechanisms:(id)mechanisms interactionDuration:(double)duration store:(id)store fetchLimit:(unint64_t)limit;
+ (id)interactionsMatchingAnyHandlesOrContactIds:(id)ids identifiers:(id)identifiers account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)self0 messageInteractionCache:(id)self1;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids account:(id)account directions:(id)directions bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)limit singleRecipientOnly:(BOOL)only;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)limit;
+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)cache;
+ (id)interactionsMatchingAnySender:(id)sender store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)cache;
+ (id)interactionsMostRecentForBundleId:(id)id store:(id)store resultLimit:(unint64_t)limit interactions:(id)interactions;
+ (id)interactionsWithContactIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier;
+ (id)metadataFromFeedbackEvent:(id)event;
+ (id)mostRecentInteractionInvolvingMatchingIdentifier:(id)identifier store:(id)store bundleIds:(id)ids;
+ (id)mostRecentInteractionWithExactMatchingIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier;
+ (id)mostRecentInteractionWithRecipientMatchingContactIdentifier:(id)identifier bundleIds:(id)ids store:(id)store singleRecipient:(BOOL)recipient;
+ (id)mostRecentInteractionWithSenderOrRecipientMatchingContactIdentifier:(id)identifier bundleIds:(id)ids store:(id)store singleRecipient:(BOOL)recipient;
+ (id)mostRecentInteractionWithSingleRecipientMatchingContactIdentifier:(id)identifier store:(id)store;
+ (id)mostRecentInteractionWithSingleRecipientMatchingHandle:(id)handle store:(id)store;
+ (id)recentInteractionsFromStore:(id)store bundleIDs:(id)ds;
+ (id)someIMessageInteractionInvolvingContactIdentifier:(id)identifier store:(id)store contactType:(unint64_t)type afterStartDate:(id)date;
+ (id)someInteractionWithMatchingIdentifier:(id)identifier store:(id)store bundleIds:(id)ids afterStartDate:(id)date;
+ (int64_t)getHandleTypeFromHandleString:(id)string;
@end

@implementation _PSInteractionStoreUtils

+ (id)recentInteractionsFromStore:(id)store bundleIDs:(id)ds
{
  v46[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  dsCopy = ds;
  storeCopy = store;
  v35 = [v5 predicateWithFormat:@"(NOT derivedIntentIdentifier == NULL)"];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8BD48];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", dsCopy];
  v10 = MEMORY[0x1E696AB28];
  v39 = dsCopy;
  v40 = v8;
  v46[0] = dsCopy;
  v46[1] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F2D8BD60];
  dsCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", dsCopy];

  v15 = MEMORY[0x1E696AB28];
  v36 = dsCopy2;
  v37 = v13;
  v45[0] = v13;
  v45[1] = dsCopy2;
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
  v29 = [storeCopy queryInteractionsUsingPredicate:v26 sortDescriptors:v28 limit:500 error:&v41];

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

+ (id)interactionCacheFromStore:(id)store size:(unint64_t)size queryPredicate:(id)predicate filterBlock:(id)block
{
  v9 = MEMORY[0x1E695DF70];
  blockCopy = block;
  predicateCopy = predicate;
  storeCopy = store;
  array = [v9 array];
  [array addObject:predicateCopy];

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v15 = [objc_alloc(MEMORY[0x1E69978E8]) initWithInteractionStore:storeCopy size:size queryPredicate:v14 filterBlock:blockCopy];

  return v15;
}

+ (id)interactionsFromStore:(id)store referenceDate:(id)date withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)directions fetchLimit:(unint64_t)self0
{
  directionsCopy = directions;
  bundleIdsCopy = bundleIds;
  idsCopy = ids;
  accountCopy = account;
  mechanismsCopy = mechanisms;
  dateCopy = date;
  storeCopy = store;
  LOBYTE(v25) = 0;
  v23 = [objc_opt_class() interactionsFromStore:storeCopy referenceDate:dateCopy withMechanisms:mechanismsCopy withAccount:accountCopy withBundleIds:idsCopy withTargetBundleIds:bundleIdsCopy withDirections:directionsCopy singleRecipient:v25 fetchLimit:limit];

  return v23;
}

+ (id)interactionsFromStore:(id)store referenceDate:(id)date withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)directions singleRecipient:(BOOL)self0 fetchLimit:(unint64_t)self1
{
  directionsCopy = directions;
  bundleIdsCopy = bundleIds;
  idsCopy = ids;
  accountCopy = account;
  mechanismsCopy = mechanisms;
  dateCopy = date;
  storeCopy = store;
  LOBYTE(v26) = recipient;
  v24 = [objc_opt_class() interactionsFromStore:storeCopy startDate:dateCopy tillDate:0 withMechanisms:mechanismsCopy withAccount:accountCopy withBundleIds:idsCopy withTargetBundleIds:bundleIdsCopy withDirections:directionsCopy singleRecipient:v26 fetchLimit:limit];

  return v24;
}

+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 singleRecipient:(BOOL)self1 fetchLimit:(unint64_t)self2
{
  directionsCopy = directions;
  bundleIdsCopy = bundleIds;
  idsCopy = ids;
  accountCopy = account;
  mechanismsCopy = mechanisms;
  tillDateCopy = tillDate;
  dateCopy = date;
  storeCopy = store;
  LOBYTE(v28) = recipient;
  v26 = [objc_opt_class() interactionsFromStore:storeCopy startDate:dateCopy tillDate:tillDateCopy withMechanisms:mechanismsCopy withAccount:accountCopy withBundleIds:idsCopy withTargetBundleIds:bundleIdsCopy withDirections:directionsCopy withNsUserName:0 singleRecipient:v28 fetchLimit:limit];

  return v26;
}

+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 withNsUserName:(id)self1 singleRecipient:(BOOL)self2 fetchLimit:(unint64_t)self3
{
  nameCopy = name;
  directionsCopy = directions;
  bundleIdsCopy = bundleIds;
  idsCopy = ids;
  accountCopy = account;
  mechanismsCopy = mechanisms;
  tillDateCopy = tillDate;
  dateCopy = date;
  storeCopy = store;
  LOBYTE(v31) = 0;
  BYTE1(v30) = 1;
  LOBYTE(v30) = recipient;
  v28 = [objc_opt_class() interactionsFromStore:storeCopy startDate:dateCopy tillDate:tillDateCopy withMechanisms:mechanismsCopy withAccount:accountCopy withBundleIds:idsCopy withTargetBundleIds:bundleIdsCopy withDirections:directionsCopy withNsUserName:nameCopy singleRecipient:v30 excludeAnonymousTemporaryRecipients:limit fetchLimit:0 fetchOffset:v31 sortAscending:?];

  return v28;
}

+ (id)interactionsFromStore:(id)store startDate:(id)date tillDate:(id)tillDate withMechanisms:(id)mechanisms withAccount:(id)account withBundleIds:(id)ids withTargetBundleIds:(id)bundleIds withDirections:(id)self0 withNsUserName:(id)self1 singleRecipient:(BOOL)self2 excludeAnonymousTemporaryRecipients:(BOOL)self3 fetchLimit:(unint64_t)self4 fetchOffset:(unint64_t)self5 sortAscending:(BOOL)self6
{
  v59[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  tillDateCopy = tillDate;
  mechanismsCopy = mechanisms;
  v24 = dateCopy;
  v57 = mechanismsCopy;
  accountCopy = account;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  directionsCopy = directions;
  nameCopy = name;
  v27 = MEMORY[0x1E695DF70];
  storeCopy = store;
  array = [v27 array];
  if (v24)
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@)", v24];
    [array addObject:v30];
  }

  if (tillDateCopy)
  {
    tillDateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate <= %@)", tillDateCopy];
    [array addObject:tillDateCopy];
  }

  if (v57)
  {
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", v57];
    [array addObject:v32];
  }

  if (idsCopy)
  {
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", idsCopy];
    [array addObject:idsCopy];
  }

  if (accountCopy)
  {
    v34 = MEMORY[0x1E696AE18];
    v35 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v36 = [v34 predicateWithFormat:@"(account IN %@)", v35];

    [array addObject:v36];
  }

  if (bundleIdsCopy)
  {
    bundleIdsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(targetBundleId IN %@)", bundleIdsCopy];
    [array addObject:bundleIdsCopy];
  }

  if (directionsCopy)
  {
    directionsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction IN %@)", directionsCopy];
    [array addObject:directionsCopy];
  }

  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(nsUserName == nil OR nsUserName == %@ OR nsUserName == %@)", @"root", nameCopy];
    [array addObject:nameCopy];
  }

  v40 = directionsCopy;
  if (recipient)
  {
    v41 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(recipientCount == 1)"];
    [array addObject:v41];
  }

  v42 = tillDateCopy;
  v53 = v24;
  if (recipients)
  {
    v43 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.identifier BEGINSWITH %@).@count == 0)", @"temp:"];
    [array addObject:v43];
  }

  v44 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:ascending];
  v59[0] = v45;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
  v58 = 0;
  v47 = [storeCopy queryInteractionsUsingPredicate:v44 sortDescriptors:v46 limit:limit offset:offset error:&v58];

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

+ (id)interactionsHyperRecentFromReferenceDate:(id)date bundleIds:(id)ids recencyMargin:(double)margin store:(id)store
{
  v35[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  idsCopy = ids;
  v11 = MEMORY[0x1E695DF70];
  storeCopy = store;
  array = [v11 array];
  if (idsCopy)
  {
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", idsCopy];
    [array addObject:idsCopy];
  }

  if (dateCopy)
  {
    v15 = MEMORY[0x1E696AE18];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:-margin];
    v17 = [v15 predicateWithFormat:@"(startDate >= %@)", v16];

    v18 = MEMORY[0x1E696AE18];
    v19 = [MEMORY[0x1E695DF00] dateWithTimeInterval:dateCopy sinceDate:-0.5];
    v20 = [v18 predicateWithFormat:@"(startDate <= %@)", v19];

    v21 = MEMORY[0x1E696AB28];
    v35[0] = v17;
    v35[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [array addObject:v23];
  }

  v24 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v34 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v33 = 0;
  v27 = [storeCopy queryInteractionsUsingPredicate:v24 sortDescriptors:v26 limit:1 error:&v33];

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

+ (id)mostRecentInteractionWithSenderOrRecipientMatchingContactIdentifier:(id)identifier bundleIds:(id)ids store:(id)store singleRecipient:(BOOL)recipient
{
  recipientCopy = recipient;
  v37[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  idsCopy = ids;
  storeCopy = store;
  if ([identifierCopy length])
  {
    if (recipientCopy)
    {
      v12 = @"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    else
    {
      v12 = @"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:v12, identifierCopy];
    identifierCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.personId == %@", identifierCopy];
    v15 = MEMORY[0x1E696AB28];
    v31 = identifierCopy2;
    v32 = identifierCopy;
    v37[0] = identifierCopy2;
    v37[1] = identifierCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v17 = [v15 orPredicateWithSubpredicates:v16];

    v33 = idsCopy;
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", idsCopy];
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C5D0];
    v20 = MEMORY[0x1E696AB28];
    v36[0] = v17;
    v36[1] = idsCopy;
    v36[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
    v22 = [v20 andPredicateWithSubpredicates:v21];

    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v35 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v34 = 0;
    v25 = [storeCopy queryInteractionsUsingPredicate:v22 sortDescriptors:v24 limit:1 error:&v34];
    v26 = v34;

    if (v26)
    {
      v27 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      firstObject = 0;
    }

    else
    {
      firstObject = [v25 firstObject];
    }

    idsCopy = v33;
  }

  else
  {
    firstObject = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)mostRecentInteractionWithRecipientMatchingContactIdentifier:(id)identifier bundleIds:(id)ids store:(id)store singleRecipient:(BOOL)recipient
{
  recipientCopy = recipient;
  v30[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  idsCopy = ids;
  storeCopy = store;
  if ([identifierCopy length])
  {
    if (recipientCopy)
    {
      v12 = @"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    else
    {
      v12 = @"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0";
    }

    identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:v12, identifierCopy];
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", idsCopy];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism IN %@)", &unk_1F2D8C5E8];
    v16 = MEMORY[0x1E696AB28];
    v27 = identifierCopy;
    v30[0] = identifierCopy;
    v30[1] = idsCopy;
    v30[2] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v29 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v28 = 0;
    v21 = [storeCopy queryInteractionsUsingPredicate:v18 sortDescriptors:v20 limit:1 error:&v28];
    v22 = v28;

    if (v22)
    {
      v23 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      firstObject = 0;
    }

    else
    {
      firstObject = [v21 firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)mostRecentInteractionWithSingleRecipientMatchingContactIdentifier:(id)identifier store:(id)store
{
  v24[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  storeCopy = store;
  if ([identifierCopy length])
  {
    identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount == 1 AND SUBQUERY(recipients, $recipient, ANY $recipient.personId == %@).@count > 0", identifierCopy];
    v8 = MEMORY[0x1E696AE18];
    v9 = +[_PSConstants eligibleShareSheetTargets];
    v10 = [v8 predicateWithFormat:@"(bundleId IN %@)", v9];

    v11 = MEMORY[0x1E696AB28];
    v24[0] = identifierCopy;
    v24[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v23 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v22 = 0;
    v16 = [storeCopy queryInteractionsUsingPredicate:v13 sortDescriptors:v15 limit:500 error:&v22];
    v17 = v22;

    if (v17)
    {
      v18 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
      }

      firstObject = 0;
    }

    else
    {
      firstObject = [v16 firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)mostRecentInteractionWithSingleRecipientMatchingHandle:(id)handle store:(id)store
{
  v13[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  storeCopy = store;
  if (handleCopy && ![handleCopy length])
  {
    v13[0] = handleCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [self interactionsMatchingAnyHandlesOrDomainIds:v9 account:0 directions:&unk_1F2D8C600 mechanisms:0 bundleIds:0 store:storeCopy fetchLimit:1];
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)limit
{
  v76 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  accountCopy = account;
  directionsCopy = directions;
  mechanismsCopy = mechanisms;
  bundleIdsCopy = bundleIds;
  storeCopy = store;
  array = [MEMORY[0x1E695DF70] array];
  if (bundleIdsCopy)
  {
    v20 = MEMORY[0x1E696AE18];
    v21 = [MEMORY[0x1E695DFD8] setWithArray:bundleIdsCopy];
    v22 = [v20 predicateWithFormat:@"(bundleId IN %@)", v21];

    [array addObject:v22];
  }

  if (accountCopy)
  {
    v23 = MEMORY[0x1E696AE18];
    v24 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v25 = [v23 predicateWithFormat:@"(account IN %@)", v24];

    [array addObject:v25];
  }

  if (directionsCopy)
  {
    v26 = MEMORY[0x1E696AE18];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v28 = [v26 predicateWithFormat:@"(direction IN %@)", v27];

    [array addObject:v28];
  }

  v29 = 0x1E696A000;
  v66 = array;
  if (idsCopy)
  {
    v62 = bundleIdsCopy;
    v63 = mechanismsCopy;
    v64 = accountCopy;
    v30 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:idsCopy];
    v31 = MEMORY[0x1E695DFD8];
    v61 = v30;
    allValues = [v30 allValues];
    v33 = [v31 setWithArray:allValues];
    v34 = [v33 mutableCopy];

    v60 = v34;
    v59 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v34];
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", idsCopy];
    v35 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v65 = idsCopy;
    v36 = idsCopy;
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
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v43 = [v41 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)", v43];
          [v35 addObject:v44];
        }

        v38 = [v36 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v38);
    }

    v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"derivedIntentIdentifier IN %@", v35];
    v46 = MEMORY[0x1E696AB28];
    v74[0] = idsCopy;
    v74[1] = v59;
    v74[2] = v45;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v48 = [v46 orPredicateWithSubpredicates:v47];
    [array addObject:v48];

    v29 = 0x1E696A000uLL;
    accountCopy = v64;
    idsCopy = v65;
    mechanismsCopy = v63;
    bundleIdsCopy = v62;
  }

  if (mechanismsCopy)
  {
    mechanismsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", mechanismsCopy];
    [array addObject:mechanismsCopy];
  }

  v50 = [*(v29 + 2856) andPredicateWithSubpredicates:array];
  v51 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v73 = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v68 = 0;
  v53 = [storeCopy queryInteractionsUsingPredicate:v50 sortDescriptors:v52 limit:limit error:&v68];
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

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)cache
{
  v59 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  storeCopy = store;
  cacheCopy = cache;
  array = [MEMORY[0x1E695DF70] array];
  v13 = array;
  v14 = 0x1E696A000;
  v15 = 0x1E695D000;
  if (idsCopy)
  {
    limitCopy = limit;
    v48 = array;
    v49 = storeCopy;
    v16 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:idsCopy];
    v17 = MEMORY[0x1E695DFD8];
    v46 = v16;
    allValues = [v16 allValues];
    v19 = [v17 setWithArray:allValues];
    v20 = [v19 mutableCopy];

    v45 = v20;
    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v20];
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", idsCopy];
    v21 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v50 = idsCopy;
    v22 = idsCopy;
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
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v29 = [v27 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

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
    v57[0] = idsCopy;
    v57[1] = v44;
    v57[2] = v31;
    v15 = 0x1E695D000uLL;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    v34 = [v32 orPredicateWithSubpredicates:v33];
    v13 = v48;
    [v48 addObject:v34];

    storeCopy = v49;
    idsCopy = v50;
    limit = limitCopy;
  }

  v35 = [*(v14 + 2856) andPredicateWithSubpredicates:v13];
  if (cacheCopy)
  {
    interactions = [cacheCopy interactions];
    v37 = [interactions filteredArrayUsingPredicate:v35];
  }

  else
  {
    interactions = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v56 = interactions;
    v38 = [*(v15 + 3784) arrayWithObjects:&v56 count:1];
    v51 = 0;
    v39 = [storeCopy queryInteractionsUsingPredicate:v35 sortDescriptors:v38 limit:limit error:&v51];
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

+ (id)interactionsMatchingAnyHandlesOrDomainIds:(id)ids account:(id)account directions:(id)directions bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)limit singleRecipientOnly:(BOOL)only
{
  v49[2] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  accountCopy = account;
  directionsCopy = directions;
  bundleIdsCopy = bundleIds;
  v16 = MEMORY[0x1E695DF70];
  storeCopy = store;
  array = [v16 array];
  if (bundleIdsCopy)
  {
    v19 = MEMORY[0x1E696AE18];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:bundleIdsCopy];
    v21 = [v19 predicateWithFormat:@"(bundleId IN %@)", v20];

    [array addObject:v21];
  }

  if (accountCopy)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v24 = [v22 predicateWithFormat:@"(account IN %@)", v23];

    [array addObject:v24];
  }

  if (directionsCopy)
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v27 = [v25 predicateWithFormat:@"(direction IN %@)", v26];

    [array addObject:v27];
  }

  v45 = accountCopy;
  if (only)
  {
    v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount == 1"];
    [array addObject:v28];
  }

  if (idsCopy)
  {
    idsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", idsCopy];
    idsCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier IN %@", idsCopy];
    v31 = MEMORY[0x1E696AB28];
    v49[0] = idsCopy2;
    v49[1] = idsCopy;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    v33 = [v31 orPredicateWithSubpredicates:v32];
    [array addObject:v33];
  }

  v34 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v35 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v48 = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v47 = 0;
  v37 = [storeCopy queryInteractionsUsingPredicate:v34 sortDescriptors:v36 limit:limit error:&v47];

  v38 = v47;
  if (v38)
  {
    v39 = directionsCopy;
    v40 = bundleIdsCopy;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrDomainIds:account:directions:mechanisms:bundleIds:store:fetchLimit:];
    }

    v41 = 0;
  }

  else
  {
    v41 = v37;
    v39 = directionsCopy;
    v40 = bundleIdsCopy;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

+ (id)allAirDropInteractionsFromStore:(id)store fetchLimit:(unint64_t)limit
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  storeCopy = store;
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
  v14 = [storeCopy queryInteractionsUsingPredicate:v11 sortDescriptors:v13 limit:limit error:&v19];

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

+ (id)interactionsMatchingAnySender:(id)sender store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)cache
{
  v25[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  storeCopy = store;
  cacheCopy = cache;
  array = [MEMORY[0x1E695DF70] array];
  if (senderCopy)
  {
    senderCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.identifier IN %@", senderCopy];
    [array addObject:senderCopy];
  }

  v14 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  if (cacheCopy)
  {
    interactions = [cacheCopy interactions];
    v16 = [interactions filteredArrayUsingPredicate:v14];
  }

  else
  {
    v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v25[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v24 = 0;
    v19 = [storeCopy queryInteractionsUsingPredicate:v14 sortDescriptors:v18 limit:limit error:&v24];
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

+ (id)interactionsMatchingAnyHandles:(id)handles directions:(id)directions mechanisms:(id)mechanisms interactionDuration:(double)duration store:(id)store fetchLimit:(unint64_t)limit
{
  v41[1] = *MEMORY[0x1E69E9840];
  directionsCopy = directions;
  mechanismsCopy = mechanisms;
  storeCopy = store;
  v16 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:handles];
  v17 = MEMORY[0x1E695DFD8];
  allValues = [v16 allValues];
  v19 = [v17 setWithArray:allValues];
  v20 = [v19 mutableCopy];

  array = [MEMORY[0x1E695DF70] array];
  if (directionsCopy)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v24 = [v22 predicateWithFormat:@"(direction IN %@)", v23];

    [array addObject:v24];
  }

  allObjects = [v20 allObjects];

  if (allObjects)
  {
    v26 = MEMORY[0x1E696AE18];
    allObjects2 = [v20 allObjects];
    v28 = [v26 predicateWithFormat:@"ANY recipients.identifier IN %@", allObjects2];

    [array addObject:v28];
  }

  if (mechanismsCopy)
  {
    mechanismsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", mechanismsCopy];
    [array addObject:mechanismsCopy];
  }

  if (duration > 0.0)
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"endDate - startDate >= %f", *&duration];
    [array addObject:v30];
  }

  v31 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v32 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v41[0] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v40 = 0;
  v34 = [storeCopy queryInteractionsUsingPredicate:v31 sortDescriptors:v33 limit:limit error:&v40];

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

+ (id)interactionsMatchingAnyHandles:(id)handles account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit messageInteractionCache:(id)self0
{
  v45[1] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  accountCopy = account;
  directionsCopy = directions;
  mechanismsCopy = mechanisms;
  idsCopy = ids;
  storeCopy = store;
  cacheCopy = cache;
  array = [MEMORY[0x1E695DF70] array];
  if (idsCopy)
  {
    v21 = MEMORY[0x1E696AE18];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:idsCopy];
    v23 = [v21 predicateWithFormat:@"(bundleId IN %@)", v22];

    [array addObject:v23];
  }

  if (accountCopy)
  {
    v24 = MEMORY[0x1E696AE18];
    v25 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v26 = [v24 predicateWithFormat:@"(account IN %@)", v25];

    [array addObject:v26];
  }

  if (directionsCopy)
  {
    v27 = MEMORY[0x1E696AE18];
    v28 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v29 = [v27 predicateWithFormat:@"(direction IN %@)", v28];

    [array addObject:v29];
  }

  if (handlesCopy)
  {
    handlesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", handlesCopy];
    [array addObject:handlesCopy];
  }

  if (mechanismsCopy)
  {
    mechanismsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", mechanismsCopy];
    [array addObject:mechanismsCopy];
  }

  v32 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  if (cacheCopy)
  {
    interactions = [cacheCopy interactions];
    v34 = [interactions filteredArrayUsingPredicate:v32];
  }

  else
  {
    v41 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v45[0] = v41;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v44 = 0;
    v36 = [storeCopy queryInteractionsUsingPredicate:v32 sortDescriptors:v35 limit:limit error:&v44];
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

+ (id)interactionsMatchingAnyHandlesOrContactIds:(id)ids identifiers:(id)identifiers account:(id)account directions:(id)directions mechanisms:(id)mechanisms bundleIds:(id)bundleIds store:(id)store fetchLimit:(unint64_t)self0 messageInteractionCache:(id)self1
{
  v87 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  identifiersCopy = identifiers;
  accountCopy = account;
  directionsCopy = directions;
  mechanismsCopy = mechanisms;
  bundleIdsCopy = bundleIds;
  storeCopy = store;
  cacheCopy = cache;
  array = [MEMORY[0x1E695DF70] array];
  v23 = 0x1E696A000;
  if (bundleIdsCopy)
  {
    v24 = MEMORY[0x1E696AE18];
    v25 = [MEMORY[0x1E695DFD8] setWithArray:bundleIdsCopy];
    v26 = [v24 predicateWithFormat:@"(bundleId IN %@)", v25];

    [array addObject:v26];
    v23 = 0x1E696A000;
  }

  if (accountCopy)
  {
    v27 = MEMORY[0x1E696AE18];
    v28 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v29 = [v27 predicateWithFormat:@"(account IN %@)", v28];

    [array addObject:v29];
    v23 = 0x1E696A000;
  }

  if (directionsCopy)
  {
    v30 = MEMORY[0x1E696AE18];
    v31 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v32 = [v30 predicateWithFormat:@"(direction IN %@)", v31];

    [array addObject:v32];
    v23 = 0x1E696A000uLL;
  }

  v33 = 0x1E696A000;
  v78 = array;
  v74 = bundleIdsCopy;
  v75 = mechanismsCopy;
  if (idsCopy)
  {
    v70 = directionsCopy;
    v71 = accountCopy;
    v72 = identifiersCopy;
    v34 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:idsCopy];
    v35 = v23;
    v36 = MEMORY[0x1E695DFD8];
    v69 = v34;
    allValues = [v34 allValues];
    v38 = [v36 setWithArray:allValues];
    v39 = [v38 mutableCopy];

    v68 = v39;
    v67 = [*(v35 + 3608) predicateWithFormat:@"ANY recipients.identifier IN %@", v39];
    v40 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v73 = idsCopy;
    v41 = idsCopy;
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
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v48 = [v46 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

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

    array = v78;
    v23 = 0x1E696A000uLL;

    v33 = 0x1E696A000uLL;
    identifiersCopy = v72;
    idsCopy = v73;
    directionsCopy = v70;
    accountCopy = v71;
    mechanismsCopy = v75;
  }

  if (identifiersCopy)
  {
    identifiersCopy = [*(v23 + 3608) predicateWithFormat:@"ANY recipients.personId IN %@", identifiersCopy];
    [array addObject:identifiersCopy];
  }

  if (mechanismsCopy)
  {
    mechanismsCopy = [*(v23 + 3608) predicateWithFormat:@"mechanism IN %@", mechanismsCopy];
    [array addObject:mechanismsCopy];
  }

  v56 = [*(v33 + 2856) andPredicateWithSubpredicates:array];
  v57 = cacheCopy;
  if (cacheCopy)
  {
    interactions = [cacheCopy interactions];
    v59 = [interactions filteredArrayUsingPredicate:v56];
  }

  else
  {
    v60 = directionsCopy;
    interactions = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v84 = interactions;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v79 = 0;
    v62 = [storeCopy queryInteractionsUsingPredicate:v56 sortDescriptors:v61 limit:limit error:&v79];
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

    directionsCopy = v60;
    bundleIdsCopy = v74;
    mechanismsCopy = v75;
  }

  v65 = *MEMORY[0x1E69E9840];

  return v59;
}

+ (id)interactionsContainingSearchStringInDisplayName:(id)name account:(id)account directions:(id)directions bundleIds:(id)ids store:(id)store fetchLimit:(unint64_t)limit
{
  v40[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  accountCopy = account;
  directionsCopy = directions;
  idsCopy = ids;
  v16 = MEMORY[0x1E695DF70];
  storeCopy = store;
  array = [v16 array];
  if (idsCopy)
  {
    v19 = MEMORY[0x1E696AE18];
    v20 = [MEMORY[0x1E695DFD8] setWithArray:idsCopy];
    v21 = [v19 predicateWithFormat:@"(bundleId IN %@)", v20];

    [array addObject:v21];
  }

  if (accountCopy)
  {
    v22 = MEMORY[0x1E696AE18];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:accountCopy];
    v24 = [v22 predicateWithFormat:@"(account IN %@)", v23];

    [array addObject:v24];
  }

  if (directionsCopy)
  {
    v25 = MEMORY[0x1E696AE18];
    v26 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v27 = [v25 predicateWithFormat:@"(direction IN %@)", v26];

    [array addObject:v27];
  }

  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"recipientCount > 0 AND SUBQUERY(recipients, $recipient, ANY $recipient.displayName CONTAINS[cd] %@).@count > 0", nameCopy];
    [array addObject:nameCopy];
  }

  v29 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v40[0] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v39 = 0;
  v32 = [storeCopy queryInteractionsUsingPredicate:v29 sortDescriptors:v31 limit:limit error:&v39];

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

+ (id)groupInteractionsContainingSearchStringInDisplayName:(id)name excludingInteractionUUIDs:(id)ds account:(id)account directions:(id)directions bundleIds:(id)ids excludedDomainIdentifiers:(id)identifiers startDate:(id)date store:(id)self0 fetchLimit:(unint64_t)self1 offset:(unint64_t)self2
{
  v74[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dsCopy = ds;
  accountCopy = account;
  directionsCopy = directions;
  idsCopy = ids;
  identifiersCopy = identifiers;
  dateCopy = date;
  storeCopy = store;
  array = [MEMORY[0x1E695DF70] array];
  v22 = MEMORY[0x1E696AE18];
  v23 = NSUserName();
  v24 = [v22 predicateWithFormat:@"(noindex:(nsUserName) = %@)", v23];

  v64 = v24;
  [array addObject:v24];
  if (dateCopy)
  {
    dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate > %@)", dateCopy];
    [array addObject:dateCopy];
  }

  v68 = dateCopy;
  if ([dsCopy count])
  {
    v26 = MEMORY[0x1E696AE18];
    v27 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
    v28 = [v26 predicateWithFormat:@"(uuid != %@)", v27];

    [array addObject:v28];
  }

  if (idsCopy)
  {
    v29 = @"(noindex:(bundleId) IN %@)";
    if (!dateCopy)
    {
      v29 = @"(bundleId IN %@)";
    }

    v30 = MEMORY[0x1E696AE18];
    v31 = MEMORY[0x1E695DFD8];
    v32 = directionsCopy;
    v33 = v29;
    v34 = [v31 setWithArray:idsCopy];
    v35 = [v30 predicateWithFormat:v33, v34];

    directionsCopy = v32;
    [array addObject:v35];
  }

  if (accountCopy)
  {
    v36 = MEMORY[0x1E696AE18];
    v37 = [MEMORY[0x1E695DFD8] setWithObject:?];
    v38 = [v36 predicateWithFormat:@"(account IN %@)", v37];

    [array addObject:v38];
  }

  if (directionsCopy)
  {
    v39 = MEMORY[0x1E696AE18];
    v40 = [MEMORY[0x1E695DFD8] setWithArray:directionsCopy];
    v41 = [v39 predicateWithFormat:@"(direction IN %@)", v40];

    [array addObject:v41];
  }

  v66 = directionsCopy;
  v67 = dsCopy;
  v42 = identifiersCopy;
  if ([identifiersCopy count])
  {
    identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(domainIdentifier IN %@)", identifiersCopy];
    [array addObject:identifiersCopy];
  }

  v44 = 0x1E695D000;
  if (nameCopy)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = [@" " stringByAppendingString:nameCopy];
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(   (recipientCount > 1)   OR    (recipientCount >= 1 AND sender != nil)) AND(  (SUBQUERY(recipients, $recipient, ANY $recipient.displayName BEGINSWITH[cd] %@).@count > 0)   OR    (direction != %d AND sender != nil AND sender.displayName BEGINSWITH[cd] %@))", nameCopy, 1, nameCopy];
    v48 = objc_alloc(MEMORY[0x1E696AEC0]);
    v49 = [MEMORY[0x1E696AE70] escapedPatternForString:nameCopy];
    v50 = [v48 initWithFormat:@"(^|.*(?w:\\b))(?:.\\N{VARIATION SELECTOR-16})?\\P{alnum}+(?i)%@.*", v49];

    v51 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(groupName BEGINSWITH[cd] %@ OR groupName CONTAINS[cd] %@ OR groupName MATCHES %@)", nameCopy, v46, v50];
    v52 = MEMORY[0x1E696AB28];
    v74[0] = v51;
    v74[1] = nameCopy;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v54 = [v52 orPredicateWithSubpredicates:v53];
    [array addObject:v54];

    v42 = identifiersCopy;
    v44 = 0x1E695D000uLL;

    objc_autoreleasePoolPop(v45);
  }

  v55 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  v56 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v73 = v56;
  v57 = [*(v44 + 3784) arrayWithObjects:&v73 count:1];
  v72 = 0;
  v58 = [storeCopy queryInteractionsUsingPredicate:v55 sortDescriptors:v57 limit:limit offset:offset error:&v72];
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

+ (id)interactionsMostRecentForBundleId:(id)id store:(id)store resultLimit:(unint64_t)limit interactions:(id)interactions
{
  v56[1] = *MEMORY[0x1E69E9840];
  idCopy = id;
  storeCopy = store;
  interactionsCopy = interactions;
  array = [MEMORY[0x1E695DF70] array];
  if (idCopy)
  {
    v47 = interactionsCopy;
    v13 = MEMORY[0x1E696AE18];
    v14 = MEMORY[0x1E695DFD8];
    v45 = idCopy;
    v56[0] = idCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    v16 = [v14 setWithArray:v15];
    v17 = [v13 predicateWithFormat:@"(bundleId IN %@)", v16];

    v18 = MEMORY[0x1E696AE18];
    v19 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8C618];
    v20 = [v18 predicateWithFormat:@"(direction IN %@)", v19];

    v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v46 = storeCopy;
    v43 = v21;
    v44 = v20;
    if (interactionsCopy)
    {
      v22 = [interactionsCopy filteredArrayUsingPredicate:v17];
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
      v22 = [storeCopy queryInteractionsUsingPredicate:v26 sortDescriptors:v27 limit:500 error:&v52];
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
        domainIdentifier = [v34 domainIdentifier];

        if (domainIdentifier)
        {
          domainIdentifier2 = [v34 domainIdentifier];
          v37 = [array containsObject:domainIdentifier2];

          if ((v37 & 1) == 0)
          {
            domainIdentifier3 = [v34 domainIdentifier];
            [array addObject:domainIdentifier3];
          }
        }

        v17 = v33;
        if ([array count] >= limit)
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

    storeCopy = v46;
    interactionsCopy = v47;
    idCopy = v45;
  }

  v39 = [array copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)conversationIdFromInteraction:(id)interaction bundleIds:(id)ids
{
  interactionCopy = interaction;
  idsCopy = ids;
  if (!idsCopy)
  {
    domainIdentifier = [self conversationIdFromInteraction:interactionCopy];
LABEL_7:
    v14 = domainIdentifier;
    goto LABEL_8;
  }

  bundleId = [interactionCopy bundleId];
  v9 = +[_PSConstants mobileMessagesBundleId];
  if ([bundleId isEqualToString:v9])
  {

LABEL_6:
    domainIdentifier = [interactionCopy domainIdentifier];
    goto LABEL_7;
  }

  targetBundleId = [interactionCopy targetBundleId];
  v12 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v13 = [targetBundleId isEqualToString:v12];

  if (v13)
  {
    goto LABEL_6;
  }

  bundleId2 = [interactionCopy bundleId];
  v17 = +[_PSConstants mobileMailBundleId];
  if ([bundleId2 isEqualToString:v17])
  {

LABEL_14:
    v21 = MEMORY[0x1E69978D0];
    recipients = [interactionCopy recipients];
    v14 = [v21 generateConversationIdFromInteractionRecipients:recipients];

    goto LABEL_8;
  }

  targetBundleId2 = [interactionCopy targetBundleId];
  v19 = +[_PSConstants shareSheetTargetBundleIdMail];
  v20 = [targetBundleId2 isEqualToString:v19];

  if (v20)
  {
    goto LABEL_14;
  }

  bundleId3 = [interactionCopy bundleId];
  if ([idsCopy containsObject:bundleId3])
  {

LABEL_18:
    domainIdentifier = [interactionCopy derivedIntentIdentifier];
    goto LABEL_7;
  }

  targetBundleId3 = [interactionCopy targetBundleId];
  v25 = [idsCopy containsObject:targetBundleId3];

  if (v25)
  {
    goto LABEL_18;
  }

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)conversationIdFromInteraction:(id)interaction
{
  interactionCopy = interaction;
  bundleId = [interactionCopy bundleId];
  v5 = +[_PSConstants mobileMessagesBundleId];
  if ([bundleId isEqualToString:v5])
  {

LABEL_4:
    domainIdentifier = [interactionCopy domainIdentifier];
LABEL_5:
    v10 = domainIdentifier;
    goto LABEL_6;
  }

  targetBundleId = [interactionCopy targetBundleId];
  v7 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v8 = [targetBundleId isEqualToString:v7];

  if (v8)
  {
    goto LABEL_4;
  }

  bundleId2 = [interactionCopy bundleId];
  v13 = +[_PSConstants mobileMailBundleId];
  if ([bundleId2 isEqualToString:v13])
  {
  }

  else
  {
    targetBundleId2 = [interactionCopy targetBundleId];
    v15 = +[_PSConstants shareSheetTargetBundleIdMail];
    v16 = [targetBundleId2 isEqualToString:v15];

    if (!v16)
    {
      domainIdentifier = [interactionCopy derivedIntentIdentifier];
      goto LABEL_5;
    }
  }

  v17 = MEMORY[0x1E69978D0];
  recipients = [interactionCopy recipients];
  v10 = [v17 generateConversationIdFromInteractionRecipients:recipients];

LABEL_6:

  return v10;
}

+ (id)interactionsWithContactIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier
{
  v36[3] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idsCopy = ids;
  identifierCopy = identifier;
  v12 = [identifiers mutableCopy];
  v13 = v12;
  if (identifierCopy)
  {
    [v12 removeObject:identifierCopy];
  }

  if ([v13 count] >= 2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v32 = [MEMORY[0x1E695DFD8] setWithArray:idsCopy];
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
    [array addObjectsFromArray:v21];

    v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v35 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v33 = storeCopy;
    v34 = 0;
    v25 = [storeCopy queryInteractionsUsingPredicate:v22 sortDescriptors:v24 limit:1000 error:&v34];
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

    storeCopy = v33;
  }

  else
  {
    v14 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)conversationIdWithMaximalIntersectionWithContactIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier
{
  v63 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  idsCopy = ids;
  identifierCopy = identifier;
  v12 = 0x1E7C23000uLL;
  v46 = identifiersCopy;
  v13 = [_PSInteractionStoreUtils interactionsWithContactIdentifiers:identifiersCopy store:store bundleIds:idsCopy meContactIdentifier:identifierCopy];
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
      v45 = idsCopy;
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
          v21 = [*(v12 + 1288) conversationIdFromInteraction:v20 bundleIds:{idsCopy, v41}];
          if (v21 && ([v15 containsObject:v21] & 1) == 0)
          {
            v52 = v21;
            v22 = [MEMORY[0x1E695DFA8] set];
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v49 = v20;
            recipients = [v20 recipients];
            v24 = [recipients countByEnumeratingWithState:&v53 objects:v61 count:16];
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
                    objc_enumerationMutation(recipients);
                  }

                  v28 = *(*(&v53 + 1) + 8 * i);
                  personId = [v28 personId];
                  if (personId)
                  {
                    v30 = personId;
                    personId2 = [v28 personId];

                    if (personId2 != identifierCopy)
                    {
                      personId3 = [v28 personId];
                      [v22 addObject:personId3];
                    }
                  }
                }

                v25 = [recipients countByEnumeratingWithState:&v53 objects:v61 count:16];
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
              idsCopy = v45;
              v12 = 0x1E7C23000;
              v18 = v43;
              v17 = v47;
              v21 = v52;
              if (((v51 | v37) & 1) == 0)
              {
                bundleId = [v49 bundleId];
                [v42 setObject:v52 forKeyedSubscript:bundleId];

                v50 = [v22 count];
                v51 = 1;
              }
            }

            else
            {
              v35 = v33 == v34;
              bundleId2 = [v49 bundleId];
              v21 = v52;
              [v42 setObject:v52 forKeyedSubscript:bundleId2];

              v50 = [v22 count];
              v51 |= v35;
              v15 = v44;
              idsCopy = v45;
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

+ (id)conversationIdWithExactMatchWithContactHandles:(id)handles store:(id)store bundleIds:(id)ids messageInteractionCache:(id)cache
{
  v64 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  storeCopy = store;
  idsCopy = ids;
  cacheCopy = cache;
  v52 = handlesCopy;
  allObjects = [handlesCopy allObjects];
  v14 = [_PSContactResolver normalizedHandlesDictionaryFromHandles:allObjects];

  v15 = MEMORY[0x1E695DFD8];
  allValues = [v14 allValues];
  v17 = [v15 setWithArray:allValues];
  v18 = [v17 mutableCopy];

  v19 = 0x1E7C23000uLL;
  allObjects2 = [v18 allObjects];
  v21 = [_PSInteractionStoreUtils interactionsMatchingAnyHandles:allObjects2 account:0 directions:0 mechanisms:0 bundleIds:idsCopy store:storeCopy fetchLimit:500 messageInteractionCache:cacheCopy];

  if (v21 && [v21 count])
  {
    v43 = v18;
    v44 = v14;
    v45 = cacheCopy;
    v46 = storeCopy;
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
      v50 = idsCopy;
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
          v28 = [*(v19 + 1288) conversationIdFromInteraction:v27 bundleIds:idsCopy];
          if (v28 && ([v22 containsObject:v28] & 1) == 0)
          {
            v29 = [MEMORY[0x1E695DFA8] set];
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            recipients = [v27 recipients];
            v31 = [recipients countByEnumeratingWithState:&v54 objects:v62 count:16];
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
                    objc_enumerationMutation(recipients);
                  }

                  v35 = *(*(&v54 + 1) + 8 * i);
                  handle = [v35 handle];

                  if (handle)
                  {
                    handle2 = [v35 handle];
                    [v29 addObject:handle2];
                  }
                }

                v32 = [recipients countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v32);
            }

            if ([v29 isEqualToSet:v52])
            {
              bundleId = [v27 bundleId];
              [v47 setObject:v28 forKeyedSubscript:bundleId];

              v22 = v49;
              idsCopy = v50;
              goto LABEL_26;
            }

            v22 = v49;
            [v49 addObject:v28];

            idsCopy = v50;
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

    cacheCopy = v45;
    storeCopy = v46;
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

+ (id)someIMessageInteractionInvolvingContactIdentifier:(id)identifier store:(id)store contactType:(unint64_t)type afterStartDate:(id)date
{
  v33[4] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  storeCopy = store;
  identifierCopy = identifier;
  date = [v9 predicateWithFormat:@"(startDate >= %@)", date];
  v13 = MEMORY[0x1E696AE18];
  v14 = +[_PSConstants mobileMessagesBundleId];
  v15 = [v13 predicateWithFormat:@"(bundleId = %@)", v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier BEGINSWITH 'iMessage')"];
  v17 = MEMORY[0x1E696AE18];
  v18 = NSUserName();
  v19 = [v17 predicateWithFormat:@"(nsUserName = nil OR nsUserName = %@ OR nsUserName = %@)", @"root", v18];

  v20 = MEMORY[0x1E695DF70];
  v33[0] = date;
  v33[1] = v15;
  v33[2] = v16;
  v33[3] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  v22 = [v20 arrayWithArray:v21];

  if (type - 1 > 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@).@count > 0)", identifierCopy, v31];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ AND $recipient.type = %d).@count > 0)", identifierCopy, type];
  }
  v23 = ;

  [v22 addObject:v23];
  v24 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v22];
  v32 = 0;
  v25 = [storeCopy queryInteractionsUsingPredicate:v24 sortDescriptors:MEMORY[0x1E695E0F0] limit:1 error:&v32];

  v26 = v32;
  if (v26)
  {
    v27 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v25 firstObject];
  }

  v29 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)someInteractionWithMatchingIdentifier:(id)identifier store:(id)store bundleIds:(id)ids afterStartDate:(id)date
{
  v30[4] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AE18];
  v10 = MEMORY[0x1E695DFD8];
  dateCopy = date;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = [v10 setWithArray:ids];
  v15 = [v9 predicateWithFormat:@"(bundleId IN %@)", v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(recipientCount == 1)"];
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ OR $recipient.identifier = %@).@count == 1)", identifierCopy, identifierCopy];

  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(startDate >= %@)", dateCopy];

  v19 = MEMORY[0x1E695DF70];
  v30[0] = v15;
  v30[1] = v16;
  v30[2] = identifierCopy;
  v30[3] = dateCopy;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v21 = [v19 arrayWithArray:v20];

  v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v21];
  v29 = 0;
  v23 = [storeCopy queryInteractionsUsingPredicate:v22 sortDescriptors:MEMORY[0x1E695E0F0] limit:1 error:&v29];

  v24 = v29;
  if (v24)
  {
    v25 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v23 firstObject];
  }

  v27 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)mostRecentInteractionInvolvingMatchingIdentifier:(id)identifier store:(id)store bundleIds:(id)ids
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AE18];
  v8 = MEMORY[0x1E695DFD8];
  storeCopy = store;
  identifierCopy = identifier;
  v11 = [v8 setWithArray:ids];
  v12 = [v7 predicateWithFormat:@"(bundleId IN %@)", v11];

  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"(SUBQUERY(recipients, $recipient, $recipient.personId = %@ or $recipient.identifier = %@).@count > 0)", identifierCopy, identifierCopy];

  v14 = MEMORY[0x1E695DF70];
  v28[0] = v12;
  v28[1] = identifierCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v16 = [v14 arrayWithArray:v15];

  v17 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v16];
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v27 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v26 = 0;
  v20 = [storeCopy queryInteractionsUsingPredicate:v17 sortDescriptors:v19 limit:1 error:&v26];

  v21 = v26;
  if (v21)
  {
    v22 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[_PSInteractionStoreUtils recentInteractionsFromStore:bundleIDs:];
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v20 firstObject];
  }

  v24 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)mostRecentInteractionWithExactMatchingIdentifiers:(id)identifiers store:(id)store bundleIds:(id)ids meContactIdentifier:(id)identifier
{
  v64 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  storeCopy = store;
  idsCopy = ids;
  identifierCopy = identifier;
  v13 = identifiersCopy;
  v14 = v13;
  v15 = v13;
  if (identifierCopy)
  {
    v15 = [v13 mutableCopy];
    [v15 removeObject:identifierCopy];
  }

  if ([v15 count])
  {
    v54 = identifierCopy;
    v55 = v14;
    v56 = idsCopy;
    v53 = [MEMORY[0x1E695DFD8] setWithArray:idsCopy];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(bundleId IN %@)", v53];
    array = [MEMORY[0x1E695DF70] array];
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(direction = %@)", &unk_1F2D8BD90];
    v19 = MEMORY[0x1E696AE18];
    v57 = storeCopy;
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
    [array addObjectsFromArray:v22];

    v51 = array;
    v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
    array2 = [MEMORY[0x1E695DF70] array];
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
    v31 = array2;
    v52 = v16;
    v61[2] = v28;
    v61[3] = v29;
    v61[4] = v30;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];
    [array2 addObjectsFromArray:v32];

    v33 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array2];
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

      firstObject = 0;
    }

    else
    {
      firstObject = [v39 firstObject];
    }

    idsCopy = v56;
    storeCopy = v57;
    identifierCopy = v54;
    v14 = v55;
  }

  else
  {
    firstObject = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (int64_t)getHandleTypeFromHandleString:(id)string
{
  v21[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
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
    v21[0] = stringCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v7 = [v4 classificationOfHandleStrings:v6];

    emailAddresses = [v7 emailAddresses];
    if (!emailAddresses || ([v7 emailAddresses], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count") == 0, v9, emailAddresses, v10))
    {
      phoneNumbers = [v7 phoneNumbers];
      if (phoneNumbers)
      {
        phoneNumbers2 = [v7 phoneNumbers];
        v13 = [phoneNumbers2 count] == 0;

        if (v13)
        {
          phoneNumbers = 0;
        }

        else
        {
          phoneNumbers = 2;
        }
      }
    }

    else
    {
      phoneNumbers = 1;
    }
  }

  else
  {
    phoneNumbers = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return phoneNumbers;
}

+ (id)metadataFromFeedbackEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  derivedIntentIdentifier = [eventCopy derivedIntentIdentifier];

  if (derivedIntentIdentifier)
  {
    derivedIntentIdentifier2 = [eventCopy derivedIntentIdentifier];
    derivedIntentIdentifier3 = [MEMORY[0x1E69979D8] derivedIntentIdentifier];
    [v4 setObject:derivedIntentIdentifier2 forKeyedSubscript:derivedIntentIdentifier3];
  }

  targetBundleID = [eventCopy targetBundleID];

  if (targetBundleID)
  {
    targetBundleID2 = [eventCopy targetBundleID];
    targetBundleID3 = [MEMORY[0x1E69979D8] targetBundleID];
    [v4 setObject:targetBundleID2 forKeyedSubscript:targetBundleID3];
  }

  extensionContextUUID = [eventCopy extensionContextUUID];

  if (extensionContextUUID)
  {
    extensionContextUUID2 = [eventCopy extensionContextUUID];
    extensionContextUUID3 = [MEMORY[0x1E69979D8] extensionContextUUID];
    [v4 setObject:extensionContextUUID2 forKeyedSubscript:extensionContextUUID3];
  }

  attachments = [eventCopy attachments];

  if (attachments)
  {
    attachments2 = [eventCopy attachments];
    attachments3 = [MEMORY[0x1E69979D8] attachments];
    [v4 setObject:attachments2 forKeyedSubscript:attachments3];
  }

  locationUUIDs = [eventCopy locationUUIDs];

  if (locationUUIDs)
  {
    locationUUIDs2 = [eventCopy locationUUIDs];
    locationUUIDs3 = [MEMORY[0x1E69979D8] locationUUIDs];
    [v4 setObject:locationUUIDs2 forKeyedSubscript:locationUUIDs3];
  }

  photoSuggestedContacts = [eventCopy photoSuggestedContacts];

  if (photoSuggestedContacts)
  {
    photoSuggestedContacts2 = [eventCopy photoSuggestedContacts];
    photoSuggestedContacts3 = [MEMORY[0x1E69979D8] photoSuggestedContacts];
    [v4 setObject:photoSuggestedContacts2 forKeyedSubscript:photoSuggestedContacts3];
  }

  sourceBundleID = [eventCopy sourceBundleID];

  if (sourceBundleID)
  {
    sourceBundleID2 = [eventCopy sourceBundleID];
    sourceBundleID3 = [MEMORY[0x1E69979D8] sourceBundleID];
    [v4 setObject:sourceBundleID2 forKeyedSubscript:sourceBundleID3];
  }

  modelSuggestionProxies = [eventCopy modelSuggestionProxies];

  if (modelSuggestionProxies)
  {
    modelSuggestionProxies2 = [eventCopy modelSuggestionProxies];
    modelSuggestionProxies3 = [MEMORY[0x1E69979D8] modelSuggestionProxies];
    [v4 setObject:modelSuggestionProxies2 forKeyedSubscript:modelSuggestionProxies3];
  }

  adaptedModelRecipeID = [eventCopy adaptedModelRecipeID];

  if (adaptedModelRecipeID)
  {
    adaptedModelRecipeID2 = [eventCopy adaptedModelRecipeID];
    adaptedModelRecipeID3 = [MEMORY[0x1E69979D8] adaptedModelRecipeID];
    [v4 setObject:adaptedModelRecipeID2 forKeyedSubscript:adaptedModelRecipeID3];
  }

  supportedBundleIDs = [eventCopy supportedBundleIDs];

  if (supportedBundleIDs)
  {
    supportedBundleIDs2 = [eventCopy supportedBundleIDs];
    supportedBundleIDs3 = [MEMORY[0x1E69979D8] supportedBundleIDs];
    [v4 setObject:supportedBundleIDs2 forKeyedSubscript:supportedBundleIDs3];
  }

  reasonType = [eventCopy reasonType];

  if (reasonType)
  {
    reasonType2 = [eventCopy reasonType];
    reasonType3 = [MEMORY[0x1E69979D8] reasonType];
    [v4 setObject:reasonType2 forKeyedSubscript:reasonType3];
  }

  reason = [eventCopy reason];

  if (reason)
  {
    reason2 = [eventCopy reason];
    reason3 = [MEMORY[0x1E69979D8] reason];
    [v4 setObject:reason2 forKeyedSubscript:reason3];
  }

  transportBundleID = [eventCopy transportBundleID];

  if (transportBundleID)
  {
    transportBundleID2 = [eventCopy transportBundleID];
    transportBundleID3 = [MEMORY[0x1E69979D8] transportBundleID];
    [v4 setObject:transportBundleID2 forKeyedSubscript:transportBundleID3];
  }

  trackingID = [eventCopy trackingID];

  if (trackingID)
  {
    trackingID2 = [eventCopy trackingID];
    trackingID3 = [MEMORY[0x1E69979D8] trackingID];
    [v4 setObject:trackingID2 forKeyedSubscript:trackingID3];
  }

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAdaptedModelUsed")}];
  isAdaptedModelUsed = [MEMORY[0x1E69979D8] isAdaptedModelUsed];
  [v4 setObject:v47 forKeyedSubscript:isAdaptedModelUsed];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAdaptedModelCreated")}];
  isAdaptedModelCreated = [MEMORY[0x1E69979D8] isAdaptedModelCreated];
  [v4 setObject:v49 forKeyedSubscript:isAdaptedModelCreated];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "indexSelected")}];
  indexSelected = [MEMORY[0x1E69979D8] indexSelected];
  [v4 setObject:v51 forKeyedSubscript:indexSelected];

  v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "engagementType")}];
  engagementType = [MEMORY[0x1E69979D8] engagementType];
  [v4 setObject:v53 forKeyedSubscript:engagementType];

  v55 = MEMORY[0x1E696AD98];
  [eventCopy numberOfVisibleSuggestions];
  v56 = [v55 numberWithDouble:?];
  numberOfVisibleSuggestions = [MEMORY[0x1E69979D8] numberOfVisibleSuggestions];
  [v4 setObject:v56 forKeyedSubscript:numberOfVisibleSuggestions];

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "iCloudFamilyInvocation")}];
  iCloudFamilyInvocation = [MEMORY[0x1E69979D8] iCloudFamilyInvocation];
  [v4 setObject:v58 forKeyedSubscript:iCloudFamilyInvocation];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "peopleSuggestionsDisabled")}];
  peopleSuggestionsDisabled = [MEMORY[0x1E69979D8] peopleSuggestionsDisabled];
  [v4 setObject:v60 forKeyedSubscript:peopleSuggestionsDisabled];

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