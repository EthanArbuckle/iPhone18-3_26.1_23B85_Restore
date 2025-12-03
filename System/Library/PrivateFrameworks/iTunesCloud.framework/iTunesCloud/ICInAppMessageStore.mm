@interface ICInAppMessageStore
- (ICInAppMessageStore)init;
- (ICInAppMessageStore)initWithFilePath:(id)path;
- (id)_defaultStoreFilePath;
- (void)_commit;
- (void)_load;
- (void)addMessageEntry:(id)entry completion:(id)completion;
- (void)addPendingMessageEvent:(id)event completion:(id)completion;
- (void)allApplicationStorePropertiesWithCompletion:(id)completion;
- (void)allStorePropertiesWithCompletion:(id)completion;
- (void)getAllMessageEntriesForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getAllMessageEntriesForBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)getAllMessageEntriesWithCompletion:(id)completion;
- (void)getAllMetadataForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getAllMetadataForBundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)getMessageEntryWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion;
- (void)getMetadataForMessageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion;
- (void)getStorePropertyForKey:(id)key bundleIdentifier:(id)identifier completion:(id)completion;
- (void)getStorePropertyForKey:(id)key completion:(id)completion;
- (void)pendingMessageEventsWithCompletion:(id)completion;
- (void)removeAllMessageEntriesForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)removeAllMetadataForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)removeMessageEntry:(id)entry completion:(id)completion;
- (void)removeMessageEntryWithIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier completion:(id)completion;
- (void)removeMetadataForMessageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion;
- (void)removePendingMessageEventWithIdentifier:(id)identifier completion:(id)completion;
- (void)resetStoreWithCompletion:(id)completion;
- (void)updateMessageEntry:(id)entry completion:(id)completion;
- (void)updateMetadata:(id)metadata messageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion;
- (void)updateStoreProperty:(id)property forKey:(id)key bundleIdentifier:(id)identifier completion:(id)completion;
- (void)updateStoreProperty:(id)property forKey:(id)key completion:(id)completion;
@end

@implementation ICInAppMessageStore

- (ICInAppMessageStore)init
{
  _defaultStoreFilePath = [(ICInAppMessageStore *)self _defaultStoreFilePath];
  v4 = [(ICInAppMessageStore *)self initWithFilePath:_defaultStoreFilePath];

  return v4;
}

- (id)_defaultStoreFilePath
{
  v2 = ICDefaultCacheDirectory();
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, @"InAppMessages", @"MessageStore.plist", 0}];
  v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  return v4;
}

