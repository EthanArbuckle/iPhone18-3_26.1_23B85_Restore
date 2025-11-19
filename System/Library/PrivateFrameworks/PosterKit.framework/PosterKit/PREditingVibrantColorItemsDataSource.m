@interface PREditingVibrantColorItemsDataSource
- (PREditingVibrantColorItemsDataSource)initWithConfiguration:(id)a3 variationStore:(id)a4;
- (id)colorItemForIndex:(unint64_t)a3;
- (id)firstColorItemPassingTest:(id)a3;
- (unint64_t)indexForItem:(id)a3;
- (void)buildItems;
@end

@implementation PREditingVibrantColorItemsDataSource

- (PREditingVibrantColorItemsDataSource)initWithConfiguration:(id)a3 variationStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PREditingVibrantColorItemsDataSource;
  v9 = [(PREditingVibrantColorItemsDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_variationStore, a4);
    [(PREditingVibrantColorItemsDataSource *)v10 buildItems];
  }

  return v10;
}

- (void)buildItems
{
  v46[3] = *MEMORY[0x1E69E9840];
  if (!self->_items)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v38 = [(PREditorColorPickerConfiguration *)self->_configuration identifier];
    v4 = [(PREditingVibrantColorItemsDataSource *)self configuration];
    v5 = [v4 suggestedColor];

    v6 = [(PREditingVibrantColorItemsDataSource *)self configuration];
    v7 = [v6 suggestedColor];

    if (v7)
    {
      v8 = [PREditingColorItem suggestedColorItemWithColor:v5 context:[(PREditorColorPickerConfiguration *)self->_configuration context]];
      [v3 addObject:v8];
    }

    v37 = v5;
    v9 = [PRPosterColor alloc];
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    v11 = [(PRPosterColor *)v9 initWithColor:v10 preferredStyle:2];

    v12 = [PRPosterColor alloc];
    v13 = [MEMORY[0x1E69DC888] blackColor];
    v14 = [(PRPosterColor *)v12 initWithColor:v13 preferredStyle:2];

    v15 = [PREditorColorPickerVibrantMonotoneColor alloc];
    v16 = +[PRPosterColor vibrantMonochromeColor];
    v45[0] = &unk_1F1C6B920;
    v45[1] = &unk_1F1C6B938;
    v46[0] = v11;
    v46[1] = v11;
    v36 = v14;
    v45[2] = &unk_1F1C6B950;
    v46[2] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
    v18 = [(PREditorColorPickerVibrantMonotoneColor *)v15 initWithColor:v16 displayColors:v17 localizedName:0];

    v35 = v18;
    v19 = [[PREditingColorItem alloc] initWithPickerColor:v18 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:0.0];
    [(PREditingColorItem *)v19 setShowsSlider:0];
    v20 = +[PREditingColorItem vibrantMaterialItem];
    v44[0] = v20;
    v44[1] = v19;
    v34 = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v22 = v3;
    [v3 addObjectsFromArray:v21];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = [(PREditorColorPickerConfiguration *)self->_configuration suggestedColors];
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [[PREditorColorPickerConstantColor alloc] initWithBaseUIColor:*(*(&v39 + 1) + 8 * i)];
          v29 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v28 forContextIdentifier:v38];
          [(PREditorColorPickerConstantColor *)v28 initialVariation];
          if (v29)
          {
            [v29 doubleValue];
          }

          v31 = [[PREditingColorItem alloc] initWithPickerColor:v28 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v30];
          [v22 addObject:v31];
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v25);
    }

    v32 = [v22 copy];
    items = self->_items;
    self->_items = v32;
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
  v9[2] = __53__PREditingVibrantColorItemsDataSource_indexForItem___block_invoke;
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