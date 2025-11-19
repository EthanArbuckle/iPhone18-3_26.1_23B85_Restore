@interface PXPhotosDetailsConfiguration
- (PXPhotosDetailsConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXPhotosDetailsConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setOptions:{-[PXPhotosDetailsConfiguration options](self, "options")}];
  [v4 setBarsControllerClass:{-[PXPhotosDetailsConfiguration barsControllerClass](self, "barsControllerClass")}];
  v5 = [(PXPhotosDetailsConfiguration *)self unlockDeviceHandlerWithActionType];
  [v4 setUnlockDeviceHandlerWithActionType:v5];

  v6 = [(PXPhotosDetailsConfiguration *)self unlockDeviceStatus];
  [v4 setUnlockDeviceStatus:v6];

  [v4 setScrollPocketsEnabled:{-[PXPhotosDetailsConfiguration scrollPocketsEnabled](self, "scrollPocketsEnabled")}];
  return v4;
}

- (PXPhotosDetailsConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsConfiguration;
  result = [(PXPhotosDetailsConfiguration *)&v3 init];
  if (result)
  {
    result->_scrollPocketsEnabled = 1;
  }

  return result;
}

@end