- (void)_load
{
  v53 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  messageEntryCache = self->_messageEntryCache;
  self->_messageEntryCache = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v6 = self->_messageEntryCache;
  self->_messageEntryCache = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  globalPropertyCache = self->_globalPropertyCache;
  self->_globalPropertyCache = dictionary3;

  array = [MEMORY[0x1E695DF70] array];
  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = array;

  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:self->_filePath];
  if ([v11 length])
  {
    v47 = 0;
    v12 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v47];
    v13 = v47;
    if (v13)
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v51 = 2114;
        v52 = v13;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to read message store data. err=%{public}@", buf, 0x16u);
      }
    }

    if (_NSIsNSDictionary())
    {
      v15 = [v12 ic_dictionaryValueForKey:@"properties"];
      if (_NSIsNSDictionary())
      {
        v16 = [v15 mutableCopy];
        v17 = self->_globalPropertyCache;
        self->_globalPropertyCache = v16;
      }

      v36 = v15;
      v18 = [v12 ic_dictionaryValueForKey:@"applicationProperties"];
      if (_NSIsNSDictionary())
      {
        v19 = [v18 mutableCopy];
        applicationPropertyCache = self->_applicationPropertyCache;
        self->_applicationPropertyCache = v19;
      }

      v35 = v18;
      v37 = v13;
      v39 = v11;
      v21 = [v12 ic_dictionaryValueForKey:@"messages"];
      if (_NSIsNSDictionary())
      {
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __28__ICInAppMessageStore__load__block_invoke;
        v46[3] = &unk_1E7BF7128;
        v46[4] = self;
        [v21 enumerateKeysAndObjectsUsingBlock:v46];
      }

      v22 = [v12 ic_dictionaryValueForKey:@"metadata"];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __28__ICInAppMessageStore__load__block_invoke_45;
      v45[3] = &unk_1E7BF7128;
      v45[4] = self;
      v34 = v22;
      [v22 enumerateKeysAndObjectsUsingBlock:v45];
      v38 = v12;
      v23 = [v12 ic_arrayValueForKey:@"events"];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v41 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v41 + 1) + 8 * i);
            v29 = MEMORY[0x1E696ACD0];
            v30 = objc_opt_class();
            v40 = 0;
            v31 = [v29 unarchivedObjectOfClass:v30 fromData:v28 error:&v40];
            v32 = v40;
            if (v31)
            {
              [(NSMutableArray *)self->_pendingEvents addObject:v31];
            }

            else
            {
              v33 = os_log_create("com.apple.amp.iTunesCloud", "Default");
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                selfCopy2 = self;
                v51 = 2114;
                v52 = v32;
                _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to deserialize event entry. err=%{public}@", buf, 0x16u);
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v41 objects:v48 count:16];
        }

        while (v25);
      }

      v12 = v38;
      v11 = v39;
      v13 = v37;
    }
  }
}

- (void)_commit
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v4 = v3;
  globalPropertyCache = self->_globalPropertyCache;
  if (globalPropertyCache)
  {
    [v3 setObject:globalPropertyCache forKey:@"properties"];
  }

  applicationPropertyCache = self->_applicationPropertyCache;
  if (applicationPropertyCache)
  {
    [v4 setObject:applicationPropertyCache forKey:@"applicationProperties"];
  }

  if (self->_messageEntryCache)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_messageEntryCache, "count")}];
    messageEntryCache = self->_messageEntryCache;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __30__ICInAppMessageStore__commit__block_invoke;
    v36[3] = &unk_1E7BF7150;
    v36[4] = self;
    v37 = v7;
    v9 = v7;
    [(NSMutableDictionary *)messageEntryCache enumerateKeysAndObjectsUsingBlock:v36];
    [v4 setObject:v9 forKey:@"messages"];
  }

  if (self->_messageMetadataCache)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_messageMetadataCache, "count")}];
    messageMetadataCache = self->_messageMetadataCache;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __30__ICInAppMessageStore__commit__block_invoke_54;
    v34[3] = &unk_1E7BF7150;
    v34[4] = self;
    v35 = v10;
    v12 = v10;
    [(NSMutableDictionary *)messageMetadataCache enumerateKeysAndObjectsUsingBlock:v34];
    [v4 setObject:v12 forKey:@"metadata"];
  }

  if (self->_pendingEvents)
  {
    v27 = v4;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_pendingEvents, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = self->_pendingEvents;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v29];
          v21 = v29;
          if (v20)
          {
            [v13 addObject:v20];
          }

          else
          {
            v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              eventIdentifier = [v19 eventIdentifier];
              *buf = 138543874;
              selfCopy2 = self;
              v40 = 2114;
              v41 = eventIdentifier;
              v42 = 2114;
              v43 = v21;
              _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize event entry with identifier %{public}@. err=%{public}@", buf, 0x20u);
            }
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v16);
    }

    v4 = v27;
    [v27 setObject:v13 forKey:@"events"];
  }

  v28 = 0;
  v24 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v28];
  v25 = v28;
  if (v25)
  {
    v26 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v40 = 2114;
      v41 = v25;
      _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to commit message store data. err=%{public}@", buf, 0x16u);
    }
  }

  [v24 writeToFile:self->_filePath atomically:1];
}

