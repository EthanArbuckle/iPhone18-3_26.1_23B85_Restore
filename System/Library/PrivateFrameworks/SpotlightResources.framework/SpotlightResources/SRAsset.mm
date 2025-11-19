@interface SRAsset
+ (id)assetWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 path:(id)a6;
+ (id)assetWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 resourceRoot:(id)a6 pathNames:(id)a7;
- (SRAsset)initWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 paths:(id)a6;
- (id)description;
@end

@implementation SRAsset

+ (id)assetWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 resourceRoot:(id)a6 pathNames:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v26 = a4;
  v10 = a6;
  v11 = a7;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v10, v18];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    v21 = v26;
    v20 = v27;
    v22 = [[SRAsset alloc] initWithLocaleIdentifier:v27 contentType:v26 deliveryType:a5 paths:v12];
  }

  else
  {
    v22 = 0;
    v21 = v26;
    v20 = v27;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)assetWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 path:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E695DF90];
  v12 = a6;
  v13 = objc_alloc_init(v11);
  v14 = [MEMORY[0x1E695DFF8] URLWithString:v12];

  v15 = [v14 lastPathComponent];
  if (v15)
  {
    v16 = [v14 path];
    [v13 setObject:v16 forKeyedSubscript:v15];
  }

  if ([v13 count])
  {
    v17 = [[SRAsset alloc] initWithLocaleIdentifier:v9 contentType:v10 deliveryType:a5 paths:v13];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SRAsset)initWithLocaleIdentifier:(id)a3 contentType:(id)a4 deliveryType:(int64_t)a5 paths:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = SRAsset;
  v13 = [(SRAsset *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    localeIdentifier = v13->_localeIdentifier;
    v13->_localeIdentifier = v14;

    v16 = [v11 copy];
    contentType = v13->_contentType;
    v13->_contentType = v16;

    v13->_deliveryType = a5;
    v18 = [v12 copy];
    paths = v13->_paths;
    v13->_paths = v18;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SRAsset *)self deliveryTypeString];
  localeIdentifier = self->_localeIdentifier;
  contentType = self->_contentType;
  v7 = [(NSDictionary *)self->_paths allKeys];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"%@:%@:%@\n\t <%@>", v4, localeIdentifier, contentType, v8];

  return v9;
}

@end