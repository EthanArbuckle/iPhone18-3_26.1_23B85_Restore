@interface _UIConcretePasteboard
+ (id)_existingCachedPasteboardWithName:(id)a3;
+ (id)_loadRequestContextForBlockingUIKitCall:(BOOL)a3;
+ (id)_pasteboardNamed:(id)a3 createIfNotFound:(BOOL)a4;
+ (id)_pasteboardWithUniqueName;
+ (id)_remoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5;
+ (id)clientValueForValue:(id)a3 pattern:(id)a4;
+ (void)_asynchronouslyEnumerateItemSet:(id)a3 itemsCompletionHandler:(id)a4 usingItemBlock:(id)a5;
+ (void)_attemptAuthenticationWithMessage:(id)a3;
+ (void)_clearPinnedItemProvidersForPasteboardNamed:(id)a3;
+ (void)_detectPatternsForPatterns:(id)a3 atIndex:(unint64_t)a4 itemCollection:(id)a5 completionHandler:(id)a6;
+ (void)_detectValuesForPatterns:(id)a3 atIndex:(unint64_t)a4 itemCollection:(id)a5 completionHandler:(id)a6;
+ (void)_pinItemProviders:(id)a3 forPasteboardNamed:(id)a4 withExpirationDate:(id)a5;
+ (void)removePasteboardWithName:(id)a3;
- (BOOL)_pasteboardCacheQueue_isPersistent;
- (BOOL)_pasteboardCacheQueue_saveItemCollection:(id)a3 currentNotificationState:(unint64_t)a4 outNewNotificationState:(unint64_t *)a5;
- (BOOL)_pasteboardCacheQueue_setPersistent:(BOOL)a3 currentNotificationState:(unint64_t)a4 outNewNotificationState:(unint64_t *)a5;
- (BOOL)canInstantiateObjectsOfClass:(Class)a3;
- (BOOL)containsPasteboardTypes:(id)a3;
- (BOOL)containsPasteboardTypes:(id)a3 inItemSet:(id)a4;
- (BOOL)hasColors;
- (BOOL)hasImages;
- (BOOL)hasStrings;
- (BOOL)hasURLs;
- (BOOL)isPersistent;
- (id)URL;
- (id)URLs;
- (id)_detectedPasteboardTypeStringsForTypes:(id)a3;
- (id)_detectedPasteboardTypesForTypes:(id)a3;
- (id)_initWithName:(id)a3;
- (id)_itemsCoercibleToClass:(Class)a3;
- (id)availableTypes;
- (id)color;
- (id)colors;
- (id)dataForPasteboardType:(id)a3;
- (id)dataForPasteboardType:(id)a3 inItemSet:(id)a4;
- (id)image;
- (id)images;
- (id)itemProvidersForInstantiatingObjectsOfClass:(Class)a3;
- (id)itemProvidersWithRetryBehavior:(BOOL)a3;
- (id)itemSetWithPasteboardTypes:(id)a3;
- (id)items;
- (id)pasteSharingToken;
- (id)pasteboardTypes;
- (id)pasteboardTypesForItemSet:(id)a3;
- (id)string;
- (id)strings;
- (id)valueForPasteboardType:(id)a3;
- (id)valuesForPasteboardType:(id)a3 inItemSet:(id)a4;
- (int64_t)_changeCountIgnoringPinningActivity;
- (int64_t)changeCount;
- (int64_t)numberOfItems;
- (void)_clearItems;
- (void)_pinItemCollection:(id)a3;
- (void)_pinItemProviders:(id)a3 expirationDate:(id)a4;
- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5;
- (void)_saveItemCollection:(id)a3;
- (void)_sendPasteboardTypesChangedNotificationOldTypes:(id)a3 newTypes:(id)a4;
- (void)_setItemsAndSave:(id)a3 options:(id)a4 coerceStringsToURLs:(BOOL)a5;
- (void)_setItemsAndSave:(id)a3 options:(id)a4 coerceStringsToURLs:(BOOL)a5 dataOwner:(int64_t)a6;
- (void)_setItemsAndSaveFromObjects:(id)a3 ofClass:(Class)a4;
- (void)_setPersistent:(BOOL)a3;
- (void)addItems:(id)a3;
- (void)detectPatternsForPatterns:(id)a3 completionHandler:(id)a4;
- (void)detectPatternsForPatterns:(id)a3 inItemSet:(id)a4 completionHandler:(id)a5;
- (void)detectValuesForPatterns:(id)a3 completionHandler:(id)a4;
- (void)detectValuesForPatterns:(id)a3 inItemSet:(id)a4 completionHandler:(id)a5;
- (void)setColor:(id)a3;
- (void)setColors:(id)a3;
- (void)setData:(id)a3 forPasteboardType:(id)a4;
- (void)setImage:(id)a3;
- (void)setImages:(id)a3;
- (void)setItemProviders:(id)a3 localOnly:(BOOL)a4 expirationDate:(id)a5;
- (void)setItemProviders:(id)a3 options:(id)a4;
- (void)setItems:(id)a3 options:(id)a4;
- (void)setObjects:(id)a3 localOnly:(BOOL)a4 expirationDate:(id)a5;
- (void)setObjects:(id)a3 options:(id)a4;
- (void)setString:(id)a3;
- (void)setStrings:(id)a3;
- (void)setURL:(id)a3;
- (void)setURLs:(id)a3;
- (void)setValue:(id)a3 forPasteboardType:(id)a4;
@end

@implementation _UIConcretePasteboard

