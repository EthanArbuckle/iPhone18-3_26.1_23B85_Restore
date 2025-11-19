@interface SURoundedCornersMaskProvider
- (CGPath)copyPathForMaskWithSize:(CGSize)a3;
@end

@implementation SURoundedCornersMaskProvider

- (CGPath)copyPathForMaskWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = MEMORY[0x1E69DC728];
  [(SURoundedCornersMaskProvider *)self cornerRadius];
  result = [objc_msgSend(v5 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, v6), "CGPath"}];
  if (result)
  {

    return CGPathRetain(result);
  }

  return result;
}

@end