@interface PKMemoIconChooserSectionController
+ (double)_itemSizeForStyle:(unint64_t)a3;
+ (unint64_t)suggestedStyleForAvailableWidth:(double)a3;
- (NSArray)identifiers;
- (PKMemoIconChooserSectionController)initWithDelegate:(id)a3 mode:(unint64_t)a4 memo:(id)a5;
- (double)_selectionPreviewBottomSpacing;
- (double)_selectionPreviewTopSpacing;
- (id)cellRegistrationForItem:(id)a3;
- (id)contextMenuConfigurationForItem:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)selectedMemo;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)addMemo:(id)a3;
- (void)cell:(id)a3 didUpdateText:(id)a4;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)reloadItems;
- (void)setMemoSelection:(id)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation PKMemoIconChooserSectionController

- (PKMemoIconChooserSectionController)initWithDelegate:(id)a3 mode:(unint64_t)a4 memo:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v43.receiver = self;
  v43.super_class = PKMemoIconChooserSectionController;
  v10 = [(PKMemoIconChooserSectionController *)&v43 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v11->_mode = a4;
    v11->_style = 1;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v11->_items;
    v11->_items = v12;

    if (a4 == 1)
    {
      v34 = v8;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = PKPeerPaymentRecurringPaymentMemoColors();
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v35 + 1) + 8 * i);
            v29 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
            [v29 setColor:{objc_msgSend(v28, "integerValue")}];
            v30 = v11->_items;
            v31 = [[PKMemoItem alloc] initWithMemo:v29 type:0];
            [(NSMutableArray *)v30 addObject:v31];
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v25);
      }

      v16 = [(NSMutableArray *)v11->_items firstObject];
      v32 = [v16 memo];
      [(PKMemoIconChooserSectionController *)v11 setMemoSelection:v32];

      v8 = v34;
      goto LABEL_20;
    }

    if (!a4)
    {
      [(PKMemoIconChooserSectionController *)v11 setMemoSelection:v9];
      v14 = [[PKMemoItem alloc] initWithMemo:0 type:1];
      addNewItem = v11->_addNewItem;
      v11->_addNewItem = v14;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = PKPeerPaymentRecurringPaymentMemoSuggestions();
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = v11->_items;
            v22 = [[PKMemoItem alloc] initWithMemo:*(*(&v39 + 1) + 8 * j) type:0];
            [(NSMutableArray *)v21 addObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v18);
      }

LABEL_20:
    }
  }

  return v11;
}

- (void)reloadItems
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_items removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = PKPeerPaymentRecurringPaymentMemoSuggestions();
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        items = self->_items;
        v10 = [PKMemoItem alloc];
        v11 = [(PKMemoItem *)v10 initWithMemo:v8 type:0, v13];
        [(NSMutableArray *)items addObject:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataForSectionIdentifier:@"chooser" animated:1];
}

- (NSArray)identifiers
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"selectionPresent";
  v4[1] = @"selectionEmpty";
  v4[2] = @"chooser";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = v5;
  v8 = v7;
  if (v7 == @"chooser")
  {
    goto LABEL_23;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = [(__CFString *)v7 isEqualToString:@"chooser"];

  if (v9)
  {
LABEL_23:
    if (!self->_mode)
    {
      v28[0] = self->_addNewItem;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v6 appendItems:v10];
    }

    [v6 appendItems:self->_items];
    goto LABEL_7;
  }

  v12 = v8;
  if (v12 == @"selectionPresent" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"selectionPresent"], v13, v14))
  {
    v15 = [(PKMemoItem *)self->_selectionItem memo];
    v16 = [v15 emoji];
    if ([v16 length])
    {
    }

    else
    {
      mode = self->_mode;

      if (mode != 1)
      {
LABEL_20:

        goto LABEL_7;
      }
    }

    selectionItem = self->_selectionItem;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selectionItem count:1];
    [v6 appendItems:v25];

    goto LABEL_20;
  }

  v17 = v13;
  if (v17 == @"selectionEmpty" || (v18 = v17, v19 = [(__CFString *)v17 isEqualToString:@"selectionEmpty"], v18, v19))
  {
    v20 = [(PKMemoItem *)self->_selectionItem memo];
    v21 = [v20 emoji];
    v22 = [v21 length];

    if (!v22)
    {
      v26 = self->_selectionItem;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v6 appendItems:v23];
    }
  }

LABEL_7:

  return v6;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = MEMORY[0x1E69DC800];
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PKMemoIconChooserSectionController_cellRegistrationForItem___block_invoke;
  v8[3] = &unk_1E8026E68;
  v8[4] = self;
  v6 = [v4 registrationWithCellClass:v5 configurationHandler:v8];

  return v6;
}

