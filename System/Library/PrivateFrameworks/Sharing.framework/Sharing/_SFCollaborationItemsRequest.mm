@interface _SFCollaborationItemsRequest
- (_SFCollaborationItemsRequest)initWithActivityItems:(id)items completionHandler:(id)handler;
- (_SFCollaborationItemsRequestDelegate)delegate;
- (id)collaborationService;
- (void)_addCollaborationItem:(id)item;
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
  delegate = [(_SFCollaborationItemsRequest *)self delegate];
  v4 = [delegate collaborationServiceForItemsRequest:self];

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
    collaborationItems = [(_SFCollaborationItemsRequest *)self collaborationItems];
    if ([collaborationItems count] == 2)
    {
      collaborationItems2 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      v6 = [collaborationItems2 objectAtIndexedSubscript:0];
      if ([v6 type])
      {
        v3 = 0;
      }

      else
      {
        collaborationItems3 = [(_SFCollaborationItemsRequest *)self collaborationItems];
        v8 = [collaborationItems3 objectAtIndexedSubscript:1];
        v3 = [v8 type] == 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  remainingActivityItems = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
  v10 = [remainingActivityItems count];

  if (!v3 && v10)
  {
    remainingActivityItems2 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
    firstObject = [remainingActivityItems2 firstObject];

    remainingActivityItems3 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
    [remainingActivityItems3 removeObjectAtIndex:0];

    delegate = [(_SFCollaborationItemsRequest *)self delegate];
    v15 = [delegate collaborationItemsRequest:self resolveActivityItem:firstObject];

    firstObject2 = [v15 firstObject];
    if (![(_SFCollaborationItemsRequest *)self supportsMultipleCollaboration])
    {
      collaborationItems4 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      if (![collaborationItems4 count])
      {
        remainingActivityItems4 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
        if ([remainingActivityItems4 count])
        {
          v27 = [SFCollaborationUtilities isInPlaceFileOrURLItemProvider:firstObject2];

          if (!v27)
          {
            goto LABEL_15;
          }

          delegate2 = [(_SFCollaborationItemsRequest *)self delegate];
          remainingActivityItems5 = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
          firstObject3 = [remainingActivityItems5 firstObject];
          v31 = [delegate2 collaborationItemsRequest:self resolveActivityItem:firstObject3];
          collaborationItems4 = [v31 firstObject];

          if ([SFCollaborationUtilities isInPlaceFileOrURLItemProvider:collaborationItems4])
          {
            v32 = share_sheet_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A9662000, v32, OS_LOG_TYPE_DEFAULT, "Skipping collaboration item inspection because we have multiple file NSItemProviders", buf, 2u);
            }

            completionHandler = [(_SFCollaborationItemsRequest *)self completionHandler];
            [(_SFCollaborationItemsRequest *)self setCompletionHandler:0];
            collaborationItems5 = [(_SFCollaborationItemsRequest *)self collaborationItems];
            (completionHandler)[2](completionHandler, collaborationItems5, 0);

            goto LABEL_24;
          }
        }

        else
        {
        }
      }
    }

LABEL_15:
    collaborationItems6 = [(_SFCollaborationItemsRequest *)self collaborationItems];
    firstObject4 = [collaborationItems6 firstObject];
    if ([firstObject4 type] == 1)
    {
      v20 = 0;
    }

    else
    {
      collaborationItems7 = [(_SFCollaborationItemsRequest *)self collaborationItems];
      firstObject5 = [collaborationItems7 firstObject];
      v20 = [firstObject5 type] != 2;
    }

    collaborationService = [(_SFCollaborationItemsRequest *)self collaborationService];
    managedFileURL = [(_SFCollaborationItemsRequest *)self managedFileURL];
    collaborationItems4 = [SFCollaborationItemInspector inspectActivityItemValue:firstObject2 activityItem:firstObject service:collaborationService shouldInspectFiles:v20 managedFileURL:managedFileURL isURLProviderSupported:[(_SFCollaborationItemsRequest *)self isURLProviderSupported]];

    if (collaborationItems4)
    {
      [(_SFCollaborationItemsRequest *)self _addCollaborationItem:collaborationItems4];
    }

    [(_SFCollaborationItemsRequest *)self _processRemainingActivityItems];
LABEL_24:

    return;
  }

  completionHandler2 = [(_SFCollaborationItemsRequest *)self completionHandler];
  [(_SFCollaborationItemsRequest *)self setCompletionHandler:0];
  collaborationItems8 = [(_SFCollaborationItemsRequest *)self collaborationItems];
  completionHandler2[2](completionHandler2, collaborationItems8, 0);
}

- (_SFCollaborationItemsRequest)initWithActivityItems:(id)items completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = _SFCollaborationItemsRequest;
  v8 = [(_SFCollaborationItemsRequest *)&v20 init];
  if (v8)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v22 = itemsCopy;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "New _SFCollaborationItemsRequest for activityItems:%{private}@", buf, 0xCu);
    }

    v10 = [itemsCopy copy];
    activityItems = v8->_activityItems;
    v8->_activityItems = v10;

    v12 = [handlerCopy copy];
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v12;

    v14 = [itemsCopy mutableCopy];
    remainingActivityItems = v8->_remainingActivityItems;
    v8->_remainingActivityItems = v14;

    array = [MEMORY[0x1E695DF70] array];
    collaborationItems = v8->_collaborationItems;
    v8->_collaborationItems = array;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_addCollaborationItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v19 = itemCopy;
  v22 = [itemCopy type] != 1 && objc_msgSend(itemCopy, "type") != 2;
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
        delegate = [(_SFCollaborationItemsRequest *)self delegate];
        v11 = [delegate collaborationItemsRequest:self resolveActivityItem:v9];

        firstObject = [v11 firstObject];
        collaborationService = [(_SFCollaborationItemsRequest *)self collaborationService];
        managedFileURL = [(_SFCollaborationItemsRequest *)self managedFileURL];
        v15 = [SFCollaborationItemInspector inspectActivityItemValue:firstObject activityItem:v9 service:collaborationService shouldInspectFiles:v22 managedFileURL:managedFileURL isURLProviderSupported:[(_SFCollaborationItemsRequest *)self isURLProviderSupported]];

        if (v15)
        {

          goto LABEL_16;
        }

        [array addObject:v9];
        if (firstObject)
        {
          [array2 addObject:firstObject];
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

  remainingActivityItems = [(_SFCollaborationItemsRequest *)self remainingActivityItems];
  [remainingActivityItems removeObjectsInArray:array];

  [v19 setSendCopyActivityItems:array];
  [v19 setSendCopyActivityItemValues:array2];
  collaborationItems = [(_SFCollaborationItemsRequest *)self collaborationItems];
  [collaborationItems addObject:v19];

  v18 = *MEMORY[0x1E69E9840];
}

@end