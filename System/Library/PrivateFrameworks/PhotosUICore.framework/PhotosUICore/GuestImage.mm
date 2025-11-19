@interface GuestImage
@end

@implementation GuestImage

void ___GuestImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] greenColor];
  v0 = _ImageWithSymbolName(@"7.circle", v2);
  v1 = _GuestImage__image;
  _GuestImage__image = v0;
}

@end