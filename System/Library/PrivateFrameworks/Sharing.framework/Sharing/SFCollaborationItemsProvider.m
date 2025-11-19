@interface SFCollaborationItemsProvider
- (BOOL)supportsCollaboration;
- (BOOL)supportsSendCopy;
- (NSArray)placeholderActivityItems;
- (SFCollaborationItemsProvider)initWithActivityItems:(id)a3 delegate:(id)a4 managedFileURL:(id)a5 isURLProviderSupported:(BOOL)a6;
- (SFCollaborationItemsProviderDelegate)delegate;
- (id)activityItemsForActivity:(id)a3 collaborationResult:(id)a4 isCollaborative:(BOOL)a5;
- (id)collaborationItemForActivityItem:(id)a3;
- (id)collaborationItemsRequest:(id)a3 resolveActivityItem:(id)a4;
- (id)collaborationServiceForItemsRequest:(id)a3;
- (void)_didCompleteCollaborationItems:(id)a3;
- (void)_updateCollaborationItems;
- (void)setActivityItems:(id)a3;
- (void)setCollaborationItems:(id)a3;
@end

@implementation SFCollaborationItemsProvider

- (void)_updateCollaborationItems
{
  v35 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(SFCollaborationItemsProvider *)self currentRequest];

  if (v3)
  {
    v4 = [(SFCollaborationItemsProvider *)self currentRequest];
    [v4 cancel];

    [(SFCollaborationItemsProvider *)self setCurrentRequest:0];
  }

  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SFCollaborationItemsProvider *)self activityItems];
    *buf = 138477827;
    v31 = v6;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "update collaboration items for activityItems:%{private}@", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v22 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(SFCollaborationItemsProvider *)self activityItems];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v8);
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

          [v7 addObject:v14];
        }

        else
        {
          [v22 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  if ([v22 count])
  {
    v16 = share_sheet_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v31 = v22;
      _os_log_impl(&dword_1A9662000, v16, OS_LOG_TYPE_DEFAULT, "request collaboration items for activity items:%{private}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17 = [_SFCollaborationItemsRequest alloc];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__SFCollaborationItemsProvider__updateCollaborationItems__block_invoke;
    v23[3] = &unk_1E7890420;
    v24 = v7;
    objc_copyWeak(&v25, buf);
    v18 = [(_SFCollaborationItemsRequest *)v17 initWithActivityItems:v22 completionHandler:v23];
    [(_SFCollaborationItemsRequest *)v18 setDelegate:self];
    [(_SFCollaborationItemsRequest *)v18 setSupportsMultipleCollaboration:[(SFCollaborationItemsProvider *)self supportsMultipleCollaboration]];
    v19 = [(SFCollaborationItemsProvider *)self managedFileURL];
    [(_SFCollaborationItemsRequest *)v18 setManagedFileURL:v19];

    [(_SFCollaborationItemsRequest *)v18 setIsURLProviderSupported:[(SFCollaborationItemsProvider *)self isURLProviderSupported]];
    [(SFCollaborationItemsProvider *)self setCurrentRequest:v18];
    [(_SFCollaborationItemsRequest *)v18 perform];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SFCollaborationItemsProvider *)self setCollaborationItems:v7];
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
  v3 = [(SFCollaborationItemsProvider *)self collaborationItems];
  v4 = [v3 firstObject];

  if (v4)
  {
    LODWORD(v5) = ![(SFCollaborationItemsProvider *)self multipleCollaborationItems];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (![v4 type])
  {
    v6 = v4;
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
  v2 = [(SFCollaborationItemsProvider *)self collaborationItems];
  v3 = [v2 firstObject];

  v4 = [v3 sendCopyItems];
  v5 = [v4 count] != 0;

  return v5;
}

- (SFCollaborationItemsProvider)initWithActivityItems:(id)a3 delegate:(id)a4 managedFileURL:(id)a5 isURLProviderSupported:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = SFCollaborationItemsProvider;
  v13 = [(SFCollaborationItemsProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_supportsMultipleCollaboration = 0;
    objc_storeStrong(&v13->_managedFileURL, a5);
    v14->_isURLProviderSupported = a6;
    v15 = [v10 copy];
    activityItems = v14->_activityItems;
    v14->_activityItems = v15;

    objc_storeWeak(&v14->_delegate, v11);
    [(SFCollaborationItemsProvider *)v14 _updateCollaborationItems];
  }

  return v14;
}

- (id)activityItemsForActivity:(id)a3 collaborationResult:(id)a4 isCollaborative:(BOOL)a5
{
  v5 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v47 = a4;
  v9 = share_sheet_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 activityType];
    *buf = 138412290;
    v59 = v10;
    _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_DEFAULT, "Updating activity items including collaboration items for activityType:%@", buf, 0xCu);
  }

  v11 = [(SFCollaborationItemsProvider *)self activityItems];
  if (!v5)
  {
    v13 = [(SFCollaborationItemsProvider *)self collaborationItems];
    v14 = [v13 firstObject];
    v15 = [v14 sendCopyItems];

    v11 = v14;
    goto LABEL_41;
  }

  v48 = [MEMORY[0x1E695DF70] array];
  if (!v8)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = [(SFCollaborationItemsProvider *)self activityItems];
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v45 = v11;
      v46 = 0;
      v19 = *v54;
      v20 = v48;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          v23 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v22, v45, v46];
          v24 = v23;
          if (v23)
          {
            v25 = [v23 placeholderActivityItem];
            if (v25)
            {
              v26 = share_sheet_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138478083;
                v59 = v22;
                v60 = 2113;
                v61 = v25;
                _os_log_impl(&dword_1A9662000, v26, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with placeholder:%{private}@", buf, 0x16u);
              }

              v20 = v48;
              v27 = v48;
              v28 = v25;
            }

            else
            {
              v27 = v20;
              v28 = v22;
            }

            [v27 addObject:v28];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v18);
      goto LABEL_38;
    }

