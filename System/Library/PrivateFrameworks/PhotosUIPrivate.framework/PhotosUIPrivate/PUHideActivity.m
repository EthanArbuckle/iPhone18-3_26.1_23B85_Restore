@interface PUHideActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)_systemImageName;
- (id)activityTitle;
- (void)setItemSourceController:(id)a3;
@end

@implementation PUHideActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(PXActivity *)self itemSourceController];
  if ([v4 isPreparingIndividualItems])
  {
    v5 = MEMORY[0x1E69C35E8];
    v6 = [v4 assets];
    LOBYTE(v5) = [v5 canPerformOnAllAssets:v6];

    if (v5)
    {
      v7 = MEMORY[0x1E69C35E8];
      v8 = [v4 assets];
      self->_hiding = [v7 toggledValueForAssets:v8];

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

- (void)setItemSourceController:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUHideActivity;
  [(PXActivity *)&v7 setItemSourceController:a3];
  v4 = [(PXActivity *)self itemSourceController];
  v5 = MEMORY[0x1E69C35E8];
  v6 = [v4 assets];
  self->_hiding = [v5 toggledValueForAssets:v6];
}

@end