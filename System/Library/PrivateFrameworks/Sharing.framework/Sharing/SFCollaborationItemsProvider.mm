@interface SFCollaborationItemsProvider
- (BOOL)supportsCollaboration;
- (BOOL)supportsSendCopy;
- (NSArray)placeholderActivityItems;
- (SFCollaborationItemsProvider)initWithActivityItems:(id)items delegate:(id)delegate managedFileURL:(id)l isURLProviderSupported:(BOOL)supported;
- (SFCollaborationItemsProviderDelegate)delegate;
- (id)activityItemsForActivity:(id)activity collaborationResult:(id)result isCollaborative:(BOOL)collaborative;
- (id)collaborationItemForActivityItem:(id)item;
- (id)collaborationItemsRequest:(id)request resolveActivityItem:(id)item;
- (id)collaborationServiceForItemsRequest:(id)request;
- (void)_didCompleteCollaborationItems:(id)items;
- (void)_updateCollaborationItems;
- (void)setActivityItems:(id)items;
- (void)setCollaborationItems:(id)items;
@end

@implementation SFCollaborationItemsProvider

- (void)_updateCollaborationItems
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  currentRequest = [(SFCollaborationItemsProvider *)self currentRequest];

  if (currentRequest)
  {
    currentRequest2 = [(SFCollaborationItemsProvider *)self currentRequest];
    [currentRequest2 cancel];

    [(SFCollaborationItemsProvider *)self setCurrentRequest:0];
  }

  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    activityItems = [(SFCollaborationItemsProvider *)self activityItems];
    *buf = 138477827;
    v31 = activityItems;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "update collaboration items for activityItems:%{private}@", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
  v9 = [activityItems2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v11 = *v27;
    *&v10 = 138478083;
    v21 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(activityItems2);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v13, v21];
        if (v14)
        {
          v15 = share_sheet_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v31 = v14;
            v32 = 2113;
            v33 = v13;
            _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "did found cached collaboration item:%{private}@ for activityItem:%{private}@", buf, 0x16u);
          }

          [array addObject:v14];
        }

        else
        {
          [array2 addObject:v13];
        }
      }

      v9 = [activityItems2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  if ([array2 count])
  {
    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v31 = array2;
      _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "request collaboration items for activity items:%{private}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17 = [_SFCollaborationItemsRequest alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke;
    v23[3] = &unk_1E7890420;
    v24 = array;
    objc_copyWeak(&v25, buf);
    v18 = [(_SFCollaborationItemsRequest *)v17 initWithActivityItems:array2 completionHandler:v23];
    [(_SFCollaborationItemsRequest *)v18 setDelegate:self];
    [(_SFCollaborationItemsRequest *)v18 setSupportsMultipleCollaboration:[(SFCollaborationItemsProvider *)self supportsMultipleCollaboration]];
    managedFileURL = [(SFCollaborationItemsProvider *)self managedFileURL];
    [(_SFCollaborationItemsRequest *)v18 setManagedFileURL:managedFileURL];

    [(_SFCollaborationItemsRequest *)v18 setIsURLProviderSupported:[(SFCollaborationItemsProvider *)self isURLProviderSupported]];
    [(SFCollaborationItemsProvider *)self setCurrentRequest:v18];
    [(_SFCollaborationItemsRequest *)v18 perform];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SFCollaborationItemsProvider *)self setCollaborationItems:array];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke_2;
  v8[3] = &unk_1E78903F8;
  v9 = *(a1 + 32);
  v7 = v5;
  v10 = v7;
  objc_copyWeak(&v11, (a1 + 40));
  sf_dispatch_on_main_queue(v8);
  objc_destroyWeak(&v11);
}

void __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didCompleteCollaborationItems:v3];
}

- (SFCollaborationItemsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)supportsCollaboration
{
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  firstObject = [collaborationItems firstObject];

  if (firstObject)
  {
    LODWORD(v5) = ![(SFCollaborationItemsProvider *)self multipleCollaborationItems];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (![firstObject type])
  {
    v6 = firstObject;
    if ([v6 defaultCollaboration] & 1) != 0 || (objc_msgSend(v6, "isiCloudDrive"))
    {
      if ([v6 isInSharedFolder])
      {
        v5 = share_sheet_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [SFCollaborationItemsProvider supportsCollaboration];
        }
      }

      else if ([v6 isThirdPartyFileProviderBacked])
      {
        v5 = share_sheet_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [SFCollaborationItemsProvider supportsCollaboration];
        }
      }

      else
      {
        if ([v6 isLocalStorage] & 1) != 0 || (objc_msgSend(v6, "isiCloudDrive"))
        {
          goto LABEL_16;
        }

        v5 = share_sheet_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [SFCollaborationItemsProvider supportsCollaboration];
        }
      }
    }

    else
    {
      v5 = share_sheet_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [SFCollaborationItemsProvider supportsCollaboration];
      }
    }

    LOBYTE(v5) = 0;
