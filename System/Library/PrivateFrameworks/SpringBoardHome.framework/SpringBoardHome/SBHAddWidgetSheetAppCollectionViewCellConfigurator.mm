@interface SBHAddWidgetSheetAppCollectionViewCellConfigurator
- (SBHAddWidgetSheetAppCollectionViewCellConfigurator)initWithIconImageInfo:(SBIconImageInfo *)a3;
- (void)_hydrateCellImage:(void *)a3 forApplicationWidgetCollection:;
- (void)_hydrateCellTitle:(void *)a3 forApplicationWidgetCollection:;
- (void)configureCell:(id)a3 withApplicationWidgetCollection:(id)a4;
@end

@implementation SBHAddWidgetSheetAppCollectionViewCellConfigurator

- (SBHAddWidgetSheetAppCollectionViewCellConfigurator)initWithIconImageInfo:(SBIconImageInfo *)a3
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

- (void)configureCell:(id)a3 withApplicationWidgetCollection:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBHAddWidgetSheetAppCollectionViewCellConfigurator *)self _hydrateCellTitle:v7 forApplicationWidgetCollection:v6];
  [(SBHAddWidgetSheetAppCollectionViewCellConfigurator *)self _hydrateCellImage:v7 forApplicationWidgetCollection:v6];
}

- (void)_hydrateCellTitle:(void *)a3 forApplicationWidgetCollection:
{
  v9 = a3;
  if (a1)
  {
    v5 = a2;
    v6 = [v9 icon];
    v7 = v6;
    if (!v6)
    {
      v6 = v9;
    }

    v8 = [v6 displayName];
    [v5 setAddWidgetSheetAppCollectionViewCellTitle:v8];
  }
}

- (void)_hydrateCellImage:(void *)a3 forApplicationWidgetCollection:
{
  v13 = a2;
  if (a1)
  {
    v5 = a3;
    v6 = [a1 iconImageAppearance];
    v7 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v6];
    v8 = [v5 icon];
    v9 = [v5 iconImageApplicationBundleIdentifier];

    v11 = OUTLINED_FUNCTION_0_6();
    if (v9)
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