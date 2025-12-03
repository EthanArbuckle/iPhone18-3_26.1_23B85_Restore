@interface PKDashboardTextActionItemPresenter
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardTextActionItemPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardTextActionItemPresenter

- (PKDashboardTextActionItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardTextActionItemPresenter;
  v2 = [(PKDashboardTextActionItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardTextCollectionViewCell alloc];
    v4 = [(PKDashboardTextCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"ActionItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  action = [item action];
  v6 = action != 0;

  return v6;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  viewCopy = view;
  action = [itemCopy action];

  if (action)
  {
    action2 = [itemCopy action];
    (action2)[2](action2, viewCopy);
  }
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"ActionItemCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardTextActionItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  sampleCell = self->_sampleCell;
  pathCopy = path;
  viewCopy = view;
  -[PKDashboardTextCollectionViewCell setTextLayoutStyle:](sampleCell, "setTextLayoutStyle:", [itemCopy layoutStyle]);
  [(PKDashboardTextActionItemPresenter *)self _configureCell:self->_sampleCell forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  v14 = self->_sampleCell;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [(PKDashboardTextCollectionViewCell *)v14 sizeThatFits:width + v15 * -2.0, 1.79769313e308];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  icon = [itemCopy icon];
  [cellCopy setIconImage:icon];

  title = [itemCopy title];
  [cellCopy setTitle:title];

  titleImage = [itemCopy titleImage];
  [cellCopy setTitleImage:titleImage];

  titleFont = [itemCopy titleFont];
  [cellCopy setTitleFont:titleFont];

  subtitle = [itemCopy subtitle];
  [cellCopy setSubtitle:subtitle];

  subtitleImage = [itemCopy subtitleImage];
  [cellCopy setSubtitleImage:subtitleImage];

  subtitleColor = [itemCopy subtitleColor];
  [cellCopy setSubtitleColor:subtitleColor];

  subtitleFont = [itemCopy subtitleFont];
  [cellCopy setSubtitleFont:subtitleFont];

  accessoryImage = [itemCopy accessoryImage];
  [cellCopy setAccessoryImage:accessoryImage];

  accessoryColor = [itemCopy accessoryColor];
  [cellCopy setAccessoryColor:accessoryColor];

  [cellCopy setTextLayoutStyle:{objc_msgSend(itemCopy, "layoutStyle")}];
  titleColor = [itemCopy titleColor];
  action = [itemCopy action];

  if (!action)
  {
    if (!titleColor)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
LABEL_11:
      titleColor = labelColor;
    }

LABEL_12:
    v21 = 1;
    goto LABEL_13;
  }

  actionStyle = [itemCopy actionStyle];
  if (actionStyle == 1)
  {
    if (!titleColor)
    {
      labelColor = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!actionStyle && !titleColor)
  {
    titleColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v21 = 0;
LABEL_13:
  [cellCopy setHideDisclosure:v21];
  [cellCopy setDisclosureAlignment:{objc_msgSend(itemCopy, "disclosureAlignment")}];
  [cellCopy setTitleColor:titleColor];
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

    v12 = [PKDashboardTextCollectionViewCell alloc];
    v13 = [(PKDashboardTextCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

@end