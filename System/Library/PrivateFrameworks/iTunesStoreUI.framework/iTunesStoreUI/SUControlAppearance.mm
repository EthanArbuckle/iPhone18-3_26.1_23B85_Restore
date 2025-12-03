@interface SUControlAppearance
- (UIOffset)titlePositionAdjustmentForBarMetrics:(int64_t)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForState:(unint64_t)state barMetrics:(int64_t)metrics;
- (id)textAttributesForState:(unint64_t)state;
- (void)dealloc;
- (void)enumerateImagesUsingBlock:(id)block;
- (void)enumerateTextAttributesUsingBlock:(id)block;
- (void)enumerateTitlePositionsUsingBlock:(id)block;
- (void)setImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics;
- (void)setTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)styleBarButtonItem:(id)item;
- (void)styleButton:(id)button;
@end

@implementation SUControlAppearance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUControlAppearance;
  [(SUControlAppearance *)&v3 dealloc];
}

- (void)enumerateImagesUsingBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  images = self->_images;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __49__SUControlAppearance_enumerateImagesUsingBlock___block_invoke;
  v21[3] = &unk_1E8167250;
  v21[4] = v5;
  [(NSMutableDictionary *)images enumerateKeysAndObjectsUsingBlock:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v17 + 1) + 8 * v10) integerValue];
        v12 = [(SUControlAppearance *)self _copyKeyForState:integerValue barMetrics:0];
        v13 = [(NSMutableDictionary *)self->_images objectForKey:v12];

        v14 = [(SUControlAppearance *)self _copyKeyForState:integerValue barMetrics:1];
        v15 = [(NSMutableDictionary *)self->_images objectForKey:v14];

        (*(block + 2))(block, integerValue, v13, v15);
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }
}

uint64_t __49__SUControlAppearance_enumerateImagesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@":"];
  result = [v3 count];
  if (result == 2)
  {
    v5 = *(a1 + 32);
    v6 = [v3 objectAtIndex:0];

    return [v5 addObject:v6];
  }

  return result;
}

- (void)enumerateTextAttributesUsingBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  textAttributes = self->_textAttributes;
  v6 = [(NSMutableDictionary *)textAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(textAttributes);
        }

        (*(block + 2))(block, [*(*(&v10 + 1) + 8 * i) integerValue], -[NSMutableDictionary objectForKey:](self->_textAttributes, "objectForKey:", *(*(&v10 + 1) + 8 * i)));
      }

      v7 = [(NSMutableDictionary *)textAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)enumerateTitlePositionsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  titlePositions = self->_titlePositions;
  v6 = [(NSMutableDictionary *)titlePositions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(titlePositions);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_titlePositions objectForKey:v10];
        integerValue = [v10 integerValue];
        [v11 UIOffsetValue];
        (*(block + 2))(block, integerValue);
      }

      v7 = [(NSMutableDictionary *)titlePositions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)imageForState:(unint64_t)state barMetrics:(int64_t)metrics
{
  v5 = [(SUControlAppearance *)self _copyKeyForState:state barMetrics:metrics];
  v6 = [(NSMutableDictionary *)self->_images objectForKey:v5];

  return v6;
}

- (void)setImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics
{
  v7 = [(SUControlAppearance *)self _copyKeyForState:state barMetrics:metrics];
  images = self->_images;
  v9 = v7;
  if (image)
  {
    if (!images)
    {
      images = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = v9;
      self->_images = images;
    }

    [(NSMutableDictionary *)images setObject:image forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)images removeObjectForKey:v7];
  }
}

- (void)setTextAttributes:(id)attributes forState:(unint64_t)state
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:state];
  textAttributes = self->_textAttributes;
  v9 = v6;
  if (attributes)
  {
    if (!textAttributes)
    {
      self->_textAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v8 = [attributes copy];
    [(NSMutableDictionary *)self->_textAttributes setObject:v8 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)textAttributes removeObjectForKey:?];
  }
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:metrics];
  v8 = *(MEMORY[0x1E69DE258] + 8);
  titlePositions = self->_titlePositions;
  v10 = *MEMORY[0x1E69DE258] == horizontal && v8 == vertical;
  v11 = v7;
  if (v10)
  {
    [(NSMutableDictionary *)titlePositions removeObjectForKey:v7, *MEMORY[0x1E69DE258], v8];
  }

  else
  {
    if (!titlePositions)
    {
      titlePositions = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_titlePositions = titlePositions;
    }

    -[NSMutableDictionary setObject:forKey:](titlePositions, "setObject:forKey:", [MEMORY[0x1E696B098] valueWithUIOffset:{horizontal, vertical}], v11);
  }
}

