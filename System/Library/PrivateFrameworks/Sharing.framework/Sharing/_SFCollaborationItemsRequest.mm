@interface _SFCollaborationItemsRequest
- (_SFCollaborationItemsRequest)initWithActivityItems:(id)a3 completionHandler:(id)a4;
- (_SFCollaborationItemsRequestDelegate)delegate;
- (id)collaborationService;
- (void)_addCollaborationItem:(id)a3;
- (void)_processRemainingActivityItems;
@end

@implementation _SFCollaborationItemsRequest

- (_SFCollaborationItemsRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)collaborationService
{
  v3 = [(_SFCollaborationItemsRequest *)self delegate];
  v4 = [v3 collaborationServiceForItemsRequest:self];

  return v4;
}

- (void)_processRemainingActivityItems
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(_SFCollaborationItemsRequest *)self supportsMultipleCollaboration])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(_SFCollaborationItemsRequest *)self collaborationItems];
    if ([v4 count] == 2)
    {
      v5 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      v6 = [v5 objectAtIndexedSubscript:0];
      if ([v6 type])
      {
        v3 = 0;
      }

      else
      {
        v7 = [(_SFCollaborationItemsRequest *)self collaborationItems];
        v8 = [v7 objectAtIndexedSubscript:1];
        v3 = [v8 type] == 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  v9 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
  v10 = [v9 count];

  if (!v3 && v10)
  {
    v11 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
    v12 = [v11 firstObject];

    v13 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
    [v13 removeObjectAtIndex:0];

    v14 = [(_SFCollaborationItemsRequest *)self delegate];
    v15 = [v14 collaborationItemsRequest:self resolveActivityItem:v12];

    v16 = [v15 firstObject];
    if (![(_SFCollaborationItemsRequest *)self supportsMultipleCollaboration])
    {
      v17 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      if (![v17 count])
      {
        v26 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
        if ([v26 count])
        {
          v27 = [SFCollaborationUtilities isInPlaceFileOrURLItemProvider:v16];

          if (!v27)
          {
            goto LABEL_15;
          }

          v28 = [(_SFCollaborationItemsRequest *)self delegate];
          v29 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
          v30 = [v29 firstObject];
          v31 = [v28 collaborationItemsRequest:self resolveActivityItem:v30];
          v17 = [v31 firstObject];

          if ([SFCollaborationUtilities isInPlaceFileOrURLItemProvider:v17])
          {
            v32 = share_sheet_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A9662000, v32, OS_LOG_TYPE_DEFAULT, "Skipping collaboration item inspection because we have multiple file NSItemProviders", buf, 2u);
            }

            v33 = [(_SFCollaborationItemsRequest *)self completionHandler];
            [(_SFCollaborationItemsRequest *)self setCompletionHandler:0];
            v34 = [(_SFCollaborationItemsRequest *)self collaborationItems];
            (v33)[2](v33, v34, 0);

            goto LABEL_24;
          }
        }

        else
        {
        }
      }
    }

LABEL_15:
    v18 = [(_SFCollaborationItemsRequest *)self collaborationItems];
    v19 = [v18 firstObject];
    if ([v19 type] == 1)
    {
      v20 = 0;
    }

    else
    {
      v22 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      v23 = [v22 firstObject];
      v20 = [v23 type] != 2;
    }

    v24 = [(_SFCollaborationItemsRequest *)self collaborationService];
    v25 = [(_SFCollaborationItemsRequest *)self managedFileURL];
    v17 = [SFCollaborationItemInspector inspectActivityItemValue:v16 activityItem:v12 service:v24 shouldInspectFiles:v20 managedFileURL:v25 isURLProviderSupported:[(_SFCollaborationItemsRequest *)self isURLProviderSupported]];

    if (v17)
    {
      [(_SFCollaborationItemsRequest *)self _addCollaborationItem:v17];
    }

    [(_SFCollaborationItemsRequest *)self _processRemainingActivityItems];
LABEL_24:

    return;
  }

  v35 = [(_SFCollaborationItemsRequest *)self completionHandler];
  [(_SFCollaborationItemsRequest *)self setCompletionHandler:0];
  v21 = [(_SFCollaborationItemsRequest *)self collaborationItems];
  v35[2](v35, v21, 0);
}

- (_SFCollaborationItemsRequest)initWithActivityItems:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _SFCollaborationItemsRequest;
  v8 = [(_SFCollaborationItemsRequest *)&v20 init];
  if (v8)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v22 = v6;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "New _SFCollaborationItemsRequest for activityItems:%{private}@", buf, 0xCu);
    }

    v10 = [v6 copy];
    activityItems = v8->_activityItems;
    v8->_activityItems = v10;

    v12 = [v7 copy];
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v12;

    v14 = [v6 mutableCopy];
    remainingActivityItems = v8->_remainingActivityItems;
    v8->_remainingActivityItems = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    collaborationItems = v8->_collaborationItems;
    v8->_collaborationItems = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_addCollaborationItem:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF70] array];
  v19 = v4;
  v22 = [v4 type] != 1 && objc_msgSend(v4, "type") != 2;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [(_SFCollaborationItemsRequest *)self delegate];
        v11 = [v10 collaborationItemsRequest:self resolveActivityItem:v9];

        v12 = [v11 firstObject];
        v13 = [(_SFCollaborationItemsRequest *)self collaborationService];
        v14 = [(_SFCollaborationItemsRequest *)self managedFileURL];
        v15 = [SFCollaborationItemInspector inspectActivityItemValue:v12 activityItem:v9 service:v13 shouldInspectFiles:v22 managedFileURL:v14 isURLProviderSupported:[(_SFCollaborationItemsRequest *)self isURLProviderSupported]];

        if (v15)
        {

          goto LABEL_16;
        }

        [v23 addObject:v9];
        if (v12)
        {
          [v21 addObject:v12];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v16 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
  [v16 removeObjectsInArray:v23];

  [v19 setSendCopyActivityItems:v23];
  [v19 setSendCopyActivityItemValues:v21];
  v17 = [(_SFCollaborationItemsRequest *)self collaborationItems];
  [v17 addObject:v19];

  v18 = *MEMORY[0x1E69E9840];
}

@end