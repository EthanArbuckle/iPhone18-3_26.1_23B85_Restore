@interface SXTextStyleAttributesMap
- (SXTextStyleAttributesMap)attributesMapWithAttributesForRange:(_NSRange)range;
- (SXTextStyleAttributesMap)initWithString:(id)string;
- (id)attributedString;
- (id)description;
- (void)addAttributes:(id)attributes;
@end

@implementation SXTextStyleAttributesMap

- (SXTextStyleAttributesMap)initWithString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = SXTextStyleAttributesMap;
  v6 = [(SXTextStyleAttributesMap *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
    array = [MEMORY[0x1E695DF70] array];
    attributes = v7->_attributes;
    v7->_attributes = array;
  }

  return v7;
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  attributes = [(SXTextStyleAttributesMap *)self attributes];
  [attributes addObject:attributesCopy];
}

- (id)attributedString
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  string = [(SXTextStyleAttributesMap *)self string];
  v5 = [v3 initWithString:string];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  attributes = [(SXTextStyleAttributesMap *)self attributes];
  v7 = [attributes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(attributes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        attributes2 = [v11 attributes];
        range = [v11 range];
        [v5 addAttributes:attributes2 range:{range, v14}];
      }

      v8 = [attributes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (SXTextStyleAttributesMap)attributesMapWithAttributesForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v25 = *MEMORY[0x1E69E9840];
  v6 = [SXTextStyleAttributesMap alloc];
  string = [(SXTextStyleAttributesMap *)self string];
  v8 = [(SXTextStyleAttributesMap *)v6 initWithString:string];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  attributes = [(SXTextStyleAttributesMap *)self attributes];
  v10 = [attributes countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(attributes);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v15 range] <= location)
        {
          range = [v15 range];
          if (range + v17 >= v13)
          {
            v18 = [v15 copy];
            [(SXTextStyleAttributesMap *)v8 addAttributes:v18];
          }
        }
      }

      v11 = [attributes countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  attributes = [(SXTextStyleAttributesMap *)self attributes];
  v6 = [v3 stringWithFormat:@"<%@: %p string: %@;", v4, self, attributes];;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  attributes2 = [(SXTextStyleAttributesMap *)self attributes];
  v8 = [attributes2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(attributes2);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) description];
        [v6 appendString:v12];

        [v6 appendString:@"\n"];
      }

      v9 = [attributes2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v6 appendString:@">"];

  return v6;
}

@end