void __30__ICInAppMessageStore__commit__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __30__ICInAppMessageStore__commit__block_invoke_2;
  v14 = &unk_1E7BF8B48;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];

  [*(a1 + 40) setObject:v10 forKey:{v7, v11, v12, v13, v14}];
}

void __30__ICInAppMessageStore__commit__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __30__ICInAppMessageStore__commit__block_invoke_2_55;
  v14 = &unk_1E7BF8B48;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];

  [*(a1 + 40) setObject:v10 forKey:{v7, v11, v12, v13, v14}];
}

void __30__ICInAppMessageStore__commit__block_invoke_2_55(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize message metadata entry with identifier %{public}@. err=%{public}@", buf, 0x20u);
    }
  }
}

void __30__ICInAppMessageStore__commit__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize message entry with identifier %{public}@. err=%{public}@", buf, 0x20u);
    }
  }
}

void __28__ICInAppMessageStore__load__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_NSIsNSDictionary())
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __28__ICInAppMessageStore__load__block_invoke_2;
    v13 = &unk_1E7BF7100;
    v8 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v10];
    [*(*(a1 + 32) + 24) setObject:v9 forKey:{v5, v10, v11, v12, v13}];
  }
}

void __28__ICInAppMessageStore__load__block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_NSIsNSDictionary())
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __28__ICInAppMessageStore__load__block_invoke_2_46;
    v13 = &unk_1E7BF7100;
    v8 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v9 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v10];
    [*(*(a1 + 32) + 48) setObject:v9 forKey:{v5, v10, v11, v12, v13}];
  }
}

void __28__ICInAppMessageStore__load__block_invoke_2_46(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (_NSIsNSData())
  {
    v11 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
    v8 = v11;
    if (v7)
    {
      [*(a1 + 32) setObject:v7 forKey:v5];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138543874;
        v13 = v10;
        v14 = 2114;
        v15 = v5;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to deserialize message metadata entry with identifier %{public}@. err=%{public}@", buf, 0x20u);
      }
    }
  }
}

void __28__ICInAppMessageStore__load__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (_NSIsNSData())
  {
    v11 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v11];
    v8 = v11;
    if (v7)
    {
      [*(a1 + 32) setObject:v7 forKey:v5];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138543874;
        v13 = v10;
        v14 = 2114;
        v15 = v5;
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to deserialize message entry with identifier %{public}@. err=%{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)removeAllMetadataForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageStore_removeAllMetadataForBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __71__ICInAppMessageStore_removeAllMetadataForBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _commit];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ICInAppMessageStore_removeAllMetadataForBundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)removeMetadataForMessageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__ICInAppMessageStore_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = bundleIdentifierCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = bundleIdentifierCopy;
  dispatch_async(accessQueue, v15);
}

void __86__ICInAppMessageStore_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 removeObjectForKey:*(a1 + 48)];
  }

  [*(a1 + 32) _commit];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ICInAppMessageStore_removeMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v6 = *(a1 + 56);
  dispatch_async(v4, block);
}

- (void)updateMetadata:(id)metadata messageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ICInAppMessageStore_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7BF70D8;
  block[4] = self;
  v20 = bundleIdentifierCopy;
  v21 = metadataCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = metadataCopy;
  v18 = bundleIdentifierCopy;
  dispatch_async(accessQueue, block);
}

void __84__ICInAppMessageStore_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [*(*(a1 + 32) + 48) setObject:v2 forKey:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 56)];

  [*(a1 + 32) _commit];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__ICInAppMessageStore_updateMetadata_messageIdentifier_bundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v6 = *(a1 + 64);
  dispatch_async(v4, block);
}

- (void)getAllMetadataForBundleIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__ICInAppMessageStore_getAllMetadataForBundleIdentifiers_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(accessQueue, block);
}

