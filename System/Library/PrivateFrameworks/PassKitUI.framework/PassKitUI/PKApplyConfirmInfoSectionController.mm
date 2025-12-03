@interface PKApplyConfirmInfoSectionController
- (Class)footerViewClassForSectionIdentifier:(id)identifier;
- (PKApplyConfirmInfoSectionController)initWithController:(id)controller applyPage:(id)page delegate:(id)delegate;
- (id)identifiers;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)_configureContentSection:(id)section;
- (void)configureCellForRegistration:(id)registration item:(id)item;
- (void)configureFooterView:(id)view forSectionIdentifier:(id)identifier;
- (void)setPage:(id)page;
@end

@implementation PKApplyConfirmInfoSectionController

- (PKApplyConfirmInfoSectionController)initWithController:(id)controller applyPage:(id)page delegate:(id)delegate
{
  pageCopy = page;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = PKApplyConfirmInfoSectionController;
  v10 = [(PKApplyCollectionViewSectionController *)&v15 initWithController:controller applyPage:pageCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    actionContent = [pageCopy actionContent];
    actionContent = v11->_actionContent;
    v11->_actionContent = actionContent;
  }

  return v11;
}

- (void)setPage:(id)page
{
  v7.receiver = self;
  v7.super_class = PKApplyConfirmInfoSectionController;
  pageCopy = page;
  [(PKApplyCollectionViewSectionController *)&v7 setPage:pageCopy];
  actionContent = [pageCopy actionContent];

  actionContent = self->_actionContent;
  self->_actionContent = actionContent;
}

- (void)configureCellForRegistration:(id)registration item:(id)item
{
  registrationCopy = registration;
  v9.receiver = self;
  v9.super_class = PKApplyConfirmInfoSectionController;
  [(PKApplyCollectionViewSectionController *)&v9 configureCellForRegistration:registrationCopy item:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v8 = +[PKApplyActionContentActionItemCell backgroundColor];
    [listCellConfiguration setBackgroundColor:v8];

    [registrationCopy setBackgroundConfiguration:listCellConfiguration];
  }
}

- (id)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"kContentSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (Class)footerViewClassForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy == @"kContentSection" || identifierCopy && (v6 = [(__CFString *)identifierCopy isEqualToString:@"kContentSection"], v5, v6))
  {
    footerContent = [(PKApplyActionContent *)self->_actionContent footerContent];

    if (footerContent)
    {
      footerContent = objc_opt_class();
    }
  }

  else
  {
    footerContent = 0;
  }

  return footerContent;
}

- (void)configureFooterView:(id)view forSectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  footerContent = [(PKApplyActionContent *)self->_actionContent footerContent];
  if (footerContent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = identifierCopy;
      if (v9 == @"kContentSection" || (v10 = v9) != 0 && (v11 = [(__CFString *)v9 isEqualToString:@"kContentSection"], v10, v11))
      {
        objc_initWeak(&location, self);
        v12 = viewCopy;
        v15 = MEMORY[0x1E69E9820];
        v16 = 3221225472;
        v17 = __80__PKApplyConfirmInfoSectionController_configureFooterView_forSectionIdentifier___block_invoke;
        v18 = &unk_1E80126D0;
        objc_copyWeak(&v19, &location);
        v13 = [PKTextRangeHyperlink hyperlinkSourcesFromApplyFooter:footerContent linkTapped:&v15];
        footerText = [footerContent footerText];
        [v12 setText:footerText];

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

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = identifierCopy;
  v8 = v7;
  if (v7 == @"kContentSection" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"kContentSection"], v8, v9))
  {
    [(PKApplyConfirmInfoSectionController *)self _configureContentSection:v6];
  }

  return v6;
}

- (void)_configureContentSection:(id)section
{
  v22 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
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
  [sectionCopy appendItems:v11];
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