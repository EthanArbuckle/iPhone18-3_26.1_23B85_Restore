@interface SSXPCEncodableRectWrapper
+ (id)encodedRectsInDictionary:(id)a3 forKey:(id)a4;
+ (void)encodeRects:(id)a3 inDictionary:(id)a4 forKey:(id)a5;
- (CGRect)rect;
- (SSXPCEncodableRectWrapper)initWithBSXPCCoder:(id)a3;
- (SSXPCEncodableRectWrapper)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSXPCEncodableRectWrapper

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [(SSXPCEncodableRectWrapper *)self rect];
  [v4 encodeCGRect:@"SSXPCEncodableRectWrapperRectKey" forKey:?];
}

- (SSXPCEncodableRectWrapper)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSXPCEncodableRectWrapper *)self init];
  [v4 decodeCGRectForKey:@"SSXPCEncodableRectWrapperRectKey"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SSXPCEncodableRectWrapper *)v5 setRect:v7, v9, v11, v13];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(SSXPCEncodableRectWrapper *)self rect];
  [v4 encodeCGRect:@"SSXPCEncodableRectWrapperRectKey" forKey:?];
}

- (SSXPCEncodableRectWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSXPCEncodableRectWrapper *)self init];
  [v4 decodeCGRectForKey:@"SSXPCEncodableRectWrapperRectKey"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SSXPCEncodableRectWrapper *)v5 setRect:v7, v9, v11, v13];
  return v5;
}

+ (id)encodedRectsInDictionary:(id)a3 forKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  [v6 cStringUsingEncoding:4];
  v8 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = MEMORY[0x1E696B098];
        [*(*(&v16 + 1) + 8 * i) rect];
        v14 = [v13 valueWithCGRect:?];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)encodeRects:(id)a3 inDictionary:(id)a4 forKey:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v17 = objc_alloc_init(SSXPCEncodableRectWrapper);
        [v16 CGRectValue];
        [(SSXPCEncodableRectWrapper *)v17 setRect:?];
        [v10 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [v9 cStringUsingEncoding:4];
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end