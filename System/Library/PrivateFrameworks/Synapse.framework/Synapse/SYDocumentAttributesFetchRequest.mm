@interface SYDocumentAttributesFetchRequest
+ (BOOL)_isValidSearchableItem:(id)a3 loggableErrorDescription:(id *)a4;
+ (id)_buildQueryStringWithIndexKeys:(id)a3;
+ (id)_buildResultWithMatches:(id)a3;
+ (void)fetchAttributesForDocumentsWithIndexKeys:(id)a3 completion:(id)a4;
@end

@implementation SYDocumentAttributesFetchRequest

+ (void)fetchAttributesForDocumentsWithIndexKeys:(id)a3 completion:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277CBEB70];
  v8 = a3;
  v9 = [[v7 alloc] initWithArray:v8];

  v10 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v10 setFetchAttributes:&unk_2838EFC10];
  [v10 setReason:@"Document Workflows: Get attachment info for document with index key"];
  [v10 setPrivateQuery:1];
  v11 = [v9 array];
  v12 = [a1 _buildQueryStringWithIndexKeys:v11];

  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SYDocumentFetchRequest _fetchDocumentsWithReason:v12 queryString:v13 completion:?];
  }

  v14 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v12 queryContext:v10];
  v30[0] = @"com.apple.mobilemail";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v14 setBundleIDs:v15];

  v16 = [MEMORY[0x277CBEB18] array];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__SYDocumentAttributesFetchRequest_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke;
  v28[3] = &unk_27856B640;
  v17 = v16;
  v29 = v17;
  [v14 setFoundItemsHandler:v28];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__SYDocumentAttributesFetchRequest_fetchAttributesForDocumentsWithIndexKeys_completion___block_invoke_2;
  v24 = &unk_27856C738;
  v26 = v6;
  v27 = a1;
  v25 = v17;
  v18 = v6;
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

+ (id)_buildQueryStringWithIndexKeys:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      [v4 appendFormat:@"(kMDItemRelatedUniqueIdentifier == '%@')", v6];
      if (v5 < [v3 count] - 1)
      {
        [v4 appendFormat:@" || "];
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 copy];
  v9 = [v7 stringWithFormat:@"(kMDItemIsTrashed != 1) && (%@)", v8];

  return v9;
}

+ (id)_buildResultWithMatches:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v57;
    *&v6 = 138412546;
    v47 = v6;
    v49 = *v57;
    v50 = a1;
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
        v11 = [a1 _isValidSearchableItem:v10 loggableErrorDescription:{&v55, v47}];
        v12 = v55;
        v13 = v12;
        if (v11)
        {
          v54 = v12;
          v14 = [v10 attributeSet];
          v15 = [v14 bundleID];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = &stru_2838DFF18;
          }

          v18 = v17;

          v19 = [v10 attributeSet];
          v20 = [v19 relatedUniqueIdentifier];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = &stru_2838DFF18;
          }

          v53 = v22;

          v23 = [v10 attributeSet];
          v24 = [v23 contentURL];

          v25 = [v10 attributeSet];
          v26 = [v25 userSharedReceivedSender];
          v27 = [v26 firstObject];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = &stru_2838DFF18;
          }

          v30 = v29;

          v31 = [v10 attributeSet];
          v32 = [v31 userSharedReceivedSenderHandle];
          v33 = [v32 firstObject];
          v34 = v33;
          if (v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = &stru_2838DFF18;
          }

          v36 = v35;

          v37 = [v10 attributeSet];
          v38 = [v37 userSharedReceivedDate];
          v39 = [v38 firstObject];

          if (v39)
          {
            v40 = v30;
            v41 = [[SYDocumentSender alloc] initWithName:v30 handle:v36];
            v42 = v53;
            v43 = [[SYDocumentAttributes alloc] initWithSourceBundleIdentifier:v18 indexKey:v53 originalFileURL:v24 receivedDate:v39 sender:v41];
            [v48 addObject:v43];

            a1 = v50;
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

            a1 = v50;
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

+ (BOOL)_isValidSearchableItem:(id)a3 loggableErrorDescription:(id *)a4
{
  v5 = a3;
  v6 = [v5 attributeSet];
  v7 = [v6 contentURL];

  if (v7)
  {
    v8 = [v5 attributeSet];
    v9 = [v8 contentTypeTree];

    if ([v9 count])
    {
      if ([SYDocumentWorkflows isSupportedContentTypeTree:v9])
      {
        v10 = [v5 attributeSet];
        v11 = [v10 userSharedReceivedSender];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [v5 attributeSet];
          v14 = [v13 userSharedReceivedSenderHandle];
          v15 = [v14 count];
          v16 = v15 != 0;

          if (!a4 || v15)
          {
            goto LABEL_19;
          }

          v17 = @"Searchable item doesn't have sender handle info.";
          goto LABEL_15;
        }

        if (a4)
        {
          v17 = @"Searchable item doesn't have sender info.";
          goto LABEL_15;
        }

LABEL_18:
        v16 = 0;
        goto LABEL_19;
      }

      if (!a4)
      {
        goto LABEL_18;
      }

      v18 = @"Searchable item isn't a supported content type, found: %@";
    }

    else
    {
      if (!a4)
      {
        goto LABEL_18;
      }

      v18 = @"Searchable item doesn't have a valid content type, found: %@";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v9];
LABEL_15:
    v16 = 0;
    *a4 = v17;
LABEL_19:

    goto LABEL_20;
  }

  v16 = 0;
  if (a4)
  {
    *a4 = @"Searchable item doesn't have a file.";
  }

LABEL_20:

  return v16;
}

@end