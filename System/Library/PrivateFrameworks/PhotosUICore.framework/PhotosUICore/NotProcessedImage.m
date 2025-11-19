@interface NotProcessedImage
@end

@implementation NotProcessedImage

void ___NotProcessedImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] grayColor];
  v0 = _ImageWithSymbolName(@"2.circle", v2);
  v1 = _NotProcessedImage__image;
  _NotProcessedImage__image = v0;
}

@end