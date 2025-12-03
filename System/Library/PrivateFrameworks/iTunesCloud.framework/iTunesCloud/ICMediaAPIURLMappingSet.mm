@interface ICMediaAPIURLMappingSet
- (ICMediaAPIURLMappingSet)initWithResponsePayload:(id)payload;
- (id)mappingsForFeatureName:(id)name;
- (void)enumerateMappingsUsingBlock:(id)block;
@end

@implementation ICMediaAPIURLMappingSet

- (id)mappingsForFeatureName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_responsePayload;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v12 = [ICMediaAPIURLMapping alloc];
          v13 = [(ICMediaAPIURLMapping *)v12 initWithResponseDictionary:v11, v18];
          featureName = [(ICMediaAPIURLMapping *)v13 featureName];
          v15 = featureName;
          if (featureName == nameCopy)
          {
          }

          else
          {
            v16 = [nameCopy isEqual:featureName];

            if (!v16)
            {
              goto LABEL_12;
            }
          }

          [v5 addObject:v13];
LABEL_12:

          continue;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)enumerateMappingsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_responsePayload;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (_NSIsNSDictionary())
        {
          v11 = [ICMediaAPIURLMapping alloc];
          v12 = [(ICMediaAPIURLMapping *)v11 initWithResponseDictionary:v10, v13];
          blockCopy[2](blockCopy, v12);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (ICMediaAPIURLMappingSet)initWithResponsePayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = ICMediaAPIURLMappingSet;
  v5 = [(ICMediaAPIURLMappingSet *)&v9 init];
  if (v5)
  {
    v6 = [payloadCopy copy];
    responsePayload = v5->_responsePayload;
    v5->_responsePayload = v6;
  }

  return v5;
}

@end