@interface TVLoadingImageView
@end

@implementation TVLoadingImageView

void __37___TVLoadingImageView__fadeInFadeOut__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.4];
}

void __37___TVLoadingImageView__fadeInFadeOut__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37___TVLoadingImageView__fadeInFadeOut__block_invoke_3;
  v5[3] = &unk_279D6E890;
  objc_copyWeak(&v6, (a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37___TVLoadingImageView__fadeInFadeOut__block_invoke_4;
  v3[3] = &unk_279D6FB50;
  objc_copyWeak(&v4, (a1 + 32));
  [v2 animateWithDuration:0 delay:v5 options:v3 animations:0.6 completion:0.0];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
}

void __37___TVLoadingImageView__fadeInFadeOut__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.0];
}

void __37___TVLoadingImageView__fadeInFadeOut__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeInFadeOut];
}

@end