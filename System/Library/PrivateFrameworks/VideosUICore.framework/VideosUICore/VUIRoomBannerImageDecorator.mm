@interface VUIRoomBannerImageDecorator
- (id)decoratorIdentifier;
- (void)drawInContext:(id)context imageRect:(CGRect)rect;
@end

@implementation VUIRoomBannerImageDecorator

- (id)decoratorIdentifier
{
  v5.receiver = self;
  v5.super_class = VUIRoomBannerImageDecorator;
  decoratorIdentifier = [(VUIImageScaleDecorator *)&v5 decoratorIdentifier];
  v3 = [decoratorIdentifier stringByAppendingString:@"_ru"];

  return v3;
}

- (void)drawInContext:(id)context imageRect:(CGRect)rect
{
  height = rect.size.height;
  v15[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = contextCopy;
  if (height > 120.0)
  {
    CGContextTranslateCTM([contextCopy CGContext], 0.0, height);
    CGContextScaleCTM([v6 CGContext], 1.0, -1.0);
    blackColor = [MEMORY[0x277D75348] blackColor];
    v15[0] = [blackColor CGColor];
    clearColor = [MEMORY[0x277D75348] clearColor];
    v15[1] = [clearColor CGColor];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    v10 = CGGradientCreateWithColors(0, v9, 0);
    if (v10)
    {
      v11 = v10;
      v12 = *MEMORY[0x277CBF348];
      v13 = *(MEMORY[0x277CBF348] + 8);
      CGContextSetBlendMode([v6 CGContext], kCGBlendModeDestinationIn);
      cGContext = [v6 CGContext];
      v16.y = 120.0;
      v16.x = 0.0;
      v17.x = v12;
      v17.y = v13;
      CGContextDrawLinearGradient(cGContext, v11, v16, v17, 0);
      CGGradientRelease(v11);
    }
  }
}

@end