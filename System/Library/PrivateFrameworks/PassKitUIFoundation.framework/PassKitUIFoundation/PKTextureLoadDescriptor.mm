@interface PKTextureLoadDescriptor
- (id)createLoaderForCGImage:(CGImage *)image;
- (id)initForDevice:(id)device;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)space renderingIntent:(int)intent;
@end

@implementation PKTextureLoadDescriptor

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PKTextureLoadDescriptor;
  [(PKTextureLoadDescriptor *)&v3 dealloc];
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v10.receiver = self;
    v10.super_class = PKTextureLoadDescriptor;
    v6 = [(PKTextureLoadDescriptor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_device, device);
      v7->_premultiplyAlpha = 1;
      v7->_storageMode = 0;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)createLoaderForCGImage:(CGImage *)image
{
  if (!image)
  {
    return 0;
  }

  v5 = [PKTextureLoader alloc];
  storageMode = self->_storageMode;
  premultiplyAlpha = self->_premultiplyAlpha;
  device = self->_device;
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    renderingIntent = self->_renderingIntent;
  }

  else
  {
    renderingIntent = CGImageGetRenderingIntent(image);
  }

  return [(PKTextureLoader *)&v5->super.isa initForDevice:image image:storageMode withStorageMode:premultiplyAlpha premultiplyAlpha:colorSpace colorSpace:renderingIntent renderingIntent:?];
}

- (void)setColorSpace:(CGColorSpace *)space renderingIntent:(int)intent
{
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
  }

  self->_colorSpace = CGColorSpaceRetain(space);
  self->_renderingIntent = intent;
}

@end