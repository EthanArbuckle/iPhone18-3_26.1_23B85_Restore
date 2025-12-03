@interface _UIConcretePasteboard
+ (id)_existingCachedPasteboardWithName:(id)name;
+ (id)_loadRequestContextForBlockingUIKitCall:(BOOL)call;
+ (id)_pasteboardNamed:(id)named createIfNotFound:(BOOL)found;
+ (id)_pasteboardWithUniqueName;
+ (id)_remoteContentForLayerContextWithId:(unint64_t)id slotStyle:(id)style pasteButtonTag:(id)tag;
+ (id)clientValueForValue:(id)value pattern:(id)pattern;
+ (void)_asynchronouslyEnumerateItemSet:(id)set itemsCompletionHandler:(id)handler usingItemBlock:(id)block;
+ (void)_attemptAuthenticationWithMessage:(id)message;
+ (void)_clearPinnedItemProvidersForPasteboardNamed:(id)named;
+ (void)_detectPatternsForPatterns:(id)patterns atIndex:(unint64_t)index itemCollection:(id)collection completionHandler:(id)handler;
+ (void)_detectValuesForPatterns:(id)patterns atIndex:(unint64_t)index itemCollection:(id)collection completionHandler:(id)handler;
+ (void)_pinItemProviders:(id)providers forPasteboardNamed:(id)named withExpirationDate:(id)date;
+ (void)removePasteboardWithName:(id)name;
- (BOOL)_pasteboardCacheQueue_isPersistent;
- (BOOL)_pasteboardCacheQueue_saveItemCollection:(id)collection currentNotificationState:(unint64_t)state outNewNotificationState:(unint64_t *)notificationState;
- (BOOL)_pasteboardCacheQueue_setPersistent:(BOOL)persistent currentNotificationState:(unint64_t)state outNewNotificationState:(unint64_t *)notificationState;
- (BOOL)canInstantiateObjectsOfClass:(Class)class;
- (BOOL)containsPasteboardTypes:(id)types;
- (BOOL)containsPasteboardTypes:(id)types inItemSet:(id)set;
- (BOOL)hasColors;
- (BOOL)hasImages;
- (BOOL)hasStrings;
- (BOOL)hasURLs;
- (BOOL)isPersistent;
- (id)URL;
- (id)URLs;
- (id)_detectedPasteboardTypeStringsForTypes:(id)types;
- (id)_detectedPasteboardTypesForTypes:(id)types;
- (id)_initWithName:(id)name;
- (id)_itemsCoercibleToClass:(Class)class;
- (id)availableTypes;
- (id)color;
- (id)colors;
- (id)dataForPasteboardType:(id)type;
- (id)dataForPasteboardType:(id)type inItemSet:(id)set;
- (id)image;
- (id)images;
- (id)itemProvidersForInstantiatingObjectsOfClass:(Class)class;
- (id)itemProvidersWithRetryBehavior:(BOOL)behavior;
- (id)itemSetWithPasteboardTypes:(id)types;
- (id)items;
- (id)pasteSharingToken;
- (id)pasteboardTypes;
- (id)pasteboardTypesForItemSet:(id)set;
- (id)string;
- (id)strings;
- (id)valueForPasteboardType:(id)type;
- (id)valuesForPasteboardType:(id)type inItemSet:(id)set;
- (int64_t)_changeCountIgnoringPinningActivity;
- (int64_t)changeCount;
- (int64_t)numberOfItems;
- (void)_clearItems;
- (void)_pinItemCollection:(id)collection;
- (void)_pinItemProviders:(id)providers expirationDate:(id)date;
- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block;
- (void)_saveItemCollection:(id)collection;
- (void)_sendPasteboardTypesChangedNotificationOldTypes:(id)types newTypes:(id)newTypes;
- (void)_setItemsAndSave:(id)save options:(id)options coerceStringsToURLs:(BOOL)ls;
- (void)_setItemsAndSave:(id)save options:(id)options coerceStringsToURLs:(BOOL)ls dataOwner:(int64_t)owner;
- (void)_setItemsAndSaveFromObjects:(id)objects ofClass:(Class)class;
- (void)_setPersistent:(BOOL)persistent;
- (void)addItems:(id)items;
- (void)detectPatternsForPatterns:(id)patterns completionHandler:(id)handler;
- (void)detectPatternsForPatterns:(id)patterns inItemSet:(id)set completionHandler:(id)handler;
- (void)detectValuesForPatterns:(id)patterns completionHandler:(id)handler;
- (void)detectValuesForPatterns:(id)patterns inItemSet:(id)set completionHandler:(id)handler;
- (void)setColor:(id)color;
- (void)setColors:(id)colors;
- (void)setData:(id)data forPasteboardType:(id)type;
- (void)setImage:(id)image;
- (void)setImages:(id)images;
- (void)setItemProviders:(id)providers localOnly:(BOOL)only expirationDate:(id)date;
- (void)setItemProviders:(id)providers options:(id)options;
- (void)setItems:(id)items options:(id)options;
- (void)setObjects:(id)objects localOnly:(BOOL)only expirationDate:(id)date;
- (void)setObjects:(id)objects options:(id)options;
- (void)setString:(id)string;
- (void)setStrings:(id)strings;
- (void)setURL:(id)l;
- (void)setURLs:(id)ls;
- (void)setValue:(id)value forPasteboardType:(id)type;
@end

@implementation _UIConcretePasteboard