- (BOOL)_pasteboardCacheQueue_saveItemCollection:(id)a3 currentNotificationState:(unint64_t)a4 outNewNotificationState:(unint64_t *)a5
{
  v8 = a3;
  if (![v8 isPersistent])
  {
    _pasteboardCacheQueue_setItemCollectionForName(self->_name, v8);
    [v8 setChangeCount:{objc_msgSend(v8, "changeCount") + 1}];
    v14 = 1;
    if (!a5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_group_enter(self->_saveCompletionGroup);
  v9 = v8;
  v10 = _serverConnection();
  v11 = [v9 dataConsumersEndpoint];
  v22 = 0;
  v12 = [v10 savePasteboard:v9 dataProviderEndpoint:v11 error:&v22];

  v13 = v22;
  v14 = v13 == 0;
  if (v13)
  {
    v15 = v13;
    v16 = 0;
  }

  else
  {
    v17 = v12;
    v16 = v12;
  }

  v18 = v16;
  v19 = v13;
  if (v13)
  {
    v20 = [v9 name];
    NSLog(&cfstr_CouldNotSavePa.isa, v20, v19);
  }

  else
  {
    if ([v9 isPersistent])
    {
      _pasteboardCacheQueue_removeItemCollectionForName(self->_name);
    }

    a4 = [v18 notificationState];
    v20 = [v18 sharingToken];
    [(_UIConcretePasteboard *)self setSharingToken:v20];
  }

  dispatch_group_leave(self->_saveCompletionGroup);
  if (a5)
  {
LABEL_13:
    *a5 = a4;
  }

LABEL_14:

  return v14;
}

- (void)_saveItemCollection:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    v5 = self->_name;
    v6 = [v4 isPersistent];
    v7 = _pasteboardCacheQueue();
    if (v6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke;
      block[3] = &unk_1E70F3590;
      v8 = &v29;
      v29 = v5;
      v9 = v5;
      dispatch_sync(v7, block);

      dispatch_group_enter(self->_saveCompletionGroup);
      v10 = _serverConnection();
      v11 = [v4 dataConsumersEndpoint];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_2;
      v26[3] = &unk_1E711A390;
      v26[4] = self;
      v27 = v4;
      [v10 savePasteboard:v27 dataProviderEndpoint:v11 completionBlock:v26];

      v12 = v27;
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_4;
      v23[3] = &unk_1E70F35B8;
      v8 = &v24;
      v24 = v5;
      v14 = v4;
      v25 = v14;
      v15 = v5;
      dispatch_sync(v7, v23);

      [v14 setChangeCount:{objc_msgSend(v14, "changeCount") + 1}];
      v12 = v25;
    }

    _sendPasteboardChangedNotification(self);
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v13 = _pasteboardCacheQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_5;
    v16[3] = &unk_1E70FB728;
    v18 = &v19;
    v16[4] = self;
    v17 = v4;
    dispatch_sync(v13, v16);

    if (*(v20 + 24) == 1)
    {
      _sendPasteboardChangedNotification(self);
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)_pinItemCollection:(id)a3
{
  v4 = a3;
  v5 = _pasteboardCacheQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___UIConcretePasteboard__pinItemCollection___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (id)_pasteboardNamed:(id)a3 createIfNotFound:(BOOL)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = 0;
    if (([UIApp _isActivating] & 1) != 0 || objc_msgSend(UIApp, "_isResigningActive"))
    {
      v7 = [v6 isEqualToString:@"com.apple.UIKit.pboard.general"];
    }

    else
    {
      v7 = 0;
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v9 = _pasteboardCacheQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59___UIConcretePasteboard__pasteboardNamed_createIfNotFound___block_invoke;
    block[3] = &unk_1E711A3B8;
    v13 = &v22;
    v16 = v7;
    v17 = a4;
    v14 = &v18;
    v15 = a1;
    v12 = v6;
    dispatch_sync(v9, block);

    if (*(v19 + 24) == 1)
    {
      _sendPasteboardChangedNotification(v23[5]);
    }

    v8 = v23[5];

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_existingCachedPasteboardWithName:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__152;
  v15 = __Block_byref_object_dispose__152;
  v16 = 0;
  v4 = _pasteboardCacheQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___UIConcretePasteboard__existingCachedPasteboardWithName___block_invoke;
  v8[3] = &unk_1E70FCDA0;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (void)removePasteboardWithName:(id)a3
{
  v3 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__152;
  v20 = __Block_byref_object_dispose__152;
  v21 = 0;
  v4 = _pasteboardCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___UIConcretePasteboard_removePasteboardWithName___block_invoke;
  block[3] = &unk_1E70FCDA0;
  v15 = &v16;
  v5 = v3;
  v14 = v5;
  dispatch_sync(v4, block);

  v6 = _serverConnection();
  v12 = 0;
  v7 = [v6 deletePersistentPasteboardWithName:v5 error:&v12];
  v8 = v12;

  if (!v8)
  {
    v9 = _notificationStateQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50___UIConcretePasteboard_removePasteboardWithName___block_invoke_2;
    v11[3] = &__block_descriptor_40_e5_v8__0l;
    v11[4] = v7;
    dispatch_sync(v9, v11);

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"UIPasteboardRemovedNotification" object:v17[5] userInfo:0];
  }

  _Block_object_dispose(&v16, 8);
}

+ (void)_pinItemProviders:(id)a3 forPasteboardNamed:(id)a4 withExpirationDate:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v12)
    {
      v13 = *v38;
      do
      {
        v14 = 0;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [objc_alloc(MEMORY[0x1E69BC800]) initWithNSItemProvider:*(*(&v37 + 1) + 8 * v14)];
          [v10 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v12);
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__152;
    v35 = __Block_byref_object_dispose__152;
    v36 = 0;
    v16 = _pasteboardCacheQueue();
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __81___UIConcretePasteboard__pinItemProviders_forPasteboardNamed_withExpirationDate___block_invoke;
    v28 = &unk_1E70FCDA0;
    v30 = &v31;
    v17 = v8;
    v29 = v17;
    dispatch_sync(v16, &v25);

    v18 = [v32[5] copyWithItems:{v10, v25, v26, v27, v28}];
    [v18 setName:v17];
    [v18 setLocalOnly:1];
    v19 = v9;
    if (!v9)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
    }

    [v18 setExpirationDate:v19];
    if (!v9)
    {
    }

    v20 = v17;
    v21 = v18;
    v22 = _pasteboardCacheQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___setPinnedItemCollectionForName_block_invoke;
    block[3] = &unk_1E70F35B8;
    v42 = v20;
    v43 = v21;
    v23 = v20;
    v24 = v21;
    dispatch_sync(v22, block);

    _Block_object_dispose(&v31, 8);
  }
}

+ (void)_clearPinnedItemProvidersForPasteboardNamed:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    _removePinnedItemCollectionForName(v3);
  }
}

+ (void)_attemptAuthenticationWithMessage:(id)a3
{
  v3 = a3;
  v4 = _pasteboardAuthenticatedMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___UIConcretePasteboard__attemptAuthenticationWithMessage___block_invoke;
  block[3] = &unk_1E70F3590;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

+ (id)_remoteContentForLayerContextWithId:(unint64_t)a3 slotStyle:(id)a4 pasteButtonTag:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = _serverConnection();
  v10 = [v9 remoteContentForLayerContextWithId:a3 slotStyle:v8 pasteButtonTag:v7 error:0];

  return v10;
}

