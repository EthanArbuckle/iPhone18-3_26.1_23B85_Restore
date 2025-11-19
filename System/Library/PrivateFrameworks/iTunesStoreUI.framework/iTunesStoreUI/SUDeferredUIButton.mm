@interface SUDeferredUIButton
- (BOOL)isEnabled;
- (CGRect)frame;
- (id)imageForState:(unint64_t)a3;
- (id)titleForState:(unint64_t)a3;
- (void)_commitDeferredInterfaceUpdates;
- (void)_saveCurrentStateAsDeferred;
- (void)_saveImagesAsDeferred;
- (void)_saveTitlesAsDeferred;
- (void)dealloc;
- (void)setDeferringInterfaceUpdates:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setTitle:(id)a3 forState:(unint64_t)a4;
@end

@implementation SUDeferredUIButton

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDeferredUIButton;
  [(SUDeferredUIButton *)&v3 dealloc];
}

- (void)setDeferringInterfaceUpdates:(BOOL)a3
{
  isDeferringInterfaceUpdates = self->_isDeferringInterfaceUpdates;
  if (isDeferringInterfaceUpdates != a3)
  {
    if (!isDeferringInterfaceUpdates)
    {
      [(SUDeferredUIButton *)self _saveCurrentStateAsDeferred];
    }

    self->_isDeferringInterfaceUpdates = a3;
    if (!a3)
    {

      [(SUDeferredUIButton *)self _commitDeferredInterfaceUpdates];
    }
  }
}

- (CGRect)frame
{
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    x = self->_deferredFrame.origin.x;
    y = self->_deferredFrame.origin.y;
    width = self->_deferredFrame.size.width;
    height = self->_deferredFrame.size.height;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUDeferredUIButton;
    [(SUDeferredUIButton *)&v7 frame];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isEnabled
{
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    return self->_deferredEnabled;
  }

  v4.receiver = self;
  v4.super_class = SUDeferredUIButton;
  return [(SUDeferredUIButton *)&v4 isEnabled];
}

