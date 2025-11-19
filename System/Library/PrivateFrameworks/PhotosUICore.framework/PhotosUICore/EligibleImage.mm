@interface EligibleImage
@end

@implementation EligibleImage

void ___EligibleImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] systemTealColor];
  v0 = _ImageWithSymbolName(@"6.circle", v2);
  v1 = _EligibleImage__image;
  _EligibleImage__image = v0;
}

@end