- (BOOL)_pasteboardCacheQueue_saveItemCollection:(id)collection currentNotificationState:(unint64_t)state outNewNotificationState:(unint64_t *)notificationState
{
  collectionCopy = collection;
  if (![collectionCopy isPersistent])
  {
    _pasteboardCacheQueue_setItemCollectionForName(self->_name, collectionCopy);
    [collectionCopy setChangeCount:{objc_msgSend(collectionCopy, "changeCount") + 1}];
    v14 = 1;
    if (!notificationState)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_group_enter(self->_saveCompletionGroup);
  v9 = collectionCopy;
  v10 = _serverConnection();
  dataConsumersEndpoint = [v9 dataConsumersEndpoint];
  v22 = 0;
  v12 = [v10 savePasteboard:v9 dataProviderEndpoint:dataConsumersEndpoint error:&v22];

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
    name = [v9 name];
    NSLog(&cfstr_CouldNotSavePa.isa, name, v19);
  }

  else
  {
    if ([v9 isPersistent])
    {
      _pasteboardCacheQueue_removeItemCollectionForName(self->_name);
    }

    state = [v18 notificationState];
    name = [v18 sharingToken];
    [(_UIConcretePasteboard *)self setSharingToken:name];
  }

  dispatch_group_leave(self->_saveCompletionGroup);
  if (notificationState)
  {
LABEL_13:
    *notificationState = state;
  }

LABEL_14:

  return v14;
}

- (void)_saveItemCollection:(id)collection
{
  collectionCopy = collection;
  if (dyld_program_sdk_at_least())
  {
    v5 = self->_name;
    isPersistent = [collectionCopy isPersistent];
    v7 = _pasteboardCacheQueue();
    if (isPersistent)
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
      dataConsumersEndpoint = [collectionCopy dataConsumersEndpoint];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_2;
      v26[3] = &unk_1E711A390;
      v26[4] = self;
      v27 = collectionCopy;
      [v10 savePasteboard:v27 dataProviderEndpoint:dataConsumersEndpoint completionBlock:v26];

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
      v14 = collectionCopy;
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
    v17 = collectionCopy;
    dispatch_sync(v13, v16);

    if (*(v20 + 24) == 1)
    {
      _sendPasteboardChangedNotification(self);
    }

    _Block_object_dispose(&v19, 8);
  }
}

- (void)_pinItemCollection:(id)collection
{
  collectionCopy = collection;
  v5 = _pasteboardCacheQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44___UIConcretePasteboard__pinItemCollection___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = collectionCopy;
  v6 = collectionCopy;
  dispatch_sync(v5, v7);
}