LABEL_39:
    v13 = v48;
    goto LABEL_40;
  }

  v12 = [v8 activityType];
  if (![SFCollaborationUtilities isHeroCollaborationActivityType:v12])
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
    v16 = [(SFCollaborationItemsProvider *)self activityItems];
    v30 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v30)
    {
      v31 = v30;
      v45 = v11;
      v46 = v8;
      v32 = *v50;
      v20 = v48;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v16);
          }

          v34 = *(*(&v49 + 1) + 8 * j);
          v35 = [(SFCollaborationItemsProvider *)self collaborationItemForActivityItem:v34, v45, v46];
          v36 = v35;
          if (v35)
          {
            v37 = [v35 identifier];
            v38 = [v47 collaborationItemIdentifier];
            v39 = [v37 isEqual:v38];

            if (v39)
            {
              v40 = share_sheet_log();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = [v47 sharingURL];
                *buf = 138478083;
                v59 = v34;
                v60 = 2112;
                v61 = v41;
                _os_log_impl(&dword_1A9662000, v40, OS_LOG_TYPE_DEFAULT, "Replace activity item:%{private}@ with sharingURL:%@", buf, 0x16u);
              }

              v42 = [v47 sharingURL];
              v20 = v48;
              [v48 addObject:v42];
            }

            else
            {
              v20 = v48;
              [v48 addObject:v34];
            }
          }
        }

        v31 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v31);
LABEL_38:
      v13 = v20;
      v11 = v45;
      v8 = v46;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_24:
  v13 = [MEMORY[0x1E695DF70] array];
  v16 = v48;
LABEL_40:

  v15 = [v13 copy];
LABEL_41:

  v43 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)collaborationItemForActivityItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(SFCollaborationItemsProvider *)self collaborationItems];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 activityItem];
        v11 = v4;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_15:
          v6 = v9;
          goto LABEL_16;
        }

        if ((v4 == 0) != (v10 != 0))
        {
          v13 = [v10 isEqual:v11];

          if (v13)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(SFCollaborationItemsProvider *)self activityItems];
  v4 = [v3 mutableCopy];

  v5 = [(SFCollaborationItemsProvider *)self activityItems];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __56__SFCollaborationItemsProvider_placeholderActivityItems__block_invoke;
  v12 = &unk_1E788F8C8;
  v13 = self;
  v14 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v9];

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

- (void)setActivityItems:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToArray:self->_activityItems] & 1) == 0)
  {
    v4 = [v6 copy];
    activityItems = self->_activityItems;
    self->_activityItems = v4;

    [(SFCollaborationItemsProvider *)self _updateCollaborationItems];
  }
}

- (void)setCollaborationItems:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!-[SFCollaborationItemsProvider supportsMultipleCollaboration](self, "supportsMultipleCollaboration") && [v4 count] >= 2)
  {
    v5 = [v4 firstObject];
    v6 = [v5 type];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v4;
    v7 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (!v7)
    {
LABEL_18:
      v15 = v4;
LABEL_19:

      v4 = v15;
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
          objc_enumerationMutation(v4);
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

      v8 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v8);

    if (v6 && v9 == 1)
    {
      v12 = share_sheet_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 firstObject];
        *buf = 138477827;
        v26 = v13;
        _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring file collaboration objects in favour of non-file collaboration object because collaboration is not supported for multiple items. Assumption is that the file objects are send copy items. Collaboration item: %{private}@", buf, 0xCu);
      }

      v14 = [v4 firstObject];
      v24 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

      v4 = v14;
      goto LABEL_19;
    }
  }

LABEL_20:
  if (([v4 isEqualToArray:{self->_collaborationItems, v20}] & 1) == 0)
  {
    v16 = [v4 copy];
    collaborationItems = self->_collaborationItems;
    self->_collaborationItems = v16;

    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v26 = v4;
      _os_log_impl(&dword_1A9662000, v18, OS_LOG_TYPE_DEFAULT, "Did set collaborationItems:%{private}@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteCollaborationItems:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = v4;
    _os_log_impl(&dword_1A9662000, v5, OS_LOG_TYPE_DEFAULT, "did found collaboration items:%{private}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(SFCollaborationItemsProvider *)self setCollaborationItems:v4];
  [(SFCollaborationItemsProvider *)self setCurrentRequest:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)collaborationItemsRequest:(id)a3 resolveActivityItem:(id)a4
{
  v5 = a4;
  v6 = [(SFCollaborationItemsProvider *)self delegate];
  v7 = [v6 collaborationItemsProvider:self resolveActivityItem:v5];

  return v7;
}

- (id)collaborationServiceForItemsRequest:(id)a3
{
  v4 = [(SFCollaborationItemsProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SFCollaborationItemsProvider *)self delegate];
    v7 = [v6 collaborationServiceForItemsProvider:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end