void __62__PKMemoIconChooserSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [v6 setItem:a4];
  [v6 setDelegate:*(a1 + 32)];
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v38 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 == @"selectionPresent")
  {
    goto LABEL_4;
  }

  if (v6)
  {
    v8 = [(__CFString *)v6 isEqualToString:@"selectionPresent"];

    if (v8)
    {
LABEL_4:
      v9 = 1;
      v10 = 1;
      goto LABEL_10;
    }

    v11 = v7;
    if (v11 == @"selectionEmpty")
    {
      v10 = 1;
    }

    else
    {
      v10 = [(__CFString *)v11 isEqualToString:@"selectionEmpty"];
    }
  }

  else
  {
    v10 = 0;
  }

  v9 = 0;
LABEL_10:
  v12 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  if (v10)
  {
    v13 = 96.0;
  }

  else
  {
    [objc_opt_class() _itemSizeForStyle:self->_style];
    v13 = v14;
  }

  v15 = [MEMORY[0x1E6995558] absoluteDimension:v13];
  v16 = v15;
  if (v10)
  {
    v17 = v12;
  }

  else
  {
    v17 = v15;
  }

  v18 = MEMORY[0x1E695DF70];
  v19 = v17;
  v20 = objc_alloc_init(v18);
  v37 = self;
  v39 = v20;
  if (v9 && !self->_mode)
  {
    v21 = [MEMORY[0x1E6995558] absoluteDimension:26.0];
    v22 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v21 heightDimension:v21];
    v23 = [MEMORY[0x1E6995540] layoutAnchorWithEdges:0 absoluteOffset:{v13 * 0.5 + -5.2, -(v13 * 0.5 + -5.2)}];
    v24 = [MEMORY[0x1E6995598] supplementaryItemWithLayoutSize:v22 elementKind:@"dismissItem" containerAnchor:v23];
    [v39 addObject:v24];

    v20 = v39;
  }

  v25 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v19 heightDimension:v16];
  v26 = [MEMORY[0x1E6995578] itemWithLayoutSize:v25 supplementaryItems:v20];
  v27 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v12 heightDimension:v16];

  v28 = MEMORY[0x1E6995568];
  v40[0] = v26;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v30 = [v28 horizontalGroupWithLayoutSize:v27 subitems:v29];

  if ((v10 & 1) == 0)
  {
    v31 = [MEMORY[0x1E6995590] flexibleSpacing:20.0];
    [v30 setInterItemSpacing:v31];
  }

  v32 = [MEMORY[0x1E6995580] sectionWithGroup:v30];
  [v32 setContentInsetsReference:1];
  if (v10)
  {
    [(PKMemoIconChooserSectionController *)v37 _selectionPreviewTopSpacing];
    v34 = v33;
    [(PKMemoIconChooserSectionController *)v37 _selectionPreviewBottomSpacing];
    [v32 setContentInsets:{v34, 0.0, v35, 0.0}];
  }

  else
  {
    [v32 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
    [v32 setInterGroupSpacing:16.0];
  }

  return v32;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v29 = a4;
  v30 = a5;
  v9 = v8;
  v10 = [v9 backgroundConfiguration];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v9 defaultBackgroundConfiguration];
  }

  v13 = v12;

  v14 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:26.0];
  v15 = MEMORY[0x1E69DCAD8];
  v16 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v35[0] = v16;
  v17 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  v35[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v19 = [v15 configurationWithPaletteColors:v18];
  v20 = [v14 configurationByApplyingConfiguration:v19];

  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v20];
  [v13 setImage:v21];
  [v13 setImageContentMode:4];
  v22 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v13 setStrokeColor:v22];

  [v13 setStrokeWidth:1.5];
  [v13 setCornerRadius:13.0];
  [v9 setBackgroundConfiguration:v13];
  objc_initWeak(&location, self);
  v23 = objc_alloc(MEMORY[0x1E69DC738]);
  v24 = MEMORY[0x1E69DC628];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __103__PKMemoIconChooserSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke;
  v31[3] = &unk_1E8010A60;
  objc_copyWeak(&v32, &location);
  v25 = [v24 actionWithHandler:v31];
  v26 = [v23 initWithFrame:v25 primaryAction:{0.0, 0.0, 26.0, 26.0}];

  [v26 setConfigurationUpdateHandler:&__block_literal_global_256];
  v27 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v26 placement:0];
  [v9 setIndentsAccessories:0];
  v34 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  [v9 setAccessories:v28];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

void __103__PKMemoIconChooserSectionController_configureSupplementaryRegistration_elementKind_sectionIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setMemoSelection:0];
    v2 = objc_loadWeakRetained(v4 + 1);
    [v2 didSelectItem:v4[4]];

    v3 = objc_loadWeakRetained(v4 + 1);
    [v3 deselectCells];

    WeakRetained = v4;
  }
}

- (void)didSelectItem:(id)a3
{
  v12 = a3;
  v4 = [v12 type];
  if ((v4 - 2) >= 2)
  {
    if (v4 != 1)
    {
      if (v4)
      {
        goto LABEL_9;
      }

      v5 = [v12 memo];
      [(PKMemoIconChooserSectionController *)self setMemoSelection:v5];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(PKMemoItem *)WeakRetained didSelectItem:v12];
      goto LABEL_8;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 didSelectItem:v12];
  }

  v8 = [(PKMemoItem *)self->_selectionItem memo];

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [PKMemoItem alloc];
  v10 = [(PKMemoItem *)self->_selectionItem memo];
  WeakRetained = [(PKMemoItem *)v9 initWithMemo:v10 type:0];

  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 selectCellForItem:WeakRetained];