+ (id)_pasteboardNamed:(id)named createIfNotFound:(BOOL)found
{
  namedCopy = named;
  if ([namedCopy length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = 0;
    if (([UIApp _isActivating] & 1) != 0 || objc_msgSend(UIApp, "_isResigningActive"))
    {
      v7 = [namedCopy isEqualToString:@"com.apple.UIKit.pboard.general"];
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
    foundCopy = found;
    v14 = &v18;
    selfCopy = self;
    v12 = namedCopy;
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

+ (id)_existingCachedPasteboardWithName:(id)name
{
  nameCopy = name;
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
  v9 = nameCopy;
  v10 = &v11;
  v5 = nameCopy;
  dispatch_sync(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

+ (void)removePasteboardWithName:(id)name
{
  nameCopy = name;
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
  v5 = nameCopy;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIPasteboardRemovedNotification" object:v17[5] userInfo:0];
  }

  _Block_object_dispose(&v16, 8);
}

+ (void)_pinItemProviders:(id)providers forPasteboardNamed:(id)named withExpirationDate:(id)date
{
  v45 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  namedCopy = named;
  dateCopy = date;
  if ([namedCopy length])
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v11 = providersCopy;
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
    v17 = namedCopy;
    v29 = v17;
    dispatch_sync(v16, &v25);

    v18 = [v32[5] copyWithItems:{v10, v25, v26, v27, v28}];
    [v18 setName:v17];
    [v18 setLocalOnly:1];
    v19 = dateCopy;
    if (!dateCopy)
    {
      v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
    }

    [v18 setExpirationDate:v19];
    if (!dateCopy)
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

+ (void)_clearPinnedItemProvidersForPasteboardNamed:(id)named
{
  namedCopy = named;
  if ([namedCopy length])
  {
    _removePinnedItemCollectionForName(namedCopy);
  }
}

+ (void)_attemptAuthenticationWithMessage:(id)message
{
  messageCopy = message;
  v4 = _pasteboardAuthenticatedMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___UIConcretePasteboard__attemptAuthenticationWithMessage___block_invoke;
  block[3] = &unk_1E70F3590;
  v7 = messageCopy;
  v5 = messageCopy;
  dispatch_sync(v4, block);
}

+ (id)_remoteContentForLayerContextWithId:(unint64_t)id slotStyle:(id)style pasteButtonTag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  v9 = _serverConnection();
  v10 = [v9 remoteContentForLayerContextWithId:id slotStyle:styleCopy pasteButtonTag:tagCopy error:0];

  return v10;
}

+ (id)_loadRequestContextForBlockingUIKitCall:(BOOL)call
{
  callCopy = call;
  if (pthread_main_np() == 1)
  {
    if (callCopy)
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
  pasteSharingTokenFromOpenURL = [self pasteSharingTokenFromOpenURL];
  v8 = [v6 initWithOptions:v5 pasteSharingToken:pasteSharingTokenFromOpenURL];

  return v8;
}

- (id)_initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = _UIConcretePasteboard;
  v6 = [(_UIConcretePasteboard *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
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
  isPersistent = [v2 isPersistent];

  return isPersistent;
}

- (BOOL)_pasteboardCacheQueue_setPersistent:(BOOL)persistent currentNotificationState:(unint64_t)state outNewNotificationState:(unint64_t *)notificationState
{
  persistentCopy = persistent;
  v9 = _pasteboardCacheQueue_existingItemCollectionWithName(self->_name, 0);
  v10 = v9;
  if (v9)
  {
    [v9 setPersistent:persistentCopy];
LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if (!persistentCopy)
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

  v15 = [(_UIConcretePasteboard *)self _pasteboardCacheQueue_saveItemCollection:v14 currentNotificationState:state outNewNotificationState:notificationState];
LABEL_6:

  return v15;
}

- (void)_setPersistent:(BOOL)persistent
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
  persistentCopy = persistent;
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

- (void)setItemProviders:(id)providers options:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  optionsCopy = options;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = providersCopy;
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

  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:optionsCopy coerceStringsToURLs:0];
}

- (void)setItemProviders:(id)providers localOnly:(BOOL)only expirationDate:(id)date
{
  onlyCopy = only;
  v25 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  dateCopy = date;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = providersCopy;
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
  [(_UIPasteboardOptions *)v19 setLocalOnly:onlyCopy];
  if (dateCopy)
  {
    [(_UIPasteboardOptions *)v19 setExpirationDate:dateCopy];
  }

  [(_UIConcretePasteboard *)self _setItemsAndSave:v10 options:v19 coerceStringsToURLs:0, v20];
}

- (void)_pinItemProviders:(id)providers expirationDate:(id)date
{
  v24 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  dateCopy = date;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = providersCopy;
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
  if (dateCopy)
  {
    [(_UIPasteboardOptions *)v17 setExpirationDate:dateCopy];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:60.0];
    [(_UIPasteboardOptions *)v17 setExpirationDate:v18];
  }

  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:v17 coerceStringsToURLs:0, v19];
}

- (void)setObjects:(id)objects options:(id)options
{
  v22 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  optionsCopy = options;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = objectsCopy;
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

  [(_UIConcretePasteboard *)self setItemProviders:v8 options:optionsCopy];
}

- (void)setObjects:(id)objects localOnly:(BOOL)only expirationDate:(id)date
{
  onlyCopy = only;
  v25 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  dateCopy = date;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objectsCopy;
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
  [(_UIPasteboardOptions *)v19 setLocalOnly:onlyCopy];
  if (dateCopy)
  {
    [(_UIPasteboardOptions *)v19 setExpirationDate:dateCopy];
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
  items = [v4 items];
  v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        availableTypes = [*(*(&v13 + 1) + 8 * i) availableTypes];
        [v3 addObjectsFromArray:availableTypes];
      }

      v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)itemProvidersWithRetryBehavior:(BOOL)behavior
{
  behaviorCopy = behavior;
  v22 = *MEMORY[0x1E69E9840];
  v4 = _existingItemCollectionWithName(self->_name);
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  items = [v4 items];
  v7 = [v5 initWithCapacity:{objc_msgSend(items, "count")}];

  _loadRequestContextForNonBlockingUIKitCall = [objc_opt_class() _loadRequestContextForNonBlockingUIKitCall];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  items2 = [v4 items];
  v10 = [items2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    if (behaviorCopy)
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
          objc_enumerationMutation(items2);
        }

        v15 = [[UIItemProvider alloc] initWithPBItem:*(*(&v17 + 1) + 8 * i) loadRequestContext:_loadRequestContextForNonBlockingUIKitCall secureRetryHandler:v13];
        [v7 addObject:v15];
      }

      v11 = [items2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (id)itemProvidersForInstantiatingObjectsOfClass:(Class)class
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
        if ([v11 canLoadObjectOfClass:{class, v13}])
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

- (BOOL)canInstantiateObjectsOfClass:(Class)class
{
  v3 = [(_UIConcretePasteboard *)self itemProvidersForInstantiatingObjectsOfClass:class];
  v4 = [v3 count] != 0;

  return v4;
}

- (int64_t)numberOfItems
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  v4 = [items count];

  return v4;
}

- (id)pasteboardTypesForItemSet:(id)set
{
  setCopy = set;
  v5 = _existingItemCollectionWithName(self->_name);
  items = [v5 items];
  v7 = [items count];

  if (v7)
  {
    if (!setCopy)
    {
      v8 = MEMORY[0x1E696AC90];
      items2 = [v5 items];
      setCopy = [v8 indexSetWithIndexesInRange:{0, objc_msgSend(items2, "count")}];
    }

    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(setCopy, "count")}];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51___UIConcretePasteboard_pasteboardTypesForItemSet___block_invoke;
    v15[3] = &unk_1E70F43F0;
    v16 = v5;
    v11 = v10;
    v17 = v11;
    [setCopy enumerateIndexesUsingBlock:v15];
    v12 = v17;
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)containsPasteboardTypes:(id)types inItemSet:(id)set
{
  typesCopy = types;
  setCopy = set;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = _existingItemCollectionWithName(self->_name);
  v9 = v8;
  if (v8)
  {
    if (!setCopy)
    {
      v10 = MEMORY[0x1E696AC90];
      items = [v8 items];
      setCopy = [v10 indexSetWithIndexesInRange:{0, objc_msgSend(items, "count")}];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___UIConcretePasteboard_containsPasteboardTypes_inItemSet___block_invoke;
    v14[3] = &unk_1E711A408;
    v15 = v9;
    v16 = typesCopy;
    v17 = &v18;
    [setCopy enumerateIndexesUsingBlock:v14];
  }

  v12 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (id)itemSetWithPasteboardTypes:(id)types
{
  v26 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if ([typesCopy count])
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v6 = _existingItemCollectionWithName(self->_name);
    v7 = v6;
    if (v6)
    {
      items = [v6 items];
      v9 = [items count];

      if (v9)
      {
        v10 = 0;
        do
        {
          items2 = [v7 items];
          v12 = [items2 objectAtIndexedSubscript:v10];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = typesCopy;
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
                  [indexSet addIndex:v10];
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
          items3 = [v7 items];
          v19 = [items3 count];
        }

        while (v10 < v19);
      }
    }
  }

  else
  {
    indexSet = 0;
  }

  return indexSet;
}

- (id)valuesForPasteboardType:(id)type inItemSet:(id)set
{
  typeCopy = type;
  setCopy = set;
  v8 = _existingItemCollectionWithName(self->_name);
  items = [v8 items];
  v10 = [items count];

  if (v10 && [typeCopy length])
  {
    if (!setCopy)
    {
      v11 = MEMORY[0x1E696AC90];
      items2 = [v8 items];
      setCopy = [v11 indexSetWithIndexesInRange:{0, objc_msgSend(items2, "count")}];
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(setCopy, "count")}];
    _loadRequestContextForBlockingUIKitCall = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59___UIConcretePasteboard_valuesForPasteboardType_inItemSet___block_invoke;
    v17[3] = &unk_1E711A458;
    v18 = v8;
    v19 = typeCopy;
    v14 = _loadRequestContextForBlockingUIKitCall;
    v20 = v14;
    v21 = &v22;
    [setCopy enumerateIndexesUsingBlock:v17];
    v15 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dataForPasteboardType:(id)type inItemSet:(id)set
{
  typeCopy = type;
  setCopy = set;
  v8 = _existingItemCollectionWithName(self->_name);
  items = [v8 items];
  v10 = [items count];

  if (v10 && [typeCopy length])
  {
    if (!setCopy)
    {
      v11 = MEMORY[0x1E696AC90];
      items2 = [v8 items];
      setCopy = [v11 indexSetWithIndexesInRange:{0, objc_msgSend(items2, "count")}];
    }

    _loadRequestContextForBlockingUIKitCall = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__152;
    v26 = __Block_byref_object_dispose__152;
    v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(setCopy, "count")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke;
    v17[3] = &unk_1E711A458;
    v18 = v8;
    v19 = typeCopy;
    v14 = _loadRequestContextForBlockingUIKitCall;
    v20 = v14;
    v21 = &v22;
    [setCopy enumerateIndexesUsingBlock:v17];
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
  array = [MEMORY[0x1E695DF70] array];
  v14 = _existingItemCollectionWithName(self->_name);
  _loadRequestContextForBlockingUIKitCall = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
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
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        availableTypes = [v5 availableTypes];
        v7 = [availableTypes countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v7)
        {
          v8 = *v39;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v39 != v8)
              {
                objc_enumerationMutation(availableTypes);
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
              [v5 uikit_loadRepresentationAsType:v10 context:_loadRequestContextForBlockingUIKitCall completionBlock:v22];
              dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

              [dictionary setObject:v33[5] forKeyedSubscript:v10];
              _recordHangAssertionIfNecessaryForResponseMetadata(v27[5]);
              _Block_object_dispose(&v26, 8);

              _Block_object_dispose(&v32, 8);
            }

            v7 = [availableTypes countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v7);
        }

        [array addObject:dictionary];
        v3 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v18);
  }

  return array;
}

- (void)setItems:(id)items options:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = itemsCopy;
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

        [array addObject:v10];
        v6 = v31 + 1;
      }

      while (v31 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v28);
  }

  v21 = [_UIPasteboardOptions optionsWithDictionary:optionsCopy];
  [(_UIConcretePasteboard *)self _setItemsAndSave:array options:v21];
}

