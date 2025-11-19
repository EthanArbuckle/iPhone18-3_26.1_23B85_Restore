@interface SUReflectionView
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation SUReflectionView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUReflectionView;
  [(SUReflectionView *)&v3 dealloc];
}

- (void)setImage:(id)a3
{
  image = self->_image;
  if (image != a3)
  {

    self->_image = a3;
  }
}

- (void)drawRect:(CGRect)a3
{
  v23 = *MEMORY[0x1E69E9840];
  [(UIImage *)self->_image size:a3.origin.x];
  [(SUReflectionView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, 0.0, v11);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  if (!drawRect____ReflectionGradient)
  {
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0x3FC999999999999AuLL;
    v22 = xmmword_1C2339E50;
    drawRect____ReflectionGradient = [objc_alloc(MEMORY[0x1E69DCA70]) initVerticalWithValues:&v18];
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{vcvtd_n_u64_f64(v11, 2uLL)}];
  v15 = CGBitmapContextCreate([v14 mutableBytes], 1uLL, v11, 8uLL, 4uLL, DeviceRGB, 1u);
  if (v15)
  {
    [drawRect____ReflectionGradient fillRect:v15 inContext:{0.0, 0.0, 1.0, v11}];
    Image = CGBitmapContextCreateImage(v15);
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    CGContextClipToMask(CurrentContext, v24, Image);
  }

  else
  {
    Image = 0;
  }

  v17 = self->_image;
  [(SUReflectionView *)self bounds:v18];
  [UIImage drawInRect:v17 blendMode:"drawInRect:blendMode:alpha:" alpha:0];
  CGContextRestoreGState(CurrentContext);
  if (Image)
  {
    CGImageRelease(Image);
  }

  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  if (v15)
  {
    CGContextRelease(v15);
  }
}

@end