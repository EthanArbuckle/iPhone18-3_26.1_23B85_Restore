@interface SSNetworkConstraints
+ (id)_newLegacyNetworkConstraintsWithDictionary:(id)a3;
+ (id)_newModernNetworkConstraintsWithArray:(id)a3;
+ (id)networkConstraintsForDownloadKind:(id)a3 fromBag:(id)a4;
+ (id)newNetworkConstraintsByDownloadKindFromURLBag:(id)a3;
+ (void)_addNetworkConstraintsToDictionary:(id)a3 forNetworkType:(int64_t)a4 legacyDictionary:(id)a5;
- (BOOL)hasSizeLimitForNetworkType:(int64_t)a3;
- (BOOL)isAnyNetworkTypeEnabled;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SSNetworkConstraints)init;
- (SSNetworkConstraints)initWithCoder:(id)a3;
- (SSNetworkConstraints)initWithXPCEncoding:(id)a3;
- (id)_copySizeLimits;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (int64_t)_sizeLimitForNetworkType:(int64_t)a3;
- (int64_t)sizeLimitForNetworkType:(int64_t)a3;
- (void)_disableAllNetworkTypes;
- (void)_setSizeLimit:(int64_t)a3 forNetworkType:(int64_t)a4;
- (void)dealloc;
- (void)disableCellularNetworkTypes;
- (void)encodeWithCoder:(id)a3;
- (void)setAllNetworkTypesDisabled;
- (void)setSizeLimit:(int64_t)a3 forNetworkType:(int64_t)a4;
- (void)setSizeLimitsWithStoreConstraintDictionary:(id)a3;
@end

@implementation SSNetworkConstraints

- (SSNetworkConstraints)init
{
  v4.receiver = self;
  v4.super_class = SSNetworkConstraints;
  v2 = [(SSNetworkConstraints *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.storeservices.SSNetworkConstraints", 0);
    [(SSNetworkConstraints *)v2 _setSizeLimit:-1 forNetworkType:0];
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SSNetworkConstraints;
  [(SSNetworkConstraints *)&v4 dealloc];
}

- (void)disableCellularNetworkTypes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSNetworkConstraints_disableCellularNetworkTypes__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __51__SSNetworkConstraints_disableCellularNetworkTypes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sizeLimitForNetworkType:1000];
  [*(a1 + 32) _disableAllNetworkTypes];
  v3 = *(a1 + 32);

  return [v3 _setSizeLimit:v2 forNetworkType:1000];
}

- (BOOL)hasSizeLimitForNetworkType:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSNetworkConstraints_hasSizeLimitForNetworkType___block_invoke;
  block[3] = &unk_1E84AC6E8;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __51__SSNetworkConstraints_hasSizeLimitForNetworkType___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a1[6]];
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 16) objectForKey:v2] != 0;
}

- (BOOL)isAnyNetworkTypeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SSNetworkConstraints_isAnyNetworkTypeEnabled__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__SSNetworkConstraints_isAnyNetworkTypeEnabled__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = *(*(a1 + 32) + 16);
    result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = *v8;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v3);
      }

      result = [objc_msgSend(*(*(a1 + 32) + 16) objectForKey:{*(*(&v7 + 1) + 8 * v6)), "longLongValue"}];
      if ((result & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v4 == ++v6)
      {
        result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v4 = result;
        if (result)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)setAllNetworkTypesDisabled
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSNetworkConstraints_setAllNetworkTypesDisabled__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)setSizeLimit:(int64_t)a3 forNetworkType:(int64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SSNetworkConstraints_setSizeLimit_forNetworkType___block_invoke;
  block[3] = &unk_1E84AF108;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(dispatchQueue, block);
}

- (int64_t)sizeLimitForNetworkType:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSNetworkConstraints_sizeLimitForNetworkType___block_invoke;
  block[3] = &unk_1E84AC6E8;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __48__SSNetworkConstraints_sizeLimitForNetworkType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _sizeLimitForNetworkType:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSNetworkConstraints_description__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __35__SSNetworkConstraints_description__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: %@", SSGetStringForNetworkType(objc_msgSend(*(*(&v13 + 1) + 8 * i), "integerValue")), objc_msgSend(*(*(a1 + 32) + 16), "objectForKey:", *(*(&v13 + 1) + 8 * i))];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11.receiver = *(a1 + 32);
    v11.super_class = SSNetworkConstraints;
    v10 = [v9 initWithFormat:@"%@: %@", objc_msgSendSuper2(&v11, sel_description), objc_msgSend(v2, "componentsJoinedByString:", @", ")];
  }

  else
  {
    v12.receiver = *(a1 + 32);
    v12.super_class = SSNetworkConstraints;
    v10 = objc_msgSendSuper2(&v12, sel_description);
  }

  *(*(*(a1 + 40) + 8) + 40) = v10;
}

