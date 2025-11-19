@interface PREditingPaletteColorItemsDataSource
- (PREditingPaletteColorItemsDataSource)initWithConfiguration:(id)a3 variationStore:(id)a4 includesSuggestedColor:(BOOL)a5;
- (id)colorItemForIndex:(unint64_t)a3;
- (id)firstColorItemPassingTest:(id)a3;
- (unint64_t)indexForItem:(id)a3;
- (void)buildItems;
@end

@implementation PREditingPaletteColorItemsDataSource

- (PREditingPaletteColorItemsDataSource)initWithConfiguration:(id)a3 variationStore:(id)a4 includesSuggestedColor:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PREditingPaletteColorItemsDataSource;
  v11 = [(PREditingPaletteColorItemsDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    objc_storeStrong(&v12->_variationStore, a4);
    v12->_includeSuggestedColor = a5;
    [(PREditingPaletteColorItemsDataSource *)v12 buildItems];
  }

  return v12;
}

- (void)buildItems
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_items)
  {
    v27 = [(PREditorColorPickerConfiguration *)self->_configuration identifier];
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(PREditorColorPickerConfiguration *)self->_configuration suggestedColor];
    v5 = [(PREditorColorPickerConfiguration *)self->_configuration colorPalette];
    v26 = v4;
    if (self->_includeSuggestedColor && [(PREditorColorPickerConfiguration *)self->_configuration showsSuggestedColorItem]&& v4)
    {
      v6 = [PREditingColorItem suggestedColorItemWithColor:v4 context:[(PREditorColorPickerConfiguration *)self->_configuration context]];
      [v3 addObject:v6];
      v7 = +[PREditorColorPalette extendedPalette];
      v8 = [v5 isEqual:v7];

      if (v8)
      {
        v9 = [v5 colors];
        v10 = [v9 mutableCopy];

        [v10 removeObjectAtIndex:15];
        v11 = [PREditorColorPalette alloc];
        v12 = [v5 localizedName];
        v13 = [(PREditorColorPalette *)v11 initWithColors:v10 localizedName:v12 showsColorWell:0];

        v5 = v13;
      }
    }

    [v5 generatePickerColorsIfNeededForContext:{-[PREditorColorPickerConfiguration context](self->_configuration, "context")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v5;
    v14 = [v5 pickerColors];
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v19 forContextIdentifier:v27];
          [v19 initialVariation];
          if (v20)
          {
            [v20 doubleValue];
          }

          v22 = [[PREditingColorItem alloc] initWithPickerColor:v19 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v21];
          [v3 addObject:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v23 = [v3 copy];
    items = self->_items;
    self->_items = v23;
  }
}

- (id)firstColorItemPassingTest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (unint64_t)indexForItem:(id)a3
{
  v4 = a3;
  items = self->_items;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PREditingPaletteColorItemsDataSource_indexForItem___block_invoke;
  v9[3] = &unk_1E78436F8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)items indexOfObjectPassingTest:v9];

  return v7;
}

- (id)colorItemForIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_items count]>= a3)
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end