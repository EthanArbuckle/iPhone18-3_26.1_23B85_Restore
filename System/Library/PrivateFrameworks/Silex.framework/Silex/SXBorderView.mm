@interface SXBorderView
- (SXBorderView)init;
- (void)drawRect:(CGRect)rect;
@end

@implementation SXBorderView

- (SXBorderView)init
{
  v5.receiver = self;
  v5.super_class = SXBorderView;
  v2 = [(SXBorderView *)&v5 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SXBorderView *)v2 setBackgroundColor:clearColor];

    [(SXBorderView *)v2 setOpaque:0];
    [(SXBorderView *)v2 setUserInteractionEnabled:0];
  }

  return v2;
}

- (void)drawRect:(CGRect)rect
{
  v22.receiver = self;
  v22.super_class = SXBorderView;
  [(SXBorderView *)&v22 drawRect:?];
  CurrentContext = UIGraphicsGetCurrentContext();
  backgroundColor = [(SXBorderView *)self backgroundColor];
  CGContextSetFillColorWithColor(CurrentContext, [backgroundColor CGColor]);

  v23.origin.x = OUTLINED_FUNCTION_0_0();
  CGContextFillRect(v6, v23);
  CGContextSaveGState(CurrentContext);
  v24.origin.x = OUTLINED_FUNCTION_0_0();
  MinX = CGRectGetMinX(v24);
  v25.origin.x = OUTLINED_FUNCTION_0_0();
  MaxY = CGRectGetMaxY(v25);
  CGContextTranslateCTM(CurrentContext, MinX, MaxY);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = v10;

  CGAffineTransformMakeScale(&v21, v11, v11);
  v26.origin.x = OUTLINED_FUNCTION_0_0();
  v27 = CGRectApplyAffineTransform(v26, v12);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (self)
  {
    image = self->_image;
  }

  else
  {
    image = 0;
  }

  cGImage = [(UIImage *)image CGImage];
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v19 = CGImageCreateWithImageInRect(cGImage, v28);
  v29.origin.x = OUTLINED_FUNCTION_0_0();
  v20 = CGRectGetWidth(v29);
  v30.origin.x = OUTLINED_FUNCTION_0_0();
  v31.size.height = CGRectGetHeight(v30);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v20;
  CGContextDrawImage(CurrentContext, v31, v19);
  CGImageRelease(v19);
  CGContextRestoreGState(CurrentContext);
}

@end