- (BOOL)isEqual:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [a3 _copySizeLimits];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__SSNetworkConstraints_isEqual___block_invoke;
    block[3] = &unk_1E84ADF80;
    block[5] = v6;
    block[6] = &v11;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __32__SSNetworkConstraints_isEqual___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  if (v3 == v2)
  {
    result = 1;
  }

  else
  {
    result = [v3 isEqualToDictionary:?];
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

+ (id)networkConstraintsForDownloadKind:(id)a3 fromBag:(id)a4
{
  v5 = [a1 _newModernNetworkConstraintsWithArray:{objc_msgSend(a4, "arrayForKey:error:", @"mobile-network-constraints", 0)}];
  v6 = [v5 objectForKeyedSubscript:a3];

  return v6;
}

+ (id)newNetworkConstraintsByDownloadKindFromURLBag:(id)a3
{
  v5 = [a3 objectForKey:@"mobile-network-constraints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a1 _newModernNetworkConstraintsWithArray:v5];
  }

  else
  {
    v7 = [a3 objectForKey:@"mobile-connection-type-allows"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a1 _newLegacyNetworkConstraintsWithDictionary:v7];
    }

    else
    {
      return 0;
    }
  }
}

- (void)setSizeLimitsWithStoreConstraintDictionary:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__SSNetworkConstraints_setSizeLimitsWithStoreConstraintDictionary___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __67__SSNetworkConstraints_setSizeLimitsWithStoreConstraintDictionary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 32) objectForKey:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          [*(a1 + 40) _setSizeLimit:objc_msgSend(v8 forNetworkType:{"longLongValue"), SSGetNetworkTypeForString(v7)}];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

+ (void)_addNetworkConstraintsToDictionary:(id)a3 forNetworkType:(int64_t)a4 legacyDictionary:(id)a5
{
  v8 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v15 = @"book";
  v16 = @"p2-music-store-available";
  v17 = @"music-download-size-limit-in-bytes";
  v18 = @"coached-audio";
  v19 = @"p2-music-store-available";
  v20 = @"music-download-size-limit-in-bytes";
  v21 = @"ebook";
  v22 = @"eBook-store-available";
  v23 = @"eBook-download-size-limit-in-bytes";
  v24 = @"feature-movie";
  v25 = @"p2-music-store-available";
  v26 = @"video-download-size-limit-in-bytes";
  v27 = @"song";
  v28 = @"p2-music-store-available";
  v29 = @"music-download-size-limit-in-bytes";
  v30 = @"music-video";
  v31 = @"p2-music-store-available";
  v32 = @"music-download-size-limit-in-bytes";
  v33 = @"podcast";
  v34 = @"p2-podcasts-enabled";
  v35 = @"podcast-download-size-limit-in-bytes";
  v36 = @"ringtone";
  v39 = @"software";
  v40 = @"p2-software-store-available";
  v37 = @"p2-music-store-available";
  v38 = @"music-download-size-limit-in-bytes";
  v41 = @"software-download-size-limit-in-bytes";
  v42 = @"tv-episode";
  v43 = @"p2-music-store-available";
  v44 = @"video-download-size-limit-in-bytes";
  v45 = @"tone";
  v46 = @"p2-music-store-available";
  v47 = @"music-download-size-limit-in-bytes";
  v48 = @"videoPodcast";
  v49 = @"p2-podcasts-enabled";
  v50 = @"podcast-download-size-limit-in-bytes";
  do
  {
    v9 = [a5 objectForKey:{*(&v15 + v8 + 8), v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51}];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
    {
      v10 = [a5 objectForKey:*(&v17 + v8)];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v10 longLongValue];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = -1;
    }

    v12 = *(&v15 + v8);
    v13 = [a3 objectForKey:v12];
    if (!v13)
    {
      v13 = objc_alloc_init(SSNetworkConstraints);
      [a3 setObject:v13 forKey:v12];
      v14 = v13;
    }

    [(SSNetworkConstraints *)v13 setSizeLimit:v11 forNetworkType:a4];
    v8 += 24;
  }

  while (v8 != 288);
}

