@interface VignetteLayer
- (UIEdgeInsets)insets;
- (void)drawInContext:(CGContext *)context;
@end

@implementation VignetteLayer

- (void)drawInContext:(CGContext *)context
{
  [(VignetteLayer *)self setMasksToBounds:0];
  v32.receiver = self;
  v32.super_class = VignetteLayer;
  [(VignetteLayer *)&v32 drawInContext:context];
  [(VignetteLayer *)self insets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(VignetteLayer *)self bounds];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v17 = CGRectGetWidth(v34) - v8 - v12;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = CGRectGetHeight(v35) - v6 - v10;
  v19 = MEMORY[0x277D75208];
  [(VignetteLayer *)self cornerRadius];
  v21 = [v19 bezierPathWithRoundedRect:v8 cornerRadius:{v10, v17, v18, v20}];
  v33.width = width;
  v33.height = height;
  UIGraphicsBeginImageContext(v33);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextAddPath(CurrentContext, [v21 CGPath]);
  blackColor = [MEMORY[0x277D75348] blackColor];
  CGContextSetFillColorWithColor(CurrentContext, [blackColor CGColor]);

  CGContextFillPath(CurrentContext);
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  gaussianBlurFilter = [MEMORY[0x277CBF750] gaussianBlurFilter];
  v26 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v24, "CGImage")}];
  [gaussianBlurFilter setValue:v26 forKey:*MEMORY[0x277CBFAF0]];

  v27 = MEMORY[0x277CCABB0];
  [(VignetteLayer *)self blurRadius];
  v28 = [v27 numberWithDouble:?];
  [gaussianBlurFilter setValue:v28 forKey:*MEMORY[0x277CBFB08]];

  outputImage = [gaussianBlurFilter outputImage];
  v30 = objc_alloc_init(MEMORY[0x277CBF740]);
  [outputImage extent];
  v31 = [v30 createCGImage:outputImage fromRect:?];
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGContextDrawImage(context, v36, v31);
}

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end