- (void)_setItemsAndSave:(id)save options:(id)options coerceStringsToURLs:(BOOL)ls dataOwner:(int64_t)owner
{
  lsCopy = ls;
  v72 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  optionsCopy = options;
  if (lsCopy)
  {
    selfCopy = self;
    _loadRequestContextForBlockingUIKitCall = [objc_opt_class() _loadRequestContextForBlockingUIKitCall];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = saveCopy;
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
          identifier = [v11 identifier];
          v16 = [v13 hasRepresentationConformingToType:identifier];

          if ((v16 & 1) == 0)
          {
            v17 = objc_opt_class();
            identifier2 = [v46 identifier];
            v70[0] = identifier2;
            identifier3 = [v45 identifier];
            v70[1] = identifier3;
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
              v24 = [v13 uikit_loadObjectOfClass:v22 context:_loadRequestContextForBlockingUIKitCall completionBlock:v50];
              dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

              _recordHangAssertionIfNecessaryForResponseMetadata(v55[5]);
              v25 = v61[5];
              if (v25)
              {
                v26 = [MEMORY[0x1E695DFF8] URLWithString:v25 encodingInvalidCharacters:0];
                scheme = [v26 scheme];
                v28 = [scheme length] == 0;

                if (!v28)
                {
                  v29 = _convertURLToDataRepresentation(v26);
                  identifier4 = [v11 identifier];
                  v48[0] = MEMORY[0x1E69E9820];
                  v48[1] = 3221225472;
                  v48[2] = __80___UIConcretePasteboard__setItemsAndSave_options_coerceStringsToURLs_dataOwner___block_invoke_2;
                  v48[3] = &unk_1E711A520;
                  v31 = v29;
                  v49 = v31;
                  [v13 uikit_addRepresentationType:identifier4 loaderBlock:v48];
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

    self = selfCopy;
  }

  selfCopy2 = self;
  v33 = _existingItemCollectionWithName(self->_name);
  if (!v33)
  {
    v33 = objc_alloc_init(MEMORY[0x1E69BC808]);
  }

  availableRepresentationTypes = [v33 availableRepresentationTypes];
  v35 = [v33 copyWithItems:saveCopy];
  [v35 setName:self->_name];
  [v35 setChangeCount:{objc_msgSend(v33, "changeCount")}];
  [v35 setOriginatorDataOwner:owner];
  if (optionsCopy)
  {
    isPinned = [optionsCopy isPinned];
    isLocalOnly = [optionsCopy isLocalOnly];
    expirationDate = [optionsCopy expirationDate];
  }

  else
  {
    isLocalOnly = [v33 isLocalOnly];
    expirationDate = [v33 expirationDate];
    isPinned = 0;
  }

  [v35 setLocalOnly:isLocalOnly];
  [v35 setExpirationDate:expirationDate];
  if (isPinned)
  {
    [(_UIConcretePasteboard *)self _pinItemCollection:v35];
  }

  else
  {
    [(_UIConcretePasteboard *)self _saveItemCollection:v35];
    availableRepresentationTypes2 = [v35 availableRepresentationTypes];
    [(_UIConcretePasteboard *)selfCopy2 _sendPasteboardTypesChangedNotificationOldTypes:availableRepresentationTypes newTypes:availableRepresentationTypes2];
  }
}

- (void)_setItemsAndSave:(id)save options:(id)options coerceStringsToURLs:(BOOL)ls
{
  lsCopy = ls;
  optionsCopy = options;
  saveCopy = save;
  [(_UIConcretePasteboard *)self _setItemsAndSave:saveCopy options:optionsCopy coerceStringsToURLs:lsCopy dataOwner:_pasteboardThreadLocalDataOwner()];
}

- (void)addItems:(id)items
{
  v45 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  selfCopy = self;
  v5 = _existingItemCollectionWithName(self->_name);
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69BC808]);
    [v5 setName:self->_name];
  }

  v23 = v5;
  items = [v5 items];
  v7 = [items mutableCopy];

  array = v7;
  if (!v7)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = itemsCopy;
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

        [array addObject:v12];
        v8 = v32 + 1;
      }

      while (v32 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v29);
  }

  [(_UIConcretePasteboard *)selfCopy _setItemsAndSave:array options:0];
}

