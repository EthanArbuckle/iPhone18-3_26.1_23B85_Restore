@interface SUArrayImageModifier
- (BOOL)isEqual:(id)equal;
- (BOOL)scalesImage;
- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)frame finalSize:(CGSize)size;
- (CGSize)finalSizeForSize:(CGSize)size originalSize:(CGSize)originalSize;
- (void)dealloc;
- (void)drawAfterImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size;
- (void)drawBeforeImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size;
@end

@implementation SUArrayImageModifier

- (void)dealloc
{
  self->_modifiers = 0;
  v3.receiver = self;
  v3.super_class = SUArrayImageModifier;
  [(SUArrayImageModifier *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  modifiers = [(SUArrayImageModifier *)self modifiers];
  modifiers2 = [equal modifiers];
  v7 = [(NSArray *)modifiers count];
  v8 = [modifiers2 count];
  result = v7 == v8;
  if (v7 >= 1 && v7 == v8)
  {
    v10 = 1;
    do
    {
      result = [-[NSArray objectAtIndex:](modifiers objectAtIndex:{v10 - 1), "isEqual:", objc_msgSend(modifiers2, "objectAtIndex:", v10 - 1)}];
      if (v10 >= v7)
      {
        break;
      }

      ++v10;
    }

    while (result);
  }

  return result;
}

- (void)drawAfterImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modifiers = self->_modifiers;
  v13 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(modifiers);
        }

        [*(*(&v17 + 1) + 8 * i) drawAfterImageForContext:context imageFrame:x finalSize:{y, v8, v7, width, height}];
      }

      v14 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)drawBeforeImageForContext:(CGContext *)context imageFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modifiers = self->_modifiers;
  v13 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(modifiers);
        }

        [*(*(&v17 + 1) + 8 * i) drawBeforeImageForContext:context imageFrame:x finalSize:{y, v8, v7, width, height}];
      }

      v14 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (CGSize)finalSizeForSize:(CGSize)size originalSize:(CGSize)originalSize
{
  height = originalSize.height;
  width = originalSize.width;
  v6 = size.height;
  v7 = size.width;
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  modifiers = self->_modifiers;
  v9 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(modifiers);
        }

        [*(*(&v17 + 1) + 8 * i) finalSizeForSize:v7 originalSize:{v6, width, height}];
        v7 = v13;
        v6 = v14;
      }

      v10 = [(NSArray *)modifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = v7;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGRect)imageFrameForImage:(id)image currentFrame:(CGRect)frame finalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  modifiers = self->_modifiers;
  v13 = [(NSArray *)modifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(modifiers);
        }

        [*(*(&v25 + 1) + 8 * i) imageFrameForImage:image currentFrame:x finalSize:{y, v8, v7, width, height}];
        x = v17;
        y = v18;
        v8 = v19;
        v7 = v20;
      }

      v14 = [(NSArray *)modifiers countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v21 = x;
  v22 = y;
  v23 = v8;
  v24 = v7;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)scalesImage
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  modifiers = self->_modifiers;
  v3 = [(NSArray *)modifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(modifiers);
        }

        if ([*(*(&v8 + 1) + 8 * v6) scalesImage])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)modifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

@end