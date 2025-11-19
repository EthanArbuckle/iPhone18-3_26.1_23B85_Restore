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
    v4 = [MEMORY[0x1E69BF170] cameraPreviewWellImage];
    v5 = self->_image;
    self->_image = v4;

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
  v2 = [[a1 alloc] _init];

  return v2;
}

@end