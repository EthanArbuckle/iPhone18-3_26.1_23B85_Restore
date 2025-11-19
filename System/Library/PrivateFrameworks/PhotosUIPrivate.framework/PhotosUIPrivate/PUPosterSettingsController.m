@interface PUPosterSettingsController
- (CGSize)preferredContentSize;
- (PUPosterSettingsController)initWithRootSettings:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PUPosterSettingsController

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPosterSettingsController;
  [(PUPosterSettingsController *)&v4 viewDidDisappear:a3];
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

- (PUPosterSettingsController)initWithRootSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPosterSettingsController;
  v6 = [(PUPosterSettingsController *)&v9 initWithRootSettings:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterSettings, a3);
  }

  return v7;
}

@end