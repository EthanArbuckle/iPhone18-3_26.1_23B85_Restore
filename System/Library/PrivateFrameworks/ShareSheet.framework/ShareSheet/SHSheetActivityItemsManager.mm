@interface SHSheetActivityItemsManager
+ (id)_placeholderActivityItemValuesForActivityItem:(id)item activityViewController:(id)controller shouldUpdateMappings:(BOOL)mappings;
- (BOOL)_configureContentManagedForActivityItem:(id)item activityItemValue:(id)value outURLs:(id)ls outScopedURLs:(id)rLs activity:(id)activity;
- (BOOL)_supportsWebpagesForActivity:(id)activity;
- (NSArray)linkMetadataValues;
- (NSArray)suggestionAssetIdentifiers;
- (SFActivityItemsService)service;
- (SHSheetActivityItemsManager)initWithActivityItems:(id)items activityViewController:(id)controller delegate:(id)delegate collaborationDelegate:(id)collaborationDelegate service:(id)service;
- (SHSheetActivityItemsManagerCollaborationDelegate)collaborationDelegate;
- (SHSheetActivityItemsManagerDelegate)delegate;
- (UIActivityViewController)activityViewController;
- (id)_delegateLoadedURLs;
- (id)_requestInitialSocialTextForActivityItem:(id)item activity:(id)activity;
- (id)_requestItemsForActivityItem:(id)item activity:(id)activity;
- (id)_requestRecipientsHandlesForActivityItem:(id)item activity:(id)activity;
- (id)_requestSubjectForActivityItem:(id)item activity:(id)activity;
- (id)_requestThumbnailForActivityItem:(id)item activity:(id)activity;
- (id)_resolveActivityItemsForActivity:(id)activity;
- (id)_resolvePlaceholderActivityItems;
- (id)activityItemURLValuesForActivity:(id)activity;
- (id)activityItemValuesForActivity:(id)activity;
- (id)initialSocialTextForActivity:(id)activity;
- (id)placeholderActivityItemValuesForActivityItem:(id)item activityViewController:(id)controller;
- (id)placeholderActivityItemValuesForSendCopyMode;
- (id)recipientsForActivity:(id)activity;
- (id)recipientsHandlesForActivity:(id)activity;
- (id)securityScopedURLsForActivity:(id)activity;
- (id)subjectForActivity:(id)activity;
- (id)suggestedImageDataFromActivityItem:(id)item;
- (int64_t)_requestAttachmentURLItemDataForActivityItem:(id)item activity:(id)activity;
- (void)_didLoadGroupActivityMetadata:(id)metadata;
- (void)_loadGroupActivityMetadataIfNeeded;
- (void)_updateCacheResultForActivity:(id)activity;
- (void)_updateIsContentManagedForURLs;
- (void)_updateLinkMetadataValues;
- (void)_updateURLRequests;
- (void)enumerateBackgroundOperationsForActivity:(id)activity enumerator:(id)enumerator;
- (void)invalidateCache;
- (void)loadItemProvidersForRequest:(id)request activity:(id)activity completion:(id)completion;
- (void)setIsContentManaged:(BOOL)managed;
@end

@implementation SHSheetActivityItemsManager

- (void)_updateURLRequests
{
  v57 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke;
  v52[3] = &unk_1E71FB740;
  v52[4] = self;
  v37 = array;
  v53 = v37;
  v36 = array2;
  v54 = v36;
  v5 = MEMORY[0x18CFF58E0](v52);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  activityItems = [(SHSheetActivityItemsManager *)self activityItems];
  v7 = [activityItems countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    v34 = *MEMORY[0x1E69DB670];
    v35 = v42;
    v40 = *v49;
    v38 = activityItems;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(activityItems);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (v5)[2](v5, v11);
          goto LABEL_36;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
          if (v12 && SFIsStringURLSafelyConvertible())
          {
            (v5)[2](v5, v12);
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
          v14 = [v11 activityViewControllerPlaceholderItems:activityViewController];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v44 objects:v55 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v45;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v45 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v44 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5[2](v5, v20);
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v44 objects:v55 count:16];
            }

            while (v17);
          }

          activityItems = v38;
          self = selfCopy;
          v9 = v40;
        }

        else if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          activityViewController2 = [(SHSheetActivityItemsManager *)self activityViewController];
          v22 = [v11 activityViewControllerPlaceholderItem:activityViewController2];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            activityViewController3 = [(SHSheetActivityItemsManager *)self activityViewController];
            v24 = [v11 activityViewController:activityViewController3 itemForActivityType:@"com.apple.UIKit.activity.CopyToPasteboard"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = v24;
            }

            else
            {
              v25 = v22;
            }

            (v5)[2](v5, v25);
            goto LABEL_31;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            activityViewController4 = [(SHSheetActivityItemsManager *)self activityViewController];
            v24 = [v11 activityViewController:activityViewController4 itemForActivityType:@"com.apple.UIKit.activity.CopyToPasteboard"];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              (v5)[2](v5, v24);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = [MEMORY[0x1E695DFF8] URLWithString:v24];
                if (v27 && SFIsStringURLSafelyConvertible())
                {
                  (v5)[2](v5, v27);
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v24;
                  v28 = [v24 length];
                  v41[0] = MEMORY[0x1E69E9820];
                  v41[1] = 3221225472;
                  v42[0] = __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke_95;
                  v42[1] = &unk_1E71FB768;
                  v43 = v5;
                  [v24 enumerateAttribute:v34 inRange:0 options:v28 usingBlock:{0, v41}];
                }
              }
            }

LABEL_31:
          }

          v9 = v40;
        }

LABEL_36:
        ++v10;
      }

      while (v10 != v8);
      v29 = [activityItems countByEnumeratingWithState:&v48 objects:v56 count:16];
      v8 = v29;
    }

    while (v29);
  }

  delegate = [(SHSheetActivityItemsManager *)self delegate];
  v31 = [delegate urlRequestsForActivityItemsManager:self];

  if (![v37 count] && objc_msgSend(v31, "count"))
  {
    [v37 addObjectsFromArray:v31];
  }

  v32 = [v37 copy];
  [(SHSheetActivityItemsManager *)self setUrlRequests:v32];

  v33 = [v36 copy];
  [(SHSheetActivityItemsManager *)self setUrlSandboxExtensions:v33];
}