- (id)pasteboardTypes
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  firstObject = [items firstObject];
  availableTypes = [firstObject availableTypes];

  if (availableTypes)
  {
    v6 = availableTypes;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (BOOL)containsPasteboardTypes:(id)types
{
  v18 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = _existingItemCollectionWithName(self->_name);
  items = [v5 items];
  firstObject = [items firstObject];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = typesCopy;
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

        if ([firstObject hasRepresentationConformingToType:{*(*(&v13 + 1) + 8 * i), v13}])
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

- (id)dataForPasteboardType:(id)type
{
  v4 = MEMORY[0x1E696AC90];
  typeCopy = type;
  v6 = [v4 indexSetWithIndex:0];
  v7 = [(_UIConcretePasteboard *)self dataForPasteboardType:typeCopy inItemSet:v6];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)valueForPasteboardType:(id)type
{
  v4 = MEMORY[0x1E696AC90];
  typeCopy = type;
  v6 = [v4 indexSetWithIndex:0];
  v7 = [(_UIConcretePasteboard *)self valuesForPasteboardType:typeCopy inItemSet:v6];

  firstObject = [v7 firstObject];

  return firstObject;
}

- (void)setValue:(id)value forPasteboardType:(id)type
{
  valueCopy = value;
  typeCopy = type;
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

  if (!valueCopy)
  {
    v11 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = valueCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(UIImage *)valueCopy dataUsingEncoding:4];
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
          baseURL = [(UIImage *)valueCopy baseURL];
          v13 = MEMORY[0x1E695DEC8];
          if (baseURL)
          {
            relativeString = [(UIImage *)valueCopy relativeString];
            absoluteString = [baseURL absoluteString];
            v16 = [v13 arrayWithObjects:{relativeString, absoluteString, 0}];
          }

          else
          {
            relativeString = [(UIImage *)valueCopy absoluteString];
            v16 = [v13 arrayWithObjects:{relativeString, &stru_1EFB14550, 0}];
          }

          v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v16 format:200 options:0 error:0];

          goto LABEL_18;
        }

        v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:valueCopy format:200 options:0 error:0];
        goto LABEL_17;
      }

      if ([typeCopy isEqual:0x1EFB86090])
      {
LABEL_16:
        v10 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:valueCopy requiringSecureCoding:0 error:0];
      }

      else
      {
        v10 = UIImagePNGRepresentation(valueCopy);
      }
    }
  }

