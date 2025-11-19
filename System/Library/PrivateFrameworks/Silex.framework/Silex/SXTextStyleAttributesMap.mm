@interface SXTextStyleAttributesMap
- (SXTextStyleAttributesMap)attributesMapWithAttributesForRange:(_NSRange)a3;
- (SXTextStyleAttributesMap)initWithString:(id)a3;
- (id)attributedString;
- (id)description;
- (void)addAttributes:(id)a3;
@end

@implementation SXTextStyleAttributesMap

- (SXTextStyleAttributesMap)initWithString:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SXTextStyleAttributesMap;
  v6 = [(SXTextStyleAttributesMap *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    attributes = v7->_attributes;
    v7->_attributes = v8;
  }

  return v7;
}

- (void)addAttributes:(id)a3
{
  v4 = a3;
  v5 = [(SXTextStyleAttributesMap *)self attributes];
  [v5 addObject:v4];
}

- (id)attributedString
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = [(SXTextStyleAttributesMap *)self string];
  v5 = [v3 initWithString:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(SXTextStyleAttributesMap *)self attributes];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 attributes];
        v13 = [v11 range];
        [v5 addAttributes:v12 range:{v13, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (SXTextStyleAttributesMap)attributesMapWithAttributesForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v25 = *MEMORY[0x1E69E9840];
  v6 = [SXTextStyleAttributesMap alloc];
  v7 = [(SXTextStyleAttributesMap *)self string];
  v8 = [(SXTextStyleAttributesMap *)v6 initWithString:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(SXTextStyleAttributesMap *)self attributes];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = location + length;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 range] <= location)
        {
          v16 = [v15 range];
          if (v16 + v17 >= v13)
          {
            v18 = [v15 copy];
            [(SXTextStyleAttributesMap *)v8 addAttributes:v18];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(SXTextStyleAttributesMap *)self attributes];
  v6 = [v3 stringWithFormat:@"<%@: %p string: %@;", v4, self, v5];;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(SXTextStyleAttributesMap *)self attributes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) description];
        [v6 appendString:v12];

        [v6 appendString:@"\n"];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v6 appendString:@">"];

  return v6;
}

@end