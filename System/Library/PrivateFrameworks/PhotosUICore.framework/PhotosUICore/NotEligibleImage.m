@interface NotEligibleImage
@end

@implementation NotEligibleImage

void ___NotEligibleImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] redColor];
  v0 = _ImageWithSymbolName(@"5.circle", v2);
  v1 = _NotEligibleImage__image;
  _NotEligibleImage__image = v0;
}

@end