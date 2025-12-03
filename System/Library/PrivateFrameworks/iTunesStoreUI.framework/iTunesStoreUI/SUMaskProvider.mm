@interface SUMaskProvider
- (id)copyMaskImageWithSize:(CGSize)size;
@end

@implementation SUMaskProvider

- (id)copyMaskImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = [(SUMaskProvider *)self copyPathForMaskWithSize:?];
  if (result)
  {
    v6 = result;
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v8 = v7;
    v11.width = width;
    v11.height = height;
    UIGraphicsBeginImageContextWithOptions(v11, 0, v8);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextAddPath(CurrentContext, v6);
    CGContextSetFillColorWithColor(CurrentContext, [objc_msgSend(MEMORY[0x1E69DC888] "blackColor")]);
    CGContextFillPath(CurrentContext);
    v10 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGPathRelease(v6);
    return v10;
  }

  return result;
}

@end