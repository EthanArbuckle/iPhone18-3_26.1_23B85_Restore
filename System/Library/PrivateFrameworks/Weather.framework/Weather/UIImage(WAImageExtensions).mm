@interface UIImage(WAImageExtensions)
- (id)WAImageLoaderPreCacheImage;
- (void)drawPDFInRect:()WAImageExtensions;
@end

@implementation UIImage(WAImageExtensions)

- (id)WAImageLoaderPreCacheImage
{
  [self size];
  v3 = v2;
  v5 = v4;
  [self scale];
  v7 = v6;
  v11.width = v3;
  v11.height = v5;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v7);
  [self drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

- (void)drawPDFInRect:()WAImageExtensions
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGContextBeginTransparencyLayerWithRect(CurrentContext, v17, 0);
  BoxRect = CGPDFPageGetBoxRect([self _CGPDFPage], kCGPDFMediaBox);
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v13 = a4 / BoxRect.size.width;
  BoxRect.origin.x = a2;
  BoxRect.origin.y = a3;
  BoxRect.size.width = a4;
  BoxRect.size.height = a5;
  MinX = CGRectGetMinX(BoxRect);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  MaxY = CGRectGetMaxY(v19);
  CGContextTranslateCTM(CurrentContext, MinX, MaxY);
  CGContextScaleCTM(CurrentContext, v13, -a5 / height);
  CGContextDrawPDFPage(CurrentContext, [self _CGPDFPage]);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = width;
  v20.size.height = height;
  UIRectFillUsingBlendMode(v20, kCGBlendModeSourceIn);
  CGContextEndTransparencyLayer(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

@end