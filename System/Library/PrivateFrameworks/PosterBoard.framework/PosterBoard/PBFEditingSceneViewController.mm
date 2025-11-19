@interface PBFEditingSceneViewController
- (CGRect)galleryPreviewFrame;
- (void)_configureInitialSceneSettings:(id)a3;
@end

@implementation PBFEditingSceneViewController

- (void)_configureInitialSceneSettings:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PBFEditingSceneViewController;
  [(PREditingSceneViewController *)&v17 _configureInitialSceneSettings:v4];
  v5 = +[PBFGenericDisplayContext mainScreen];
  [v5 pbf_frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = +[PBFGenericDisplayContext mainScreen];
  v15 = [v14 pbf_interfaceOrientation];

  [MEMORY[0x277D02CF0] pr_defaultSalientContentRectForBounds:v15 interfaceOrientation:{v7, v9, v11, v13}];
  [v4 pui_setSalientContentRectangle:?];
  if (PUIDynamicRotationIsActive())
  {
    v16 = v15;
    v15 = 1;
  }

  else if (PFCurrentDeviceClass() == 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  [v4 pui_setDeviceOrientation:v16];
  [v4 setInterfaceOrientation:v15];
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