+ (id)_loadRequestContextForBlockingUIKitCall:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() == 1)
  {
    if (v3)
    {
      LODWORD(v5) = 3;
    }

    else
    {
      LODWORD(v5) = 1;
    }

    if ([UIApp _hasApplicationCalledLaunchDelegate])
    {
      v5 = v5 | 4;
    }

    else
    {
      v5 = v5;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_alloc(MEMORY[0x1E69BC818]);
  v7 = [a1 pasteSharingTokenFromOpenURL];
  v8 = [v6 initWithOptions:v5 pasteSharingToken:v7];

  return v8;
}

- (id)_initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _UIConcretePasteboard;
  v6 = [(_UIConcretePasteboard *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = dispatch_group_create();
    saveCompletionGroup = v7->_saveCompletionGroup;
    v7->_saveCompletionGroup = v8;
  }

  return v7;
}

- (BOOL)isPersistent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = _pasteboardCacheQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___UIConcretePasteboard_isPersistent__block_invoke;
  v5[3] = &unk_1E70FCDA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (BOOL)_pasteboardCacheQueue_isPersistent
{
  v2 = _pasteboardCacheQueue_existingItemCollectionWithName(self->_name, 0);
  v3 = [v2 isPersistent];

  return v3;
}

- (BOOL)_pasteboardCacheQueue_setPersistent:(BOOL)a3 currentNotificationState:(unint64_t)a4 outNewNotificationState:(unint64_t *)a5
{
  v7 = a3;
  v9 = _pasteboardCacheQueue_existingItemCollectionWithName(self->_name, 0);
  v10 = v9;
  if (v9)
  {
    [v9 setPersistent:v7];
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

  v11 = MEMORY[0x1E69BC808];
  v12 = self->_name;
  v13 = [v11 alloc];
  v14 = [v13 initWithItems:MEMORY[0x1E695E0F0]];
  [v14 setName:v12];
  [v14 setPersistent:1];
  _pasteboardCacheQueue_setItemCollectionForName(v12, v14);

  v15 = [(_UIConcretePasteboard *)self _pasteboardCacheQueue_saveItemCollection:v14 currentNotificationState:a4 outNewNotificationState:a5];
LABEL_6:

  return v15;
}

- (void)_setPersistent:(BOOL)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = _pasteboardCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___UIConcretePasteboard__setPersistent___block_invoke;
  block[3] = &unk_1E711A3E0;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(v5, block);

  if (*(v9 + 24) == 1)
  {
    _sendPasteboardChangedNotification(self);
  }

  _Block_object_dispose(&v8, 8);
}

- (int64_t)changeCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = _pasteboardCacheQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___UIConcretePasteboard_changeCount__block_invoke;
  v6[3] = &unk_1E70FE3F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)_changeCountIgnoringPinningActivity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = _pasteboardCacheQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60___UIConcretePasteboard__changeCountIgnoringPinningActivity__block_invoke;
  v6[3] = &unk_1E70FE3F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)pasteSharingToken
{
  saveCompletionGroup = self->_saveCompletionGroup;
  v4 = dispatch_time(0, (*MEMORY[0x1E69BC880] * 1000000000.0));
  dispatch_group_wait(saveCompletionGroup, v4);

  return [(_UIConcretePasteboard *)self sharingToken];
}

- (void)setItemProviders:(id)a3 options:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x1E69BC800]);
        v16 = [v15 initWithNSItemProvider:{v14, v17}];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:v7 coerceStringsToURLs:0];
}

- (void)setItemProviders:(id)a3 localOnly:(BOOL)a4 expirationDate:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = objc_alloc(MEMORY[0x1E69BC800]);
        v18 = [v17 initWithNSItemProvider:{v16, v20}];
        [v10 addObject:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v19 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIPasteboardOptions *)v19 setPinned:0];
  [(_UIPasteboardOptions *)v19 setLocalOnly:v6];
  if (v9)
  {
    [(_UIPasteboardOptions *)v19 setExpirationDate:v9];
  }

  [(_UIConcretePasteboard *)self _setItemsAndSave:v10 options:v19 coerceStringsToURLs:0, v20];
}

- (void)_pinItemProviders:(id)a3 expirationDate:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x1E69BC800]);
        v16 = [v15 initWithNSItemProvider:{v14, v19}];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIPasteboardOptions *)v17 setPinned:1];
  [(_UIPasteboardOptions *)v17 setLocalOnly:1];
  if (v7)
  {
    [(_UIPasteboardOptions *)v17 setExpirationDate:v7];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
    [(_UIPasteboardOptions *)v17 setExpirationDate:v18];
  }

  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:v17 coerceStringsToURLs:0, v19];
}

- (void)setObjects:(id)a3 options:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x1E696ACA0]);
        v16 = [v15 initWithObject:{v14, v17}];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(_UIConcretePasteboard *)self setItemProviders:v8 options:v7];
}

- (void)setObjects:(id)a3 localOnly:(BOOL)a4 expirationDate:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = objc_alloc(MEMORY[0x1E696ACA0]);
        v18 = [v17 initWithObject:{v16, v20}];
        [v10 addObject:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v19 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIPasteboardOptions *)v19 setLocalOnly:v6];
  if (v9)
  {
    [(_UIPasteboardOptions *)v19 setExpirationDate:v9];
  }

  [(_UIConcretePasteboard *)self setItemProviders:v10 options:v19, v20];
}

- (id)availableTypes
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = _existingItemCollectionWithName(self->_name);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) availableTypes];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 allObjects];

  return v11;
}

- (id)itemProvidersWithRetryBehavior:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v4 = _existingItemCollectionWithName(self->_name);
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v4 items];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [objc_opt_class() _loadRequestContextForNonBlockingUIKitCall];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v4 items];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    if (v3)
    {
      v13 = &__block_literal_global_444;
    }

    else
    {
      v13 = 0;
    }

    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [[UIItemProvider alloc] initWithPBItem:*(*(&v17 + 1) + 8 * i) loadRequestContext:v8 secureRetryHandler:v13];
        [v7 addObject:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)itemProvidersForInstantiatingObjectsOfClass:(Class)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(_UIConcretePasteboard *)self itemProvidersWithRetryBehavior:0];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 canLoadObjectOfClass:{a3, v13}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)canInstantiateObjectsOfClass:(Class)a3
{
  v3 = [(_UIConcretePasteboard *)self itemProvidersForInstantiatingObjectsOfClass:a3];
  v4 = [v3 count] != 0;

  return v4;
}

- (int64_t)numberOfItems
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 count];

  return v4;
}

