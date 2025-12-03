@interface PUPosterSettingsController
- (CGSize)preferredContentSize;
- (PUPosterSettingsController)initWithRootSettings:(id)settings;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PUPosterSettingsController

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PUPosterSettingsController;
  [(PUPosterSettingsController *)&v4 viewDidDisappear:disappear];
  [(PXSettings *)self->_posterSettings save];
}

- (CGSize)preferredContentSize
{
  v2 = 520.0;
  v3 = 600.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUPosterSettingsController)initWithRootSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = PUPosterSettingsController;
  v6 = [(PUPosterSettingsController *)&v9 initWithRootSettings:settingsCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterSettings, settings);
  }

  return v7;
}

@end