LABEL_16:
  }

  return v5;
}

- (BOOL)supportsSendCopy
{
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  firstObject = [collaborationItems firstObject];

  sendCopyItems = [firstObject sendCopyItems];
  v5 = [sendCopyItems count] != 0;

  return v5;
}

- (SFCollaborationItemsProvider)initWithActivityItems:(id)items delegate:(id)delegate managedFileURL:(id)l isURLProviderSupported:(BOOL)supported
{
  itemsCopy = items;
  delegateCopy = delegate;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SFCollaborationItemsProvider;
  v13 = [(SFCollaborationItemsProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_supportsMultipleCollaboration = 0;
    objc_storeStrong(&v13->_managedFileURL, l);
    v14->_isURLProviderSupported = supported;
    v15 = [itemsCopy copy];
    activityItems = v14->_activityItems;
    v14->_activityItems = v15;

    objc_storeWeak(&v14->_delegate, delegateCopy);
    [(SFCollaborationItemsProvider *)v14 _updateCollaborationItems];
  }

  return v14;
}

- (id)activityItemsForActivity:(id)activity collaborationResult:(id)result isCollaborative:(BOOL)collaborative
{
  collaborativeCopy = collaborative;
  v63 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  resultCopy = result;
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    activityType = [activityCopy activityType];
    *buf = 138412290;
    v59 = activityType;
    _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Updating activity items including collaboration items for activityType:%@", buf, 0xCu);
  }

  activityItems = [(SFCollaborationItemsProvider *)self activityItems];
  if (!collaborativeCopy)
  {
    collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
    firstObject = [collaborationItems firstObject];
    sendCopyItems = [firstObject sendCopyItems];

    activityItems = firstObject;
    goto LABEL_41;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!activityCopy)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
    v17 = [activityItems2 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v45 = activityItems;
      v46 = 0;
      v19 = *v54;
      v20 = array;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(activityItems2);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          v23 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v22, v45, v46];
          v24 = v23;
          if (v23)
          {
            placeholderActivityItem = [v23 placeholderActivityItem];
            if (placeholderActivityItem)
            {
              v26 = share_sheet_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138478083;
                v59 = v22;
                v60 = 2113;
                v61 = placeholderActivityItem;
                _os_log_impl(&dword_1A9662000, v26, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with placeholder:%{private}@", buf, 0x16u);
              }

              v20 = array;
              v27 = array;
              v28 = placeholderActivityItem;
            }

            else
            {
              v27 = v20;
              v28 = v22;
            }

            [v27 addObject:v28];
          }
        }

        v18 = [activityItems2 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v18);
      goto LABEL_38;
    }

LABEL_39:
    collaborationItems = array;
    goto LABEL_40;
  }

  activityType2 = [activityCopy activityType];
  if (![SFCollaborationUtilities isHeroCollaborationActivityType:activityType2])
  {
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      goto LABEL_24;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
    v30 = [activityItems2 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v45 = activityItems;
      v46 = activityCopy;
      v32 = *v50;
      v20 = array;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(activityItems2);
          }

          v34 = *(*(&v49 + 1) + 8 * j);
          v35 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v34, v45, v46];
          v36 = v35;
          if (v35)
          {
            identifier = [v35 identifier];
            collaborationItemIdentifier = [resultCopy collaborationItemIdentifier];
            v39 = [identifier isEqual:collaborationItemIdentifier];

            if (v39)
            {
              v40 = share_sheet_log();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                sharingURL = [resultCopy sharingURL];
                *buf = 138478083;
                v59 = v34;
                v60 = 2112;
                v61 = sharingURL;
                _os_log_impl(&dword_1A9662000, v40, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with sharingURL:%@", buf, 0x16u);
              }

              sharingURL2 = [resultCopy sharingURL];
              v20 = array;
              [array addObject:sharingURL2];
            }

            else
            {
              v20 = array;
              [array addObject:v34];
            }
          }
        }

        v31 = [activityItems2 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v31);
LABEL_38:
      collaborationItems = v20;
      activityItems = v45;
      activityCopy = v46;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_24:
  collaborationItems = [MEMORY[0x1E695DF70] array];
  activityItems2 = array;
