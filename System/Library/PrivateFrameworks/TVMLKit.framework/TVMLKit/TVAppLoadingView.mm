@interface TVAppLoadingView
@end

@implementation TVAppLoadingView

void __34___TVAppLoadingView_loadingScreen__block_invoke()
{
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v9 tv_launchImage];
  v1 = [v9 objectForInfoDictionaryKey:@"UITemplateLaunchImage"];
  v2 = [v1 BOOLValue];

  v3 = [_TVAppLoadingView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  if (v2)
  {
    v5 = v0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_TVAppLoadingView *)v3 initWithFrame:v5 templateImage:?];
  v7 = loadingScreen_loadingScreen;
  loadingScreen_loadingScreen = v6;

  v8 = loadingScreen_loadingScreen;
  *(loadingScreen_loadingScreen + 432) = 0x4024000000000000;
  *(v8 + 440) = 0;
}

uint64_t __54___TVAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54___TVAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_2;
  v3[3] = &unk_279D6E7F8;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:6 delay:v3 options:0 animations:0.6 completion:a2];
}

uint64_t __54___TVAppLoadingView_showOverKeyWindowWithSpinnerOnly___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) startAnimating];
  v2 = *(*(a1 + 32) + 464);

  return [v2 setAlpha:1.0];
}

uint64_t __25___TVAppLoadingView_hide__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[57])
  {
    [v2[57] _setTintOpacity:0.0];
    [*(*(a1 + 32) + 448) setAlpha:0.0];
    [*(*(a1 + 32) + 464) setAlpha:0.0];
    v2 = *(*(a1 + 32) + 408);
  }

  return [v2 setAlpha:0.0];
}

uint64_t __25___TVAppLoadingView_hide__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(*(a1 + 32) + 464) stopAnimating];
  *(*(a1 + 32) + 424) = 0;
  v2 = *(*(a1 + 32) + 416);

  return [v2 setHidden:1];
}

@end