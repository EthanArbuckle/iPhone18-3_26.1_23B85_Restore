@interface ICInAppMessageEntry
- (ICInAppMessageEntry)initWithApplicationMessage:(id)a3 bundleIdentifier:(id)a4;
- (ICInAppMessageEntry)initWithCoder:(id)a3;
- (NSDictionary)metadata;
- (id)allCachedResourceLocations;
- (id)cachedLocationForResourceWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)clearCachedResources;
- (void)encodeWithCoder:(id)a3;
- (void)setCacheLocation:(id)a3 forResourceWithIdentifier:(id)a4;
- (void)updateMetadataValue:(id)a3 forKey:(id)a4;
@end

@implementation ICInAppMessageEntry

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(ICIAMApplicationMessage *)self->_applicationMessage copyWithZone:?];
  v6 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v7 = [[ICInAppMessageEntry allocWithZone:?]bundleIdentifier:"initWithApplicationMessage:bundleIdentifier:", v5, v6];
  if (v7)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__ICInAppMessageEntry_copyWithZone___block_invoke;
    block[3] = &unk_1E7BF58E0;
    block[4] = v7;
    block[5] = self;
    block[6] = a3;
    dispatch_sync(accessQueue, block);
  }

  return v7;
}

uint64_t __36__ICInAppMessageEntry_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 16) copyWithZone:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(a1 + 32) setShouldDownloadResources:{objc_msgSend(*(a1 + 40), "shouldDownloadResources")}];
  [*(a1 + 32) setDidCacheRequiredResources:{objc_msgSend(*(a1 + 40), "didCacheRequiredResources")}];
  [*(a1 + 32) setIsBadgingApplication:{objc_msgSend(*(a1 + 40), "isBadgingApplication")}];
  v5 = [*(*(a1 + 40) + 32) copyWithZone:*(a1 + 48)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (void)encodeWithCoder:(id)a3
{
  applicationMessage = self->_applicationMessage;
  v5 = a3;
  [v5 encodeObject:applicationMessage forKey:@"applicationMessage"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleID"];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
  [v5 encodeBool:-[ICInAppMessageEntry shouldDownloadResources](self forKey:{"shouldDownloadResources"), @"shouldDownloadResources"}];
  [v5 encodeBool:-[ICInAppMessageEntry didCacheRequiredResources](self forKey:{"didCacheRequiredResources"), @"didCacheRequiredResources"}];
  [v5 encodeBool:-[ICInAppMessageEntry isBadgingApplication](self forKey:{"isBadgingApplication"), @"isBadgingApplication"}];
  [v5 encodeObject:self->_resourceCache forKey:@"resourceCache"];
}

- (ICInAppMessageEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationMessage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v7 = [(ICInAppMessageEntry *)self initWithApplicationMessage:v5 bundleIdentifier:v6];
  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"metadata"];
    metadata = v7->_metadata;
    v7->_metadata = v12;

    -[ICInAppMessageEntry setShouldDownloadResources:](v7, "setShouldDownloadResources:", [v4 decodeBoolForKey:@"shouldDownloadResources"]);
    -[ICInAppMessageEntry setDidCacheRequiredResources:](v7, "setDidCacheRequiredResources:", [v4 decodeBoolForKey:@"didCacheRequiredResources"]);
    -[ICInAppMessageEntry setIsBadgingApplication:](v7, "setIsBadgingApplication:", [v4 decodeBoolForKey:@"isBadgingApplication"]);
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"resourceCache"];
    resourceCache = v7->_resourceCache;
    v7->_resourceCache = v17;
  }

  return v7;
}

- (id)allCachedResourceLocations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10937;
  v10 = __Block_byref_object_dispose__10938;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__ICInAppMessageEntry_allCachedResourceLocations__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__ICInAppMessageEntry_allCachedResourceLocations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)clearCachedResources
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ICInAppMessageEntry_clearCachedResources__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __43__ICInAppMessageEntry_clearCachedResources__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [*(*(a1 + 32) + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 removeItemAtPath:*(*(&v8 + 1) + 8 * v7++) error:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 32) removeAllObjects];
}

- (void)setCacheLocation:(id)a3 forResourceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ICInAppMessageEntry_setCacheLocation_forResourceWithIdentifier___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(accessQueue, block);
}

- (id)cachedLocationForResourceWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10937;
  v16 = __Block_byref_object_dispose__10938;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ICInAppMessageEntry_cachedLocationForResourceWithIdentifier___block_invoke;
  block[3] = &unk_1E7BF97E8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __63__ICInAppMessageEntry_cachedLocationForResourceWithIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)updateMetadataValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ICInAppMessageEntry_updateMetadataValue_forKey___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(accessQueue, block);
}

- (NSDictionary)metadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10937;
  v10 = __Block_byref_object_dispose__10938;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__ICInAppMessageEntry_metadata__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__ICInAppMessageEntry_metadata__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)description
{
  if ([(ICIAMApplicationMessage *)self->_applicationMessage hasStartDate])
  {
    v3 = MEMORY[0x1E695DF00];
    [(ICIAMApplicationMessage *)self->_applicationMessage startDate];
    v4 = [v3 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v4 = 0;
  }

  if ([(ICIAMApplicationMessage *)self->_applicationMessage hasEndDate])
  {
    v5 = MEMORY[0x1E695DF00];
    [(ICIAMApplicationMessage *)self->_applicationMessage endDate];
    v6 = [v5 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICIAMApplicationMessage *)self->_applicationMessage messageType];
  if (v7 < 5 && ((0x17u >> v7) & 1) != 0)
  {
    v8 = off_1E7BF4E70[v7];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  v9 = MEMORY[0x1E696AEC0];
  bundleIdentifier = self->_bundleIdentifier;
  v11 = [(ICIAMApplicationMessage *)self->_applicationMessage identifier];
  v12 = [v9 stringWithFormat:@"[%@:%@, %@, (valid from %@ - %@), download=%d]", bundleIdentifier, v11, v8, v4, v6, self->_shouldDownloadResources];

  return v12;
}

- (ICInAppMessageEntry)initWithApplicationMessage:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = ICInAppMessageEntry;
  v9 = [(ICInAppMessageEntry *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationMessage, a3);
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    metadata = v10->_metadata;
    v10->_metadata = v13;

    v15 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageEntry.accessQueue", 0);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    resourceCache = v10->_resourceCache;
    v10->_resourceCache = v17;
  }

  return v10;
}

@end