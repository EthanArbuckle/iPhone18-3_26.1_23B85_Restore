@interface PKTextureLoadDescriptor
- (id)createLoaderForCGImage:(CGImage *)a3;
- (id)initForDevice:(id)a3;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)a3 renderingIntent:(int)a4;
@end

@implementation PKTextureLoadDescriptor

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PKTextureLoadDescriptor;
  [(PKTextureLoadDescriptor *)&v3 dealloc];
}

- (id)initForDevice:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKTextureLoadDescriptor;
    v6 = [(PKTextureLoadDescriptor *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_device, a3);
      v7->_premultiplyAlpha = 1;
      v7->_storageMode = 0;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createLoaderForCGImage:(CGImage *)a3
{
  if (!a3)
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
    renderingIntent = CGImageGetRenderingIntent(a3);
  }

  return [(PKTextureLoader *)&v5->super.isa initForDevice:a3 image:storageMode withStorageMode:premultiplyAlpha premultiplyAlpha:colorSpace colorSpace:renderingIntent renderingIntent:?];
}

- (void)setColorSpace:(CGColorSpace *)a3 renderingIntent:(int)a4
{
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
  }

  self->_colorSpace = CGColorSpaceRetain(a3);
  self->_renderingIntent = a4;
}

@end