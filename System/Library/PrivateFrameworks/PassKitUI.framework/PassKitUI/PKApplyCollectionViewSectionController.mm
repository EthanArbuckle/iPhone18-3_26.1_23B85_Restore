@interface PKApplyCollectionViewSectionController
- (BOOL)_hasFooterContentForIdentifier:(id)identifier;
- (BOOL)_hasHeaderContentForIdentifier:(id)identifier;
- (BOOL)shouldHighlightItem:(id)item;
- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier;
- (PKApplyCollectionViewSectionController)initWithController:(id)controller applyPage:(id)page;
- (id)cellRegistrationForItem:(id)item;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
@end

@implementation PKApplyCollectionViewSectionController

- (PKApplyCollectionViewSectionController)initWithController:(id)controller applyPage:(id)page
{
  controllerCopy = controller;
  pageCopy = page;
  v12.receiver = self;
  v12.super_class = PKApplyCollectionViewSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, controller);
    objc_storeStrong(&v10->_page, page);
  }

  return v10;
}

- (id)listLayoutConfigurationWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  if ([(PKApplyCollectionViewSectionController *)self _hasHeaderContentForIdentifier:identifierCopy])
  {
    [defaultListLayout setHeaderMode:1];
  }

  if ([(PKApplyCollectionViewSectionController *)self _hasFooterContentForIdentifier:identifierCopy])
  {
    [defaultListLayout setFooterMode:1];
  }

  return defaultListLayout;
}

- (id)cellRegistrationForItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  cellClass = [itemCopy cellClass];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKApplyCollectionViewSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8022FA0;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:cellClass configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __66__PKApplyCollectionViewSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureCellForRegistration:v7 item:v6];
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  environmentCopy = environment;
  identifiers = [(PKPaymentSetupListSectionController *)self identifiers];
  firstObject = [identifiers firstObject];
  v10 = identifierCopy;
  v11 = firstObject;
  v12 = v11;
  v13 = 0.0;
  v14 = 0.0;
  if (v11 != v10)
  {
    v14 = 15.0;
    if (v10)
    {
      if (v11)
      {
        if ([v10 isEqualToString:v11])
        {
          v14 = 0.0;
        }

        else
        {
          v14 = 15.0;
        }
      }
    }
  }

  v15 = [(PKApplyCollectionViewSectionController *)self _hasFooterContentForIdentifier:v10];
  v16 = [(PKApplyCollectionViewSectionController *)self listLayoutConfigurationWithLayoutEnvironment:environmentCopy sectionIdentifier:v10];
  v17 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v16 layoutEnvironment:environmentCopy];

  [v17 contentInsets];
  if (v15)
  {
    v13 = -15.0;
  }

  v18 = PKSetupListViewConstantsViewMargin();
  [v17 setContentInsets:{v14, v18, v13, v18}];

  return v17;
}

- (Class)supplementaryRegistrationClassForKind:(id)kind sectionIdentifier:(id)identifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  v8 = [(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:identifierCopy];
  v9 = [(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:identifierCopy];
  if (*MEMORY[0x1E69DDC08] != kindCopy || v8 == 0)
  {
    if (*MEMORY[0x1E69DDC00] != kindCopy || v9 == 0)
    {
      objc_opt_class();
    }

    else
    {
      [(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:identifierCopy];
    }
    v12 = ;
  }

  else
  {
    v12 = [(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:identifierCopy];
  }

  v13 = v12;

  return v13;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  kindCopy = kind;
  identifierCopy = identifier;
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v10 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:identifierCopy];
    if ([(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:identifierCopy])
    {
      [(PKApplyCollectionViewSectionController *)self configureHeaderView:registrationCopy forSectionIdentifier:identifierCopy];
      goto LABEL_21;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    plainHeaderConfiguration = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
    [plainHeaderConfiguration setAttributedText:v10];
    identifiers = [(PKPaymentSetupListSectionController *)self identifiers];
    firstObject = [identifiers firstObject];
    v14 = identifierCopy;
    v15 = firstObject;
    v16 = v15;
    if (v15 == v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = 0;
      if (v14 && v15)
      {
        v17 = [v14 isEqualToString:v15];
      }
    }

    v23 = PKSetupViewConstantsViewMargin();
    v24 = PKSetupListViewConstantsViewMargin();
    v19 = v23 - v24;
    v20 = 0.0;
    if (v24 > v23)
    {
      v19 = 0.0;
    }

    v18 = 30.0;
    if (v17)
    {
      v18 = 10.0;
      v20 = 10.0;
    }

    v22 = plainHeaderConfiguration;
    v21 = v19;
LABEL_20:
    [v22 setDirectionalLayoutMargins:{v18, v19, v20, v21}];
    [registrationCopy setContentConfiguration:plainHeaderConfiguration];

    goto LABEL_21;
  }

  if (*MEMORY[0x1E69DDC00] != kindCopy)
  {
    goto LABEL_22;
  }

  v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:identifierCopy];
  if (![(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:identifierCopy])
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    plainHeaderConfiguration = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
    [plainHeaderConfiguration setAttributedText:v10];
    v18 = 10.0;
    v19 = 0.0;
    v20 = 10.0;
    v21 = 0.0;
    v22 = plainHeaderConfiguration;
    goto LABEL_20;
  }

  [(PKApplyCollectionViewSectionController *)self configureFooterView:registrationCopy forSectionIdentifier:identifierCopy];
LABEL_21:

LABEL_22:
}

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy conformsToProtocol:&unk_1F3D1E238];
  v5 = itemCopy;
  if (v4)
  {
    v6 = itemCopy;
    if (objc_opt_respondsToSelector())
    {
      [v6 handleCellSelection];
      dynamicCollectionDelegate = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
      [dynamicCollectionDelegate deselectCells];
    }

    v5 = itemCopy;
  }
}

- (BOOL)shouldHighlightItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_1F3D1E238])
  {
    v4 = itemCopy;
    if (objc_opt_respondsToSelector())
    {
      shouldHighlightItem = [v4 shouldHighlightItem];
    }

    else
    {
      shouldHighlightItem = 0;
    }
  }

  else
  {
    shouldHighlightItem = 0;
  }

  return shouldHighlightItem;
}

- (BOOL)_hasHeaderContentForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:identifierCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:identifierCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)_hasFooterContentForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:identifierCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:identifierCopy];
    v5 = v6 != 0;
  }

  return v5;
}

@end