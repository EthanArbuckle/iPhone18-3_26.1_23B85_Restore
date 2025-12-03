@interface _UIKeyShortcutHUDToolbarCategoryCell
- (id)_defaultContentConfigurationWithCategory:(id)category;
- (void)configureForDisplayingInHUDWithCategory:(id)category;
- (void)configureForMetricsCalculationsWithCategory:(id)category;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation _UIKeyShortcutHUDToolbarCategoryCell

- (void)updateConfigurationUsingState:(id)state
{
  v11.receiver = self;
  v11.super_class = _UIKeyShortcutHUDToolbarCategoryCell;
  stateCopy = state;
  [(_UIKeyShortcutHUDToolbarCell *)&v11 updateConfigurationUsingState:stateCopy];
  v5 = [(UICollectionViewCell *)self contentConfiguration:v11.receiver];
  isCategoryVisible = [stateCopy isCategoryVisible];

  v7 = +[UIKeyShortcutHUDMetrics currentMetrics];
  v8 = v7;
  if (isCategoryVisible)
  {
    [v7 toolbarCategoryVisibleFont];
  }

  else
  {
    [v7 toolbarCategoryRegularFont];
  }
  v9 = ;
  textProperties = [v5 textProperties];
  [textProperties setFont:v9];

  [(UICollectionViewCell *)self setContentConfiguration:v5];
}

- (id)_defaultContentConfigurationWithCategory:(id)category
{
  categoryCopy = category;
  defaultContentConfiguration = [(_UIKeyShortcutHUDCell *)self defaultContentConfiguration];
  title = [categoryCopy title];

  [defaultContentConfiguration setText:title];

  return defaultContentConfiguration;
}

- (void)configureForMetricsCalculationsWithCategory:(id)category
{
  v4 = [(_UIKeyShortcutHUDToolbarCategoryCell *)self _defaultContentConfigurationWithCategory:category];
  [(UICollectionViewCell *)self setContentConfiguration:v4];
}

- (void)configureForDisplayingInHUDWithCategory:(id)category
{
  v5 = [(_UIKeyShortcutHUDToolbarCategoryCell *)self _defaultContentConfigurationWithCategory:category];
  textProperties = [v5 textProperties];
  [textProperties setAlignment:1];

  [(UICollectionViewCell *)self setContentConfiguration:v5];
}

@end