@interface PKPaymentSetupAppExtensionsSectionController
- (BOOL)updateWithRequirements:(unint64_t)a3 paymentSetupProductModel:(id)a4;
- (PKPaymentSetupAppExtensionsSectionController)init;
- (PKPaymentSetupAppExtensionsSectionControllerDelegate)delegate;
- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (void)_updateItemIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4 animated:(BOOL)a5;
- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5;
- (void)didSelectItem:(id)a3;
- (void)hideLoadingIndicatorsAnimated:(BOOL)a3;
@end

@implementation PKPaymentSetupAppExtensionsSectionController

- (PKPaymentSetupAppExtensionsSectionController)init
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupAppExtensionsSectionController;
  v2 = [(PKPaymentSetupListSectionController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keyedListItems = v2->_keyedListItems;
    v2->_keyedListItems = v3;

    v5 = _UISolariumFeatureFlagEnabled();
    v6 = 32.0;
    if (!v5)
    {
      v6 = 28.0;
    }

    v2->_iconSize.width = v6;
    v2->_iconSize.height = v6;
  }

  return v2;
}

- (id)decoratePaymentSetListCell:(id)a3 forItem:(id)a4 style:(unint64_t)a5
{
  v6 = self;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupAppExtensionsSectionController;
  v7 = a3;
  v8 = [(PKPaymentSetupListSectionController *)&v11 decoratePaymentSetListCell:v7 forItem:a4 style:0];
  v9 = [v8 imageProperties];
  v6 += 9;
  [v9 setMaximumSize:{*v6, v6[1]}];
  [v9 setReservedLayoutSize:{*v6, v6[1]}];
  [v9 setCornerRadius:6.0];
  [v7 setContentConfiguration:v8];

  return v8;
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = a3;
  v6 = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  [v6 setHeaderMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];

  [v7 contentInsets];
  [v7 setContentInsets:PKSetupViewConstantsListSectionInset(v8)];

  return v7;
}

- (void)configureSupplementaryRegistration:(id)a3 elementKind:(id)a4 sectionIdentifier:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  v6 = a3;
  v7 = [v5 headerConfiguration];
  [v7 setAxesPreservingSuperviewLayoutMargins:0];
  v18[0] = *MEMORY[0x1E69DB648];
  v8 = PKOBKListHeaderFont();
  v19[0] = v8;
  v18[1] = *MEMORY[0x1E69DB650];
  v9 = PKOBKListHeaderTextColor();
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v11 = PKDeviceSpecificLocalizedStringKeyForKey(@"PAYMENT_SETUP_APP_EXTENSION_HEADER", 0);
  v12 = PKSetupViewConstantsViewMargin();
  v13 = PKSetupListViewConstantsViewMargin();
  v14 = v12 - v13;
  if (v13 > v12)
  {
    v14 = 0.0;
  }

  [v7 setDirectionalLayoutMargins:{10.0, v14, 10.0, v14}];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = PKLocalizedPaymentString(v11);
  v17 = [v15 initWithString:v16 attributes:v10];
  [v7 setAttributedText:v17];

  [v6 setContentConfiguration:v7];
}

- (void)didSelectItem:(id)a3
{
  self->_didHideLoadingIndicators = 0;
  v4 = a3;
  v5 = [v4 identifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [v4 identifier];
  v8 = [v4 title];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__PKPaymentSetupAppExtensionsSectionController_didSelectItem___block_invoke;
  v13 = &unk_1E8012FD0;
  v14 = self;
  v9 = v5;
  v15 = v9;
  LODWORD(v5) = [WeakRetained didSelectAppExtensionWithIdentifier:v7 title:v8 completion:&v10];

  if (v5 && !self->_didHideLoadingIndicators)
  {
    [(PKPaymentSetupAppExtensionsSectionController *)self _updateItemIdentifier:v9 loadingIndicatorVisibility:1 animated:1, v10, v11, v12, v13, v14];
  }
}

uint64_t __62__PKPaymentSetupAppExtensionsSectionController_didSelectItem___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateItemIdentifier:*(result + 40) loadingIndicatorVisibility:0 animated:1];
  }

  return result;
}

