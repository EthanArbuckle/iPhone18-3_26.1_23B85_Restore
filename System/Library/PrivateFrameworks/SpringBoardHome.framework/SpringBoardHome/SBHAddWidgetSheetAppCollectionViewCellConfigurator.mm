@interface SBHAddWidgetSheetAppCollectionViewCellConfigurator
- (SBHAddWidgetSheetAppCollectionViewCellConfigurator)initWithIconImageInfo:(SBIconImageInfo *)info;
- (void)_hydrateCellImage:(void *)image forApplicationWidgetCollection:;
- (void)_hydrateCellTitle:(void *)title forApplicationWidgetCollection:;
- (void)configureCell:(id)cell withApplicationWidgetCollection:(id)collection;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCellConfigurator

- (SBHAddWidgetSheetAppCollectionViewCellConfigurator)initWithIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v16.receiver = self;
  v16.super_class = SBHAddWidgetSheetAppCollectionViewCellConfigurator;
  v11 = [(SBHAddWidgetSheetAppCollectionViewCellConfigurator *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_iconImageInfo.size.width = v10;
    v11->_iconImageInfo.size.height = v9;
    v11->_iconImageInfo.scale = v8;
    v11->_iconImageInfo.continuousCornerRadius = v7;
    v13 = +[SBHIconImageAppearance defaultAppearance];
    iconImageAppearance = v12->_iconImageAppearance;
    v12->_iconImageAppearance = v13;
  }

  return v12;
}

- (void)configureCell:(id)cell withApplicationWidgetCollection:(id)collection
{
  collectionCopy = collection;
  cellCopy = cell;
  [(SBHAddWidgetSheetAppCollectionViewCellConfigurator *)self _hydrateCellTitle:cellCopy forApplicationWidgetCollection:collectionCopy];
  [(SBHAddWidgetSheetAppCollectionViewCellConfigurator *)self _hydrateCellImage:cellCopy forApplicationWidgetCollection:collectionCopy];
}

- (void)_hydrateCellTitle:(void *)title forApplicationWidgetCollection:
{
  titleCopy = title;
  if (self)
  {
    v5 = a2;
    icon = [titleCopy icon];
    v7 = icon;
    if (!icon)
    {
      icon = titleCopy;
    }

    displayName = [icon displayName];
    [v5 setAddWidgetSheetAppCollectionViewCellTitle:displayName];
  }
}

- (void)_hydrateCellImage:(void *)image forApplicationWidgetCollection:
{
  v13 = a2;
  if (self)
  {
    imageCopy = image;
    iconImageAppearance = [self iconImageAppearance];
    v7 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:iconImageAppearance];
    icon = [imageCopy icon];
    iconImageApplicationBundleIdentifier = [imageCopy iconImageApplicationBundleIdentifier];

    v11 = OUTLINED_FUNCTION_0_6();
    if (iconImageApplicationBundleIdentifier)
    {
      [v10 iconLayerViewForApplicationWithBundleIdentifier:v11 iconImageInfo:? traitCollection:? options:? priority:?];
    }

    else
    {
      [v10 iconLayerViewWithInfo:v7 traitCollection:17 options:v11];
    }
    v12 = ;
    if (v12)
    {
      [v13 setAddWidgetSheetAppCollectionViewCellIconImageView:v12];
    }
  }
}

@end