- (id)pasteboardTypesForItemSet:(id)a3
{
  v4 = a3;
  v5 = _existingItemCollectionWithName(self->_name);
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    if (!v4)
    {
      v8 = MEMORY[0x1E696AC90];
      v9 = [v5 items];
      v4 = [v8 indexSetWithIndexesInRange:{0, objc_msgSend(v9, "count")}];
    }

    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51___UIConcretePasteboard_pasteboardTypesForItemSet___block_invoke;
    v15[3] = &unk_1E70F43F0;
    v16 = v5;
    v11 = v10;
    v17 = v11;
    [v4 enumerateIndexesUsingBlock:v15];
    v12 = v17;
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)containsPasteboardTypes:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = _existingItemCollectionWithName(self->_name);
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      v10 = MEMORY[0x1E696AC90];
      v11 = [v8 items];
      v7 = [v10 indexSetWithIndexesInRange:{0, objc_msgSend(v11, "count")}];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___UIConcretePasteboard_containsPasteboardTypes_inItemSet___block_invoke;
    v14[3] = &unk_1E711A408;
    v15 = v9;
    v16 = v6;
    v17 = &v18;
    [v7 enumerateIndexesUsingBlock:v14];
  }

  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (id)itemSetWithPasteboardTypes:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD50] indexSet];
    v6 = _existingItemCollectionWithName(self->_name);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 items];
      v9 = [v8 count];

      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = [v7 items];
          v12 = [v11 objectAtIndexedSubscript:v10];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = v4;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if ([v12 hasRepresentationConformingToType:*(*(&v21 + 1) + 8 * i)])
                {
                  [v5 addIndex:v10];
                  goto LABEL_15;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_15:

          ++v10;
          v18 = [v7 items];
          v19 = [v18 count];
        }

        while (v10 < v19);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)valuesForPasteboardType:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _existingItemCollectionWithName(self->_name);
  v9 = [v8 items];
  v10 = [v9 count];

  if (v10 && [v6 length])
  {
    if (!v7)
    {
      v11 = MEMORY[0x1E696AC90];
      v12 = [v8 items];
      v7 = [v11 indexSetWithIndexesInRange:{0, objc_msgSend(v12, "count")}];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v13 = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59___UIConcretePasteboard_valuesForPasteboardType_inItemSet___block_invoke;
    v17[3] = &unk_1E711A458;
    v18 = v8;
    v19 = v6;
    v14 = v13;
    v20 = v14;
    v21 = &v22;
    [v7 enumerateIndexesUsingBlock:v17];
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dataForPasteboardType:(id)a3 inItemSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _existingItemCollectionWithName(self->_name);
  v9 = [v8 items];
  v10 = [v9 count];

  if (v10 && [v6 length])
  {
    if (!v7)
    {
      v11 = MEMORY[0x1E696AC90];
      v12 = [v8 items];
      v7 = [v11 indexSetWithIndexesInRange:{0, objc_msgSend(v12, "count")}];
    }

    v13 = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke;
    v17[3] = &unk_1E711A458;
    v18 = v8;
    v19 = v6;
    v14 = v13;
    v20 = v14;
    v21 = &v22;
    [v7 enumerateIndexesUsingBlock:v17];
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)items
{
  v48 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF70] array];
  v14 = _existingItemCollectionWithName(self->_name);
  v21 = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v14 items];
  v18 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v18)
  {
    v16 = *v43;
    do
    {
      v3 = 0;
      do
      {
        if (*v43 != v16)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v19 = v3;
        v5 = *(*(&v42 + 1) + 8 * v3);
        v6 = [MEMORY[0x1E695DF90] dictionary];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = [v5 availableTypes];
        v7 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v7)
        {
          v8 = *v39;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v39 != v8)
              {
                objc_enumerationMutation(v20);
              }

              v10 = *(*(&v38 + 1) + 8 * i);
              v32 = 0;
              v33 = &v32;
              v34 = 0x3032000000;
              v35 = __Block_byref_object_copy__152;
              v36 = __Block_byref_object_dispose__152;
              v37 = 0;
              v26 = 0;
              v27 = &v26;
              v28 = 0x3032000000;
              v29 = __Block_byref_object_copy__152;
              v30 = __Block_byref_object_dispose__152;
              v31 = 0;
              v11 = dispatch_semaphore_create(0);
              v22[0] = MEMORY[0x1E69E9820];
              v22[1] = 3221225472;
              v22[2] = __30___UIConcretePasteboard_items__block_invoke;
              v22[3] = &unk_1E711A4F8;
              v24 = &v32;
              v25 = &v26;
              v22[4] = v10;
              v12 = v11;
              v23 = v12;
              [v5 uikit_loadRepresentationAsType:v10 context:v21 completionBlock:v22];
              dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

              [v6 setObject:v33[5] forKeyedSubscript:v10];
              _recordHangAssertionIfNecessaryForResponseMetadata(v27[5]);
              _Block_object_dispose(&v26, 8);

              _Block_object_dispose(&v32, 8);
            }

            v7 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v7);
        }

        [v17 addObject:v6];
        v3 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v18);
  }

  return v17;
}

- (void)setItems:(id)a3 options:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v22 = a4;
  v27 = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v28)
  {
    v26 = *v39;
    v24 = *MEMORY[0x1E695D940];
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v38 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"com.apple.uikit.type-automatic"];
        v30 = v8;
        if (v8)
        {
          v9 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v8];
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x1E69BC800]);
        }

        v10 = v9;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v35;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v34 + 1) + 8 * i);
              if (([v16 isEqualToString:@"com.apple.uikit.type-automatic"] & 1) == 0)
              {
                v17 = [v11 objectForKeyedSubscript:v16];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                {
                                  v29 = MEMORY[0x1E695DF30];
                                  v18 = _NSFullMethodName();
                                  [v29 raise:v24 format:{@"%@: value for pasteboard type '%@' is not a valid property list type", v18, v16}];
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v17)
                {
                  v19 = ConvertValueToData(v17, v16);
                  if (v19)
                  {
                    v32[0] = MEMORY[0x1E69E9820];
                    v32[1] = 3221225472;
                    v32[2] = __42___UIConcretePasteboard_setItems_options___block_invoke;
                    v32[3] = &unk_1E711A520;
                    v33 = v19;
                    v20 = v19;
                    [v10 uikit_addRepresentationType:v16 loaderBlock:v32];
                  }
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v13);
        }

        [v27 addObject:v10];
        v6 = v31 + 1;
      }

      while (v31 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v28);
  }

  v21 = [_UIPasteboardOptions optionsWithDictionary:v22];
  [(_UIConcretePasteboard *)self _setItemsAndSave:v27 options:v21];
}