void __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileURL] && (objc_msgSend(a1[4], "service"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "canShareFileURL:", v3), v4, (v5 & 1) == 0))
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke_cold_1(v3, v9);
    }
  }

  else
  {
    if (WebPrivacyLibraryCore())
    {
      v6 = [v3 _wp_urlByRemovingTrackingInformation];

      v3 = v6;
    }

    v7 = [MEMORY[0x1E696AD68] requestWithURL:v3];
    [v7 _setNonAppInitiated:1];
    [a1[5] addObject:v7];
    v8 = [v3 issueSandboxExtensionData];
    if (v8)
    {
      [a1[6] addObject:v8];
    }
  }
}

- (SHSheetActivityItemsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateLinkMetadataValues
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v3 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  activityItems = [(SHSheetActivityItemsManager *)self activityItems];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __56__SHSheetActivityItemsManager__updateLinkMetadataValues__block_invoke;
  v14 = &unk_1E71FB790;
  selfCopy = self;
  v6 = array;
  v16 = v6;
  v7 = v3;
  v17 = v7;
  v18 = &v19;
  [activityItems enumerateObjectsUsingBlock:&v11];

  if ((v20[3] & 1) != 0 || (-[SHSheetActivityItemsManager urlRequests](self, "urlRequests", v11, v12, v13, v14, selfCopy, v16), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v9))
  {
    [v6 removeObjectsAtIndexes:{v7, v11, v12, v13, v14, selfCopy}];
  }

  v10 = [v6 copy];
  [(SHSheetActivityItemsManager *)self setLinkMetadataValues:v10];

  _Block_object_dispose(&v19, 8);
}

void __56__SHSheetActivityItemsManager__updateLinkMetadataValues__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) activityViewController];
  v4 = [_UIActivityItemMapping _loadMetadataForActivityItem:v5 activityViewController:v3];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 48) addIndex:{objc_msgSend(*(a1 + 40), "count") - 1}];
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

- (NSArray)linkMetadataValues
{
  if ([(SHSheetActivityItemsManager *)self linkMetadataValuesNeedsUpdate])
  {
    [(SHSheetActivityItemsManager *)self _updateLinkMetadataValues];
  }

  v3 = [(NSArray *)self->_linkMetadataValues copy];

  return v3;
}

- (UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (id)_resolvePlaceholderActivityItems
{
  v68 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  collaborationDelegate = [(SHSheetActivityItemsManager *)self collaborationDelegate];
  v5 = [collaborationDelegate collaborationPlaceholderActivityItemsForActivityItemsManager:self];

  v43 = v5;
  if ([v5 count])
  {
    activityItems = v5;
  }

  else
  {
    activityItems = [(SHSheetActivityItemsManager *)self activityItems];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = activityItems;
  v7 = array3;
  v47 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v47)
  {
    v48 = 0;
    v8 = 0;
    goto LABEL_55;
  }

  v48 = 0;
  v8 = 0;
  v46 = *v59;
  do
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v59 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v58 + 1) + 8 * i);
      activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
      v12 = [(SHSheetActivityItemsManager *)self placeholderActivityItemValuesForActivityItem:v10 activityViewController:activityViewController];

      if ([v12 count])
      {
        v50 = i;
        v51 = v8;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v49 = v12;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v55;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v55 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v54 + 1) + 8 * j);
              if (v18)
              {
                v19 = [[_UIActivityPlaceholderItemProxy alloc] initWithPlaceholderItem:v18];
                if (v19)
                {
                  if ([(SHSheetActivityItemsManager *)self _configureContentManagedForActivityItem:v10 activityItemValue:v19 outURLs:array2 outScopedURLs:v7 activity:0])
                  {
                    [array addObject:v19];
                    activityViewController2 = [(SHSheetActivityItemsManager *)self activityViewController];
                    v7 = array3;
                    [_UIActivityItemMapping _addActivityItem:v19 activityViewController:activityViewController2 originalActivityItem:v10];
                  }

                  else
                  {
                    activityViewController2 = share_sheet_log();
                    if (os_log_type_enabled(activityViewController2, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138477827;
                      v63 = v10;
                      _os_log_error_impl(&dword_18B359000, activityViewController2, OS_LOG_TYPE_ERROR, "skipping activityItem:%{private}@", buf, 0xCu);
                    }
                  }
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v15);
        }

        i = v50;
        v8 = v51;
        v12 = v49;
      }

      else if (v10)
      {
        if (![(SHSheetActivityItemsManager *)self _configureContentManagedForActivityItem:v10 activityItemValue:v10 outURLs:array2 outScopedURLs:v7 activity:0])
        {
          v28 = v12;
          v30 = share_sheet_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v63 = v10;
            _os_log_error_impl(&dword_18B359000, v30, OS_LOG_TYPE_ERROR, "skipping activityItem:%{private}@", buf, 0xCu);
          }

          v22 = v8;
          goto LABEL_50;
        }

        [array addObject:v10];
      }

      if (objc_opt_respondsToSelector())
      {
        activityViewController3 = [(SHSheetActivityItemsManager *)self activityViewController];
        v22 = [v10 activityViewControllerSuggestionFaceRecognitionData:activityViewController3];

        v23 = share_sheet_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v22 length];
          *buf = 134217984;
          v63 = v24;
          _os_log_impl(&dword_18B359000, v23, OS_LOG_TYPE_DEFAULT, "enrich suggestions with face recognition data:%lu", buf, 0xCu);
        }
      }

      else
      {
        v22 = v8;
      }

      if (objc_opt_respondsToSelector())
      {
        activityViewController4 = [(SHSheetActivityItemsManager *)self activityViewController];
        v26 = [v10 activityViewControllerSuggestionAssetLocalIdentifier:activityViewController4];

        if (v26)
        {
          [array4 addObject:v26];
          v27 = share_sheet_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v26;
            _os_log_impl(&dword_18B359000, v27, OS_LOG_TYPE_DEFAULT, "enrich suggestions with assetIdentifier:%@", buf, 0xCu);
          }
        }
      }

      if ([v48 count]|| (objc_opt_respondsToSelector() & 1) == 0)
      {
        v8 = v22;
        goto LABEL_51;
      }

      v28 = v12;
      activityViewController5 = [(SHSheetActivityItemsManager *)self activityViewController];
      v30 = [v10 activityViewControllerShareRecipients:activityViewController5];

      if ([v30 count])
      {
        v30 = v30;

        v31 = share_sheet_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v30;
          _os_log_impl(&dword_18B359000, v31, OS_LOG_TYPE_DEFAULT, "provided recipients:%@", buf, 0xCu);
        }

        v48 = v30;
      }