void __69__ICInAppMessageStore_getAllMetadataForBundleIdentifiers_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 40) + 48) objectForKey:*(*(&v16 + 1) + 8 * v7)];
        v9 = [v8 copy];

        if ([v9 count])
        {
          [v2 addEntriesFromDictionary:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = *(*(a1 + 40) + 16);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__ICInAppMessageStore_getAllMetadataForBundleIdentifiers_completion___block_invoke_2;
  v13[3] = &unk_1E7BF9EC8;
  v11 = *(a1 + 48);
  v14 = v2;
  v15 = v11;
  v12 = v2;
  dispatch_async(v10, v13);
}

- (void)getAllMetadataForBundleIdentifier:(id)identifier completion:(id)completion
{
  v6 = MEMORY[0x1E695DFD8];
  completionCopy = completion;
  v8 = [v6 setWithObject:identifier];
  [(ICInAppMessageStore *)self getAllMetadataForBundleIdentifiers:v8 completion:completionCopy];
}

- (void)getMetadataForMessageIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__ICInAppMessageStore_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = bundleIdentifierCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = bundleIdentifierCopy;
  dispatch_async(accessQueue, v15);
}

void __83__ICInAppMessageStore_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  v3 = [v2 objectForKey:*(a1 + 48)];
  v4 = [v3 copy];

  v5 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__ICInAppMessageStore_getMetadataForMessageIdentifier_bundleIdentifier_completion___block_invoke_2;
  v8[3] = &unk_1E7BF9EC8;
  v6 = *(a1 + 56);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (void)removePendingMessageEventWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICInAppMessageStore_removePendingMessageEventWithIdentifier_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __74__ICInAppMessageStore_removePendingMessageEventWithIdentifier_completion___block_invoke(uint64_t a1)
{
  for (i = 0; i < [*(*(a1 + 32) + 56) count]; ++i)
  {
    v3 = [*(*(a1 + 32) + 56) objectAtIndex:i];
    v4 = [v3 eventIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (v5)
    {
      break;
    }
  }

  if (i < [*(*(a1 + 32) + 56) count])
  {
    [*(*(a1 + 32) + 56) removeObjectAtIndex:i];
    [*(a1 + 32) _commit];
  }

  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICInAppMessageStore_removePendingMessageEventWithIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v8 = *(a1 + 48);
  dispatch_async(v6, block);
}

- (void)pendingMessageEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ICInAppMessageStore_pendingMessageEventsWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

void __58__ICInAppMessageStore_pendingMessageEventsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ICInAppMessageStore_pendingMessageEventsWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BF9EC8;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)addPendingMessageEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICInAppMessageStore_addPendingMessageEvent_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(accessQueue, block);
}

void __57__ICInAppMessageStore_addPendingMessageEvent_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  [v2 addObject:*(a1 + 40)];
  [*(a1 + 32) _commit];
  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICInAppMessageStore_addPendingMessageEvent_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v8 = *(a1 + 48);
  dispatch_async(v6, block);
}

- (void)resetStoreWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ICInAppMessageStore_resetStoreWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

void __48__ICInAppMessageStore_resetStoreWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = *(a1 + 32);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  *(v12 + 48) = v11;

  [*(a1 + 32) _commit];
  v14 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ICInAppMessageStore_resetStoreWithCompletion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v16 = *(a1 + 40);
  dispatch_async(v14, block);
}

- (void)getAllMessageEntriesForBundleIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ICInAppMessageStore_getAllMessageEntriesForBundleIdentifiers_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(accessQueue, block);
}

void __75__ICInAppMessageStore_getAllMessageEntriesForBundleIdentifiers_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 40) + 24) objectForKey:{*(*(&v10 + 1) + 8 * v7), v10}];
        v9 = [v8 allValues];

        if ([v9 count])
        {
          [v2 addObjectsFromArray:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getAllMessageEntriesForBundleIdentifier:(id)identifier completion:(id)completion
{
  v6 = MEMORY[0x1E695DFD8];
  completionCopy = completion;
  v8 = [v6 setWithObject:identifier];
  [(ICInAppMessageStore *)self getAllMessageEntriesForBundleIdentifiers:v8 completion:completionCopy];
}

- (void)getAllMessageEntriesWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ICInAppMessageStore_getAllMessageEntriesWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

void __58__ICInAppMessageStore_getAllMessageEntriesWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 24) allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) allValues];
        [v2 addObjectsFromArray:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getMessageEntryWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__ICInAppMessageStore_getMessageEntryWithIdentifier_bundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = bundleIdentifierCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = bundleIdentifierCopy;
  dispatch_async(accessQueue, v15);
}

