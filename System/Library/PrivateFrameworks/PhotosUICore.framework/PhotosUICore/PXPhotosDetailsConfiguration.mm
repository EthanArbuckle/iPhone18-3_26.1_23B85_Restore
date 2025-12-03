@interface PXPhotosDetailsConfiguration
- (PXPhotosDetailsConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXPhotosDetailsConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setOptions:{-[PXPhotosDetailsConfiguration options](self, "options")}];
  [v4 setBarsControllerClass:{-[PXPhotosDetailsConfiguration barsControllerClass](self, "barsControllerClass")}];
  unlockDeviceHandlerWithActionType = [(PXPhotosDetailsConfiguration *)self unlockDeviceHandlerWithActionType];
  [v4 setUnlockDeviceHandlerWithActionType:unlockDeviceHandlerWithActionType];

  unlockDeviceStatus = [(PXPhotosDetailsConfiguration *)self unlockDeviceStatus];
  [v4 setUnlockDeviceStatus:unlockDeviceStatus];

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