LABEL_17:
  v11 = v10;
LABEL_18:
  [(_UIConcretePasteboard *)self setData:v11 forPasteboardType:typeCopy];
}

- (void)_sendPasteboardTypesChangedNotificationOldTypes:(id)types newTypes:(id)newTypes
{
  v6 = MEMORY[0x1E695DFD8];
  newTypesCopy = newTypes;
  v15 = [v6 setWithArray:types];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:newTypesCopy];

  v9 = [v8 mutableCopy];
  [v9 minusSet:v15];
  v10 = [v15 mutableCopy];
  [v10 minusSet:v8];
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([v9 count])
    {
      allObjects = [v9 allObjects];
      [dictionary setObject:allObjects forKeyedSubscript:@"UIPasteboardChangedTypesAddedKey"];
    }

    if ([v10 count])
    {
      allObjects2 = [v10 allObjects];
      [dictionary setObject:allObjects2 forKeyedSubscript:@"UIPasteboardChangedTypesRemovedKey"];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIPasteboardChangedNotification" object:self userInfo:dictionary];
  }
}

- (void)setData:(id)data forPasteboardType:(id)type
{
  v30[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  typeCopy = type;
  v8 = objc_alloc_init(MEMORY[0x1E69BC800]);
  v9 = [MEMORY[0x1E6982C40] _typeWithIdentifier:typeCopy allowUndeclared:1];
  if (![v9 conformsToType:*MEMORY[0x1E6982F98]])
  {
    goto LABEL_8;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AC38]) initWithSerializedRepresentation:dataCopy];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  selfCopy = self;
  v12 = _UITemporaryFolderURL(@"com.apple.UIKit");
  localizedDescription = [v9 localizedDescription];
  if (!localizedDescription)
  {
    localizedDescription = [*MEMORY[0x1E6982E48] localizedDescription];
  }

  v14 = [localizedDescription stringByAppendingPathExtensionForType:v9];
  v15 = [v12 URLByAppendingPathComponent:v14];
  if (![v11 writeToURL:v15 options:1 originalContentsURL:0 error:0])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v12 error:0];

    self = selfCopy;
LABEL_8:
    v20 = objc_alloc(MEMORY[0x1E69BC810]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke_3;
    v25[3] = &unk_1E711A570;
    v26 = dataCopy;
    v21 = [v20 initWithType:typeCopy preferredRepresentation:0 v3_loader:v25];
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
  v18 = [v23 initWithType:typeCopy preferredRepresentation:1 v3_loader:v27];
  [v8 addRepresentation:v18];

  self = selfCopy;
LABEL_9:

  v30[0] = v8;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [(_UIConcretePasteboard *)self _setItemsAndSave:v22 options:0];
}

- (id)_itemsCoercibleToClass:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _existingItemCollectionWithName(self->_name);
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  items = [v4 items];
  v7 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(items);
        }

        v11 = _coerceItemToClass(*(*(&v13 + 1) + 8 * i), class);
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)string
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  firstObject = [items firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(firstObject, v5);

  return v6;
}

- (void)_clearItems
{
  v3 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIConcretePasteboard *)self _setItemsAndSave:0 options:v3];
}

- (void)setString:(id)string
{
  v13[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
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

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:stringCopy];
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

- (void)_setItemsAndSaveFromObjects:(id)objects ofClass:(Class)class
{
  objectsCopy = objects;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__152;
  v15 = __Block_byref_object_dispose__152;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIConcretePasteboard__setItemsAndSaveFromObjects_ofClass___block_invoke;
  v10[3] = &unk_1E711A598;
  v10[6] = class;
  v10[7] = a2;
  v10[4] = self;
  v10[5] = &v11;
  [objectsCopy enumerateObjectsUsingBlock:v10];
  v8 = v12[5];
  v9 = objc_alloc_init(_UIPasteboardOptions);
  [(_UIConcretePasteboard *)self _setItemsAndSave:v8 options:v9];

  _Block_object_dispose(&v11, 8);
}

- (void)setStrings:(id)strings
{
  stringsCopy = strings;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:stringsCopy ofClass:objc_opt_class()];
}

- (id)URL
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  firstObject = [items firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(firstObject, v5);

  return v6;
}

- (void)setURL:(id)l
{
  v13[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
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

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:lCopy];
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

- (void)setURLs:(id)ls
{
  lsCopy = ls;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:lsCopy ofClass:objc_opt_class()];
}

- (id)image
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  firstObject = [items firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(firstObject, v5);

  return v6;
}

- (void)setImage:(id)image
{
  v13[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
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

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:imageCopy];
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

- (void)setImages:(id)images
{
  imagesCopy = images;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:imagesCopy ofClass:objc_opt_class()];
}

- (id)color
{
  v2 = _existingItemCollectionWithName(self->_name);
  items = [v2 items];
  firstObject = [items firstObject];
  v5 = objc_opt_class();
  v6 = _coerceItemToClass(firstObject, v5);

  return v6;
}

- (void)setColor:(id)color
{
  v13[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (colorCopy)
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

    v10 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:colorCopy];
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

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  [(_UIConcretePasteboard *)self _setItemsAndSaveFromObjects:colorsCopy ofClass:objc_opt_class()];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [self _pasteboardNamed:uUIDString createIfNotFound:1];

  v6 = objc_alloc_init(_UIPasteboardOptions);
  [v5 _setItemsAndSave:MEMORY[0x1E695E0F0] options:v6];

  return v5;
}

