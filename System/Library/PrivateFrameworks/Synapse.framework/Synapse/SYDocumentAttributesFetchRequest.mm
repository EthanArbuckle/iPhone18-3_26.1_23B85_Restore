@interface SYDocumentAttributesFetchRequest
+ (BOOL)_isValidSearchableItem:(id)item loggableErrorDescription:(id *)description;
+ (id)_buildQueryStringWithIndexKeys:(id)keys;
+ (id)_buildResultWithMatches:(id)matches;
+ (void)fetchAttributesForDocumentsWithIndexKeys:(id)keys completion:(id)completion;
@end

@implementation SYDocumentAttributesFetchRequest

+ (void)fetchAttributesForDocumentsWithIndexKeys:(id)keys completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = MEMORY[0x277CBEB70];
  keysCopy = keys;
  v9 = [[v7 alloc] initWithArray:keysCopy];

  v10 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v10 setFetchAttributes:&unk_2838EFC10];
  [v10 setReason:@"Document Workflows: Get attachment info for document with index key"];
  [v10 setPrivateQuery:1];
  array = [v9 array];
  v12 = [self _buildQueryStringWithIndexKeys:array];

  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentFetchRequest _fetchDocumentsWithReason:v12 queryString:v13 completion:?];
  }

  v14 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v12 queryContext:v10];
  v30[0] = @"com.apple.mobilemail";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v14 setBundleIDs:v15];

  array2 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__SYDocumentAttributesFetchRequest_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke;
  v28[3] = &unk_27856B640;
  v17 = array2;
  v29 = v17;
  [v14 setFoundItemsHandler:v28];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__SYDocumentAttributesFetchRequest_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_2;
  v24 = &unk_27856C738;
  v26 = completionCopy;
  selfCopy = self;
  v25 = v17;
  v18 = completionCopy;
  v19 = v17;
  [v14 setCompletionHandler:&v21];
  [v14 start];

  v20 = *MEMORY[0x277D85DE8];
}

