@interface UnknownImage
@end

@implementation UnknownImage

void ___UnknownImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] redColor];
  v0 = _ImageWithSymbolName(@"questionmark.circle", v2);
  v1 = _UnknownImage__image;
  _UnknownImage__image = v0;
}

@end