LABEL_50:

      v8 = v22;
      v12 = v28;
LABEL_51:
    }

    v47 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  }

  while (v47);
LABEL_55:

  v32 = IsAppleInternalBuild();
  v33 = share_sheet_log();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v34)
    {
      activityItems2 = [(SHSheetActivityItemsManager *)self activityItems];
      SFFilterStringsAndWebURLsFromList();
      v37 = v36 = array2;
      v38 = SFFilterStringsAndWebURLsFromList();
      *buf = 138478083;
      v63 = v37;
      v64 = 2113;
      v65 = v38;
      v39 = "Resolved placeholder activity item types:%{private}@ to:%{private}@";
      goto LABEL_60;
    }
  }

  else if (v34)
  {
    activityItems2 = [(SHSheetActivityItemsManager *)self activityItems];
    SFGenerateTypeList();
    v37 = v36 = array2;
    v38 = SFGenerateTypeList();
    *buf = 138543618;
    v63 = v37;
    v64 = 2114;
    v65 = v38;
    v39 = "Resolved placeholder activity item types:%{public}@ to:%{public}@";
LABEL_60:
    _os_log_impl(&dword_18B359000, v33, OS_LOG_TYPE_DEFAULT, v39, buf, 0x16u);

    array2 = v36;
    v7 = array3;
  }

  v40 = [[SHSheetActivityItemsResult alloc] initWithActivity:0 activityItemValues:array];
  if ([array2 count])
  {
    [(SHSheetActivityItemsResult *)v40 setActivityItemURLValues:array2];
  }

  if ([v7 count])
  {
    v41 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v7];
    [(SHSheetActivityItemsResult *)v40 setSecurityScopedURLs:v41];
  }

  if ([array4 count])
  {
    [(SHSheetActivityItemsResult *)v40 setSuggestionAssetIdentifiers:array4];
  }

  [(SHSheetActivityItemsResult *)v40 setSuggestedImageData:v8];
  [(SHSheetActivityItemsResult *)v40 setRecipients:v48];

  return v40;
}

- (SHSheetActivityItemsManagerCollaborationDelegate)collaborationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationDelegate);

  return WeakRetained;
}

- (void)_loadGroupActivityMetadataIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  urlRequests = self->_urlRequests;
  if (urlRequests)
  {
    if (self->_linkMetadataValues)
    {
      if (![(NSArray *)urlRequests count])
      {
        if (!-[NSArray count](self->_linkMetadataValues, "count") || (-[NSArray objectAtIndexedSubscript:](self->_linkMetadataValues, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), [v4 title], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
        {
          v6 = share_sheet_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "No metadata or URLs were found for the given activity items. Beginning attempted load of group activity metadata...", buf, 2u);
          }

          v7 = [(SHSheetActivityItemsManager *)self activityItemValuesForActivity:0];
          v8 = [SHSheetActivityItemUtilities itemProvidersFromActivityItems:v7];
          v9 = share_sheet_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v13 = v8;
            _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "Found these item providers from the given activity items: %@", buf, 0xCu);
          }

          objc_initWeak(buf, self);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __65__SHSheetActivityItemsManager__loadGroupActivityMetadataIfNeeded__block_invoke;
          v10[3] = &unk_1E71FB7E0;
          objc_copyWeak(&v11, buf);
          [SHSheetActivityItemUtilities loadMetadataFromGroupActivityItemProviders:v8 completion:v10];
          objc_destroyWeak(&v11);
          objc_destroyWeak(buf);
        }
      }
    }
  }
}

- (SHSheetActivityItemsManager)initWithActivityItems:(id)items activityViewController:(id)controller delegate:(id)delegate collaborationDelegate:(id)collaborationDelegate service:(id)service
{
  itemsCopy = items;
  controllerCopy = controller;
  delegateCopy = delegate;
  collaborationDelegateCopy = collaborationDelegate;
  serviceCopy = service;
  v21.receiver = self;
  v21.super_class = SHSheetActivityItemsManager;
  v17 = [(SHSheetActivityItemsManager *)&v21 init];
  if (v17)
  {
    v18 = [itemsCopy copy];
    activityItems = v17->_activityItems;
    v17->_activityItems = v18;

    objc_storeWeak(&v17->_activityViewController, controllerCopy);
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeWeak(&v17->_collaborationDelegate, collaborationDelegateCopy);
    objc_storeWeak(&v17->_service, serviceCopy);
    [(SHSheetActivityItemsManager *)v17 _updateURLRequests];
    [(SHSheetActivityItemsManager *)v17 _updateLinkMetadataValues];
    [(SHSheetActivityItemsManager *)v17 _loadGroupActivityMetadataIfNeeded];
  }

  return v17;
}

- (void)setIsContentManaged:(BOOL)managed
{
  if (self->_isContentManaged != managed)
  {
    self->_isContentManaged = managed;
    [(SHSheetActivityItemsManager *)self _updateIsContentManagedForURLs];
  }
}