void __81__ICInAppMessageStore_getMessageEntryWithIdentifier_bundleIdentifier_completion___block_invoke(void *a1)
{
  v4 = [*(a1[4] + 24) objectForKey:a1[5]];
  v2 = [v4 objectForKey:a1[6]];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7008 userInfo:0];
  }

  (*(a1[7] + 16))();
}

- (void)removeAllMessageEntriesForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ICInAppMessageStore_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __77__ICInAppMessageStore_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) _commit];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ICInAppMessageStore_removeAllMessageEntriesForBundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)removeMessageEntryWithIdentifier:(id)identifier forBundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__ICInAppMessageStore_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = bundleIdentifierCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = bundleIdentifierCopy;
  dispatch_async(accessQueue, v15);
}

void __87__ICInAppMessageStore_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 removeObjectForKey:*(a1 + 48)];
    [*(*(a1 + 32) + 24) setObject:v3 forKey:*(a1 + 40)];
  }

  [*(a1 + 32) _commit];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__ICInAppMessageStore_removeMessageEntryWithIdentifier_forBundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v6 = *(a1 + 56);
  dispatch_async(v4, block);
}

- (void)removeMessageEntry:(id)entry completion:(id)completion
{
  completionCopy = completion;
  entryCopy = entry;
  bundleIdentifier = [entryCopy bundleIdentifier];
  applicationMessage = [entryCopy applicationMessage];

  identifier = [applicationMessage identifier];
  [(ICInAppMessageStore *)self removeMessageEntryWithIdentifier:identifier forBundleIdentifier:bundleIdentifier completion:completionCopy];
}

- (void)updateMessageEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICInAppMessageStore_updateMessageEntry_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v12 = entryCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(accessQueue, block);
}

void __53__ICInAppMessageStore_updateMessageEntry_completion___block_invoke(id *a1)
{
  v2 = [a1[4] bundleIdentifier];
  v3 = [*(a1[5] + 3) objectForKey:v2];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = a1[4];
  v5 = [v4 applicationMessage];
  v6 = [v5 identifier];
  [v3 setObject:v4 forKey:v6];

  [*(a1[5] + 3) setObject:v3 forKey:v2];
  [a1[5] _commit];
  v7 = *(a1[5] + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ICInAppMessageStore_updateMessageEntry_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v9 = a1[6];
  dispatch_async(v7, block);
}

- (void)addMessageEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ICInAppMessageStore_addMessageEntry_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  v12 = entryCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(accessQueue, block);
}

void __50__ICInAppMessageStore_addMessageEntry_completion___block_invoke(id *a1)
{
  v2 = [a1[4] bundleIdentifier];
  v3 = [*(a1[5] + 3) objectForKey:v2];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = a1[4];
  v5 = [v4 applicationMessage];
  v6 = [v5 identifier];
  [v3 setObject:v4 forKey:v6];

  [*(a1[5] + 3) setObject:v3 forKey:v2];
  [a1[5] _commit];
  v7 = *(a1[5] + 2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ICInAppMessageStore_addMessageEntry_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v9 = a1[6];
  dispatch_async(v7, block);
}

- (void)allApplicationStorePropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ICInAppMessageStore_allApplicationStorePropertiesWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

void __67__ICInAppMessageStore_allApplicationStorePropertiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__ICInAppMessageStore_allApplicationStorePropertiesWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BF9EC8;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)getStorePropertyForKey:(id)key bundleIdentifier:(id)identifier completion:(id)completion
{
  keyCopy = key;
  identifierCopy = identifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__ICInAppMessageStore_getStorePropertyForKey_bundleIdentifier_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = keyCopy;
  v18 = completionCopy;
  v12 = keyCopy;
  v13 = completionCopy;
  v14 = identifierCopy;
  dispatch_async(accessQueue, v15);
}