LABEL_8:
LABEL_9:
}

- (id)contextMenuConfigurationForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 memo];
  v6 = v5;
  if (self->_mode)
  {
    goto LABEL_2;
  }

  v9 = [v5 emoji];
  if (![v9 length])
  {

    goto LABEL_2;
  }

  v10 = [v6 text];
  v11 = [v10 length];

  if (v11)
  {
LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PKMemoIconChooserSectionController_contextMenuConfigurationForItem___block_invoke;
  v13[3] = &unk_1E8026200;
  objc_copyWeak(&v15, &location);
  v14 = v6;
  v7 = [v12 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
LABEL_3:

  return v7;
}

id __70__PKMemoIconChooserSectionController_contextMenuConfigurationForItem___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = PKLocalizedPeerPaymentRecurringString(&cfstr_MemoPickerRemo.isa);
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __70__PKMemoIconChooserSectionController_contextMenuConfigurationForItem___block_invoke_2;
  v15 = &unk_1E8012328;
  objc_copyWeak(&v17, (a1 + 40));
  v16 = *(a1 + 32);
  v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v12];

  [v7 setAttributes:{2, v12, v13, v14, v15}];
  v8 = MEMORY[0x1E69DCC60];
  v18[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [v8 menuWithTitle:&stru_1F3BD7330 children:v9];

  objc_destroyWeak(&v17);

  return v10;
}

void __70__PKMemoIconChooserSectionController_contextMenuConfigurationForItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    PKPeerPaymentRemoveRecurringPaymentRecentMemoIcon();
    [v2 reloadItems];
    WeakRetained = v2;
  }
}

- (void)cell:(id)a3 didUpdateText:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cell:v7 didUpdateText:v6];
}

- (double)_selectionPreviewTopSpacing
{
  result = 0.0;
  if (self->_style - 1 < 2)
  {
    return 16.0;
  }

  return result;
}

- (double)_selectionPreviewBottomSpacing
{
  result = 60.0;
  if (self->_style - 1 >= 2)
  {
    return 20.0;
  }

  return result;
}

+ (double)_itemSizeForStyle:(unint64_t)a3
{
  result = 68.0;
  if (a3 == 1)
  {
    result = 73.0;
  }

  if (a3 == 2)
  {
    return 81.0;
  }

  return result;
}

+ (unint64_t)suggestedStyleForAvailableWidth:(double)a3
{
  [a1 _minimumWidthForStyle:1];
  if (v5 >= a3)
  {
    return 0;
  }

  [a1 _minimumWidthForStyle:2];
  if (v6 >= a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)selectedMemo
{
  v2 = [(PKMemoItem *)self->_selectionItem memo];
  v3 = [v2 copy];

  [v3 setText:0];

  return v3;
}

- (void)addMemo:(id)a3
{
  v4 = a3;
  v6 = [[PKMemoItem alloc] initWithMemo:v4 type:0];

  [(NSMutableArray *)self->_items insertObject:v6 atIndex:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataForSectionIdentifier:@"chooser" animated:1];
}

- (void)setMemoSelection:(id)a3
{
  v4 = a3;
  mode = self->_mode;
  if (mode == 1)
  {
    v18 = v4;
    v9 = [(PKMemoItem *)self->_selectionItem memo];
    if (v9)
    {
      v10 = v9;
      [v9 setColor:{objc_msgSend(v18, "color")}];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
      [v10 setColor:{objc_msgSend(v18, "color")}];
      selectionItem = self->_selectionItem;
      if (selectionItem)
      {
        [(PKMemoItem *)selectionItem setMemo:v10];
      }

      else
      {
        v15 = [[PKMemoItem alloc] initWithMemo:v10 type:2];
        v16 = self->_selectionItem;
        self->_selectionItem = v15;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadItem:self->_selectionItem animated:0];
  }

  else
  {
    if (mode)
    {
      goto LABEL_15;
    }

    v18 = v4;
    v6 = [(PKMemoItem *)self->_selectionItem memo];
    v7 = PKEqualObjects();

    v8 = self->_selectionItem;
    if (v8)
    {
      [(PKMemoItem *)v8 setMemo:v18];
      [(PKMemoItem *)self->_selectionItem setType:3];
    }

    else
    {
      v11 = [[PKMemoItem alloc] initWithMemo:v18 type:3];
      v12 = self->_selectionItem;
      self->_selectionItem = v11;
    }

    v4 = v18;
    if (v7)
    {
      goto LABEL_15;
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 reloadDataForSectionIdentifier:@"selectionPresent" animated:0];

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 reloadDataForSectionIdentifier:@"selectionEmpty" animated:0];
  }

  v4 = v18;
LABEL_15:
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained invalidateLayout];
}

@end