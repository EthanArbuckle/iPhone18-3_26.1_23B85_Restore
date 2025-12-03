@interface PBFEditingSceneViewController
- (CGRect)galleryPreviewFrame;
- (void)_configureInitialSceneSettings:(id)settings;
@end

@implementation PBFEditingSceneViewController

- (void)_configureInitialSceneSettings:(id)settings
{
  settingsCopy = settings;
  v17.receiver = self;
  v17.super_class = PBFEditingSceneViewController;
  [(PREditingSceneViewController *)&v17 _configureInitialSceneSettings:settingsCopy];
  v5 = +[PBFGenericDisplayContext mainScreen];
  [v5 pbf_frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = +[PBFGenericDisplayContext mainScreen];
  pbf_interfaceOrientation = [v14 pbf_interfaceOrientation];

  [MEMORY[0x277D02CF0] pr_defaultSalientContentRectForBounds:pbf_interfaceOrientation interfaceOrientation:{v7, v9, v11, v13}];
  [settingsCopy pui_setSalientContentRectangle:?];
  if (PUIDynamicRotationIsActive())
  {
    v16 = pbf_interfaceOrientation;
    pbf_interfaceOrientation = 1;
  }

  else if (PFCurrentDeviceClass() == 1)
  {
    v16 = pbf_interfaceOrientation;
  }

  else
  {
    v16 = 1;
  }

  [settingsCopy pui_setDeviceOrientation:v16];
  [settingsCopy setInterfaceOrientation:pbf_interfaceOrientation];
}

- (CGRect)galleryPreviewFrame
{
  x = self->_galleryPreviewFrame.origin.x;
  y = self->_galleryPreviewFrame.origin.y;
  width = self->_galleryPreviewFrame.size.width;
  height = self->_galleryPreviewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end