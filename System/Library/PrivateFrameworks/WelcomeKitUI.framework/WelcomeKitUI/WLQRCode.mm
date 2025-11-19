@interface WLQRCode
- (WLQRCode)initWithName:(id)a3 title:(id)a4 URL:(id)a5 code:(id)a6 scale:(double)a7;
- (id)createQRCodeImage:(double)a3;
@end

@implementation WLQRCode

- (WLQRCode)initWithName:(id)a3 title:(id)a4 URL:(id)a5 code:(id)a6 scale:(double)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = WLQRCode;
  v16 = [(WLQRCode *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(WLQRCode *)v16 setName:v12];
    [(WLQRCode *)v17 setTitle:v13];
    [(WLQRCode *)v17 setUrl:v14];
    [(WLQRCode *)v17 setCode:v15];
    v17->_scale = a7;
  }

  return v17;
}

- (id)createQRCodeImage:(double)a3
{
  v5 = [(NSString *)self->_url dataUsingEncoding:4];
  v6 = [MEMORY[0x277CBF750] filterWithName:@"CIQRCodeGenerator"];
  [v6 setValue:v5 forKey:@"inputMessage"];
  [v6 setValue:@"H" forKey:@"inputCorrectionLevel"];
  v7 = [v6 outputImage];
  [v7 extent];
  v9 = self->_scale * (a3 / v8);
  [v7 extent];
  CGAffineTransformMakeScale(&v14, v9, self->_scale * (a3 / v10));
  v11 = [v7 imageByApplyingTransform:&v14];

  v12 = [MEMORY[0x277D755B8] imageWithCIImage:v11 scale:0 orientation:self->_scale];

  return v12;
}

@end