- (void)_updateItemIdentifier:(id)a3 loadingIndicatorVisibility:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v18 = a3;
  v8 = [(NSMutableDictionary *)self->_keyedListItems objectForKey:?];
  v9 = v8;
  if (v8 && [v8 loadingIndicatorVisible] != v6)
  {
    v10 = [v9 copy];
    [v10 setLoadingIndicatorVisible:v6];
    [(NSMutableDictionary *)self->_keyedListItems setObject:v10 forKey:v18];
    v11 = [(PKPaymentSetupListSectionController *)self items];
    v12 = [v11 mutableCopy];

    v13 = [v12 indexOfObject:v9];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 replaceObjectAtIndex:v13 withObject:v10];
    }

    v14 = [v12 copy];
    [(PKPaymentSetupListSectionController *)self setItems:v14];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = [(PKPaymentSetupListSectionController *)self identifiers];
    v17 = [v16 firstObject];
    [WeakRetained reloadRequiredForSectionIdentifier:v17 animated:v5];
  }
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_didHideLoadingIndicators = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_keyedListItems allKeys];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKPaymentSetupAppExtensionsSectionController *)self _updateItemIdentifier:*(*(&v10 + 1) + 8 * v9++) loadingIndicatorVisibility:0 animated:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)updateWithRequirements:(unint64_t)a3 paymentSetupProductModel:(id)a4
{
  v4 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  shouldDisplay = self->_shouldDisplay;
  if (shouldDisplay)
  {
    v8 = shouldDisplay == 1;
    goto LABEL_23;
  }

  if ((v4 & 0x40) == 0)
  {
    [(PKPaymentSetupListSectionController *)self setItems:MEMORY[0x1E695E0F0]];
    v8 = 0;
    goto LABEL_23;
  }

  v35 = 88;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v36 = v6;
  obj = [v6 setupProductsOfType:6];
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v40;
  v13 = &OBJC_IVAR___PKAccountCardNumbersPresenter__pass;
  v38 = self;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      v16 = [v15 productIdentifier];
      v17 = v13[938];
      v18 = [*(&self->super.super.isa + v17) objectForKey:v16];
      if (v18)
      {
        v19 = v18;
LABEL_16:
        [v9 addObject:v19];

        goto LABEL_17;
      }

      v20 = self;
      v21 = v11;
      v22 = v12;
      v23 = v9;
      v24 = v13;
      v25 = [v15 thumbnailCachedImageForSize:0 completion:{v20->_iconSize.width, v20->_iconSize.height}];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = PKUIImageNamed(@"default_welcome_icon");
      }

      v28 = v27;

      v29 = [PKPaymentSetupAppExtensionsListItem alloc];
      v30 = [v15 displayName];
      v19 = [(PKPaymentSetupListItem *)v29 initWithTitle:v30 subtitle:0 icon:v28];

      [(PKPaymentSetupListItem *)v19 setIdentifier:v16];
      [(PKPaymentSetupListItem *)v19 setDisplayChevron:1];
      [*(&v38->super.super.isa + v17) setObject:v19 forKey:v16];

      v13 = v24;
      v9 = v23;
      v12 = v22;
      v11 = v21;
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_17:

      self = v38;
    }

    v11 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v11);
LABEL_19:

  v31 = [v9 count];
  v8 = v31 != 0;
  if (v31)
  {
    *(&self->super.super.isa + v35) = 1;
    v32 = self;
    v33 = v9;
  }

  else
  {
    *(&self->super.super.isa + v35) = 2;
    v33 = MEMORY[0x1E695E0F0];
    v32 = self;
  }

  [(PKPaymentSetupListSectionController *)v32 setItems:v33, v35];

  v6 = v36;
LABEL_23:

  return v8;
}

- (PKPaymentSetupAppExtensionsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end