- (void)_setItemsAndSave:(id)a3 options:(id)a4 coerceStringsToURLs:(BOOL)a5 dataOwner:(int64_t)a6
{
  v6 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v43 = a4;
  if (v6)
  {
    v40 = self;
    v44 = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v42;
    v9 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v9)
    {
      v10 = *v67;
      v11 = *MEMORY[0x1E6983030];
      v46 = *MEMORY[0x1E6982E18];
      v45 = *MEMORY[0x1E6983098];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v67 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v66 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = [v11 identifier];
          v16 = [v13 hasRepresentationConformingToType:v15];

          if ((v16 & 1) == 0)
          {
            v17 = objc_opt_class();
            v18 = [v46 identifier];
            v70[0] = v18;
            v19 = [v45 identifier];
            v70[1] = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
            LODWORD(v17) = [v13 uikit_canInstantiateObjectOfClass:v17 excludingCoercionsFromTypes:v20];

            if (v17)
            {
              v60 = 0;
              v61 = &v60;
              v62 = 0x3032000000;
              v63 = __Block_byref_object_copy__152;
              v64 = __Block_byref_object_dispose__152;
              v65 = 0;
              v54 = 0;
              v55 = &v54;
              v56 = 0x3032000000;
              v57 = __Block_byref_object_copy__152;
              v58 = __Block_byref_object_dispose__152;
              v59 = 0;
              v21 = dispatch_semaphore_create(0);
              v22 = objc_opt_class();
              v50[0] = MEMORY[0x1E69E9820];
              v50[1] = 3221225472;
              v50[2] = __80___UIConcretePasteboard__setItemsAndSave_options_coerceStringsToURLs_dataOwner___block_invoke;
              v50[3] = &unk_1E711A480;
              v52 = &v60;
              v53 = &v54;
              v23 = v21;
              v51 = v23;
              v24 = [v13 uikit_loadObjectOfClass:v22 context:v44 completionBlock:v50];
              dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

              _recordHangAssertionIfNecessaryForResponseMetadata(v55[5]);
              v25 = v61[5];
              if (v25)
              {
                v26 = [MEMORY[0x1E695DFF8] URLWithString:v25 encodingInvalidCharacters:0];
                v27 = [v26 scheme];
                v28 = [v27 length] == 0;

                if (!v28)
                {
                  v29 = _convertURLToDataRepresentation(v26);
                  v30 = [v11 identifier];
                  v48[0] = MEMORY[0x1E69E9820];
                  v48[1] = 3221225472;
                  v48[2] = __80___UIConcretePasteboard__setItemsAndSave_options_coerceStringsToURLs_dataOwner___block_invoke_2;
                  v48[3] = &unk_1E711A520;
                  v31 = v29;
                  v49 = v31;
                  [v13 uikit_addRepresentationType:v30 loaderBlock:v48];
                }
              }

              _Block_object_dispose(&v54, 8);

              _Block_object_dispose(&v60, 8);
            }
          }

          objc_autoreleasePoolPop(v14);
        }

        v9 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v9);
    }

    self = v40;
  }

  v32 = self;
  v33 = _existingItemCollectionWithName(self->_name);
  if (!v33)
  {
    v33 = objc_alloc_init(MEMORY[0x1E69BC808]);
  }

  v34 = [v33 availableRepresentationTypes];
  v35 = [v33 copyWithItems:v42];
  [v35 setName:self->_name];
  [v35 setChangeCount:{objc_msgSend(v33, "changeCount")}];
  [v35 setOriginatorDataOwner:a6];
  if (v43)
  {
    v36 = [v43 isPinned];
    v37 = [v43 isLocalOnly];
    v38 = [v43 expirationDate];
  }

  else
  {
    v37 = [v33 isLocalOnly];
    v38 = [v33 expirationDate];
    v36 = 0;
  }

  [v35 setLocalOnly:v37];
  [v35 setExpirationDate:v38];
  if (v36)
  {
    [(_UIConcretePasteboard *)self _pinItemCollection:v35];
  }

  else
  {
    [(_UIConcretePasteboard *)self _saveItemCollection:v35];
    v39 = [v35 availableRepresentationTypes];
    [(_UIConcretePasteboard *)v32 _sendPasteboardTypesChangedNotificationOldTypes:v34 newTypes:v39];
  }
}

- (void)_setItemsAndSave:(id)a3 options:(id)a4 coerceStringsToURLs:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(_UIConcretePasteboard *)self _setItemsAndSave:v9 options:v8 coerceStringsToURLs:v5 dataOwner:_pasteboardThreadLocalDataOwner()];
}

- (void)addItems:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = self;
  v5 = _existingItemCollectionWithName(self->_name);
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69BC808]);
    [v5 setName:self->_name];
  }

  v23 = v5;
  v6 = [v5 items];
  v7 = [v6 mutableCopy];

  v28 = v7;
  if (!v7)
  {
    v28 = [MEMORY[0x1E695DF70] array];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v29)
  {
    v27 = *v40;
    v25 = *MEMORY[0x1E695D940];
    do
    {
      v8 = 0;
      do
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v8;
        v9 = *(*(&v39 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"com.apple.uikit.type-automatic"];
        v31 = v10;
        if (v10)
        {
          v11 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v10];
        }

        else
        {
          v11 = objc_alloc_init(MEMORY[0x1E69BC800]);
        }

        v12 = v11;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v13 = v9;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * i);
              if (([v18 isEqualToString:@"com.apple.uikit.type-automatic"] & 1) == 0)
              {
                v19 = [v13 objectForKeyedSubscript:v18];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                {
                                  v30 = MEMORY[0x1E695DF30];
                                  v20 = _NSFullMethodName();
                                  [v30 raise:v25 format:{@"%@: value for pasteboard type '%@' is not a valid property list type", v20, v18}];
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v19)
                {
                  v21 = ConvertValueToData(v19, v18);
                  if (v21)
                  {
                    v33[0] = MEMORY[0x1E69E9820];
                    v33[1] = 3221225472;
                    v33[2] = __34___UIConcretePasteboard_addItems___block_invoke;
                    v33[3] = &unk_1E711A520;
                    v34 = v21;
                    v22 = v21;
                    [v12 uikit_addRepresentationType:v18 loaderBlock:v33];
                  }
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v15);
        }

        [v28 addObject:v12];
        v8 = v32 + 1;
      }

      while (v32 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v29);
  }

  [(_UIConcretePasteboard *)v26 _setItemsAndSave:v28 options:0];
}

- (id)pasteboardTypes
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 firstObject];
  v5 = [v4 availableTypes];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (BOOL)containsPasteboardTypes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _existingItemCollectionWithName(self->_name);
  v6 = [v5 items];
  v7 = [v6 firstObject];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if ([v7 hasRepresentationConformingToType:{*(*(&v13 + 1) + 8 * i), v13}])
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (id)dataForPasteboardType:(id)a3
{
  v4 = MEMORY[0x1E696AC90];
  v5 = a3;
  v6 = [v4 indexSetWithIndex:0];
  v7 = [(_UIConcretePasteboard *)self dataForPasteboardType:v5 inItemSet:v6];

  v8 = [v7 firstObject];

  return v8;
}

