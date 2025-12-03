@interface SCRCRawImage
+ (id)rawImageForImage:(CGImage *)image;
- (void)dealloc;
@end

@implementation SCRCRawImage

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    free(data);
  }

  imageRef = self->_imageRef;
  if (imageRef)
  {
    CFRelease(imageRef);
    self->_imageRef = 0;
  }

  v5.receiver = self;
  v5.super_class = SCRCRawImage;
  [(SCRCRawImage *)&v5 dealloc];
}

+ (id)rawImageForImage:(CGImage *)image
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v6 = 0;
  if (Width)
  {
    v7 = Height;
    if (Height)
    {
      v8 = malloc_type_malloc(4 * Width * Height, 0xCFEEB1C1uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v10 = CGBitmapContextCreate(v8, Width, v7, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
      v6 = v10;
      if (v10)
      {
        v13.size.width = Width;
        v13.size.height = v7;
        v13.origin.x = 0.0;
        v13.origin.y = 0.0;
        CGContextDrawImage(v10, v13, image);
        CGContextRelease(v6);
        v6 = objc_alloc_init(SCRCRawImage);
        [(CGContext *)v6 setData:v8];
        [(CGContext *)v6 setWidth:Width];
        [(CGContext *)v6 setHeight:v7];
        [(CGContext *)v6 setBytesPerPixel:4];
        [(CGContext *)v6 setImageRef:image];
      }

      CGColorSpaceRelease(DeviceRGB);
    }
  }

  return v6;
}

@end