- (void)invalidateCache
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating current cache result.", v4, 2u);
  }

  [(SHSheetActivityItemsManager *)self setCacheResult:0];
}

- (void)_updateIsContentManagedForURLs
{
  v21 = *MEMORY[0x1E69E9840];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  activityItemURLValues = [cacheResult activityItemURLValues];

  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [(SHSheetActivityItemsManager *)self isContentManaged];
    v6 = NSStringFromBOOL();
    *buf = 138412546;
    v18 = activityItemURLValues;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Update URLs:%@ with contentManaged:%@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = activityItemURLValues;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) ui_setIsContentManaged:{-[SHSheetActivityItemsManager isContentManaged](self, "isContentManaged", v12)}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)activityItemValuesForActivity:(id)activity
{
  v15 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activityCopy];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  activityItemValues = [cacheResult activityItemValues];

  if (activityCopy)
  {
    collaborationDelegate = [(SHSheetActivityItemsManager *)self collaborationDelegate];

    if (collaborationDelegate)
    {
      collaborationDelegate2 = [(SHSheetActivityItemsManager *)self collaborationDelegate];
      v9 = [collaborationDelegate2 activityItemsManager:self collaborationActivityItemValuesForActivityItemValue:activityItemValues activity:activityCopy];

      if (v9)
      {
        v10 = share_sheet_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v9;
          _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Overidding activityItemValues with collaborative item values:%@", &v13, 0xCu);
        }

        v11 = v9;
        activityItemValues = v11;
      }
    }
  }

  return activityItemValues;
}

- (NSArray)suggestionAssetIdentifiers
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:0];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  suggestionAssetIdentifiers = [cacheResult suggestionAssetIdentifiers];

  return suggestionAssetIdentifiers;
}

- (id)activityItemURLValuesForActivity:(id)activity
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activity];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  activityItemURLValues = [cacheResult activityItemURLValues];

  return activityItemURLValues;
}

- (id)suggestedImageDataFromActivityItem:(id)item
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:item];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  suggestedImageData = [cacheResult suggestedImageData];

  return suggestedImageData;
}

- (id)securityScopedURLsForActivity:(id)activity
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activity];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  securityScopedURLs = [cacheResult securityScopedURLs];

  return securityScopedURLs;
}

- (id)initialSocialTextForActivity:(id)activity
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activity];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  initialSocialText = [cacheResult initialSocialText];

  return initialSocialText;
}

- (id)subjectForActivity:(id)activity
{
  activityCopy = activity;
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activityCopy];
  collaborationDelegate = [(SHSheetActivityItemsManager *)self collaborationDelegate];
  v6 = [collaborationDelegate activityItemsManager:self subjectForActivity:activityCopy];

  if (v6)
  {
    subject = v6;
  }

  else
  {
    cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
    subject = [cacheResult subject];
  }

  return subject;
}

- (id)recipientsHandlesForActivity:(id)activity
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activity];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  recipientsHandles = [cacheResult recipientsHandles];

  return recipientsHandles;
}

- (id)recipientsForActivity:(id)activity
{
  [(SHSheetActivityItemsManager *)self _updateCacheResultForActivity:activity];
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  recipients = [cacheResult recipients];

  return recipients;
}

- (void)_updateCacheResultForActivity:(id)activity
{
  activityCopy = activity;
  cacheResult = [(SHSheetActivityItemsManager *)self cacheResult];
  if (activityCopy)
  {
    activity = [cacheResult activity];

    if (activity == activityCopy)
    {
      goto LABEL_7;
    }

    _resolvePlaceholderActivityItems = [(SHSheetActivityItemsManager *)self _resolveActivityItemsForActivity:?];
  }

  else
  {
    if ([cacheResult isPlaceholder])
    {
      goto LABEL_7;
    }

    _resolvePlaceholderActivityItems = [(SHSheetActivityItemsManager *)self _resolvePlaceholderActivityItems];
  }

  v7 = _resolvePlaceholderActivityItems;

  cacheResult = v7;
LABEL_7:
  [(SHSheetActivityItemsManager *)self setCacheResult:cacheResult];
}

- (BOOL)_configureContentManagedForActivityItem:(id)item activityItemValue:(id)value outURLs:(id)ls outScopedURLs:(id)rLs activity:(id)activity
{
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  valueCopy = value;
  lsCopy = ls;
  rLsCopy = rLs;
  activityCopy = activity;
  isContentManaged = [(SHSheetActivityItemsManager *)self isContentManaged];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (objc_opt_respondsToSelector())
  {
    activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
    v20 = [itemCopy activityViewControllerSuggestionFileURL:activityViewController];

    v21 = share_sheet_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138412290;
      v32 = v20;
      _os_log_impl(&dword_18B359000, v21, OS_LOG_TYPE_DEFAULT, "enrich suggestions with suggestionFileURL:%@", &v31, 0xCu);
    }
  }

  else
  {
    v20 = 0;
  }

  if (!(isKindOfClass & 1 | (v20 != 0)))
  {
    goto LABEL_16;
  }

  if (isKindOfClass)
  {
    v22 = valueCopy;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ![v23 isFileURL] || (-[SHSheetActivityItemsManager service](self, "service"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "canShareFileURL:", v23), v24, (v25))
  {
    [v23 ui_setIsContentManaged:isContentManaged];
    [lsCopy addObject:v23];
    v26 = [UISUISecurityScopedResource scopedResourceWithURL:v23 allowedAccess:1];
    if (!v26)
    {
      v26 = [UISUISecurityScopedResource scopedResourceWithURL:v23 allowedAccess:0];
    }

    [rLsCopy addObject:v26];

LABEL_16:
    if (isContentManaged)
    {
      v27 = MEMORY[0x1E695E118];
    }

    else
    {
      v27 = MEMORY[0x1E695E110];
    }

    v28 = 1;
    objc_setAssociatedObject(valueCopy, &__UIIsContentManagedReferenceKey, v27, 1);
    goto LABEL_20;
  }

  v30 = share_sheet_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [SHSheetActivityItemsManager _configureContentManagedForActivityItem:v23 activityItemValue:v30 outURLs:? outScopedURLs:? activity:?];
  }

  v28 = 0;
