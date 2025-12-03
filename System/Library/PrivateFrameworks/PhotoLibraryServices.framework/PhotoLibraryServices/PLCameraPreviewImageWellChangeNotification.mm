@interface PLCameraPreviewImageWellChangeNotification
+ (id)notification;
- (PLCameraPreviewImageWellChangeNotification)init;
- (UIImage)image;
- (id)_init;
@end

@implementation PLCameraPreviewImageWellChangeNotification

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    cameraPreviewWellImage = [MEMORY[0x1E69BF170] cameraPreviewWellImage];
    v5 = self->_image;
    self->_image = cameraPreviewWellImage;

    image = self->_image;
  }

  return image;
}

- (PLCameraPreviewImageWellChangeNotification)init
{
  v3.receiver = self;
  v3.super_class = PLCameraPreviewImageWellChangeNotification;
  return [(PLCameraPreviewImageWellChangeNotification *)&v3 init];
}

- (id)_init
{
  v3 = PLCameraPreviewWellAssetUUIDFromPersistedFile();
  uuid = self->_uuid;
  self->_uuid = v3;

  return self;
}

+ (id)notification
{
  _init = [[self alloc] _init];

  return _init;
}

@end