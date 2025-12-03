@interface _PSDeviceStateFeatures
+ (id)isInCallWithCandidates:(id)candidates facetimeRequest:(BOOL)request caches:(id)caches store:(id)store;
+ (id)isInMeetingWithCandidates:(id)candidates caches:(id)caches;
@end

@implementation _PSDeviceStateFeatures

+ (id)isInCallWithCandidates:(id)candidates facetimeRequest:(BOOL)request caches:(id)caches store:(id)store
{
  v85[1] = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  storeCopy = store;
  userContext = [MEMORY[0x1E6997A60] userContext];
  keyPathForActiveCall = [MEMORY[0x1E6997A68] keyPathForActiveCall];
  v11 = [userContext objectForKeyedSubscript:keyPathForActiveCall];
  if (!v11)
  {
    v21 = +[_PSCandidate selfCandidate];
    v84 = v21;
    v22 = objc_alloc(MEMORY[0x1E698ECC0]);
    v13 = [v22 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:MEMORY[0x1E695E110] timeBucketValue:0];
    v85[0] = v13;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    goto LABEL_64;
  }

  calleeContactIDsKey = [MEMORY[0x1E6997A68] calleeContactIDsKey];
  v13 = [v11 valueForKey:calleeContactIDsKey];

  calleeHandlesKey = [MEMORY[0x1E6997A68] calleeHandlesKey];
  v15 = [v11 valueForKey:calleeHandlesKey];

  bundleIDKey = [MEMORY[0x1E6997A68] bundleIDKey];
  v17 = [v11 valueForKey:bundleIDKey];

  if (v17)
  {
    v83 = v17;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  }

  v57 = v17;
  v18 = 0x1E7C23000uLL;
  if (v13 && [v13 count] == 1)
  {
    v19 = +[_PSLogging featureGenerationChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_INFO, "Found a donation in the context store on an active call where calleeContactIDsKey is set", buf, 2u);
    }

    v62 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
  }

  else
  {
    v62 = 0;
  }

  if ([v15 count] == 1)
  {
    v20 = v15;
  }

  else
  {
    v20 = 0;
  }

  v60 = v15;
  v61 = v20;
  v58 = v13;
  v59 = cachesCopy;
  if (__PAIR128__(v62, v20) != 0)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v24 = cachesCopy;
    v25 = [v24 countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v25)
    {
      v55 = keyPathForActiveCall;
      v26 = 0;
      v27 = *v72;
      while (2)
      {
        v28 = 0;
        v29 = v26;
        do
        {
          if (*v72 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v26 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrContactIds:v61 identifiers:v62 account:0 directions:&unk_1F2D8C288 mechanisms:&unk_1F2D8C2A0 bundleIds:0 store:storeCopy fetchLimit:1 messageInteractionCache:*(*(&v71 + 1) + 8 * v28)];

          if (v26 && [v26 count])
          {

            goto LABEL_28;
          }

          ++v28;
          v29 = v26;
        }

        while (v25 != v28);
        v25 = [v24 countByEnumeratingWithState:&v71 objects:v82 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }

      if (!v26)
      {
        cachesCopy = v59;
        keyPathForActiveCall = v55;
        goto LABEL_35;
      }

LABEL_28:
      cachesCopy = v59;
      if (![v26 count])
      {
        keyPathForActiveCall = v55;
        goto LABEL_35;
      }

      v30 = +[_PSLogging featureGenerationChannel];
      keyPathForActiveCall = v55;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v30, OS_LOG_TYPE_INFO, "Could not find matching interaction in caches, falling back to interaction store", buf, 2u);
      }

      v25 = [_PSInteractionStoreUtils interactionsMatchingAnyHandlesOrContactIds:v61 identifiers:v62 account:0 directions:&unk_1F2D8C2B8 mechanisms:&unk_1F2D8C2D0 bundleIds:0 store:storeCopy fetchLimit:1 messageInteractionCache:0];
    }

    else
    {
      v26 = v24;
    }

    v26 = v25;
LABEL_35:
    firstObject = [v26 firstObject];
    if (firstObject)
    {
      v21 = [_PSInteractionStoreUtils conversationIdFromInteraction:firstObject bundleIds:0];
    }

    else
    {
      v21 = 0;
    }

    v13 = v58;
    v18 = 0x1E7C23000;
    goto LABEL_39;
  }

  v21 = 0;
