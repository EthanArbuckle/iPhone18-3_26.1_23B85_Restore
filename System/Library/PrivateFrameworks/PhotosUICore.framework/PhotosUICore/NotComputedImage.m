@interface NotComputedImage
@end

@implementation NotComputedImage

void ___NotComputedImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] grayColor];
  v0 = _ImageWithSymbolName(@"3.circle", v2);
  v1 = _NotComputedImage__image;
  _NotComputedImage__image = v0;
}

@end