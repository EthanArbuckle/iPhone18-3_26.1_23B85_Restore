@interface PKDashboardAuxiliaryPassInformationPresenter
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardAuxiliaryPassInformationPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardAuxiliaryPassInformationPresenter

- (PKDashboardAuxiliaryPassInformationPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardAuxiliaryPassInformationPresenter;
  v2 = [(PKDashboardAuxiliaryPassInformationPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKPassInformationDashboardCollectionViewCell alloc];
    v4 = [(PKPassInformationDashboardCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"AuxiliaryPassInformationItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  traitCopy = trait;
  toTraitCopy = toTrait;
  if (traitCopy && toTraitCopy)
  {
    preferredContentSizeCategory = [traitCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
    {
    }

    else
    {
      legibilityWeight = [traitCopy legibilityWeight];
      legibilityWeight2 = [toTraitCopy legibilityWeight];

      if (legibilityWeight == legibilityWeight2)
      {
        goto LABEL_7;
      }
    }

    v12 = [PKPassInformationDashboardCollectionViewCell alloc];
    v13 = [(PKPassInformationDashboardCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  item = [item item];
  mapsURL = [item mapsURL];
  if (mapsURL)
  {
    v7 = 1;
  }

  else
  {
    sections = [item sections];
    v7 = sections != 0;
  }

  return v7;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  itemCopy = item;
  v10 = [PKDashboardAuxiliaryPassInformationViewController alloc];
  item = [itemCopy item];
  pass = [itemCopy pass];

  v13 = [(PKDashboardAuxiliaryPassInformationViewController *)v10 initWithItem:item forPass:pass];
  [controllerCopy pushViewController:v13 animated:1];
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"AuxiliaryPassInformationItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardAuxiliaryPassInformationPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardAuxiliaryPassInformationPresenter *)self _configureCell:self->_sampleCell forItem:item inCollectionView:view forIndexPath:path];
  sampleCell = self->_sampleCell;

  [(PKPassInformationDashboardCollectionViewCell *)sampleCell sizeThatFits:width, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  item = [item item];
  title = [item title];
  [cellCopy setTitle:title];

  subtitle = [item subtitle];
  [cellCopy setSecondaryText:subtitle];

  subtitle2 = [item subtitle2];
  [cellCopy setTertiaryText:subtitle2];

  mapsURL = [item mapsURL];
  if (mapsURL)
  {
    [cellCopy setShowsDisclosureView:1];
  }

  else
  {
    sections = [item sections];
    [cellCopy setShowsDisclosureView:sections != 0];
  }
}

@end