@interface TVCollectionWrappingView
@end

@implementation TVCollectionWrappingView

uint64_t __50___TVCollectionWrappingView_reevaluateFooterFrame__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 anchorPoint];
  v9 = v4;
  v10 = v3;

  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  v5 = *(a1 + 32);
  v6.f64[0] = v10;
  v6.f64[1] = v9;
  v7 = vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmlaq_f64(*(a1 + 40), v6, *(a1 + 56)))));

  return [v5 setCenter:*&v7];
}

uint64_t __50___TVCollectionWrappingView_reevaluateHeaderFrame__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 anchorPoint];
  v9 = v4;
  v10 = v3;

  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 56), *(a1 + 64)}];
  v5 = *(a1 + 32);
  v6.f64[0] = v10;
  v6.f64[1] = v9;
  v7 = vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmlaq_f64(*(a1 + 40), v6, *(a1 + 56)))));

  return [v5 setCenter:*&v7];
}

uint64_t __49___TVCollectionWrappingView__updateGradientLayer__block_invoke(uint64_t a1, id a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [a2 CGColor];

  return [v3 addObject:v5];
}

@end