+ (id)_newLegacyNetworkConstraintsWithDictionary:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 _addNetworkConstraintsToDictionary:v5 forNetworkType:1 legacyDictionary:{objc_msgSend(a3, "objectForKey:", @"2G"}];
  [a1 _addNetworkConstraintsToDictionary:v5 forNetworkType:2 legacyDictionary:{objc_msgSend(a3, "objectForKey:", @"3G"}];
  [a1 _addNetworkConstraintsToDictionary:v5 forNetworkType:1000 legacyDictionary:{objc_msgSend(a3, "objectForKey:", @"WiFi"}];
  return v5;
}

+ (id)_newModernNetworkConstraintsWithArray:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v23 = a3;
    do
    {
      v8 = 0;
      v22 = sel_BOOLValue;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectForKey:@"kinds"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v10 count])
            {
              v11 = [v9 objectForKey:@"enabled"];
              if (!v11 || (v12 = v11, (objc_opt_respondsToSelector() & 1) != 0) && ([v12 BOOLValue] & 1) != 0)
              {
                v13 = [v9 objectForKey:{@"size-limits", v22}];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                v15 = objc_alloc_init(SSNetworkConstraints);
                v16 = v15;
                if (isKindOfClass)
                {
                  [(SSNetworkConstraints *)v15 setSizeLimitsWithStoreConstraintDictionary:v13];
                }
              }

              else
              {
                v16 = objc_alloc_init(SSNetworkConstraints);
                [(SSNetworkConstraints *)v16 setAllNetworkTypesDisabled];
              }

              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v17 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:{16, v22}];
              if (v17)
              {
                v18 = v17;
                v19 = *v25;
                do
                {
                  v20 = 0;
                  do
                  {
                    if (*v25 != v19)
                    {
                      objc_enumerationMutation(v10);
                    }

                    [v4 setObject:v16 forKey:*(*(&v24 + 1) + 8 * v20++)];
                  }

                  while (v18 != v20);
                  v18 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
                }

                while (v18);
              }

              a3 = v23;
            }
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [a3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_copySizeLimits
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSNetworkConstraints__copySizeLimits__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__SSNetworkConstraints__copySizeLimits__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_disableAllNetworkTypes
{
  if (!self->_sizeLimits)
  {
    self->_sizeLimits = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:-1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSNetworkConstraints__disableAllNetworkTypes__block_invoke;
  v4[3] = &unk_1E84AF130;
  v4[4] = self;
  v4[5] = v3;
  SSNetworkTypeApplyBlock(v4);
}

void __47__SSNetworkConstraints__disableAllNetworkTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a2];
  [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:v3];
}

- (void)_setSizeLimit:(int64_t)a3 forNetworkType:(int64_t)a4
{
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a4];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a3];
  sizeLimits = self->_sizeLimits;
  if (!sizeLimits)
  {
    sizeLimits = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_sizeLimits = sizeLimits;
  }

  [(NSMutableDictionary *)sizeLimits setObject:v6 forKey:v8];
}

- (int64_t)_sizeLimitForNetworkType:(int64_t)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", a3];
  v6 = [(NSMutableDictionary *)self->_sizeLimits objectForKey:v5];
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = [v7 longLongValue];
  }

  else
  {
    if (SSNetworkTypeIsCellularType(v3))
    {
      while (v3 >= 2)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", --v3];
        v7 = [(NSMutableDictionary *)self->_sizeLimits objectForKey:v9];

        if (v7)
        {
          goto LABEL_3;
        }
      }
    }

    v8 = 0;
  }

  return v8;
}

- (SSNetworkConstraints)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = [(SSNetworkConstraints *)self init];
    if (v5)
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, v10, v11, objc_opt_class(), 0), @"0"}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v5->_sizeLimits = [v12 mutableCopy];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SSNetworkConstraints_encodeWithCoder___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = a3;
  v4[5] = self;
  dispatch_sync(dispatchQueue, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSNetworkConstraints_copyWithZone___block_invoke;
  block[3] = &unk_1E84AF158;
  block[4] = v5;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  return v5;
}

uint64_t __37__SSNetworkConstraints_copyWithZone___block_invoke(void *a1)
{
  result = [*(a1[5] + 16) copyWithZone:a1[6]];
  *(a1[4] + 16) = result;
  return result;
}

- (SSNetworkConstraints)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v5 = [(SSNetworkConstraints *)self init];
    if (!v5)
    {
      return v5;
    }

    objc_opt_class();
    self = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");

    v5->_sizeLimits = [(SSNetworkConstraints *)self mutableCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SSNetworkConstraints_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

@end