- (id)valueForPasteboardType:(id)a3
{
  v4 = MEMORY[0x1E696AC90];
  v5 = a3;
  v6 = [v4 indexSetWithIndex:0];
  v7 = [(_UIConcretePasteboard *)self valuesForPasteboardType:v5 inItemSet:v6];

  v8 = [v7 firstObject];

  return v8;
}

- (void)setValue:(id)a3 forPasteboardType:(id)a4
{
  v17 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v7 = MEMORY[0x1E695DF30];
                v8 = *MEMORY[0x1E695D940];
                v9 = _NSFullMethodName();
                [v7 raise:v8 format:{@"%@: value is not a valid property list type", v9}];
              }
            }
          }
        }
      }
    }
  }

  if (!v17)
  {
    v11 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v17;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(UIImage *)v17 dataUsingEncoding:4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(UIImage *)v17 baseURL];
          v13 = MEMORY[0x1E695DEC8];
          if (v12)
          {
            v14 = [(UIImage *)v17 relativeString];
            v15 = [v12 absoluteString];
            v16 = [v13 arrayWithObjects:{v14, v15, 0}];
          }

          else
          {
            v14 = [(UIImage *)v17 absoluteString];
            v16 = [v13 arrayWithObjects:{v14, &stru_1EFB14550, 0}];
          }

          v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v16 format:200 options:0 error:0];

          goto LABEL_18;
        }

        v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v17 format:200 options:0 error:0];
        goto LABEL_17;
      }

      if ([v6 isEqual:0x1EFB86090])
      {
LABEL_16:
        v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v17 requiringSecureCoding:0 error:0];
      }

      else
      {
        v10 = UIImagePNGRepresentation(v17);
      }
    }
  }

LABEL_17:
  v11 = v10;
LABEL_18:
  [(_UIConcretePasteboard *)self setData:v11 forPasteboardType:v6];
}

- (void)_sendPasteboardTypesChangedNotificationOldTypes:(id)a3 newTypes:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v15 = [v6 setWithArray:a3];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];

  v9 = [v8 mutableCopy];
  [v9 minusSet:v15];
  v10 = [v15 mutableCopy];
  [v10 minusSet:v8];
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    if ([v9 count])
    {
      v12 = [v9 allObjects];
      [v11 setObject:v12 forKeyedSubscript:@"UIPasteboardChangedTypesAddedKey"];
    }

    if ([v10 count])
    {
      v13 = [v10 allObjects];
      [v11 setObject:v13 forKeyedSubscript:@"UIPasteboardChangedTypesRemovedKey"];
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"UIPasteboardChangedNotification" object:self userInfo:v11];
  }
}

- (void)setData:(id)a3 forPasteboardType:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E69BC800]);
  v9 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v7 allowUndeclared:1];
  if (![v9 conformsToType:*MEMORY[0x1E6982F98]])
  {
    goto LABEL_8;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:v6];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v24 = self;
  v12 = _UITemporaryFolderURL(@"com.apple.UIKit");
  v13 = [v9 localizedDescription];
  if (!v13)
  {
    v13 = [*MEMORY[0x1E6982E48] localizedDescription];
  }

  v14 = [v13 stringByAppendingPathExtensionForType:v9];
  v15 = [v12 URLByAppendingPathComponent:v14];
  if (![v11 writeToURL:v15 options:1 originalContentsURL:0 error:0])
  {
    v19 = [MEMORY[0x1E696AC08] defaultManager];
    [v19 removeItemAtURL:v12 error:0];

    self = v24;
LABEL_8:
    v20 = objc_alloc(MEMORY[0x1E69BC810]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke_3;
    v25[3] = &unk_1E711A570;
    v26 = v6;
    v21 = [v20 initWithType:v7 preferredRepresentation:0 v3_loader:v25];
    [v8 addRepresentation:v21];

    v11 = v26;
    goto LABEL_9;
  }

  v23 = objc_alloc(MEMORY[0x1E69BC810]);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke;
  v27[3] = &unk_1E711A548;
  v28 = v15;
  v29 = v12;
  v16 = v12;
  v17 = v15;
  v18 = [v23 initWithType:v7 preferredRepresentation:1 v3_loader:v27];
  [v8 addRepresentation:v18];

  self = v24;
LABEL_9:

  v30[0] = v8;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [(_UIConcretePasteboard *)self _setItemsAndSave:v22 options:0];
}

- (id)_itemsCoercibleToClass:(Class)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _existingItemCollectionWithName(self->_name);
  v5 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 items];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = _coerceItemToClass(*(*(&v13 + 1) + 8 * i), a3);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)string
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(v4, v5);

  return v6;
}

- (void)_clearItems
{
  v3 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIConcretePasteboard *)self _setItemsAndSave:0 options:v3];
}

- (void)setString:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = _NSFullMethodName();
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 raise:v6 format:{@"%@: Argument is not an object of type NSString [%@]", v7, v9}];
    }

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v4];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = objc_alloc_init(_UIPasteboardOptions);
    [(_UIConcretePasteboard *)self _setItemsAndSave:v11 options:v12];
  }

  else
  {
    [(_UIConcretePasteboard *)self _clearItems];
  }
}

- (id)strings
{
  v3 = objc_opt_class();

  return [(_UIConcretePasteboard *)self _itemsCoercibleToClass:v3];
}

- (void)_setItemsAndSaveFromObjects:(id)a3 ofClass:(Class)a4
{
  v7 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__152;
  v15 = __Block_byref_object_dispose__152;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIConcretePasteboard__setItemsAndSaveFromObjects_ofClass___block_invoke;
  v10[3] = &unk_1E711A598;
  v10[6] = a4;
  v10[7] = a2;
  v10[4] = self;
  v10[5] = &v11;
  [v7 enumerateObjectsUsingBlock:v10];
  v8 = v12[5];
  v9 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:v9];

  _Block_object_dispose(&v11, 8);
}

- (void)setStrings:(id)a3
{
  v4 = a3;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:v4 ofClass:objc_opt_class()];
}

- (id)URL
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(v4, v5);

  return v6;
}

- (void)setURL:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = _NSFullMethodName();
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 raise:v6 format:{@"%@: Argument is not an object of type NSURL [%@]", v7, v9}];
    }

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v4];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = objc_alloc_init(_UIPasteboardOptions);
    [(_UIConcretePasteboard *)self _setItemsAndSave:v11 options:v12];
  }

  else
  {
    [(_UIConcretePasteboard *)self _clearItems];
  }
}

- (id)URLs
{
  v3 = objc_opt_class();

  return [(_UIConcretePasteboard *)self _itemsCoercibleToClass:v3];
}