- (id)_detectedPasteboardTypesForTypes:(id)types
{
  typesCopy = types;
  v5 = _existingItemCollectionWithName(self->_name);
  items = [v5 items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke;
    v23[3] = &unk_1E711A5C0;
    v9 = v8;
    v24 = v9;
    v10 = [firstObject enumeratePatternDetectionsForPatterns:typesCopy usingBlock:v23];
    if ([v10 count])
    {
      v11 = dispatch_semaphore_create(0);
      v18 = _serverConnection();
      name = [v5 name];
      uUID = [v5 UUID];
      v14 = _pasteboardThreadLocalDataOwner();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke_2;
      v19[3] = &unk_1E711A610;
      v20 = v9;
      v21 = firstObject;
      v22 = v11;
      v15 = v11;
      [v18 requestPatternDetectionsFromPasteboardWithName:name UUID:uUID authenticationMessage:0 itemIndex:0 patterns:v10 needValues:0 dataOwner:v14 completionBlock:v19];

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

- (id)_detectedPasteboardTypeStringsForTypes:(id)types
{
  typesCopy = types;
  v5 = _existingItemCollectionWithName(self->_name);
  items = [v5 items];
  firstObject = [items firstObject];

  if (firstObject)
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
    v12 = [firstObject enumeratePatternDetectionsForPatterns:typesCopy usingBlock:v28];
    [v11 unionSet:v12];

    if ([v11 count])
    {
      v13 = dispatch_semaphore_create(0);
      v14 = _serverConnection();
      [v5 name];
      v15 = v23 = typesCopy;
      uUID = [v5 UUID];
      v22 = _pasteboardLastAuthenticatedMessage;
      v17 = _pasteboardThreadLocalDataOwner();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke_2;
      v24[3] = &unk_1E711A610;
      v25 = v10;
      v26 = firstObject;
      v27 = v13;
      v18 = v13;
      [v14 requestPatternDetectionsFromPasteboardWithName:v15 UUID:uUID authenticationMessage:v22 itemIndex:0 patterns:v11 needValues:1 dataOwner:v17 completionBlock:v24];

      typesCopy = v23;
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

+ (void)_detectPatternsForPatterns:(id)patterns atIndex:(unint64_t)index itemCollection:(id)collection completionHandler:(id)handler
{
  patternsCopy = patterns;
  collectionCopy = collection;
  handlerCopy = handler;
  items = [collectionCopy items];
  if ([items count] <= index)
  {
    v28 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke;
    block[3] = &unk_1E70F4178;
    v41 = handlerCopy;
    indexCopy = index;
    dispatch_async(v28, block);

    v13 = v41;
  }

  else
  {
    v13 = [items objectAtIndexedSubscript:index];
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2;
    v38[3] = &unk_1E711A5C0;
    v15 = v14;
    v39 = v15;
    v16 = [v13 enumeratePatternDetectionsForPatterns:patternsCopy usingBlock:v38];
    if ([v16 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4;
      aBlock[3] = &unk_1E711A660;
      v34 = handlerCopy;
      v32 = v15;
      v33 = v13;
      v30 = patternsCopy;
      v17 = _Block_copy(aBlock);
      v18 = _serverConnection();
      name = [collectionCopy name];
      [collectionCopy UUID];
      v29 = items;
      v20 = v13;
      v21 = collectionCopy;
      v22 = v15;
      v24 = v23 = handlerCopy;
      [v18 requestPatternDetectionsFromPasteboardWithName:name UUID:v24 authenticationMessage:0 itemIndex:index patterns:v16 needValues:0 dataOwner:_pasteboardThreadLocalDataOwner() completionBlock:v17];

      handlerCopy = v23;
      v15 = v22;
      collectionCopy = v21;
      v13 = v20;
      items = v29;

      v25 = &v32;
      v26 = &v34;

      patternsCopy = v30;
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
      v37 = handlerCopy;
      v25 = &v36;
      v36 = v15;
      dispatch_async(v27, v35);
    }
  }
}

+ (id)clientValueForValue:(id)value pattern:(id)pattern
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  patternCopy = pattern;
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
    v8 = valueCopy;
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
          v14 = [_MergedGlobals_5_18 objectForKeyedSubscript:{patternCopy, v22}];
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
    v19 = [_MergedGlobals_5_18 objectForKeyedSubscript:patternCopy];
    v7 = v19;
    if (v19)
    {
      v18 = (*(v19 + 16))(v19, valueCopy);
    }

    else
    {
      v18 = valueCopy;
    }
  }

  v20 = v18;

  return v20;
}

+ (void)_detectValuesForPatterns:(id)patterns atIndex:(unint64_t)index itemCollection:(id)collection completionHandler:(id)handler
{
  patternsCopy = patterns;
  collectionCopy = collection;
  handlerCopy = handler;
  items = [collectionCopy items];
  if ([items count] <= index)
  {
    v35 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke;
    block[3] = &unk_1E70F4178;
    v51 = handlerCopy;
    indexCopy = index;
    dispatch_async(v35, block);

    v14 = v51;
  }

  else
  {
    v14 = [items objectAtIndexedSubscript:index];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2;
    v46[3] = &unk_1E711A788;
    selfCopy = self;
    v17 = v15;
    v47 = v17;
    v18 = v16;
    v48 = v18;
    v38 = patternsCopy;
    v19 = [v14 enumeratePatternDetectionsForPatterns:patternsCopy usingBlock:v46];
    [v18 unionSet:v19];

    if ([v18 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4;
      aBlock[3] = &unk_1E711A7D8;
      v42[0] = handlerCopy;
      v42[1] = self;
      v40 = v17;
      v41 = v14;
      indexCopy2 = index;
      v20 = _Block_copy(aBlock);
      v21 = _serverConnection();
      name = [collectionCopy name];
      [collectionCopy UUID];
      v23 = v37 = v17;
      v24 = v18;
      v25 = items;
      v26 = collectionCopy;
      v27 = v14;
      v28 = handlerCopy;
      v29 = _pasteboardLastAuthenticatedMessage;
      v30 = _pasteboardThreadLocalDataOwner();
      v31 = v29;
      handlerCopy = v28;
      v14 = v27;
      collectionCopy = v26;
      items = v25;
      v18 = v24;
      v32 = v42;
      [v21 requestPatternDetectionsFromPasteboardWithName:name UUID:v23 authenticationMessage:v31 itemIndex:indexCopy2 patterns:v18 needValues:1 dataOwner:v30 completionBlock:v20];

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
      v45 = handlerCopy;
      v33 = &v44;
      v44 = v17;
      dispatch_async(v34, v43);
    }

    patternsCopy = v38;
  }
}

+ (void)_asynchronouslyEnumerateItemSet:(id)set itemsCompletionHandler:(id)handler usingItemBlock:(id)block
{
  setCopy = set;
  handlerCopy = handler;
  blockCopy = block;
  v10 = [setCopy count];
  if (v10 == 1)
  {
    firstIndex = [setCopy firstIndex];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke_2;
    v28[3] = &unk_1E711A800;
    v29 = handlerCopy;
    blockCopy[2](blockCopy, firstIndex, v28);
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
    v31 = handlerCopy;
    dispatch_async(v12, block);

    v13 = v31;
LABEL_5:

    goto LABEL_9;
  }

  v15 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
  v20 = setCopy;
  [setCopy getIndexes:v15 maxCount:v11 inIndexRange:0];
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
    v22 = handlerCopy;
    blockCopy[2](blockCopy, v19, v21);

    ++v17;
  }

  while (v11 != v17);
  free(v15);
  _Block_object_dispose(v27, 8);
  setCopy = v20;
LABEL_9:
}

- (void)detectPatternsForPatterns:(id)patterns completionHandler:(id)handler
{
  name = self->_name;
  handlerCopy = handler;
  patternsCopy = patterns;
  v8 = _existingItemCollectionWithName(name);
  [_UIConcretePasteboard _detectPatternsForPatterns:patternsCopy atIndex:0 itemCollection:v8 completionHandler:handlerCopy];
}

- (void)detectPatternsForPatterns:(id)patterns inItemSet:(id)set completionHandler:(id)handler
{
  patternsCopy = patterns;
  setCopy = set;
  handlerCopy = handler;
  v12 = _existingItemCollectionWithName(self->_name);
  v13 = setCopy;
  if (!setCopy)
  {
    v14 = objc_alloc(MEMORY[0x1E696AC90]);
    items = [v12 items];
    v13 = [v14 initWithIndexesInRange:{0, objc_msgSend(items, "count")}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79___UIConcretePasteboard_detectPatternsForPatterns_inItemSet_completionHandler___block_invoke;
  v17[3] = &unk_1E711A850;
  v18 = patternsCopy;
  v19 = v12;
  v15 = v12;
  v16 = patternsCopy;
  [_UIConcretePasteboard _asynchronouslyEnumerateItemSet:v13 itemsCompletionHandler:handlerCopy usingItemBlock:v17];
  if (!setCopy)
  {
  }
}

- (void)detectValuesForPatterns:(id)patterns completionHandler:(id)handler
{
  name = self->_name;
  handlerCopy = handler;
  patternsCopy = patterns;
  v8 = _existingItemCollectionWithName(name);
  [_UIConcretePasteboard _detectValuesForPatterns:patternsCopy atIndex:0 itemCollection:v8 completionHandler:handlerCopy];
}

- (void)detectValuesForPatterns:(id)patterns inItemSet:(id)set completionHandler:(id)handler
{
  patternsCopy = patterns;
  setCopy = set;
  handlerCopy = handler;
  v12 = _existingItemCollectionWithName(self->_name);
  v13 = setCopy;
  if (!setCopy)
  {
    v14 = objc_alloc(MEMORY[0x1E696AC90]);
    items = [v12 items];
    v13 = [v14 initWithIndexesInRange:{0, objc_msgSend(items, "count")}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77___UIConcretePasteboard_detectValuesForPatterns_inItemSet_completionHandler___block_invoke;
  v17[3] = &unk_1E711A850;
  v18 = patternsCopy;
  v19 = v12;
  v15 = v12;
  v16 = patternsCopy;
  [_UIConcretePasteboard _asynchronouslyEnumerateItemSet:v13 itemsCompletionHandler:handlerCopy usingItemBlock:v17];
  if (!setCopy)
  {
  }
}

- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block
{
  blockCopy = block;
  v8 = _pasteboardAuthenticatedMessageQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIConcretePasteboard__requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_completionBlock___block_invoke;
  block[3] = &unk_1E711A878;
  contextCopy = context;
  dCopy = d;
  v11 = blockCopy;
  v9 = blockCopy;
  dispatch_async(v8, block);
}

@end