LABEL_39:
  if ([v15 count] >= 2)
  {
    requestCopy = request;
    v54 = v11;
    v56 = keyPathForActiveCall;
    v32 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v33 = cachesCopy;
    v34 = [v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = userContext;
      v37 = 0;
      v38 = *v68;
LABEL_42:
      v39 = 0;
      v40 = v37;
      while (1)
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [_PSInteractionStoreUtils conversationIdWithExactMatchWithContactHandles:v32 store:storeCopy bundleIds:0 messageInteractionCache:*(*(&v67 + 1) + 8 * v39)];

        if ([v37 count])
        {
          break;
        }

        ++v39;
        v40 = v37;
        if (v35 == v39)
        {
          v35 = [v33 countByEnumeratingWithState:&v67 objects:v81 count:16];
          if (v35)
          {
            goto LABEL_42;
          }

          break;
        }
      }
    }

    else
    {
      v36 = userContext;
      v37 = 0;
    }

    userContext = v36;
    if ([v37 count])
    {
      allValues = [v37 allValues];
      firstObject2 = [allValues firstObject];

      v11 = v54;
      keyPathForActiveCall = v56;
      v13 = v58;
      if ([firstObject2 length])
      {
        v43 = firstObject2;

        v21 = v43;
      }

      v15 = v60;
    }

    else
    {
      v11 = v54;
      keyPathForActiveCall = v56;
      v13 = v58;
      v15 = v60;
    }

    request = requestCopy;
    v18 = 0x1E7C23000uLL;
  }

  v44 = objc_opt_new();
  featureGenerationChannel = [*(v18 + 1360) featureGenerationChannel];
  v46 = os_log_type_enabled(&featureGenerationChannel->super, OS_LOG_TYPE_INFO);
  if (v21)
  {
    if (v46)
    {
      *buf = 138478339;
      v76 = v15;
      v77 = 2113;
      v78 = v13;
      v79 = 2113;
      v80 = v21;
      _os_log_impl(&dword_1B5ED1000, &featureGenerationChannel->super, OS_LOG_TYPE_INFO, "Resolved %{private}@ and %{private}@ to %{private}@", buf, 0x20u);
    }

    v47 = v57;
    featureGenerationChannel = [[_PSCandidate alloc] initWithDomainId:v21 derivedIntentId:v21 bundleId:v57 recipientsId:0];
    [v44 addObject:featureGenerationChannel];
  }

  else
  {
    if (v46)
    {
      *buf = 138478083;
      v76 = v15;
      v77 = 2113;
      v78 = v13;
      _os_log_impl(&dword_1B5ED1000, &featureGenerationChannel->super, OS_LOG_TYPE_INFO, "Could not resolve %{private}@ and %{private}@ to candidate identifier", buf, 0x16u);
    }

    v47 = v57;
  }

  v48 = [_PSFeatureDictionary alloc];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __78___PSDeviceStateFeatures_isInCallWithCandidates_facetimeRequest_caches_store___block_invoke;
  v64[3] = &unk_1E7C25808;
  requestCopy2 = request;
  v65 = v47;
  v49 = v47;
  v50 = [v44 _pas_mappedArrayWithTransform:v64];
  v23 = [(_PSFeatureDictionary *)v48 initWithObjects:v50 forKeys:v44];

  cachesCopy = v59;
LABEL_64:

  v51 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)isInMeetingWithCandidates:(id)candidates caches:(id)caches
{
  v41 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  v5 = [MEMORY[0x1E695DF00] now];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = cachesCopy;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (!v27)
  {
    v25 = 0;
    goto LABEL_28;
  }

  v25 = 0;
  v26 = *v34;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v34 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v33 + 1) + 8 * i);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      interactions = [v7 interactions];
      v9 = [interactions countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (!v9)
      {
        goto LABEL_24;
      }

      v10 = v9;
      v28 = i;
      v11 = *v30;
      while (2)
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(interactions);
          }

          v13 = *(*(&v29 + 1) + 8 * j);
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "mechanism")}];
          if (![v14 isEqualToNumber:&unk_1F2D8B628])
          {
            goto LABEL_17;
          }

          dateInterval = [v13 dateInterval];
          if (([dateInterval containsDate:v5] & 1) == 0)
          {

LABEL_17:
            continue;
          }

          if ([v13 selfParticipantStatus] == 2)
          {

LABEL_22:
            v25 = 1;
            goto LABEL_23;
          }

          selfParticipantStatus = [v13 selfParticipantStatus];

          if (selfParticipantStatus == 7)
          {
            goto LABEL_22;
          }
        }

        v10 = [interactions countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_23:
      i = v28;
LABEL_24:
    }

    v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  }

  while (v27);
LABEL_28:

  v17 = +[_PSCandidate selfCandidate];
  v37 = v17;
  v18 = objc_alloc(MEMORY[0x1E698ECC0]);
  v19 = [MEMORY[0x1E696AD98] numberWithBool:v25 & 1];
  v20 = [v18 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:v19 timeBucketValue:0];
  v38 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end