- (void)setURLs:(id)a3
{
  v4 = a3;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:v4 ofClass:objc_opt_class()];
}

- (id)image
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(v4, v5);

  return v6;
}

- (void)setImage:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = _NSFullMethodName();
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 raise:v6 format:{@"%@: Argument is not an object of type UIImage [%@]", v7, v9}];
    }

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v4];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = objc_alloc_init(_UIPasteboardOptions);
    [(_UIConcretePasteboard *)self _setItemsAndSave:v11 options:v12];
  }

  else
  {
    [(_UIConcretePasteboard *)self _clearItems];
  }
}

- (id)images
{
  v3 = objc_opt_class();

  return [(_UIConcretePasteboard *)self _itemsCoercibleToClass:v3];
}

- (void)setImages:(id)a3
{
  v4 = a3;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:v4 ofClass:objc_opt_class()];
}

- (id)color
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 items];
  v4 = [v3 firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(v4, v5);

  return v6;
}

- (void)setColor:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D940];
      v7 = _NSFullMethodName();
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v5 raise:v6 format:{@"%@: Argument is not an object of type UIColor [%@]", v7, v9}];
    }

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v4];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = objc_alloc_init(_UIPasteboardOptions);
    [(_UIConcretePasteboard *)self _setItemsAndSave:v11 options:v12];
  }

  else
  {
    [(_UIConcretePasteboard *)self _clearItems];
  }
}

- (id)colors
{
  v3 = objc_opt_class();

  return [(_UIConcretePasteboard *)self _itemsCoercibleToClass:v3];
}

- (void)setColors:(id)a3
{
  v4 = a3;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:v4 ofClass:objc_opt_class()];
}

- (BOOL)hasStrings
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 canInstantiateObjectOfClass:objc_opt_class()];

  return v3;
}

- (BOOL)hasURLs
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 canInstantiateObjectOfClass:objc_opt_class()];

  return v3;
}

- (BOOL)hasImages
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 canInstantiateObjectOfClass:objc_opt_class()];

  return v3;
}

- (BOOL)hasColors
{
  v2 = _existingItemCollectionWithName(self->_name);
  v3 = [v2 canInstantiateObjectOfClass:objc_opt_class()];

  return v3;
}

+ (id)_pasteboardWithUniqueName
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [a1 _pasteboardNamed:v4 createIfNotFound:1];

  v6 = objc_alloc_init(_UIPasteboardOptions);
  [v5 _setItemsAndSave:MEMORY[0x1E695E0F0] options:v6];

  return v5;
}

- (id)_detectedPasteboardTypesForTypes:(id)a3
{
  v4 = a3;
  v5 = _existingItemCollectionWithName(self->_name);
  v6 = [v5 items];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke;
    v23[3] = &unk_1E711A5C0;
    v9 = v8;
    v24 = v9;
    v10 = [v7 enumeratePatternDetectionsForPatterns:v4 usingBlock:v23];
    if ([v10 count])
    {
      v11 = dispatch_semaphore_create(0);
      v18 = _serverConnection();
      v12 = [v5 name];
      v13 = [v5 UUID];
      v14 = _pasteboardThreadLocalDataOwner();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke_2;
      v19[3] = &unk_1E711A610;
      v20 = v9;
      v21 = v7;
      v22 = v11;
      v15 = v11;
      [v18 requestPatternDetectionsFromPasteboardWithName:v12 UUID:v13 authenticationMessage:0 itemIndex:0 patterns:v10 needValues:0 dataOwner:v14 completionBlock:v19];

      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    }

    v16 = v9;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v16;
}

- (id)_detectedPasteboardTypeStringsForTypes:(id)a3
{
  v4 = a3;
  v5 = _existingItemCollectionWithName(self->_name);
  v6 = [v5 items];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke;
    v28[3] = &unk_1E711A638;
    v10 = v8;
    v29 = v10;
    v11 = v9;
    v30 = v11;
    v12 = [v7 enumeratePatternDetectionsForPatterns:v4 usingBlock:v28];
    [v11 unionSet:v12];

    if ([v11 count])
    {
      v13 = dispatch_semaphore_create(0);
      v14 = _serverConnection();
      [v5 name];
      v15 = v23 = v4;
      v16 = [v5 UUID];
      v22 = _pasteboardLastAuthenticatedMessage;
      v17 = _pasteboardThreadLocalDataOwner();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke_2;
      v24[3] = &unk_1E711A610;
      v25 = v10;
      v26 = v7;
      v27 = v13;
      v18 = v13;
      [v14 requestPatternDetectionsFromPasteboardWithName:v15 UUID:v16 authenticationMessage:v22 itemIndex:0 patterns:v11 needValues:1 dataOwner:v17 completionBlock:v24];

      v4 = v23;
      dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    }

    v19 = v30;
    v20 = v10;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F8];
  }

  return v20;
}

+ (void)_detectPatternsForPatterns:(id)a3 atIndex:(unint64_t)a4 itemCollection:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v10 items];
  if ([v12 count] <= a4)
  {
    v28 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke;
    block[3] = &unk_1E70F4178;
    v41 = v11;
    v42 = a4;
    dispatch_async(v28, block);

    v13 = v41;
  }

  else
  {
    v13 = [v12 objectAtIndexedSubscript:a4];
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2;
    v38[3] = &unk_1E711A5C0;
    v15 = v14;
    v39 = v15;
    v16 = [v13 enumeratePatternDetectionsForPatterns:v9 usingBlock:v38];
    if ([v16 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4;
      aBlock[3] = &unk_1E711A660;
      v34 = v11;
      v32 = v15;
      v33 = v13;
      v30 = v9;
      v17 = _Block_copy(aBlock);
      v18 = _serverConnection();
      v19 = [v10 name];
      [v10 UUID];
      v29 = v12;
      v20 = v13;
      v21 = v10;
      v22 = v15;
      v24 = v23 = v11;
      [v18 requestPatternDetectionsFromPasteboardWithName:v19 UUID:v24 authenticationMessage:0 itemIndex:a4 patterns:v16 needValues:0 dataOwner:_pasteboardThreadLocalDataOwner() completionBlock:v17];

      v11 = v23;
      v15 = v22;
      v10 = v21;
      v13 = v20;
      v12 = v29;

      v25 = &v32;
      v26 = &v34;

      v9 = v30;
      v27 = v33;
    }

    else
    {
      v27 = _pasteboardCompletionQueue();
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_3;
      v35[3] = &unk_1E70F4A50;
      v26 = &v37;
      v37 = v11;
      v25 = &v36;
      v36 = v15;
      dispatch_async(v27, v35);
    }
  }
}

