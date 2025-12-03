@interface PKPaymentSetupAppExtensionsSectionController
- (BOOL)updateWithRequirements:(unint64_t)requirements paymentSetupProductModel:(id)model;
- (PKPaymentSetupAppExtensionsSectionController)init;
- (PKPaymentSetupAppExtensionsSectionControllerDelegate)delegate;
- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (void)_updateItemIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
- (void)didSelectItem:(id)item;
- (void)hideLoadingIndicatorsAnimated:(BOOL)animated;
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

- (id)decoratePaymentSetListCell:(id)cell forItem:(id)item style:(unint64_t)style
{
  selfCopy = self;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupAppExtensionsSectionController;
  cellCopy = cell;
  v8 = [(PKPaymentSetupListSectionController *)&v11 decoratePaymentSetListCell:cellCopy forItem:item style:0];
  imageProperties = [v8 imageProperties];
  selfCopy += 9;
  [imageProperties setMaximumSize:{*selfCopy, selfCopy[1]}];
  [imageProperties setReservedLayoutSize:{*selfCopy, selfCopy[1]}];
  [imageProperties setCornerRadius:6.0];
  [cellCopy setContentConfiguration:v8];

  return v8;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  environmentCopy = environment;
  defaultListLayout = [(PKPaymentSetupListSectionController *)self defaultListLayout];
  [defaultListLayout setHeaderMode:1];
  v7 = [MEMORY[0x1E6995580] sectionWithListConfiguration:defaultListLayout layoutEnvironment:environmentCopy];

  [v7 contentInsets];
  [v7 setContentInsets:PKSetupViewConstantsListSectionInset(v8)];

  return v7;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DCC28];
  registrationCopy = registration;
  headerConfiguration = [v5 headerConfiguration];
  [headerConfiguration setAxesPreservingSuperviewLayoutMargins:0];
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

  [headerConfiguration setDirectionalLayoutMargins:{10.0, v14, 10.0, v14}];
  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v16 = PKLocalizedPaymentString(v11);
  v17 = [v15 initWithString:v16 attributes:v10];
  [headerConfiguration setAttributedText:v17];

  [registrationCopy setContentConfiguration:headerConfiguration];
}

- (void)didSelectItem:(id)item
{
  self->_didHideLoadingIndicators = 0;
  itemCopy = item;
  identifier = [itemCopy identifier];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  identifier2 = [itemCopy identifier];
  title = [itemCopy title];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __62__PKPaymentSetupAppExtensionsSectionController_didSelectItem___block_invoke;
  v13 = &unk_1E8012FD0;
  selfCopy = self;
  v9 = identifier;
  v15 = v9;
  LODWORD(identifier) = [WeakRetained didSelectAppExtensionWithIdentifier:identifier2 title:title completion:&v10];

  if (identifier && !self->_didHideLoadingIndicators)
  {
    [(PKPaymentSetupAppExtensionsSectionController *)self _updateItemIdentifier:v9 loadingIndicatorVisibility:1 animated:1, v10, v11, v12, v13, selfCopy];
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

- (void)_updateItemIdentifier:(id)identifier loadingIndicatorVisibility:(BOOL)visibility animated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)self->_keyedListItems objectForKey:?];
  v9 = v8;
  if (v8 && [v8 loadingIndicatorVisible] != visibilityCopy)
  {
    v10 = [v9 copy];
    [v10 setLoadingIndicatorVisible:visibilityCopy];
    [(NSMutableDictionary *)self->_keyedListItems setObject:v10 forKey:identifierCopy];
    items = [(PKPaymentSetupListSectionController *)self items];
    v12 = [items mutableCopy];

    v13 = [v12 indexOfObject:v9];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 replaceObjectAtIndex:v13 withObject:v10];
    }

    v14 = [v12 copy];
    [(PKPaymentSetupListSectionController *)self setItems:v14];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    identifiers = [(PKPaymentSetupListSectionController *)self identifiers];
    firstObject = [identifiers firstObject];
    [WeakRetained reloadRequiredForSectionIdentifier:firstObject animated:animatedCopy];
  }
}

- (void)hideLoadingIndicatorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  self->_didHideLoadingIndicators = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_keyedListItems allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        [(PKPaymentSetupAppExtensionsSectionController *)self _updateItemIdentifier:*(*(&v10 + 1) + 8 * v9++) loadingIndicatorVisibility:0 animated:animatedCopy];
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)updateWithRequirements:(unint64_t)requirements paymentSetupProductModel:(id)model
{
  requirementsCopy = requirements;
  v44 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  shouldDisplay = self->_shouldDisplay;
  if (shouldDisplay)
  {
    v8 = shouldDisplay == 1;
    goto LABEL_23;
  }

  if ((requirementsCopy & 0x40) == 0)
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
  v36 = modelCopy;
  obj = [modelCopy setupProductsOfType:6];
  v10 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v40;
  v13 = &OBJC_IVAR___PKAccountCardNumbersPresenter__pass;
  selfCopy = self;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v39 + 1) + 8 * i);
      productIdentifier = [v15 productIdentifier];
      v17 = v13[938];
      v18 = [*(&self->super.super.isa + v17) objectForKey:productIdentifier];
      if (v18)
      {
        v19 = v18;
LABEL_16:
        [v9 addObject:v19];

        goto LABEL_17;
      }

      selfCopy2 = self;
      v21 = v11;
      v22 = v12;
      v23 = v9;
      v24 = v13;
      v25 = [v15 thumbnailCachedImageForSize:0 completion:{selfCopy2->_iconSize.width, selfCopy2->_iconSize.height}];
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
      displayName = [v15 displayName];
      v19 = [(PKPaymentSetupListItem *)v29 initWithTitle:displayName subtitle:0 icon:v28];

      [(PKPaymentSetupListItem *)v19 setIdentifier:productIdentifier];
      [(PKPaymentSetupListItem *)v19 setDisplayChevron:1];
      [*(&selfCopy->super.super.isa + v17) setObject:v19 forKey:productIdentifier];

      v13 = v24;
      v9 = v23;
      v12 = v22;
      v11 = v21;
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_17:

      self = selfCopy;
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
    selfCopy4 = self;
    v33 = v9;
  }

  else
  {
    *(&self->super.super.isa + v35) = 2;
    v33 = MEMORY[0x1E695E0F0];
    selfCopy4 = self;
  }

  [(PKPaymentSetupListSectionController *)selfCopy4 setItems:v33, v35];

  modelCopy = v36;
LABEL_23:

  return v8;
}

- (PKPaymentSetupAppExtensionsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end