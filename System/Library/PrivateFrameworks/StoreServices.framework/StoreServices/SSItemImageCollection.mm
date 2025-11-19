@interface SSItemImageCollection
- (SSItemImageCollection)initWithImageCollection:(id)a3;
- (SSItemImageCollection)initWithItemImages:(id)a3;
- (SSItemImageCollection)initWithXPCEncoding:(id)a3;
- (id)_imagesForSize:(CGSize)a3 scale:(double)a4;
- (id)_newImagesForDictionary:(id)a3;
- (id)bestImageForSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)imagesForKind:(id)a3;
- (id)imagesForSize:(CGSize)a3;
- (void)dealloc;
@end

@implementation SSItemImageCollection

- (SSItemImageCollection)initWithImageCollection:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      a3 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(SSItemImageCollection *)self _newImagesForDictionary:v9];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              v14 = 0;
              do
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v4 addObject:*(*(&v18 + 1) + 8 * v14++)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [a3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [(SSItemImageCollection *)self initWithItemImages:v4];

  return v15;
}

- (SSItemImageCollection)initWithItemImages:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSItemImageCollection;
  v4 = [(SSItemImageCollection *)&v6 init];
  if (v4)
  {
    v4->_itemImages = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemImageCollection;
  [(SSItemImageCollection *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [(NSArray *)self->_itemImages copyWithZone:a3];
  return v5;
}

- (id)bestImageForSize:(CGSize)a3
{
  v3 = [(SSItemImageCollection *)self imagesForSize:a3.width, a3.height];
  result = [v3 count];
  if (result)
  {

    return [v3 lastObject];
  }

  return result;
}

- (id)imagesForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  GSMainScreenScaleFactor();
  [v6 addObjectsFromArray:{-[SSItemImageCollection _imagesForSize:scale:](self, "_imagesForSize:scale:", width, height, v7)}];
  if (![v6 count])
  {
    [v6 addObjectsFromArray:{-[SSItemImageCollection _imagesForSize:scale:](self, "_imagesForSize:scale:", width, height, 0.0)}];
  }

  v8 = [objc_msgSend(v6 "allObjects")];

  return v8;
}

- (id)imagesForKind:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  GSMainScreenScaleFactor();
  v8 = v7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  itemImages = self->_itemImages;
  v10 = [(NSArray *)itemImages countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = v8;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(itemImages);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([objc_msgSend(v15 "imageKind")])
        {
          [v15 imageScale];
          if (v16 == v12)
          {
            [v6 addObject:v15];
          }

          [v5 addObject:v15];
        }
      }

      v11 = [(NSArray *)itemImages countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v17 = v6;
  }

  else
  {
    v17 = v5;
  }

  return [v17 sortedArrayUsingFunction:__ImageSizeSort context:0];
}

- (id)_imagesForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v57 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  itemImages = self->_itemImages;
  v10 = [(NSArray *)itemImages countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(itemImages);
        }

        v14 = *(*(&v50 + 1) + 8 * i);
        [v14 imageSize];
        if (width == v16 && height == v15)
        {
          if (a4 < 0.00000011920929 || ([v14 imageScale], v18 == a4))
          {
            [v8 addObject:v14];
          }
        }
      }

      v11 = [(NSArray *)itemImages countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v11);
  }

  if (![v8 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = self->_itemImages;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v46 + 1) + 8 * j);
          [v24 imageSize];
          if (SSItemImageSizeEqualToSize(width, height, v25, v26))
          {
            if (a4 < 0.00000011920929 || ([v24 imageScale], v27 == a4))
            {
              [v8 addObject:v24];
            }
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v21);
    }
  }

  if (![v8 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = self->_itemImages;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = *v43;
      v34 = 1.79769313e308;
      v35 = width / height;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v42 + 1) + 8 * k);
          if (a4 >= 0.00000011920929)
          {
            [*(*(&v42 + 1) + 8 * k) imageScale];
            if (v38 != a4)
            {
              continue;
            }
          }

          [v37 imageSize];
          v41 = vabdd_f64(v35, v39 / v40);
          if (v41 < v34)
          {
            v32 = v37;
            v34 = v41;
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v31);
      if (v32)
      {
        [v8 addObject:v32];
      }
    }
  }

  return v8;
}

- (id)_newImagesForDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [a3 objectForKey:@"image-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [a3 objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[SSItemArtworkImage alloc] initWithArtworkDictionary:v11];
            if ([(SSItemArtworkImage *)v12 URLString])
            {
              [(SSItemArtworkImage *)v12 setImageKindWithTypeName:v5 variantName:v10];
              [v4 addObject:v12];
            }
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v13 = [[SSItemArtworkImage alloc] initWithArtworkDictionary:a3];
    if ([(SSItemArtworkImage *)v13 URLString])
    {
      [v4 addObject:v13];
    }
  }

  return v4;
}

- (SSItemImageCollection)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v15.receiver = self;
    v15.super_class = SSItemImageCollection;
    v5 = [(SSItemImageCollection *)&v15 init];
    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      value = xpc_dictionary_get_value(a3, "0");
      if (value)
      {
        v9 = value;
        if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E50])
        {
          count = xpc_array_get_count(v9);
          if (count >= 1)
          {
            v11 = count;
            for (i = 0; i != v11; ++i)
            {
              v13 = [[SSItemArtworkImage alloc] initWithXPCEncoding:xpc_array_get_value(v9, i)];
              if (v13)
              {
                v14 = v13;
                [v7 addObject:v13];
              }
            }
          }
        }
      }

      v5->_itemImages = [v7 copy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = xpc_array_create(0, 0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemImages = self->_itemImages;
  v6 = [(NSArray *)itemImages countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(itemImages);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) copyXPCEncoding];
        if (v10)
        {
          v11 = v10;
          xpc_array_append_value(v4, v10);
          xpc_release(v11);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)itemImages countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  xpc_dictionary_set_value(v3, "0", v4);
  xpc_release(v4);
  return v3;
}

@end