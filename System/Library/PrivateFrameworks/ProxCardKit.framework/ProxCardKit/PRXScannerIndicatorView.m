@interface PRXScannerIndicatorView
- (PRXScannerIndicatorView)init;
- (id)innerHolePathForRatio:(double)a3 stroke:(double)a4;
- (void)animateBorderFrom:(id)a3 to:(id)a4 duration:(double)a5;
- (void)animateInitialIfNeeded;
- (void)animateToColors:(id)a3 duration:(double)a4;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)completed;
- (void)configure;
- (void)initial;
- (void)layoutSubviews;
- (void)updateBackgroundColors;
@end

@implementation PRXScannerIndicatorView

- (PRXScannerIndicatorView)init
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PRXScannerIndicatorView;
  v2 = [(PRXScannerIndicatorView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
    viewFinderTintLayer = v2->_viewFinderTintLayer;
    v2->_viewFinderTintLayer = v3;

    v5 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    viewFinderBorderLayer = v2->_viewFinderBorderLayer;
    v2->_viewFinderBorderLayer = v5;

    v7 = objc_alloc_init(MEMORY[0x277CD9F90]);
    borderLayerMask = v2->_borderLayerMask;
    v2->_borderLayerMask = v7;

    v9 = objc_alloc_init(MEMORY[0x277CD9F90]);
    initialWhiteTintLayer = v2->_initialWhiteTintLayer;
    v2->_initialWhiteTintLayer = v9;

    v15[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12 = [(PRXScannerIndicatorView *)v2 registerForTraitChanges:v11 withHandler:&__block_literal_global_0];

    [(PRXScannerIndicatorView *)v2 configure];
  }

  return v2;
}

- (void)layoutSubviews
{
  v39.receiver = self;
  v39.super_class = PRXScannerIndicatorView;
  [(PRXScannerIndicatorView *)&v39 layoutSubviews];
  [(PRXScannerIndicatorView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PRXScannerIndicatorView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v20 setFrame:{v13, v15, v17, v19}];

  [(PRXScannerIndicatorView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(PRXScannerIndicatorView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [v38 setFrame:{v31, v33, v35, v37}];

  [(PRXScannerIndicatorView *)self updateBackgroundColors];
  [(PRXScannerIndicatorView *)self animateInitialIfNeeded];
}

- (void)updateBackgroundColors
{
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [v3 CGColor];
  v5 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [v5 setFillColor:v4];

  v9 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = v9;
  v7 = [v9 CGColor];
  v8 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [v8 setFillColor:v7];
}

- (void)configure
{
  v3 = *MEMORY[0x277CDA698];
  v4 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v4 setType:v3];

  v5 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v5 setStartPoint:{0.5, 0.5}];

  v6 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  CGAffineTransformMakeRotation(&v19, 3.14159265);
  [v6 setAffineTransform:&v19];

  v7 = [(PRXScannerIndicatorView *)self borderLayerMask];
  LODWORD(v8) = 1060320051;
  [v7 setOpacity:v8];

  v9 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  LODWORD(v10) = 1062501089;
  [v9 setOpacity:v10];

  v11 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

  v13 = [(PRXScannerIndicatorView *)self layer];
  v14 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v13 insertSublayer:v14 atIndex:0];

  v15 = [(PRXScannerIndicatorView *)self layer];
  v16 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [v15 insertSublayer:v16 atIndex:0];

  v17 = [(PRXScannerIndicatorView *)self layer];
  v18 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [v17 insertSublayer:v18 atIndex:0];

  [(PRXScannerIndicatorView *)self initial];
}

- (void)initial
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v3 removeAllAnimations];

  v4 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  [objc_opt_class() strokeWidth];
  v6 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:v5];
  [v4 appendPath:v6];

  v7 = [v4 CGPath];
  v8 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [v8 setPath:v7];

  v9 = [MEMORY[0x277D75348] systemBlueColor];
  v10 = [v9 colorWithAlphaComponent:1.0];
  v14[0] = v10;
  v11 = [MEMORY[0x277D75348] systemBlueColor];
  v12 = [v11 colorWithAlphaComponent:1.0];
  v14[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  [(PRXScannerIndicatorView *)self animateToColors:v13 duration:0.0];
  [(PRXScannerIndicatorView *)self animateBorderFrom:0 to:v4 duration:0.0];
}

- (void)completed
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [v3 colorWithAlphaComponent:1.0];
  v13[0] = v4;
  v5 = [MEMORY[0x277D75348] systemGreenColor];
  v6 = [v5 colorWithAlphaComponent:1.0];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  [(PRXScannerIndicatorView *)self animateToColors:v7 duration:0.2];
  v8 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  [objc_opt_class() strokeWidth];
  v10 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:v9];
  [v8 appendPath:v10];

  v11 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  v12 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:19.0];
  [v11 appendPath:v12];

  [(PRXScannerIndicatorView *)self animateBorderFrom:v8 to:v11 duration:0.5];
  [(PRXScannerIndicatorView *)self setNeedsReset:1];
}

