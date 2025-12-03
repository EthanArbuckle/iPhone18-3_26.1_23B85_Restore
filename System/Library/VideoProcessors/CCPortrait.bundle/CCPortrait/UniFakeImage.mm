@interface UniFakeImage
+ (id)imageWithCIImage:(id)image format:(unint64_t)format;
- (UniFakeImage)initWithCIImage:(id)image format:(unint64_t)format;
@end

@implementation UniFakeImage

- (UniFakeImage)initWithCIImage:(id)image format:(unint64_t)format
{
  v10.receiver = self;
  v10.super_class = UniFakeImage;
  v6 = [(UniImage *)&v10 initWithCIImage:image];
  if (v6)
  {
    v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v5, format);
    objc_msgSend_setFakeFormat_(v6, v8, v7);
  }

  return v6;
}

+ (id)imageWithCIImage:(id)image format:(unint64_t)format
{
  imageCopy = image;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithCIImage_format_(v6, v7, imageCopy, format);

  return v8;
}

@end