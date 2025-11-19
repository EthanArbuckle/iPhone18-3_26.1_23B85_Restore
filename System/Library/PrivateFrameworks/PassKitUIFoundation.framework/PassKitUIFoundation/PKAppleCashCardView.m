@interface PKAppleCashCardView
- (PKAppleCashCardView)initWithDiffuse:(CGImage *)a3 metalness:(CGImage *)a4 normal:(CGImage *)a5;
@end

@implementation PKAppleCashCardView

id *__56__PKAppleCashCardView_initWithDiffuse_metalness_normal___block_invoke(uint64_t *a1, void *a2)
{
  v3 = a2;
  [v3 setColorSpace:PKColorSpaceStandardRGB()];
  v4 = [[PKTexturedCardRenderer alloc] initWithStyle:v3 renderLoop:a1[4] diffuse:a1[5] metalness:a1[6] normal:?];

  return v4;
}

- (PKAppleCashCardView)initWithDiffuse:(CGImage *)a3 metalness:(CGImage *)a4 normal:(CGImage *)a5
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__PKAppleCashCardView_initWithDiffuse_metalness_normal___block_invoke;
  v6[3] = &__block_descriptor_56_e51___PKTexturedCardRenderer_16__0__PKMetalRenderLoop_8l;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return [(PKTexturedCardView *)&self->super.super.super.super.isa _initWithPixelFormat:v6 renderer:?];
}

@end