@interface _UIKeyShortcutHUDCategoryHeaderCell
- (_UIKeyShortcutHUDMenu)categoryMenu;
- (id)defaultContentConfiguration;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)configureWithCategory:(id)category;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIKeyShortcutHUDCategoryHeaderCell

- (void)configureWithCategory:(id)category
{
  categoryCopy = category;
  [(_UIKeyShortcutHUDCategoryHeaderCell *)self setCategoryMenu:categoryCopy];
  defaultContentConfiguration = [(_UIKeyShortcutHUDCategoryHeaderCell *)self defaultContentConfiguration];
  title = [categoryCopy title];

  [defaultContentConfiguration setText:title];
  [(UICollectionViewCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (id)defaultContentConfiguration
{
  v21.receiver = self;
  v21.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  defaultContentConfiguration = [(_UIKeyShortcutHUDCell *)&v21 defaultContentConfiguration];
  v3 = +[UIKeyShortcutHUDMetrics currentMetrics];
  categoryHeaderFont = [v3 categoryHeaderFont];
  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setFont:categoryHeaderFont];

  [defaultContentConfiguration directionalLayoutMargins];
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

  [defaultContentConfiguration setDirectionalLayoutMargins:{v16, v9, v19, v13}];

  return defaultContentConfiguration;
}

- (void)updateConfigurationUsingState:(id)state
{
  v5.receiver = self;
  v5.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  [(_UIKeyShortcutHUDMenuCell *)&v5 updateConfigurationUsingState:state];
  v4 = +[UIBackgroundConfiguration clearConfiguration];
  [(UICollectionViewCell *)self setBackgroundConfiguration:v4];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = _UIKeyShortcutHUDCategoryHeaderCell;
  v4 = [(UICollectionReusableView *)&v12 preferredLayoutAttributesFittingAttributes:attributes];
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