- (id)innerHolePathForRatio:(double)a3 stroke:(double)a4
{
  [(PRXScannerIndicatorView *)self bounds];
  v8 = a4 + v7 * a3;
  [(PRXScannerIndicatorView *)self bounds];
  v9 = CGRectGetMidX(v14) - v8 * 0.5;
  [(PRXScannerIndicatorView *)self bounds];
  v10 = CGRectGetMidY(v15) - v8 * 0.5;
  v11 = MEMORY[0x277D75208];

  return [v11 bezierPathWithRoundedRect:v9 cornerRadius:{v10, v8, v8, v8 * 0.5}];
}

- (void)animateToColors:(id)a3 duration:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        [v7 addObject:{objc_msgSend(v13, "CGColor", v19)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (a4 <= 0.0)
  {
    v14 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [v14 setColors:v7];
  }

  else
  {
    v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"colors"];
    v15 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    v16 = [v15 colors];
    [v14 setFromValue:v16];

    [v14 setToValue:v7];
    [v14 setDuration:a4];
    [v14 setRemovedOnCompletion:0];
    [v14 setDelegate:self];
    v17 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [v17 setColors:v7];

    v18 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [v18 addAnimation:v14 forKey:@"colors"];
  }
}

- (void)animateBorderFrom:(id)a3 to:(id)a4 duration:(double)a5
{
  v8 = MEMORY[0x277CD9E10];
  v9 = a4;
  v10 = a3;
  v15 = [v8 animationWithKeyPath:@"path"];
  v11 = [v10 CGPath];

  [v15 setFromValue:v11];
  v12 = [v9 CGPath];

  [v15 setToValue:v12];
  [v15 setDuration:a5];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v13];

  [v15 setFillMode:*MEMORY[0x277CDA230]];
  [v15 setRemovedOnCompletion:0];
  v14 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [v14 addAnimation:v15 forKey:@"path"];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v13 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v13;
  if (isKindOfClass)
  {
    v7 = v13;
    v8 = [v7 keyPath];
    v9 = [v8 isEqualToString:@"colors"];

    if (v9)
    {
      v10 = [v7 toValue];
      v11 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
      [v11 setColors:v10];

      if ([(PRXScannerIndicatorView *)self needsReset])
      {
        v12 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
        [v12 removeAllAnimations];
      }

      [(PRXScannerIndicatorView *)self setNeedsReset:0];
    }

    v6 = v13;
  }

  MEMORY[0x2821F96F8](isKindOfClass, v6);
}

- (void)animateInitialIfNeeded
{
  v3 = MEMORY[0x277D75208];
  [(PRXScannerIndicatorView *)self bounds];
  v4 = [v3 bezierPathWithRoundedRect:? cornerRadius:?];
  v5 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  [v4 appendPath:v5];

  v6 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.45 stroke:0.0];
  [objc_opt_class() strokeWidth];
  v8 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.45 stroke:v7];
  [v6 appendPath:v8];

  v9 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  [objc_opt_class() strokeWidth];
  v11 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:v10];
  [v9 appendPath:v11];

  v12 = [v4 CGPath];
  v13 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [v13 setPath:v12];

  v14 = [v6 CGPath];
  v15 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [v15 setPath:v14];

  v16 = [(PRXScannerIndicatorView *)self borderLayerMask];
  v17 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [v17 setMask:v16];

  v18 = MEMORY[0x277D75208];
  [(PRXScannerIndicatorView *)self bounds];
  v19 = [v18 bezierPathWithRoundedRect:? cornerRadius:?];
  v20 = [v19 CGPath];
  v21 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [v21 setPath:v20];

  v22 = *MEMORY[0x277CDA248];
  v23 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [v23 setFillRule:v22];

  v24 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [v24 setFillRule:v22];

  v25 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v25 setFromValue:&unk_2873817F8];
  [v25 setToValue:&unk_287381810];
  [v25 setDuration:0.6];
  v26 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v25 setTimingFunction:v26];

  [v25 setFillMode:*MEMORY[0x277CDA230]];
  [v25 setRemovedOnCompletion:0];
  v27 = dispatch_time(0, 200000000);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __49__PRXScannerIndicatorView_animateInitialIfNeeded__block_invoke;
  v32 = &unk_279ACC2B8;
  v33 = self;
  v34 = v25;
  v28 = v25;
  dispatch_after(v27, MEMORY[0x277D85CD0], &v29);
  [(PRXScannerIndicatorView *)self animateBorderFrom:v6 to:v9 duration:0.5, v29, v30, v31, v32, v33];
}

void __49__PRXScannerIndicatorView_animateInitialIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) initialWhiteTintLayer];
  [v2 addAnimation:*(a1 + 40) forKey:@"opacity"];
}

@end