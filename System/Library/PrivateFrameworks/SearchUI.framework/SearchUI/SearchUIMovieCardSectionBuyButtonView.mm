@interface SearchUIMovieCardSectionBuyButtonView
- (SearchUIMovieCardSectionBuyButtonView)initWithTitle:(id)a3 subtitle:(id)a4 punchout:(id)a5 cardSectionView:(id)a6;
- (SearchUIMovieCardSectionView)cardSectionView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)buttonPressed;
@end

@implementation SearchUIMovieCardSectionBuyButtonView

- (SearchUIMovieCardSectionBuyButtonView)initWithTitle:(id)a3 subtitle:(id)a4 punchout:(id)a5 cardSectionView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = SearchUIMovieCardSectionBuyButtonView;
  v14 = [(SearchUIMovieCardSectionBuyButtonView *)&v30 init];
  v15 = v14;
  if (v14)
  {
    [(SearchUIMovieCardSectionBuyButtonView *)v14 setPunchout:v12];
    [(SearchUIMovieCardSectionBuyButtonView *)v15 setCardSectionView:v13];
    [(TLKStackView *)v15 setAxis:1];
    v16 = objc_opt_new();
    v17 = [v16 layer];
    [v17 setAllowsGroupOpacity:0];

    [v16 setAdjustsFontSizeToFitWidth:1];
    [v16 addTarget:v15 action:sel_buttonPressed forControlEvents:64];
    LODWORD(v18) = 1148846080;
    [v16 setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1148846080;
    [v16 setContentCompressionResistancePriority:1 forAxis:v19];
    if (v10)
    {
      [v16 setTitle:v10];
    }

    else
    {
      [v16 setSymbolImageName:@"play.fill"];
    }

    [(TLKStackView *)v15 addArrangedSubview:v16];
    [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:v15 forView:4.5];
    [(NUIContainerStackView *)v15 setCustomSpacing:v16 afterView:?];
    [(SearchUIMovieCardSectionBuyButtonView *)v15 setButton:v16];
    v20 = +[(TLKLabel *)SearchUILabel];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __89__SearchUIMovieCardSectionBuyButtonView_initWithTitle_subtitle_punchout_cardSectionView___block_invoke;
    v27 = &unk_1E85B2540;
    v21 = v20;
    v28 = v21;
    v29 = v11;
    [v21 performBatchUpdates:&v24];
    if ([MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize])
    {
      [(TLKStackView *)v15 setAlignment:3];
      [(TLKStackView *)v15 setAxis:0];
      [v21 setTextAlignment:4];
      [(NUIContainerStackView *)v15 setCustomSpacing:v16 afterView:12.0];
      [v16 setMinimumLayoutSize:{100.0, 1.79769313e308}];
      LODWORD(v22) = 1148846080;
      [v16 setContentCompressionResistancePriority:0 forAxis:v22];
    }

    [(TLKStackView *)v15 addArrangedSubview:v21];
    [(SearchUIMovieCardSectionBuyButtonView *)v15 setSubtitleLabel:v21];
  }

  return v15;
}

void __89__SearchUIMovieCardSectionBuyButtonView_initWithTitle_subtitle_punchout_cardSectionView___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E69D9138] preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC30]];
  [*(a1 + 32) setFont:v3];
  [*(a1 + 32) setTextAlignment:1];
  [*(a1 + 32) setSfText:*(a1 + 40)];
  [*(a1 + 32) setNumberOfLines:2];
  [*(a1 + 32) setAdjustsFontSizeToFitWidth:1];
  LODWORD(v2) = 1144750080;
  [*(a1 + 32) setContentHuggingPriority:1 forAxis:v2];
}

- (void)buttonPressed
{
  v4 = [(SearchUIMovieCardSectionBuyButtonView *)self cardSectionView];
  v3 = [(SearchUIMovieCardSectionBuyButtonView *)self punchout];
  [v4 openPunchout:v3 triggerEvent:2];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SearchUIMovieCardSectionBuyButtonView;
  v5 = [(SearchUIMovieCardSectionBuyButtonView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = [(SearchUIMovieCardSectionBuyButtonView *)self button];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (SearchUIMovieCardSectionView)cardSectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionView);

  return WeakRetained;
}

@end