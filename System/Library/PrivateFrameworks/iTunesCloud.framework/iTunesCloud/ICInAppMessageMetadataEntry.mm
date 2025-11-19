@interface ICInAppMessageMetadataEntry
- (ICInAppMessageMetadataEntry)init;
- (ICInAppMessageMetadataEntry)initWithCoder:(id)a3;
- (id)allMetadataValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)metadataValueForKey:(id)a3;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
@end

@implementation ICInAppMessageMetadataEntry

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ICInAppMessageMetadataEntry allocWithZone:](ICInAppMessageMetadataEntry init];
  if (v5)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__ICInAppMessageMetadataEntry_copyWithZone___block_invoke;
    block[3] = &unk_1E7BF58E0;
    block[4] = v5;
    block[5] = self;
    block[6] = a3;
    dispatch_sync(accessQueue, block);
  }

  return v5;
}

uint64_t __44__ICInAppMessageMetadataEntry_copyWithZone___block_invoke(void *a1)
{
  v2 = [*(a1[5] + 8) copyWithZone:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (ICInAppMessageMetadataEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICInAppMessageMetadataEntry *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"metadata"];

    if (_NSIsNSDictionary())
    {
      v11 = [v10 mutableCopy];
      metadataValues = v5->_metadataValues;
      v5->_metadataValues = v11;
    }
  }

  return v5;
}

- (id)allMetadataValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14331;
  v10 = __Block_byref_object_dispose__14332;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__ICInAppMessageMetadataEntry_allMetadataValues__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__ICInAppMessageMetadataEntry_allMetadataValues__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)metadataValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14331;
  v16 = __Block_byref_object_dispose__14332;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ICInAppMessageMetadataEntry_metadataValueForKey___block_invoke;
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

uint64_t __51__ICInAppMessageMetadataEntry_metadataValueForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICInAppMessageMetadataEntry_setMetadataValue_forKey___block_invoke;
  block[3] = &unk_1E7BFA178;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(accessQueue, block);
}

- (ICInAppMessageMetadataEntry)init
{
  v8.receiver = self;
  v8.super_class = ICInAppMessageMetadataEntry;
  v2 = [(ICInAppMessageMetadataEntry *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    metadataValues = v2->_metadataValues;
    v2->_metadataValues = v3;

    v5 = dispatch_queue_create("com.apple.iTunesCloud.ICInAppMessageMetadataEntry.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;
  }

  return v2;
}

@end