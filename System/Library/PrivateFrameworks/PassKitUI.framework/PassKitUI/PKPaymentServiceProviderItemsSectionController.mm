@interface PKPaymentServiceProviderItemsSectionController
- (PKPaymentServiceProviderItemsSectionController)initWithIdentifier:(id)identifier serviceProviderProductWithItems:(id)items currency:(id)currency delegate:(id)delegate;
- (PKPaymentServiceProviderItemsSectionController)initWithIdentifier:(id)identifier showOtherProviders:(BOOL)providers delegate:(id)delegate;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)deselectAllItems;
- (void)didSelectItem:(id)item;
- (void)hideLoadingIndicatorsAnimated:(BOOL)animated;
@end

@implementation PKPaymentServiceProviderItemsSectionController

- (PKPaymentServiceProviderItemsSectionController)initWithIdentifier:(id)identifier showOtherProviders:(BOOL)providers delegate:(id)delegate
{
  providersCopy = providers;
  identifierCopy = identifier;
  delegateCopy = delegate;
  if (providersCopy)
  {
    v10 = objc_alloc_init(PKPaymentSetupListItem);
    otherProvidersItem = self->_otherProvidersItem;
    self->_otherProvidersItem = v10;

    [(PKPaymentSetupListItem *)self->_otherProvidersItem setIdentifier:@"OtherProviders"];
    v12 = self->_otherProvidersItem;
    v13 = PKLocalizedPaymentString(&cfstr_OtherProviders_1.isa);
    [(PKPaymentSetupListItem *)v12 setTitle:v13];
  }

  v14 = [(PKPaymentServiceProviderItemsSectionController *)self initWithIdentifier:identifierCopy serviceProviderProductWithItems:0 currency:0 delegate:delegateCopy];

  return v14;
}

- (PKPaymentServiceProviderItemsSectionController)initWithIdentifier:(id)identifier serviceProviderProductWithItems:(id)items currency:(id)currency delegate:(id)delegate
{
  v22[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  itemsCopy = items;
  currencyCopy = currency;
  delegateCopy = delegate;
  v22[0] = identifierCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v21.receiver = self;
  v21.super_class = PKPaymentServiceProviderItemsSectionController;
  v15 = [(PKPaymentSetupListSectionController *)&v21 initWithIdentifiers:v14];

  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __119__PKPaymentServiceProviderItemsSectionController_initWithIdentifier_serviceProviderProductWithItems_currency_delegate___block_invoke;
    v19[3] = &unk_1E8023500;
    v20 = currencyCopy;
    v16 = [itemsCopy pk_arrayByApplyingBlock:v19];
    listItems = v15->_listItems;
    v15->_listItems = v16;
  }

  return v15;
}

PKServiceProviderListItem *__119__PKPaymentServiceProviderItemsSectionController_initWithIdentifier_serviceProviderProductWithItems_currency_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 item];
  v5 = objc_alloc_init(PKServiceProviderListItem);
  [(PKServiceProviderListItem *)v5 setItemPair:v3];

  v6 = [v4 localizedDisplayName];
  [(PKPaymentSetupListItem *)v5 setTitle:v6];

  v7 = objc_alloc(MEMORY[0x1E69B8780]);
  v8 = [v4 amount];
  v9 = [v7 initWithAmount:v8 currency:*(a1 + 32) exponent:0];

  v10 = [v4 localizedDescription];
  v11 = [v9 formattedStringValue];
  v12 = v10;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 length];

    if (v14)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v11, v13];

      v11 = v15;
    }
  }

  [(PKPaymentSetupListItem *)v5 setSubtitle:v11];

  return v5;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DC5D0];
  identifierCopy = identifier;
  v7 = objc_alloc_init(v5);
  v8 = [identifierCopy isEqualToString:@"OtherProvidersItem"];

  if (v8)
  {
    v11[0] = self->_otherProvidersItem;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 appendItems:v9];
  }

  else
  {
    [v7 appendItems:self->_listItems];
  }

  return v7;
}

- (void)didSelectItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_listItems;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          if (v10 == itemCopy || [*(*(&v16 + 1) + 8 * v9) selected])
          {
            [v10 setSelected:v10 == itemCopy];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained reloadItem:v10 animated:1];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    itemPair = [itemCopy itemPair];
    [v12 didSelectServiceProviderItem:itemPair];

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 deselectCells];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKPaymentSetupListItem *)self->_otherProvidersItem setLoadingIndicatorVisible:1];
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 reloadItem:self->_otherProvidersItem animated:1];

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 didSelectOtherProviders];
LABEL_15:
  }
}

- (void)deselectAllItems
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_listItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 selected])
        {
          [v8 setSelected:0];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained reloadItem:v8 animated:1];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = objc_loadWeakRetained(&self->_delegate);
  [v10 deselectCells];
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PKPaymentSetupListItem *)self->_otherProvidersItem loadingIndicatorVisible])
  {
    [(PKPaymentSetupListItem *)self->_otherProvidersItem setLoadingIndicatorVisible:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deselectCells];

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 reloadItem:self->_otherProvidersItem animated:animatedCopy];
  }
}

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = PKPaymentServiceProviderItemsSectionController;
  itemCopy = item;
  v9 = [(PKPaymentSetupListSectionController *)&v14 decoratePaymentSetListCell:cellCopy forItem:itemCopy style:1];
  identifier = [itemCopy identifier];

  LODWORD(itemCopy) = [identifier isEqualToString:@"OtherProviders"];
  if (itemCopy)
  {
    textProperties = [v9 textProperties];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    [textProperties setColor:linkColor];
  }

  [cellCopy setContentConfiguration:v9];

  return v9;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  identifierCopy = identifier;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  LODWORD(self) = [identifierCopy isEqualToString:@"OtherProvidersItem"];

  if (self)
  {
    [defaultListLayout setFooterMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];
  [v9 contentInsets];
  [v9 setContentInsets:16.0];

  return v9;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  registrationCopy = registration;
  footerConfiguration = [v5 footerConfiguration];
  [footerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
  v14[0] = *MEMORY[0x1E69DB648];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
  v15[0] = v8;
  v14[1] = *MEMORY[0x1E69DB650];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v15[1] = secondaryLabelColor;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v12 = PKLocalizedPaymentString(&cfstr_OtherProviders_2.isa);
  v13 = [v11 initWithString:v12 attributes:v10];
  [footerConfiguration setAttributedText:v13];

  [registrationCopy setContentConfiguration:footerConfiguration];
}

@end