+ (id)clientValueForValue:(id)a3 pattern:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (qword_1ED49A780 != -1)
  {
    dispatch_once(&qword_1ED49A780, &__block_literal_global_90_3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [_MergedGlobals_5_18 objectForKeyedSubscript:{v6, v22}];
          v15 = v14;
          if (v14)
          {
            v16 = (*(v14 + 16))(v14, v13);
            if (v16)
            {
              [v7 addObject:v16];
            }
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
  }

  else
  {
    v19 = [_MergedGlobals_5_18 objectForKeyedSubscript:v6];
    v7 = v19;
    if (v19)
    {
      v18 = (*(v19 + 16))(v19, v5);
    }

    else
    {
      v18 = v5;
    }
  }

  v20 = v18;

  return v20;
}

+ (void)_detectValuesForPatterns:(id)a3 atIndex:(unint64_t)a4 itemCollection:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 items];
  if ([v13 count] <= a4)
  {
    v35 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke;
    block[3] = &unk_1E70F4178;
    v51 = v12;
    v52 = a4;
    dispatch_async(v35, block);

    v14 = v51;
  }

  else
  {
    v14 = [v13 objectAtIndexedSubscript:a4];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2;
    v46[3] = &unk_1E711A788;
    v49 = a1;
    v17 = v15;
    v47 = v17;
    v18 = v16;
    v48 = v18;
    v38 = v10;
    v19 = [v14 enumeratePatternDetectionsForPatterns:v10 usingBlock:v46];
    [v18 unionSet:v19];

    if ([v18 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4;
      aBlock[3] = &unk_1E711A7D8;
      v42[0] = v12;
      v42[1] = a1;
      v40 = v17;
      v41 = v14;
      v36 = a4;
      v20 = _Block_copy(aBlock);
      v21 = _serverConnection();
      v22 = [v11 name];
      [v11 UUID];
      v23 = v37 = v17;
      v24 = v18;
      v25 = v13;
      v26 = v11;
      v27 = v14;
      v28 = v12;
      v29 = _pasteboardLastAuthenticatedMessage;
      v30 = _pasteboardThreadLocalDataOwner();
      v31 = v29;
      v12 = v28;
      v14 = v27;
      v11 = v26;
      v13 = v25;
      v18 = v24;
      v32 = v42;
      [v21 requestPatternDetectionsFromPasteboardWithName:v22 UUID:v23 authenticationMessage:v31 itemIndex:v36 patterns:v18 needValues:1 dataOwner:v30 completionBlock:v20];

      v17 = v37;
      v33 = &v40;

      v34 = v41;
    }

    else
    {
      v34 = _pasteboardCompletionQueue();
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_3;
      v43[3] = &unk_1E70F4A50;
      v32 = &v45;
      v45 = v12;
      v33 = &v44;
      v44 = v17;
      dispatch_async(v34, v43);
    }

    v10 = v38;
  }
}

+ (void)_asynchronouslyEnumerateItemSet:(id)a3 itemsCompletionHandler:(id)a4 usingItemBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 count];
  if (v10 == 1)
  {
    v14 = [v7 firstIndex];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke_2;
    v28[3] = &unk_1E711A800;
    v29 = v8;
    v9[2](v9, v14, v28);
    v13 = v29;
    goto LABEL_5;
  }

  v11 = v10;
  if (!v10)
  {
    v12 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke;
    block[3] = &unk_1E70F0F78;
    v31 = v8;
    dispatch_async(v12, block);

    v13 = v31;
LABEL_5:

    goto LABEL_9;
  }

  v15 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
  v20 = v7;
  [v7 getIndexes:v15 maxCount:v11 inIndexRange:0];
  v16 = malloc_type_calloc(v11, 8uLL, 0x80040B8603338uLL);
  v17 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v18 = MEMORY[0x1E69E9820];
  do
  {
    v19 = v15[v17];
    v21[0] = v18;
    v21[1] = 3221225472;
    v21[2] = __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke_3;
    v21[3] = &unk_1E711A828;
    v23 = v27;
    v24 = v16;
    v25 = v17;
    v26 = v11;
    v22 = v8;
    v9[2](v9, v19, v21);

    ++v17;
  }

  while (v11 != v17);
  free(v15);
  _Block_object_dispose(v27, 8);
  v7 = v20;
LABEL_9:
}

- (void)detectPatternsForPatterns:(id)a3 completionHandler:(id)a4
{
  name = self->_name;
  v6 = a4;
  v7 = a3;
  v8 = _existingItemCollectionWithName(name);
  [_UIConcretePasteboard _detectPatternsForPatterns:v7 atIndex:0 itemCollection:v8 completionHandler:v6];
}

- (void)detectPatternsForPatterns:(id)a3 inItemSet:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _existingItemCollectionWithName(self->_name);
  v13 = v10;
  if (!v10)
  {
    v14 = objc_alloc(MEMORY[0x1E696AC90]);
    v5 = [v12 items];
    v13 = [v14 initWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79___UIConcretePasteboard_detectPatternsForPatterns_inItemSet_completionHandler___block_invoke;
  v17[3] = &unk_1E711A850;
  v18 = v9;
  v19 = v12;
  v15 = v12;
  v16 = v9;
  [_UIConcretePasteboard _asynchronouslyEnumerateItemSet:v13 itemsCompletionHandler:v11 usingItemBlock:v17];
  if (!v10)
  {
  }
}

- (void)detectValuesForPatterns:(id)a3 completionHandler:(id)a4
{
  name = self->_name;
  v6 = a4;
  v7 = a3;
  v8 = _existingItemCollectionWithName(name);
  [_UIConcretePasteboard _detectValuesForPatterns:v7 atIndex:0 itemCollection:v8 completionHandler:v6];
}

- (void)detectValuesForPatterns:(id)a3 inItemSet:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _existingItemCollectionWithName(self->_name);
  v13 = v10;
  if (!v10)
  {
    v14 = objc_alloc(MEMORY[0x1E696AC90]);
    v5 = [v12 items];
    v13 = [v14 initWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77___UIConcretePasteboard_detectValuesForPatterns_inItemSet_completionHandler___block_invoke;
  v17[3] = &unk_1E711A850;
  v18 = v9;
  v19 = v12;
  v15 = v12;
  v16 = v9;
  [_UIConcretePasteboard _asynchronouslyEnumerateItemSet:v13 itemsCompletionHandler:v11 usingItemBlock:v17];
  if (!v10)
  {
  }
}

- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = _pasteboardAuthenticatedMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIConcretePasteboard__requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_completionBlock___block_invoke;
  block[3] = &unk_1E711A878;
  v12 = a3;
  v13 = a4;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

@end