void __74__ICInAppMessageStore_getStorePropertyForKey_bundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICInAppMessageStore_getStorePropertyForKey_bundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9E28;
  v8 = *(a1 + 56);
  v6 = v2;
  v7 = *(a1 + 48);
  v4 = v2;
  dispatch_async(v3, block);
}

void __74__ICInAppMessageStore_getStorePropertyForKey_bundleIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)updateStoreProperty:(id)property forKey:(id)key bundleIdentifier:(id)identifier completion:(id)completion
{
  propertyCopy = property;
  keyCopy = key;
  identifierCopy = identifier;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ICInAppMessageStore_updateStoreProperty_forKey_bundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7BF70D8;
  block[4] = self;
  v20 = identifierCopy;
  v21 = propertyCopy;
  v22 = keyCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = keyCopy;
  v17 = propertyCopy;
  v18 = identifierCopy;
  dispatch_async(accessQueue, block);
}

void __78__ICInAppMessageStore_updateStoreProperty_forKey_bundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithObject:*(a1 + 48) forKey:*(a1 + 56)];
  }

  [v3 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 56)];
  [*(*(a1 + 32) + 40) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _commit];
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ICInAppMessageStore_updateStoreProperty_forKey_bundleIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v6 = *(a1 + 64);
  dispatch_async(v4, block);
}

- (void)allStorePropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ICInAppMessageStore_allStorePropertiesWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accessQueue, v7);
}

void __56__ICInAppMessageStore_allStorePropertiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ICInAppMessageStore_allStorePropertiesWithCompletion___block_invoke_2;
  v6[3] = &unk_1E7BF9EC8;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (void)getStorePropertyForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ICInAppMessageStore_getStorePropertyForKey_completion___block_invoke;
  block[3] = &unk_1E7BF9E28;
  block[4] = self;
  v12 = keyCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = keyCopy;
  dispatch_async(accessQueue, block);
}

void __57__ICInAppMessageStore_getStorePropertyForKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = [v2 copy];

  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICInAppMessageStore_getStorePropertyForKey_completion___block_invoke_2;
  v7[3] = &unk_1E7BF9EC8;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)updateStoreProperty:(id)property forKey:(id)key completion:(id)completion
{
  propertyCopy = property;
  keyCopy = key;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICInAppMessageStore_updateStoreProperty_forKey_completion___block_invoke;
  v15[3] = &unk_1E7BF9E78;
  v15[4] = self;
  v16 = keyCopy;
  v17 = propertyCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = propertyCopy;
  v14 = keyCopy;
  dispatch_async(accessQueue, v15);
}

void __61__ICInAppMessageStore_updateStoreProperty_forKey_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
  [*(a1 + 32) _commit];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__ICInAppMessageStore_updateStoreProperty_forKey_completion___block_invoke_2;
  block[3] = &unk_1E7BF9D20;
  v4 = *(a1 + 56);
  dispatch_async(v2, block);
}

- (ICInAppMessageStore)initWithFilePath:(id)path
{
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = ICInAppMessageStore;
  v6 = [(ICInAppMessageStore *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, path);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageEntryCache = v7->_messageEntryCache;
    v7->_messageEntryCache = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    globalPropertyCache = v7->_globalPropertyCache;
    v7->_globalPropertyCache = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applicationPropertyCache = v7->_applicationPropertyCache;
    v7->_applicationPropertyCache = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageMetadataCache = v7->_messageMetadataCache;
    v7->_messageMetadataCache = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageStore.accessQueue", v17);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INITIATED, 0);
    v22 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageStore.callbackQueue", v21);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v22;

    [(ICInAppMessageStore *)v7 _load];
  }

  return v7;
}

@end