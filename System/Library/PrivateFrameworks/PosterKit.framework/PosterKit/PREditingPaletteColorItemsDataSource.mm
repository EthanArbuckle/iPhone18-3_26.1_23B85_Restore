@interface PREditingPaletteColorItemsDataSource
- (PREditingPaletteColorItemsDataSource)initWithConfiguration:(id)configuration variationStore:(id)store includesSuggestedColor:(BOOL)color;
- (id)colorItemForIndex:(unint64_t)index;
- (id)firstColorItemPassingTest:(id)test;
- (unint64_t)indexForItem:(id)item;
- (void)buildItems;
@end

@implementation PREditingPaletteColorItemsDataSource

- (PREditingPaletteColorItemsDataSource)initWithConfiguration:(id)configuration variationStore:(id)store includesSuggestedColor:(BOOL)color
{
  configurationCopy = configuration;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = PREditingPaletteColorItemsDataSource;
  v11 = [(PREditingPaletteColorItemsDataSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeStrong(&v12->_variationStore, store);
    v12->_includeSuggestedColor = color;
    [(PREditingPaletteColorItemsDataSource *)v12 buildItems];
  }

  return v12;
}

- (void)buildItems
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_items)
  {
    identifier = [(PREditorColorPickerConfiguration *)self->_configuration identifier];
    array = [MEMORY[0x1E695DF70] array];
    suggestedColor = [(PREditorColorPickerConfiguration *)self->_configuration suggestedColor];
    colorPalette = [(PREditorColorPickerConfiguration *)self->_configuration colorPalette];
    v26 = suggestedColor;
    if (self->_includeSuggestedColor && [(PREditorColorPickerConfiguration *)self->_configuration showsSuggestedColorItem]&& suggestedColor)
    {
      v6 = [PREditingColorItem suggestedColorItemWithColor:suggestedColor context:[(PREditorColorPickerConfiguration *)self->_configuration context]];
      [array addObject:v6];
      v7 = +[PREditorColorPalette extendedPalette];
      v8 = [colorPalette isEqual:v7];

      if (v8)
      {
        colors = [colorPalette colors];
        v10 = [colors mutableCopy];

        [v10 removeObjectAtIndex:15];
        v11 = [PREditorColorPalette alloc];
        localizedName = [colorPalette localizedName];
        v13 = [(PREditorColorPalette *)v11 initWithColors:v10 localizedName:localizedName showsColorWell:0];

        colorPalette = v13;
      }
    }

    [colorPalette generatePickerColorsIfNeededForContext:{-[PREditorColorPickerConfiguration context](self->_configuration, "context")}];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = colorPalette;
    pickerColors = [colorPalette pickerColors];
    v15 = [pickerColors countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(pickerColors);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v19 forContextIdentifier:identifier];
          [v19 initialVariation];
          if (v20)
          {
            [v20 doubleValue];
          }

          v22 = [[PREditingColorItem alloc] initWithPickerColor:v19 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v21];
          [array addObject:v22];
        }

        v16 = [pickerColors countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    v23 = [array copy];
    items = self->_items;
    self->_items = v23;
  }
}

- (id)firstColorItemPassingTest:(id)test
{
  v16 = *MEMORY[0x1E69E9840];
  testCopy = test;
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
        if (testCopy[2](testCopy, v9))
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

- (unint64_t)indexForItem:(id)item
{
  itemCopy = item;
  items = self->_items;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PREditingPaletteColorItemsDataSource_indexForItem___block_invoke;
  v9[3] = &unk_1E78436F8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [(NSArray *)items indexOfObjectPassingTest:v9];

  return v7;
}

- (id)colorItemForIndex:(unint64_t)index
{
  if ([(NSArray *)self->_items count]>= index)
  {
    v5 = [(NSArray *)self->_items objectAtIndexedSubscript:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end