LABEL_20:

  return v28;
}

+ (id)_placeholderActivityItemValuesForActivityItem:(id)item activityViewController:(id)controller shouldUpdateMappings:(BOOL)mappings
{
  mappingsCopy = mappings;
  v28[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v9 = [itemCopy activityViewControllerPlaceholderItems:controllerCopy];
    if (mappingsCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v12 = v9;
    goto LABEL_23;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [itemCopy activityViewControllerPlaceholderItem:controllerCopy];
    v11 = v10;
    if (v10)
    {
      v28[0] = v10;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    if (mappingsCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v9 = MEMORY[0x1E695E0F0];
  if (!mappingsCopy)
  {
    goto LABEL_8;
  }

LABEL_11:
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = v9;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if (v19)
        {
          v20 = [[_UIActivityPlaceholderItemProxy alloc] initWithPlaceholderItem:v19];
          if (v20)
          {
            [v13 addObject:v20];
            [_UIActivityItemMapping _addActivityItem:v20 activityViewController:controllerCopy originalActivityItem:itemCopy];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v12 = [v13 copy];
  v9 = v22;
LABEL_23:

  return v12;
}

- (id)placeholderActivityItemValuesForActivityItem:(id)item activityViewController:(id)controller
{
  v5 = [SHSheetActivityItemsManager _placeholderActivityItemValuesForActivityItem:item activityViewController:controller shouldUpdateMappings:0];
  firstObject = [v5 firstObject];
  if ([v5 count] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([firstObject canLoadObjectOfClass:objc_opt_class()])
      {
        _delegateLoadedURLs = [(SHSheetActivityItemsManager *)self _delegateLoadedURLs];
        if ([_delegateLoadedURLs count])
        {
          v8 = _delegateLoadedURLs;

          v5 = v8;
        }
      }
    }
  }

  return v5;
}

- (id)_delegateLoadedURLs
{
  v19 = *MEMORY[0x1E69E9840];
  delegate = [(SHSheetActivityItemsManager *)self delegate];
  v4 = [delegate urlRequestsForActivityItemsManager:self];

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) URL];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (id)_resolveActivityItemsForActivity:(id)activity
{
  v78 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v5 = WebPrivacyLibraryCore();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [(SHSheetActivityItemsManager *)self activityItems];
  v53 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v53)
  {
    v54 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v52 = *v69;
    *&v6 = 138412290;
    v50 = v6;
    do
    {
      v10 = 0;
      v11 = v8;
      v12 = v9;
      do
      {
        if (*v69 != v52)
        {
          v13 = v10;
          objc_enumerationMutation(obj);
          v10 = v13;
        }

        v55 = v10;
        v14 = *(*(&v68 + 1) + 8 * v10);
        *(&v59 + 1) = [(SHSheetActivityItemsManager *)self _requestThumbnailForActivityItem:v14 activity:activityCopy, v50];
        *&v59 = [(SHSheetActivityItemsManager *)self _requestAttachmentURLItemDataForActivityItem:v14 activity:activityCopy];
        v15 = [(SHSheetActivityItemsManager *)self _requestInitialSocialTextForActivityItem:v14 activity:activityCopy];

        v56 = [(SHSheetActivityItemsManager *)self _requestSubjectForActivityItem:v14 activity:activityCopy];

        if (![v7 count])
        {
          v16 = [(SHSheetActivityItemsManager *)self _requestRecipientsHandlesForActivityItem:v14 activity:activityCopy];

          v7 = v16;
        }

        v57 = v15;
        v58 = v7;
        if (![v54 count] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
          v18 = [v14 activityViewControllerShareRecipients:activityViewController];

          if ([v18 count])
          {
            v19 = v18;

            v20 = share_sheet_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v50;
              v73 = v19;
              _os_log_impl(&dword_18B359000, v20, OS_LOG_TYPE_DEFAULT, "provided recipients:%@", buf, 0xCu);
            }

            v54 = v19;
          }
        }

        v21 = activityCopy;
        v22 = [(SHSheetActivityItemsManager *)self _requestItemsForActivityItem:v14 activity:activityCopy];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v61 = v22;
        v23 = [v22 countByEnumeratingWithState:&v64 objects:v76 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v65;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v65 != v25)
              {
                objc_enumerationMutation(v61);
              }

              v27 = *(*(&v64 + 1) + 8 * i);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              v29 = v27;
              v30 = v29;
              if (isKindOfClass)
              {
                if (v5)
                {
                  _wp_urlByRemovingTrackingInformation = [v29 _wp_urlByRemovingTrackingInformation];

                  v30 = _wp_urlByRemovingTrackingInformation;
                }

                if (v59 == 0)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = objc_alloc_init(UIActivityItemURLRep);
                  [(UIActivityItemURLRep *)v32 setURL:v30];
                  [(UIActivityItemURLRep *)v32 setThumbnail:*(&v59 + 1)];
                  [(UIActivityItemURLRep *)v32 setAttachmentURLType:v59];
                }

                v30 = v32;
              }

              if (v5)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v30 _wp_removeTrackingInformationFromURLRepresentation];
                }
              }

              activityViewController2 = [(SHSheetActivityItemsManager *)self activityViewController];
              [_UIActivityItemMapping _addActivityItem:v30 activityViewController:activityViewController2 originalActivityItem:v14];

              if ([(SHSheetActivityItemsManager *)self _configureContentManagedForActivityItem:v14 activityItemValue:v30 outURLs:array2 outScopedURLs:array3 activity:v21])
              {
                [array addObject:v30];
              }

              else
              {
                v34 = share_sheet_log();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138477827;
                  v73 = v14;
                  _os_log_error_impl(&dword_18B359000, v34, OS_LOG_TYPE_ERROR, "skipping activityItem:%{private}@", buf, 0xCu);
                }
              }
            }

            v24 = [v61 countByEnumeratingWithState:&v64 objects:v76 count:16];
          }

          while (v24);
        }

        v8 = v56;
        v10 = v55 + 1;
        v11 = v56;
        v9 = v57;
        v7 = v58;
        v12 = v57;
        activityCopy = v21;
      }

      while (v55 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v53);
  }

  else
  {
    v54 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v35 = IsAppleInternalBuild();
  v36 = share_sheet_log();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (v35)
  {
    v39 = array3;
    v38 = array2;
    if (!v37)
    {
      goto LABEL_47;
    }

    activityItems = [(SHSheetActivityItemsManager *)self activityItems];
    SFFilterStringsAndWebURLsFromList();
    v41 = v8;
    v43 = v42 = v7;
    SFFilterStringsAndWebURLsFromList();
    v45 = v44 = v9;
    *buf = 138478083;
    v73 = v43;
    v74 = 2113;
    v75 = v45;
    v46 = "Resolved activity item types:%{private}@ to:%{private}@";
  }

  else
  {
    v39 = array3;
    v38 = array2;
    if (!v37)
    {
      goto LABEL_47;
    }

    activityItems = [(SHSheetActivityItemsManager *)self activityItems];
    SFGenerateTypeList();
    v41 = v8;
    v43 = v42 = v7;
    SFGenerateTypeList();
    v45 = v44 = v9;
    *buf = 138543618;
    v73 = v43;
    v74 = 2114;
    v75 = v45;
    v46 = "Resolved activity item types:%{public}@ to:%{public}@";
  }

  _os_log_impl(&dword_18B359000, v36, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);

  v9 = v44;
  v7 = v42;
  v8 = v41;
LABEL_47:

  v47 = [[SHSheetActivityItemsResult alloc] initWithActivity:activityCopy activityItemValues:array];
  if ([v38 count])
  {
    [(SHSheetActivityItemsResult *)v47 setActivityItemURLValues:v38];
  }

  if ([v39 count])
  {
    v48 = [[UISUISecurityContext alloc] initWithSecurityScopedResources:v39];
    [(SHSheetActivityItemsResult *)v47 setSecurityScopedURLs:v48];
  }

  [(SHSheetActivityItemsResult *)v47 setInitialSocialText:v9];
  [(SHSheetActivityItemsResult *)v47 setSubject:v8];
  [(SHSheetActivityItemsResult *)v47 setRecipientsHandles:v7];
  [(SHSheetActivityItemsResult *)v47 setRecipients:v54];

  return v47;
}