LABEL_40:

  sendCopyItems = [collaborationItems copy];
LABEL_41:

  v43 = *MEMORY[0x1E69E9840];

  return sendCopyItems;
}

- (id)collaborationItemForActivityItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collaborationItems = [(SFCollaborationItemsProvider *)self collaborationItems];
  v6 = [collaborationItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(collaborationItems);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        activityItem = [v9 activityItem];
        v11 = itemCopy;
        v12 = v11;
        if (activityItem == v11)
        {

LABEL_15:
          v6 = v9;
          goto LABEL_16;
        }

        if ((itemCopy == 0) != (activityItem != 0))
        {
          v13 = [activityItem isEqual:v11];

          if (v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [collaborationItems countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSArray)placeholderActivityItems
{
  activityItems = [(SFCollaborationItemsProvider *)self activityItems];
  v4 = [activityItems mutableCopy];

  activityItems2 = [(SFCollaborationItemsProvider *)self activityItems];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__SFCollaborationItemsProvider_placeholderActivityItems__block_invoke;
  v12 = &unk_1E788F8C8;
  selfCopy = self;
  v14 = v4;
  v6 = v4;
  [activityItems2 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 copy];

  return v7;
}

void __56__SFCollaborationItemsProvider_placeholderActivityItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) collaborationItemForActivityItem:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 placeholderActivityItem];
    if (v8)
    {
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138478083;
        v12 = v5;
        v13 = 2113;
        v14 = v8;
        _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with placeholder:%{private}@", &v11, 0x16u);
      }

      [*(a1 + 40) replaceObjectAtIndex:a3 withObject:v8];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setActivityItems:(id)items
{
  itemsCopy = items;
  if (([itemsCopy isEqualToArray:self->_activityItems] & 1) == 0)
  {
    v4 = [itemsCopy copy];
    activityItems = self->_activityItems;
    self->_activityItems = v4;

    [(SFCollaborationItemsProvider *)self _updateCollaborationItems];
  }
}

- (void)setCollaborationItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!-[SFCollaborationItemsProvider supportsMultipleCollaboration](self, "supportsMultipleCollaboration") && [itemsCopy count] >= 2)
  {
    firstObject = [itemsCopy firstObject];
    type = [firstObject type];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    itemsCopy = itemsCopy;
    v7 = [itemsCopy countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (!v7)
    {
LABEL_18:
      v15 = itemsCopy;
LABEL_19:

      itemsCopy = v15;
      goto LABEL_20;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(itemsCopy);
        }

        if ([*(*(&v20 + 1) + 8 * i) type])
        {
          if (v9 > 0)
          {
            goto LABEL_18;
          }

          v9 = 1;
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v8);

    if (type && v9 == 1)
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        firstObject2 = [itemsCopy firstObject];
        *buf = 138477827;
        v26 = firstObject2;
        _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring file collaboration objects in favour of non-file collaboration object because collaboration is not supported for multiple items. Assumption is that the file objects are send copy items. Collaboration item: %{private}@", buf, 0xCu);
      }

      firstObject3 = [itemsCopy firstObject];
      v24 = firstObject3;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

      itemsCopy = firstObject3;
      goto LABEL_19;
    }
  }

LABEL_20:
  if (([itemsCopy isEqualToArray:{self->_collaborationItems, v20}] & 1) == 0)
  {
    v16 = [itemsCopy copy];
    collaborationItems = self->_collaborationItems;
    self->_collaborationItems = v16;

    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v26 = itemsCopy;
      _os_log_impl(&dword_1A9662000, v18, OS_LOG_TYPE_DEFAULT, "Did set collaborationItems:%{private}@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteCollaborationItems:(id)items
{
  v9 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = itemsCopy;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did found collaboration items:%{private}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SFCollaborationItemsProvider *)self setCollaborationItems:itemsCopy];
  [(SFCollaborationItemsProvider *)self setCurrentRequest:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)collaborationItemsRequest:(id)request resolveActivityItem:(id)item
{
  itemCopy = item;
  delegate = [(SFCollaborationItemsProvider *)self delegate];
  v7 = [delegate collaborationItemsProvider:self resolveActivityItem:itemCopy];

  return v7;
}

- (id)collaborationServiceForItemsRequest:(id)request
{
  delegate = [(SFCollaborationItemsProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SFCollaborationItemsProvider *)self delegate];
    v7 = [delegate2 collaborationServiceForItemsProvider:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end