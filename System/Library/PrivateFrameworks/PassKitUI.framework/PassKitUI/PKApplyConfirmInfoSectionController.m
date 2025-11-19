@interface PKApplyConfirmInfoSectionController
- (Class)footerViewClassForSectionIdentifier:(id)a3;
- (PKApplyConfirmInfoSectionController)initWithController:(id)a3 applyPage:(id)a4 delegate:(id)a5;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)_configureContentSection:(id)a3;
- (void)configureCellForRegistration:(id)a3 item:(id)a4;
- (void)configureFooterView:(id)a3 forSectionIdentifier:(id)a4;
- (void)setPage:(id)a3;
@end

@implementation PKApplyConfirmInfoSectionController

- (PKApplyConfirmInfoSectionController)initWithController:(id)a3 applyPage:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PKApplyConfirmInfoSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v15 initWithController:a3 applyPage:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v9);
    v12 = [v8 actionContent];
    actionContent = v11->_actionContent;
    v11->_actionContent = v12;
  }

  return v11;
}

- (void)setPage:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKApplyConfirmInfoSectionController;
  v4 = a3;
  [(PKApplyCollectionViewSectionController *)&v7 setPage:v4];
  v5 = [v4 actionContent];

  actionContent = self->_actionContent;
  self->_actionContent = v5;
}

- (void)configureCellForRegistration:(id)a3 item:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyConfirmInfoSectionController;
  [(PKApplyCollectionViewSectionController *)&v9 configureCellForRegistration:v6 item:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v8 = +[PKApplyActionContentActionItemCell backgroundColor];
    [v7 setBackgroundColor:v8];

    [v6 setBackgroundConfiguration:v7];
  }
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"kContentSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (Class)footerViewClassForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"kContentSection" || v4 && (v6 = [(__CFString *)v4 isEqualToString:@"kContentSection"], v5, v6))
  {
    v7 = [(PKApplyActionContent *)self->_actionContent footerContent];

    if (v7)
    {
      v7 = objc_opt_class();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configureFooterView:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKApplyActionContent *)self->_actionContent footerContent];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      if (v9 == @"kContentSection" || (v10 = v9) != 0 && (v11 = [(__CFString *)v9 isEqualToString:@"kContentSection"], v10, v11))
      {
        objc_initWeak(&location, self);
        v12 = v6;
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __80__PKApplyConfirmInfoSectionController_configureFooterView_forSectionIdentifier___block_invoke;
        v18 = &unk_1E80126D0;
        objc_copyWeak(&v19, &location);
        v13 = [PKTextRangeHyperlink hyperlinkSourcesFromApplyFooter:v8 linkTapped:&v15];
        v14 = [v8 footerText];
        [v12 setText:v14];

        [v12 setTextAlignment:4];
        [v12 setSources:v13];

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __80__PKApplyConfirmInfoSectionController_configureFooterView_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 12);
    [v5 didTapFooterLink:v6];
  }
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = v5;
  v8 = v7;
  if (v7 == @"kContentSection" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"kContentSection"], v8, v9))
  {
    [(PKApplyConfirmInfoSectionController *)self _configureContentSection:v6];
  }

  return v6;
}

- (void)_configureContentSection:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PKApplyActionContent *)self->_actionContent actionItems];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        objc_initWeak(&location, self);
        v9 = [PKApplyActionContentActionItemRow alloc];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __64__PKApplyConfirmInfoSectionController__configureContentSection___block_invoke;
        v14[3] = &unk_1E80110E0;
        objc_copyWeak(&v15, &location);
        v14[4] = v8;
        v10 = [(PKApplyActionContentActionItemRow *)v9 initWithApplyActionContentActionItem:v8 selectionHandler:v14];
        [v4 safelyAddObject:v10];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v11 = [v4 copy];
  [v12 appendItems:v11];
}

void __64__PKApplyConfirmInfoSectionController__configureContentSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 12);
    [v3 didSelectActionItem:*(a1 + 32)];

    WeakRetained = v4;
  }
}

@end