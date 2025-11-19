@interface UniFakeImage
+ (id)imageWithCIImage:(id)a3 format:(unint64_t)a4;
- (UniFakeImage)initWithCIImage:(id)a3 format:(unint64_t)a4;
@end

@implementation UniFakeImage

- (UniFakeImage)initWithCIImage:(id)a3 format:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = UniFakeImage;
  v6 = [(UniImage *)&v10 initWithCIImage:a3];
  if (v6)
  {
    v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v5, a4);
    objc_msgSend_setFakeFormat_(v6, v8, v7);
  }

  return v6;
}

+ (id)imageWithCIImage:(id)a3 format:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithCIImage_format_(v6, v7, v5, a4);

  return v8;
}

@end