@interface PKDashboardTextActionItemPresenter
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardTextActionItemPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
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

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a3 action];
  v6 = v5 != 0;

  return v6;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v11 = a3;
  v8 = a4;
  v9 = [v11 action];

  if (v9)
  {
    v10 = [v11 action];
    (v10)[2](v10, v8);
  }
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"ActionItemCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardTextActionItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  sampleCell = self->_sampleCell;
  v12 = a6;
  v13 = a4;
  -[PKDashboardTextCollectionViewCell setTextLayoutStyle:](sampleCell, "setTextLayoutStyle:", [v10 layoutStyle]);
  [(PKDashboardTextActionItemPresenter *)self _configureCell:self->_sampleCell forItem:v10 inCollectionView:v13 forIndexPath:v12];

  v14 = self->_sampleCell;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [(PKDashboardTextCollectionViewCell *)v14 sizeThatFits:a5 + v15 * -2.0, 1.79769313e308];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v23 = a3;
  v7 = a4;
  v8 = [v7 icon];
  [v23 setIconImage:v8];

  v9 = [v7 title];
  [v23 setTitle:v9];

  v10 = [v7 titleImage];
  [v23 setTitleImage:v10];

  v11 = [v7 titleFont];
  [v23 setTitleFont:v11];

  v12 = [v7 subtitle];
  [v23 setSubtitle:v12];

  v13 = [v7 subtitleImage];
  [v23 setSubtitleImage:v13];

  v14 = [v7 subtitleColor];
  [v23 setSubtitleColor:v14];

  v15 = [v7 subtitleFont];
  [v23 setSubtitleFont:v15];

  v16 = [v7 accessoryImage];
  [v23 setAccessoryImage:v16];

  v17 = [v7 accessoryColor];
  [v23 setAccessoryColor:v17];

  [v23 setTextLayoutStyle:{objc_msgSend(v7, "layoutStyle")}];
  v18 = [v7 titleColor];
  v19 = [v7 action];

  if (!v19)
  {
    if (!v18)
    {
      v22 = [MEMORY[0x1E69DC888] labelColor];
LABEL_11:
      v18 = v22;
    }

LABEL_12:
    v21 = 1;
    goto LABEL_13;
  }

  v20 = [v7 actionStyle];
  if (v20 == 1)
  {
    if (!v18)
    {
      v22 = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!v20 && !v18)
  {
    v18 = [MEMORY[0x1E69DC888] labelColor];
  }

  v21 = 0;
LABEL_13:
  [v23 setHideDisclosure:v21];
  [v23 setDisclosureAlignment:{objc_msgSend(v7, "disclosureAlignment")}];
  [v23 setTitleColor:v18];
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v15 = a3;
  v7 = a4;
  if (v15 && v7)
  {
    v8 = [v15 preferredContentSizeCategory];
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v8, v9))
    {
    }

    else
    {
      v10 = [v15 legibilityWeight];
      v11 = [v7 legibilityWeight];

      if (v10 == v11)
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