void __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke_95(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      (*(*(a1 + 32) + 16))();
      *a5 = 1;
    }
  }
}

void __65__SHSheetActivityItemsManager__loadGroupActivityMetadataIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__SHSheetActivityItemsManager__loadGroupActivityMetadataIfNeeded__block_invoke_100;
    v9[3] = &unk_1E71FB7B8;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v5;
    sh_dispatch_on_main_queue(v9);

    objc_destroyWeak(&v11);
  }

  else
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 localizedDescription];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Could not load group activity metadata: %@", buf, 0xCu);
    }
  }
}

void __65__SHSheetActivityItemsManager__loadGroupActivityMetadataIfNeeded__block_invoke_100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didLoadGroupActivityMetadata:*(a1 + 32)];
}

- (void)_didLoadGroupActivityMetadata:(id)metadata
{
  v10 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = metadataCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Successfully loaded group activity metadata: %@", &v8, 0xCu);
  }

  linkMetadataValues = self->_linkMetadataValues;
  self->_linkMetadataValues = metadataCopy;

  delegate = [(SHSheetActivityItemsManager *)self delegate];
  [delegate activityItemsManagerLinkMetadataValuesDidChange:self];
}

- (void)loadItemProvidersForRequest:(id)request activity:(id)activity completion:(id)completion
{
  requestCopy = request;
  activityCopy = activity;
  completionCopy = completion;
  maxPreviews = [requestCopy maxPreviews];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v12 = [(SHSheetActivityItemsManager *)self activityItemValuesForActivity:activityCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__SHSheetActivityItemsManager_loadItemProvidersForRequest_activity_completion___block_invoke;
  v15[3] = &unk_1E71FB808;
  v13 = requestCopy;
  v18 = v20;
  v19 = maxPreviews;
  v16 = v13;
  v14 = completionCopy;
  v17 = v14;
  [activityCopy _loadItemProvidersFromActivityItems:v12 completion:v15];

  _Block_object_dispose(v20, 8);
}

void __79__SHSheetActivityItemsManager_loadItemProvidersForRequest_activity_completion___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v36 = v3;
  v4 = __ItemsFromUIActivityItems(v3);
  v5 = [*(a1 + 32) activityType];
  [*(a1 + 32) thumbnailSize];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc_init(UISDActivityItemData);
  v37 = [MEMORY[0x1E695DF90] dictionary];
  v39 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v42)
  {
    v41 = *v44;
    v11 = 0x1E71F8000uLL;
    v38 = a1;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = [_UIActivityItemMapping _attachmentNameForActivityItem:v13 activityType:v5];
        if (v14)
        {
          [(UISDActivityItemData *)v10 addAttachmentName:v14 forItem:v13];
        }

        v15 = v11;
        v16 = [_UIActivityItemMapping _subjectForActivityItem:v13 activityType:v5];
        if (v16)
        {
          [(UISDActivityItemData *)v10 addSubject:v16 forItem:v13];
        }

        v17 = *(a1 + 56);
        v18 = *(*(a1 + 48) + 8);
        v19 = *(v18 + 24);
        if (v17 < 1 || v17 > v19)
        {
          *(v18 + 24) = v19 + 1;
          v20 = [_UIActivityItemMapping _thumbnailImageDataForActivityItem:v13 thumbnailSize:v5 activityType:v7, v9];
          if (v20)
          {
            [(UISDActivityItemData *)v10 addPreviewImageData:v20 forItem:v13];
          }

          v21 = [_UIActivityItemMapping _thumbnailImageForActivityItem:v13 thumbnailSize:v5 activityType:v7, v9];
          if (v21)
          {
            [(UISDActivityItemData *)v10 addPreviewImage:v21 forItem:v13];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:v13 activityType:v5];
          if (v22)
          {
            v23 = v22;
LABEL_20:
            [(UISDActivityItemData *)v10 addDataType:v23 forItem:v13];

            goto LABEL_21;
          }

          v32 = CGImageSourceCreateWithData(v13, 0);
          if (v32)
          {
            v33 = v32;
            v23 = CGImageSourceGetType(v32);
            CFRelease(v33);
            if (v23)
            {
              goto LABEL_20;
            }
          }
        }

LABEL_21:
        if ([v5 isEqualToString:@"com.apple.UIKit.activity.AirDrop"])
        {
          v24 = [SHSheetActivityItemUtilities urlForActivityItem:v13];
          if (v24)
          {
            v25 = [UIAirDropExtensionItemDataSource _airdropSupplementalSecurityContextForURL:v24];
            [v39 addObject:v25];
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        objc_opt_class();
        v11 = v15;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_35;
        }

        v24 = v13;
        if ([(__CFData *)v24 isFileURL])
        {
          v24 = v24;
          v26 = [*(v15 + 1320) scopedResourceWithFileURL:v24 allowedAccess:2];
          if (v26 || ([*(v15 + 1320) scopedResourceWithFileURL:v24 allowedAccess:1], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v27 = v26;
            v28 = [(__CFData *)v24 ui_bookmarkForExportWithError:0];
            [v27 setBookmarkExportDataEncodedAsString:v28];

            v29 = [UISUISecurityContext alloc];
            *buf = v27;
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
            v25 = [(UISUISecurityContext *)v29 initWithSecurityScopedResources:v30];

            a1 = v38;
          }

          else
          {
            v27 = share_sheet_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v24;
              _os_log_impl(&dword_18B359000, v27, OS_LOG_TYPE_DEFAULT, "Security Scope can't be resolved for URL:%@", buf, 0xCu);
            }

            v25 = 0;
          }

          [v39 addObject:v25];
          v31 = [_UIActivityItemMapping _openURLAnnotationForActivityItem:v24 activityType:v5];
          if (v31)
          {
            [v37 setObject:v31 forKeyedSubscript:v24];
          }

LABEL_32:
LABEL_33:
          v11 = v15;
        }

LABEL_35:
        ++v12;
      }

      while (v42 != v12);
      v34 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v42 = v34;
    }

    while (v34);
  }

  v35 = [v39 copy];
  [(UISDActivityItemData *)v10 setSecurityContexts:v35];

  [(UISDActivityItemData *)v10 setOpenURLAnnotationsByURL:v37];
  (*(*(a1 + 40) + 16))();
}

