@interface WLQRCode
- (WLQRCode)initWithName:(id)name title:(id)title URL:(id)l code:(id)code scale:(double)scale;
- (id)createQRCodeImage:(double)image;
@end

@implementation WLQRCode

- (WLQRCode)initWithName:(id)name title:(id)title URL:(id)l code:(id)code scale:(double)scale
{
  nameCopy = name;
  titleCopy = title;
  lCopy = l;
  codeCopy = code;
  v19.receiver = self;
  v19.super_class = WLQRCode;
  v16 = [(WLQRCode *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(WLQRCode *)v16 setName:nameCopy];
    [(WLQRCode *)v17 setTitle:titleCopy];
    [(WLQRCode *)v17 setUrl:lCopy];
    [(WLQRCode *)v17 setCode:codeCopy];
    v17->_scale = scale;
  }

  return v17;
}

- (id)createQRCodeImage:(double)image
{
  v5 = [(NSString *)self->_url dataUsingEncoding:4];
  v6 = [MEMORY[0x277CBF750] filterWithName:@"CIQRCodeGenerator"];
  [v6 setValue:v5 forKey:@"inputMessage"];
  [v6 setValue:@"H" forKey:@"inputCorrectionLevel"];
  outputImage = [v6 outputImage];
  [outputImage extent];
  v9 = self->_scale * (image / v8);
  [outputImage extent];
  CGAffineTransformMakeScale(&v14, v9, self->_scale * (image / v10));
  v11 = [outputImage imageByApplyingTransform:&v14];

  v12 = [MEMORY[0x277D755B8] imageWithCIImage:v11 scale:0 orientation:self->_scale];

  return v12;
}

@end