- (void)styleBarButtonItem:(id)item
{
  style = [item style];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SUControlAppearance_styleBarButtonItem___block_invoke;
  v8[3] = &unk_1E8167278;
  v8[4] = item;
  v8[5] = style;
  [(SUControlAppearance *)self enumerateImagesUsingBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SUControlAppearance_styleBarButtonItem___block_invoke_2;
  v7[3] = &unk_1E8167228;
  v7[4] = item;
  [(SUControlAppearance *)self enumerateTextAttributesUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SUControlAppearance_styleBarButtonItem___block_invoke_3;
  v6[3] = &unk_1E81672A0;
  v6[4] = item;
  [(SUControlAppearance *)self enumerateTitlePositionsUsingBlock:v6];
}

uint64_t __42__SUControlAppearance_styleBarButtonItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 32;
  v7 = *(a1 + 32);
  v8 = *(v9 + 8);
  if (v8)
  {
    [v7 setBackgroundImage:a3 forState:a2 style:v8 barMetrics:0];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);

    return [v10 setBackgroundImage:a4 forState:a2 style:v11 barMetrics:1];
  }

  else
  {
    [v7 setBackgroundImage:a3 forState:a2 barMetrics:?];
    v13 = *(a1 + 32);

    return [v13 setBackgroundImage:a4 forState:a2 barMetrics:1];
  }
}

- (void)styleButton:(id)button
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__SUControlAppearance_styleButton___block_invoke;
  v6[3] = &unk_1E8167200;
  v6[4] = button;
  [(SUControlAppearance *)self enumerateImagesUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SUControlAppearance_styleButton___block_invoke_2;
  v5[3] = &unk_1E8167228;
  v5[4] = button;
  [(SUControlAppearance *)self enumerateTextAttributesUsingBlock:v5];
}

uint64_t __35__SUControlAppearance_styleButton___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  [a3 capInsets];
  v7.f64[1] = v6;
  v9.f64[1] = v8;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *MEMORY[0x1E69DDCE0]), vceqq_f64(v9, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [v3 size];
    v11 = v10 * 0.5;
    v12 = floorf(v11);
    v3 = [v3 resizableImageWithCapInsets:{0.0, v12, 0.0, v10 - v12 + -1.0}];
  }

  v13 = *(a1 + 32);

  return [v13 setBackgroundImage:v3 forState:a2];
}

void *__35__SUControlAppearance_styleButton___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 objectForKey:*MEMORY[0x1E69DB650]];
  if (v6)
  {
    [*(a1 + 32) setTitleColor:v6 forState:a2];
  }

  result = [a3 objectForKey:*MEMORY[0x1E69DB6A8]];
  v8 = result;
  if (result)
  {
    result = [*(a1 + 32) setTitleShadowColor:objc_msgSend(result forState:{"shadowColor"), a2}];
  }

  if (!a2)
  {
    v9 = [*(a1 + 32) titleLabel];
    result = [a3 objectForKey:*MEMORY[0x1E69DB648]];
    if (result)
    {
      result = [v9 setFont:result];
    }

    if (v8)
    {
      [v8 shadowOffset];

      return [v9 setShadowOffset:?];
    }
  }

  return result;
}

- (id)textAttributesForState:(unint64_t)state
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:state];
  v5 = [-[NSMutableDictionary objectForKey:](self->_textAttributes objectForKey:{v4), "copy"}];

  return v5;
}

- (UIOffset)titlePositionAdjustmentForBarMetrics:(int64_t)metrics
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:metrics];
  v5 = [(NSMutableDictionary *)self->_titlePositions objectForKey:v4];
  if (v5)
  {
    [v5 UIOffsetValue];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E69DE258];
    v9 = *(MEMORY[0x1E69DE258] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSMutableDictionary *)self->_images mutableCopyWithZone:zone];
  v5[2] = [(NSMutableDictionary *)self->_textAttributes mutableCopyWithZone:zone];
  v5[3] = [(NSMutableDictionary *)self->_titlePositions mutableCopyWithZone:zone];
  return v5;
}

@end