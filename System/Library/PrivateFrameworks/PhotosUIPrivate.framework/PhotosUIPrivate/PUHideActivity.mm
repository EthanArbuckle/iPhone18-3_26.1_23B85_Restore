@interface PUHideActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_systemImageName;
- (id)activityTitle;
- (void)setItemSourceController:(id)controller;
@end

@implementation PUHideActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  if ([itemSourceController isPreparingIndividualItems])
  {
    v5 = MEMORY[0x1E69C35E8];
    assets = [itemSourceController assets];
    LOBYTE(v5) = [v5 canPerformOnAllAssets:assets];

    if (v5)
    {
      v7 = MEMORY[0x1E69C35E8];
      assets2 = [itemSourceController assets];
      self->_hiding = [v7 toggledValueForAssets:assets2];

      v9 = 1;
    }

    else
    {
      v9 = 0;
      self->_hiding = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_systemImageName
{
  if (self->_hiding)
  {
    return @"eye.slash";
  }

  else
  {
    return @"eye";
  }
}

- (id)activityTitle
{
  if (self->_hiding)
  {
    return PULocalizedString(@"HIDE_MENU_ITEM_ITEM");
  }

  else
  {
    return PULocalizedString(@"UNHIDE_MENU_ITEM_ITEM");
  }
}

- (void)setItemSourceController:(id)controller
{
  v7.receiver = self;
  v7.super_class = PUHideActivity;
  [(PXActivity *)&v7 setItemSourceController:controller];
  itemSourceController = [(PXActivity *)self itemSourceController];
  v5 = MEMORY[0x1E69C35E8];
  assets = [itemSourceController assets];
  self->_hiding = [v5 toggledValueForAssets:assets];
}

@end