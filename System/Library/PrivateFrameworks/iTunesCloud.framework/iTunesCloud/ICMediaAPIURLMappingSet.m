@interface ICMediaAPIURLMappingSet
- (ICMediaAPIURLMappingSet)initWithResponsePayload:(id)a3;
- (id)mappingsForFeatureName:(id)a3;
- (void)enumerateMappingsUsingBlock:(id)a3;
@end

@implementation ICMediaAPIURLMappingSet

- (id)mappingsForFeatureName:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          v14 = [(ICMediaAPIURLMapping *)v13 featureName];
          v15 = v14;
          if (v14 == v4)
          {
          }

          else
          {
            v16 = [v4 isEqual:v14];

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

- (void)enumerateMappingsUsingBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          v4[2](v4, v12);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (ICMediaAPIURLMappingSet)initWithResponsePayload:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICMediaAPIURLMappingSet;
  v5 = [(ICMediaAPIURLMappingSet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    responsePayload = v5->_responsePayload;
    v5->_responsePayload = v6;
  }

  return v5;
}

@end