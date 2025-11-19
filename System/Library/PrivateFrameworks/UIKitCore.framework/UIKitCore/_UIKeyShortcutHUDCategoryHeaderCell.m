@interface _UIKeyShortcutHUDCategoryHeaderCell
- (_UIKeyShortcutHUDMenu)categoryMenu;
- (id)defaultContentConfiguration;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)configureWithCategory:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation _UIKeyShortcutHUDCategoryHeaderCell

- (void)configureWithCategory:(id)a3
{
  v4 = a3;
  [(_UIKeyShortcutHUDCategoryHeaderCell *)self setCategoryMenu:v4];
  v6 = [(_UIKeyShortcutHUDCategoryHeaderCell *)self defaultContentConfiguration];
  v5 = [v4 title];

  [v6 setText:v5];
  [(UICollectionViewCell *)self setContentConfiguration:v6];
}

- (id)defaultContentConfiguration
{
  v21.receiver = self;
  v21.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  v2 = [(_UIKeyShortcutHUDCell *)&v21 defaultContentConfiguration];
  v3 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v4 = [v3 categoryHeaderFont];
  v5 = [v2 textProperties];
  [v5 setFont:v4];

  [v2 directionalLayoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v14 categoryHeaderVerticalTextAdjustment];
  v16 = v7 + v15;

  v17 = +[UIKeyShortcutHUDMetrics currentMetrics];
  [v17 categoryHeaderVerticalTextAdjustment];
  v19 = v11 - v18;

  [v2 setDirectionalLayoutMargins:{v16, v9, v19, v13}];

  return v2;
}

- (void)updateConfigurationUsingState:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  [(_UIKeyShortcutHUDMenuCell *)&v5 updateConfigurationUsingState:a3];
  v4 = +[UIBackgroundConfiguration clearConfiguration];
  [(UICollectionViewCell *)self setBackgroundConfiguration:v4];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v12.receiver = self;
  v12.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  v4 = [(UICollectionReusableView *)&v12 preferredLayoutAttributesFittingAttributes:a3];
  [v4 size];
  v6 = v5;
  v7 = +[UIKeyShortcutHUDMetrics currentMetrics];
  WeakRetained = objc_loadWeakRetained(&self->_categoryMenu);
  [v7 headerWidthForCategory:WeakRetained];
  v10 = v9;

  [v4 setSize:{v10, v6}];

  return v4;
}

- (_UIKeyShortcutHUDMenu)categoryMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryMenu);

  return WeakRetained;
}

@end