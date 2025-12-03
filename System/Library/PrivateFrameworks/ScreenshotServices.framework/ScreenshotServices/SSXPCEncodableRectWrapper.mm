@interface SSXPCEncodableRectWrapper
+ (id)encodedRectsInDictionary:(id)dictionary forKey:(id)key;
+ (void)encodeRects:(id)rects inDictionary:(id)dictionary forKey:(id)key;
- (CGRect)rect;
- (SSXPCEncodableRectWrapper)initWithBSXPCCoder:(id)coder;
- (SSXPCEncodableRectWrapper)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSXPCEncodableRectWrapper

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [(SSXPCEncodableRectWrapper *)self rect];
  [coderCopy encodeCGRect:@"SSXPCEncodableRectWrapperRectKey" forKey:?];
}

- (SSXPCEncodableRectWrapper)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSXPCEncodableRectWrapper *)self init];
  [coderCopy decodeCGRectForKey:@"SSXPCEncodableRectWrapperRectKey"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SSXPCEncodableRectWrapper *)v5 setRect:v7, v9, v11, v13];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(SSXPCEncodableRectWrapper *)self rect];
  [coderCopy encodeCGRect:@"SSXPCEncodableRectWrapperRectKey" forKey:?];
}

- (SSXPCEncodableRectWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSXPCEncodableRectWrapper *)self init];
  [coderCopy decodeCGRectForKey:@"SSXPCEncodableRectWrapperRectKey"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(SSXPCEncodableRectWrapper *)v5 setRect:v7, v9, v11, v13];
  return v5;
}

+ (id)encodedRectsInDictionary:(id)dictionary forKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  [keyCopy cStringUsingEncoding:4];
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
        [array addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return array;
}

+ (void)encodeRects:(id)rects inDictionary:(id)dictionary forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  dictionaryCopy = dictionary;
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = rectsCopy;
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
        [array addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [keyCopy cStringUsingEncoding:4];
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