void __88__SYDocumentAttributesFetchRequest_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 48) _buildResultWithMatches:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)_buildQueryStringWithIndexKeys:(id)keys
{
  keysCopy = keys;
  string = [MEMORY[0x277CCAB68] string];
  if ([keysCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [keysCopy objectAtIndex:v5];
      [string appendFormat:@"(kMDItemRelatedUniqueIdentifier == '%@')", v6];
      if (v5 < [keysCopy count] - 1)
      {
        [string appendFormat:@" || "];
      }

      ++v5;
    }

    while (v5 < [keysCopy count]);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [string copy];
  v9 = [v7 stringWithFormat:@"(kMDItemIsTrashed != 1) && (%@)", v8];

  return v9;
}

+ (id)_buildResultWithMatches:(id)matches
{
  v65 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(matchesCopy, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = matchesCopy;
  v5 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v57;
    *&v6 = 138412546;
    v47 = v6;
    v49 = *v57;
    selfCopy = self;
    do
    {
      v9 = 0;
      v51 = v7;
      do
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        v55 = 0;
        v11 = [self _isValidSearchableItem:v10 loggableErrorDescription:{&v55, v47}];
        v12 = v55;
        v13 = v12;
        if (v11)
        {
          v54 = v12;
          attributeSet = [v10 attributeSet];
          bundleID = [attributeSet bundleID];
          v16 = bundleID;
          if (bundleID)
          {
            v17 = bundleID;
          }

          else
          {
            v17 = &stru_2838DFF18;
          }

          v18 = v17;

          attributeSet2 = [v10 attributeSet];
          relatedUniqueIdentifier = [attributeSet2 relatedUniqueIdentifier];
          v21 = relatedUniqueIdentifier;
          if (relatedUniqueIdentifier)
          {
            v22 = relatedUniqueIdentifier;
          }

          else
          {
            v22 = &stru_2838DFF18;
          }

          v53 = v22;

          attributeSet3 = [v10 attributeSet];
          contentURL = [attributeSet3 contentURL];

          attributeSet4 = [v10 attributeSet];
          userSharedReceivedSender = [attributeSet4 userSharedReceivedSender];
          firstObject = [userSharedReceivedSender firstObject];
          v28 = firstObject;
          if (firstObject)
          {
            v29 = firstObject;
          }

          else
          {
            v29 = &stru_2838DFF18;
          }

          v30 = v29;

          attributeSet5 = [v10 attributeSet];
          userSharedReceivedSenderHandle = [attributeSet5 userSharedReceivedSenderHandle];
          firstObject2 = [userSharedReceivedSenderHandle firstObject];
          v34 = firstObject2;
          if (firstObject2)
          {
            v35 = firstObject2;
          }

          else
          {
            v35 = &stru_2838DFF18;
          }

          v36 = v35;

          attributeSet6 = [v10 attributeSet];
          userSharedReceivedDate = [attributeSet6 userSharedReceivedDate];
          firstObject3 = [userSharedReceivedDate firstObject];

          if (firstObject3)
          {
            v40 = v30;
            v41 = [[SYDocumentSender alloc] initWithName:v30 handle:v36];
            v42 = v53;
            v43 = [[SYDocumentAttributes alloc] initWithSourceBundleIdentifier:v18 indexKey:v53 originalFileURL:contentURL receivedDate:firstObject3 sender:v41];
            [v48 addObject:v43];

            self = selfCopy;
            v7 = v51;
          }

          else
          {
            v40 = v30;
            v42 = v53;
            v41 = os_log_create("com.apple.synapse", "DocumentWorkflows");
            v7 = v51;
            if (os_log_type_enabled(&v41->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_225901000, &v41->super, OS_LOG_TYPE_DEFAULT, "Searchable item doesn't have a valid received date.", buf, 2u);
            }

            self = selfCopy;
          }

          v8 = v49;
          v13 = v54;
        }

        else
        {
          v18 = os_log_create("com.apple.synapse", "DocumentWorkflows");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v47;
            v61 = v10;
            v62 = 2112;
            v63 = v13;
            _os_log_impl(&dword_225901000, v18, OS_LOG_TYPE_DEFAULT, "Searchable item isn't valid: %@, reason: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v7);
  }

  v44 = [v48 copy];
  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

+ (BOOL)_isValidSearchableItem:(id)item loggableErrorDescription:(id *)description
{
  itemCopy = item;
  attributeSet = [itemCopy attributeSet];
  contentURL = [attributeSet contentURL];

  if (contentURL)
  {
    attributeSet2 = [itemCopy attributeSet];
    contentTypeTree = [attributeSet2 contentTypeTree];

    if ([contentTypeTree count])
    {
      if ([SYDocumentWorkflows isSupportedContentTypeTree:contentTypeTree])
      {
        attributeSet3 = [itemCopy attributeSet];
        userSharedReceivedSender = [attributeSet3 userSharedReceivedSender];
        v12 = [userSharedReceivedSender count];

        if (v12)
        {
          attributeSet4 = [itemCopy attributeSet];
          userSharedReceivedSenderHandle = [attributeSet4 userSharedReceivedSenderHandle];
          v15 = [userSharedReceivedSenderHandle count];
          v16 = v15 != 0;

          if (!description || v15)
          {
            goto LABEL_19;
          }

          v17 = @"Searchable item doesn't have sender handle info.";
          goto LABEL_15;
        }

        if (description)
        {
          v17 = @"Searchable item doesn't have sender info.";
          goto LABEL_15;
        }

LABEL_18:
        v16 = 0;
        goto LABEL_19;
      }

      if (!description)
      {
        goto LABEL_18;
      }

      v18 = @"Searchable item isn't a supported content type, found: %@";
    }

    else
    {
      if (!description)
      {
        goto LABEL_18;
      }

      v18 = @"Searchable item doesn't have a valid content type, found: %@";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v18, contentTypeTree];
LABEL_15:
    v16 = 0;
    *description = v17;
LABEL_19:

    goto LABEL_20;
  }

  v16 = 0;
  if (description)
  {
    *description = @"Searchable item doesn't have a file.";
  }

LABEL_20:

  return v16;
}

@end