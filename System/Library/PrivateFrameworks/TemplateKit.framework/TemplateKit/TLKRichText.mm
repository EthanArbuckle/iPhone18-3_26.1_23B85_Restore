@interface TLKRichText
- (BOOL)hasContent;
- (BOOL)hasOnlyImage;
- (id)description;
- (id)filterItemsByType:(unint64_t)type;
- (id)text;
- (unint64_t)maxLines;
- (void)setFormattedTextItems:(id)items;
@end

@implementation TLKRichText

- (id)text
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  formattedTextItems = [(TLKRichText *)self formattedTextItems];
  v5 = [formattedTextItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [v9 string];

          if (string)
          {
            string2 = [v9 string];
            [v3 appendString:string2];
          }
        }
      }

      v6 = [formattedTextItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17.receiver = self;
  v17.super_class = TLKRichText;
  text = [(TLKMultilineText *)&v17 text];
  v13 = text;
  if (text)
  {
    v14 = text;
  }

  else
  {
    v14 = [v3 copy];
  }

  v15 = v14;

  return v15;
}

- (BOOL)hasContent
{
  v15 = *MEMORY[0x1E69E9840];
  text = [(TLKRichText *)self text];
  v4 = [text length];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    formattedTextItems = [(TLKRichText *)self formattedTextItems];
    v5 = [formattedTextItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(formattedTextItems);
          }

          if ([*(*(&v10 + 1) + 8 * i) hasContent])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [formattedTextItems countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (unint64_t)maxLines
{
  stars = [(TLKRichText *)self stars];
  if ([stars count])
  {
    maxLines = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TLKRichText;
    maxLines = [(TLKMultilineText *)&v6 maxLines];
  }

  return maxLines;
}

- (void)setFormattedTextItems:(id)items
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_formattedTextItems setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = itemsCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_formattedTextItems;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      itemsCopy = v23;
    }
  }

  objc_storeStrong(&self->_formattedTextItems, items);
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_formattedTextItems setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_formattedTextItems;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKObject *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKObject *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKObject *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (BOOL)hasOnlyImage
{
  formattedTextItems = [(TLKRichText *)self formattedTextItems];
  if ([formattedTextItems count] == 1)
  {
    formattedTextItems2 = [(TLKRichText *)self formattedTextItems];
    firstObject = [formattedTextItems2 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v16.receiver = self;
  v16.super_class = TLKRichText;
  v4 = [(TLKMultilineText *)&v16 description];
  [v3 appendString:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  formattedTextItems = [(TLKRichText *)self formattedTextItems];
  v6 = [formattedTextItems countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) description];
        [v3 appendString:v10];
      }

      v7 = [formattedTextItems countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)filterItemsByType:(unint64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  formattedTextItems = [(TLKRichText *)self formattedTextItems];
  v7 = [formattedTextItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 _itemType] == type)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [formattedTextItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

@end