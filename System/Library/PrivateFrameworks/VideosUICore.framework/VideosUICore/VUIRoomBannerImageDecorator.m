@interface VUIRoomBannerImageDecorator
- (id)decoratorIdentifier;
- (void)drawInContext:(id)a3 imageRect:(CGRect)a4;
@end

@implementation VUIRoomBannerImageDecorator

- (id)decoratorIdentifier
{
  v5.receiver = self;
  v5.super_class = VUIRoomBannerImageDecorator;
  v2 = [(VUIImageScaleDecorator *)&v5 decoratorIdentifier];
  v3 = [v2 stringByAppendingString:@"_ru"];

  return v3;
}

- (void)drawInContext:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (height > 120.0)
  {
    CGContextTranslateCTM([v5 CGContext], 0.0, height);
    CGContextScaleCTM([v6 CGContext], 1.0, -1.0);
    v7 = [MEMORY[0x277D75348] blackColor];
    v15[0] = [v7 CGColor];
    v8 = [MEMORY[0x277D75348] clearColor];
    v15[1] = [v8 CGColor];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    v10 = CGGradientCreateWithColors(0, v9, 0);
    if (v10)
    {
      v11 = v10;
      v12 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
      CGContextSetBlendMode([v6 CGContext], kCGBlendModeDestinationIn);
      v14 = [v6 CGContext];
      v16.y = 120.0;
      v16.x = 0.0;
      v17.x = v12;
      v17.y = v13;
      CGContextDrawLinearGradient(v14, v11, v16, v17, 0);
      CGGradientRelease(v11);
    }
  }
}

@end