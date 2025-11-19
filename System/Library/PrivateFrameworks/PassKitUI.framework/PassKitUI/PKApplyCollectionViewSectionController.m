@interface PKApplyCollectionViewSectionController
- (BOOL)_hasFooterContentForIdentifier:(id)a3;
- (BOOL)_hasHeaderContentForIdentifier:(id)a3;
- (BOOL)shouldHighlightItem:(id)a3;
- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4;
- (PKApplyCollectionViewSectionController)initWithController:(id)a3 applyPage:(id)a4;
- (id)cellRegistrationForItem:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)listLayoutConfigurationWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
@end

@implementation PKApplyCollectionViewSectionController

- (PKApplyCollectionViewSectionController)initWithController:(id)a3 applyPage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKApplyCollectionViewSectionController;
  v9 = [(PKPaymentSetupListSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_controller, a3);
    objc_storeStrong(&v10->_page, a4);
  }

  return v10;
}

- (id)listLayoutConfigurationWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  if ([(PKApplyCollectionViewSectionController *)self _hasHeaderContentForIdentifier:v5])
  {
    [v6 setHeaderMode:1];
  }

  if ([(PKApplyCollectionViewSectionController *)self _hasFooterContentForIdentifier:v5])
  {
    [v6 setFooterMode:1];
  }

  return v6;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = [v4 cellClass];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKApplyCollectionViewSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8022FA0;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
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

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKPaymentSetupListSectionController *)self identifiers];
  v9 = [v8 firstObject];
  v10 = v6;
  v11 = v9;
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
  v16 = [(PKApplyCollectionViewSectionController *)self listLayoutConfigurationWithLayoutEnvironment:v7 sectionIdentifier:v10];
  v17 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v16 layoutEnvironment:v7];

  [v17 contentInsets];
  if (v15)
  {
    v13 = -15.0;
  }

  v18 = PKSetupListViewConstantsViewMargin();
  [v17 setContentInsets:{v14, v18, v13, v18}];

  return v17;
}

- (Class)supplementaryRegistrationClassForKind:(id)a3 sectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:v7];
  v9 = [(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:v7];
  if (*MEMORY[0x1E69DDC08] != v6 || v8 == 0)
  {
    if (*MEMORY[0x1E69DDC00] != v6 || v9 == 0)
    {
      objc_opt_class();
    }

    else
    {
      [(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:v7];
    }
    v12 = ;
  }

  else
  {
    v12 = [(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:v7];
  }

  v13 = v12;

  return v13;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v10 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:v9];
    if ([(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:v9])
    {
      [(PKApplyCollectionViewSectionController *)self configureHeaderView:v25 forSectionIdentifier:v9];
      goto LABEL_21;
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
    [v11 setAttributedText:v10];
    v12 = [(PKPaymentSetupListSectionController *)self identifiers];
    v13 = [v12 firstObject];
    v14 = v9;
    v15 = v13;
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

    v22 = v11;
    v21 = v19;
LABEL_20:
    [v22 setDirectionalLayoutMargins:{v18, v19, v20, v21}];
    [v25 setContentConfiguration:v11];

    goto LABEL_21;
  }

  if (*MEMORY[0x1E69DDC00] != v8)
  {
    goto LABEL_22;
  }

  v10 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:v9];
  if (![(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:v9])
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = [MEMORY[0x1E69DCC28] plainFooterConfiguration];
    [v11 setAttributedText:v10];
    v18 = 10.0;
    v19 = 0.0;
    v20 = 10.0;
    v21 = 0.0;
    v22 = v11;
    goto LABEL_20;
  }

  [(PKApplyCollectionViewSectionController *)self configureFooterView:v25 forSectionIdentifier:v9];
LABEL_21:

LABEL_22:
}

- (void)didSelectItem:(id)a3
{
  v8 = a3;
  v4 = [v8 conformsToProtocol:&unk_1F3D1E238];
  v5 = v8;
  if (v4)
  {
    v6 = v8;
    if (objc_opt_respondsToSelector())
    {
      [v6 handleCellSelection];
      v7 = [(PKApplyCollectionViewSectionController *)self dynamicCollectionDelegate];
      [v7 deselectCells];
    }

    v5 = v8;
  }
}

- (BOOL)shouldHighlightItem:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F3D1E238])
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 shouldHighlightItem];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasHeaderContentForIdentifier:(id)a3
{
  v4 = a3;
  if ([(PKApplyCollectionViewSectionController *)self headerViewClassForSectionIdentifier:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaymentSetupListSectionController *)self headerAttributedStringForIdentifier:v4];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)_hasFooterContentForIdentifier:(id)a3
{
  v4 = a3;
  if ([(PKApplyCollectionViewSectionController *)self footerViewClassForSectionIdentifier:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKPaymentSetupListSectionController *)self footerAttributedStringForIdentifier:v4];
    v5 = v6 != 0;
  }

  return v5;
}

@end