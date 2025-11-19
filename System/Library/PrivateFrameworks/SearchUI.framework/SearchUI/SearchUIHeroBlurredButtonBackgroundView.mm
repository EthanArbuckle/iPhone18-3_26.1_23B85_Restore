@interface SearchUIHeroBlurredButtonBackgroundView
- (SearchUIHeroBlurredButtonBackgroundView)init;
@end

@implementation SearchUIHeroBlurredButtonBackgroundView

- (SearchUIHeroBlurredButtonBackgroundView)init
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SearchUIHeroBlurredButtonBackgroundView;
  v2 = [(SearchUIHeroBlurredButtonBackgroundView *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x1E69DD290];
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.937254902 alpha:0.24];
    v5 = [v3 effectCompositingColor:v4];
    v11[0] = v5;
    v6 = [MEMORY[0x1E69DC730] effectWithBlurRadius:4.0];
    v11[1] = v6;
    v7 = [MEMORY[0x1E69DC898] colorEffectSaturate:1.2];
    v11[2] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    [(SearchUIHeroBlurredButtonBackgroundView *)v2 setBackgroundEffects:v8];
  }

  return v2;
}

@end