- (id)imageForState:(unint64_t)a3
{
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    v5 = -[NSMutableDictionary objectForKey:](self->_deferredImages, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUIButton;
    v5 = [(SUDeferredUIButton *)&v8 imageForState:a3];
  }

  v6 = v5;
  if (v5 == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    self->_deferredEnabled = v3;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUDeferredUIButton;
    [(SUDeferredUIButton *)&v5 setEnabled:v3];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    self->_deferredFrame.origin.x = x;
    self->_deferredFrame.origin.y = y;
    self->_deferredFrame.size.width = width;
    self->_deferredFrame.size.height = height;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUIButton;
    [(SUDeferredUIButton *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  if (![(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    v9.receiver = self;
    v9.super_class = SUDeferredUIButton;
    [(SUDeferredUIButton *)&v9 setImage:a3 forState:a4];
    return;
  }

  deferredImages = self->_deferredImages;
  if (!deferredImages)
  {
    deferredImages = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_deferredImages = deferredImages;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_9:
    a3 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_4;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)deferredImages setObject:a3 forKey:v8];
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4
{
  if (![(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    v9.receiver = self;
    v9.super_class = SUDeferredUIButton;
    [(SUDeferredUIButton *)&v9 setTitle:a3 forState:a4];
    return;
  }

  deferredTitles = self->_deferredTitles;
  if (!deferredTitles)
  {
    deferredTitles = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_deferredTitles = deferredTitles;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_9:
    a3 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_4;
  }

  if (!a3)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];

  [(NSMutableDictionary *)deferredTitles setObject:a3 forKey:v8];
}

- (id)titleForState:(unint64_t)a3
{
  if ([(SUDeferredUIButton *)self isDeferringInterfaceUpdates])
  {
    v5 = -[NSMutableDictionary objectForKey:](self->_deferredTitles, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:a3]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUDeferredUIButton;
    v5 = [(SUDeferredUIButton *)&v8 titleForState:a3];
  }

  v6 = v5;
  if (v5 == [MEMORY[0x1E695DFB0] null])
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (void)_commitDeferredInterfaceUpdates
{
  v27 = *MEMORY[0x1E69E9840];
  [(SUDeferredUIButton *)self setEnabled:self->_deferredEnabled];
  [(SUDeferredUIButton *)self setFrame:self->_deferredFrame.origin.x, self->_deferredFrame.origin.y, self->_deferredFrame.size.width, self->_deferredFrame.size.height];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  deferredImages = self->_deferredImages;
  v4 = [(NSMutableDictionary *)deferredImages countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(deferredImages);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_deferredImages objectForKey:v8];
        if (v9 == [MEMORY[0x1E695DFB0] null])
        {
          v9 = 0;
        }

        -[SUDeferredUIButton setImage:forState:](self, "setImage:forState:", v9, [v8 integerValue]);
      }

      v5 = [(NSMutableDictionary *)deferredImages countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  self->_deferredImages = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  deferredTitles = self->_deferredTitles;
  v11 = [(NSMutableDictionary *)deferredTitles countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(deferredTitles);
        }

        v15 = *(*(&v17 + 1) + 8 * j);
        v16 = [(NSMutableDictionary *)self->_deferredTitles objectForKey:v15];
        if (v16 == [MEMORY[0x1E695DFB0] null])
        {
          v16 = 0;
        }

        -[SUDeferredUIButton setTitle:forState:](self, "setTitle:forState:", v16, [v15 integerValue]);
      }

      v12 = [(NSMutableDictionary *)deferredTitles countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  self->_deferredTitles = 0;
}

- (void)_saveCurrentStateAsDeferred
{
  self->_deferredEnabled = [(SUDeferredUIButton *)self isEnabled];
  [(SUDeferredUIButton *)self frame];
  self->_deferredFrame.origin.x = v3;
  self->_deferredFrame.origin.y = v4;
  self->_deferredFrame.size.width = v5;
  self->_deferredFrame.size.height = v6;
  [(SUDeferredUIButton *)self _saveImagesAsDeferred];

  [(SUDeferredUIButton *)self _saveTitlesAsDeferred];
}

- (void)_saveImagesAsDeferred
{
  deferredImages = self->_deferredImages;
  if (!deferredImages)
  {
    deferredImages = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_deferredImages = deferredImages;
  }

  [(NSMutableDictionary *)deferredImages removeAllObjects];
  v4 = [(SUDeferredUIButton *)self imageForState:0];
  if (v4)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredImages, "setObject:forKey:", v4, [MEMORY[0x1E696AD98] numberWithInteger:0]);
  }

  v5 = [(SUDeferredUIButton *)self imageForState:1];
  if (v5)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredImages, "setObject:forKey:", v5, [MEMORY[0x1E696AD98] numberWithInteger:1]);
  }

  v6 = [(SUDeferredUIButton *)self imageForState:2];
  if (v6)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredImages, "setObject:forKey:", v6, [MEMORY[0x1E696AD98] numberWithInteger:2]);
  }

  v7 = [(SUDeferredUIButton *)self imageForState:4];
  if (v7)
  {
    v8 = v7;
    v9 = self->_deferredImages;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:4];

    [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];
  }
}

- (void)_saveTitlesAsDeferred
{
  deferredTitles = self->_deferredTitles;
  if (!deferredTitles)
  {
    deferredTitles = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_deferredTitles = deferredTitles;
  }

  [(NSMutableDictionary *)deferredTitles removeAllObjects];
  v4 = [(SUDeferredUIButton *)self titleForState:0];
  if (v4)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredTitles, "setObject:forKey:", v4, [MEMORY[0x1E696AD98] numberWithInteger:0]);
  }

  v5 = [(SUDeferredUIButton *)self titleForState:1];
  if (v5)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredTitles, "setObject:forKey:", v5, [MEMORY[0x1E696AD98] numberWithInteger:1]);
  }

  v6 = [(SUDeferredUIButton *)self titleForState:2];
  if (v6)
  {
    -[NSMutableDictionary setObject:forKey:](self->_deferredTitles, "setObject:forKey:", v6, [MEMORY[0x1E696AD98] numberWithInteger:2]);
  }

  v7 = [(SUDeferredUIButton *)self titleForState:4];
  if (v7)
  {
    v8 = v7;
    v9 = self->_deferredTitles;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:4];

    [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];
  }
}

@end