- (id)_requestThumbnailForActivityItem:(id)item activity:(id)activity
{
  itemCopy = item;
  activityCopy = activity;
  if ([activityCopy _wantsThumbnailItemData] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
    activityType = [activityCopy activityType];
    v10 = [itemCopy activityViewController:activityViewController thumbnailForActivityType:activityType];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_requestAttachmentURLItemDataForActivityItem:(id)item activity:(id)activity
{
  itemCopy = item;
  activityCopy = activity;
  if ([activityCopy _wantsAttachmentURLItemData] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
    activityType = [activityCopy activityType];
    v10 = [itemCopy activityViewController:activityViewController attachmentULRTypeForActivityType:activityType];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_requestInitialSocialTextForActivityItem:(id)item activity:(id)activity
{
  itemCopy = item;
  activityCopy = activity;
  if ([activityCopy _wantsInitialSocialText] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
    activityType = [activityCopy activityType];
    v10 = [itemCopy activityViewController:activityViewController initialSocialTextForActivityType:activityType];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_requestSubjectForActivityItem:(id)item activity:(id)activity
{
  itemCopy = item;
  activityType = [activity activityType];
  if (![activityType isEqualToString:@"com.apple.UIKit.activity.Mail"])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    activityType = [(SHSheetActivityItemsManager *)self activityViewController];
    v9 = [itemCopy activityViewControllerSubject:activityType];
LABEL_5:

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)_requestRecipientsHandlesForActivityItem:(id)item activity:(id)activity
{
  itemCopy = item;
  activityCopy = activity;
  activityType = [activityCopy activityType];
  if ([activityType isEqualToString:@"com.apple.UIKit.activity.Message"])
  {
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  activityType2 = [activityCopy activityType];
  if (([activityType2 isEqualToString:@"com.apple.UIKit.activity.Mail"] & 1) == 0)
  {

    v10 = 0;
    goto LABEL_8;
  }

  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  activityType = [(SHSheetActivityItemsManager *)self activityViewController];
  v10 = [itemCopy activityViewControllerRecipients:activityType];
LABEL_8:

LABEL_9:

  return v10;
}

- (id)_requestItemsForActivityItem:(id)item activity:(id)activity
{
  v24[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  activityCopy = activity;
  array = [MEMORY[0x1E695DF70] array];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SHSheetActivityItemsManager *)self _supportsWebpagesForActivity:activityCopy];
    activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
    activityType = [activityCopy activityType];
    v12 = [itemCopy activityViewController:activityViewController itemsForActivityType:activityType supportsWebpages:v9];

    array = v12;
  }

  else if (objc_opt_respondsToSelector())
  {
    activityViewController2 = [(SHSheetActivityItemsManager *)self activityViewController];
    activityType2 = [activityCopy activityType];
    v15 = [itemCopy activityViewController:activityViewController2 itemsForActivityType:activityType2];

    array = v15;
  }

  else
  {
    v16 = itemCopy;
    if (objc_opt_respondsToSelector())
    {
      activityViewController3 = [(SHSheetActivityItemsManager *)self activityViewController];
      activityType3 = [activityCopy activityType];
      v19 = [v16 activityViewController:activityViewController3 itemForActivityType:activityType3];

      if (v19)
      {
        activityViewController4 = [(SHSheetActivityItemsManager *)self activityViewController];
        [_UIActivityItemMapping _addActivityItem:v19 activityViewController:activityViewController4 originalActivityItem:v16];
      }

      activityViewController5 = v16;
    }

    else
    {
      activityViewController5 = [(SHSheetActivityItemsManager *)self activityViewController];
      [_UIActivityItemMapping _addActivityItem:v16 activityViewController:activityViewController5 originalActivityItem:0];
      v19 = v16;
    }

    if (v19)
    {
      v24[0] = v19;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];

      array = v22;
    }
  }

  return array;
}

- (BOOL)_supportsWebpagesForActivity:(id)activity
{
  v19[1] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:0 typeIdentifier:0];
    [v4 registerItemForTypeIdentifier:@"public.url" loadHandler:&__block_literal_global_52];
    [v4 registerItemForTypeIdentifier:@"com.apple.active-webpage" loadHandler:&__block_literal_global_129_0];
    v5 = objc_alloc_init(MEMORY[0x1E696ABE0]);
    v19[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v5 setAttachments:v6];

    v17 = @"extensionItems";
    v7 = activityCopy;
    _matchingDictionaryRepresentation = [v5 _matchingDictionaryRepresentation];
    v16 = _matchingDictionaryRepresentation;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v18 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    applicationExtension = [v7 applicationExtension];

    attributes = [applicationExtension attributes];
    v13 = [attributes objectForKeyedSubscript:@"NSExtensionActivationRule"];

    v14 = [MEMORY[0x1E696ABD0] evaluateActivationRule:v13 withExtensionItemsRepresentation:v10];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void __60__SHSheetActivityItemsManager__supportsWebpagesForActivity___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v6 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v6];
  (a2)[2](v4, v5, 0);
}

void __60__SHSheetActivityItemsManager__supportsWebpagesForActivity___block_invoke_2(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = a2;
  v6 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v6];
  (a2)[2](v4, v5, 0);
}

- (void)enumerateBackgroundOperationsForActivity:(id)activity enumerator:(id)enumerator
{
  v37 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  enumeratorCopy = enumerator;
  collaborationDelegate = [(SHSheetActivityItemsManager *)self collaborationDelegate];
  v9 = [collaborationDelegate activityItemsManagerIsCollaborative:self];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  activityItems = [(SHSheetActivityItemsManager *)self activityItems];
  v11 = [activityItems countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v29 = activityItems;
    v28 = *v33;
    do
    {
      v14 = 0;
      v30 = v12;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(activityItems);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (v16 = v15) != 0)
        {
          if (v9)
          {
            goto LABEL_9;
          }
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            if (v9)
            {
LABEL_17:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 ui_isUnfulfilledPromiseURL])
              {
                goto LABEL_26;
              }

              collaborationDelegate2 = [(SHSheetActivityItemsManager *)self collaborationDelegate];
              v19 = [collaborationDelegate2 activityItemsManager:self collaborationSupportsPromiseURLsForActivity:activityCopy];

              if (v19)
              {
                goto LABEL_20;
              }
            }

            else
            {
LABEL_21:
              if (([activityCopy _activitySupportsPromiseURLs] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
LABEL_26:
                v16 = 0;
                goto LABEL_27;
              }

              if (![v15 ui_isUnfulfilledPromiseURL])
              {
LABEL_20:
                v16 = 0;
                v12 = v30;
                goto LABEL_27;
              }
            }

            activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
            viewIfLoaded = [activityViewController viewIfLoaded];
            [viewIfLoaded window];
            v22 = v9;
            selfCopy = self;
            v24 = enumeratorCopy;
            v26 = v25 = activityCopy;
            windowScene = [v26 windowScene];

            activityCopy = v25;
            enumeratorCopy = v24;
            self = selfCopy;
            v9 = v22;
            v13 = v28;

            v16 = [v15 ui_downloadOperationForActivity:activityCopy inScene:windowScene];

            activityItems = v29;
            v12 = v30;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_14;
          }

          activityViewController2 = [(SHSheetActivityItemsManager *)self activityViewController];
          v16 = [v15 activityViewControllerOperation:activityViewController2];

          v12 = v30;
          if (v9)
          {
LABEL_9:
            if (!v16)
            {
              goto LABEL_17;
            }

            goto LABEL_14;
          }
        }

        if (!v16)
        {
          goto LABEL_21;
        }

LABEL_14:
        v31 = 0;
        enumeratorCopy[2](enumeratorCopy, v15, v16, &v31);
        if (v31)
        {

          goto LABEL_29;
        }

LABEL_27:

        ++v14;
      }

      while (v12 != v14);
      v12 = [activityItems countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

LABEL_29:
}

- (id)placeholderActivityItemValuesForSendCopyMode
{
  v29 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [(SHSheetActivityItemsManager *)self activityItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        activityViewController = [(SHSheetActivityItemsManager *)self activityViewController];
        v7 = [(SHSheetActivityItemsManager *)self placeholderActivityItemValuesForActivityItem:v5 activityViewController:activityViewController];

        if ([v7 count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v20;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v20 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v19 + 1) + 8 * j);
                if (v13)
                {
                  v14 = [[_UIActivityPlaceholderItemProxy alloc] initWithPlaceholderItem:v13];
                  if (v14)
                  {
                    [array addObject:v14];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v10);
          }
        }

        else if (v5)
        {
          [array addObject:v5];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  return array;
}

- (SFActivityItemsService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)_configureContentManagedForActivityItem:(uint64_t)a1 activityItemValue:(NSObject *)a2 outURLs:outScopedURLs:activity:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "aURL:%{private}@ is not shareable by client.", &v2, 0xCu);
}

void __49__SHSheetActivityItemsManager__updateURLRequests__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "URL:%{private}@ is not shareable by client.", &v2, 0xCu);
}

@end