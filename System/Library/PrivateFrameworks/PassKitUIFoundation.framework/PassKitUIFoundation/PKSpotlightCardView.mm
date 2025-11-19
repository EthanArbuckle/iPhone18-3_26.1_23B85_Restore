@interface PKSpotlightCardView
- (PKSpotlightCardView)initWithDiffuse:(CGImage *)a3 contentInsets:(PKEdgeInsets)a4 averageColor:(CGColor *)a5;
@end

@implementation PKSpotlightCardView

id *__66__PKSpotlightCardView_initWithDiffuse_contentInsets_averageColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setColorSpace:PKColorSpaceStandardRGB()];
  v4 = [PKTexturedCardRenderer alloc];
  if (*(a1 + 72))
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  v6 = [(PKTexturedCardRenderer *)&v4->super.isa initWithStyle:v5 renderLoop:v3 diffuse:*(a1 + 32) insets:*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)];

  return v6;
}

- (PKSpotlightCardView)initWithDiffuse:(CGImage *)a3 contentInsets:(PKEdgeInsets)a4 averageColor:(CGColor *)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (a5)
  {
    PKColorGetRelativeLuminance();
    v11 = v12 > 0.8;
  }

  else
  {
    v11 = 1;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__PKSpotlightCardView_initWithDiffuse_contentInsets_averageColor___block_invoke;
  v16[3] = &__block_descriptor_73_e51___PKTexturedCardRenderer_16__0__PKMetalRenderLoop_8l;
  v17 = v11;
  v16[4] = a3;
  *&v16[5] = top;
  *&v16[6] = left;
  *&v16[7] = bottom;
  *&v16[8] = right;
  v13 = [(PKTexturedCardView *)&self->super.super.super.super.isa _initWithPixelFormat:v16 renderer:?];
  v14 = v13;
  if (v13)
  {
    v13[28].i8[0] = 1;
    [(PKTexturedCardView *)v13 _setDeviceAttitude:?];
    v14[28].i8[3] = v11;
  }

  return v14;
}

@end