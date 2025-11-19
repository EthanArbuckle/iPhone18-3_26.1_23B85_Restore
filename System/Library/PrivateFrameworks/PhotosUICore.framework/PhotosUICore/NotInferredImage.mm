@interface NotInferredImage
@end

@implementation NotInferredImage

void ___NotInferredImage_block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] grayColor];
  v0 = _ImageWithSymbolName(@"4.circle", v2);
  v1 = _NotInferredImage__image;
  _NotInferredImage__image = v0;
}

@end