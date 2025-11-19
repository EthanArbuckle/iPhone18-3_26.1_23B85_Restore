@interface TVBlurredImageWithOptionsAndOverlayColorForImage
@end

@implementation TVBlurredImageWithOptionsAndOverlayColorForImage

void ___TVBlurredImageWithOptionsAndOverlayColorForImage_block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBF740];
  v5 = *MEMORY[0x277CBF948];
  v1 = [MEMORY[0x277CBEB68] null];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [v0 contextWithOptions:v2];
  v4 = _TVBlurredImageWithOptionsAndOverlayColorForImage___ciContext;
  _TVBlurredImageWithOptionsAndOverlayColorForImage___ciContext = v3;
}

@end