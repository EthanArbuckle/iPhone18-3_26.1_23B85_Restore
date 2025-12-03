@interface PRXScannerIndicatorView
- (PRXScannerIndicatorView)init;
- (id)innerHolePathForRatio:(double)ratio stroke:(double)stroke;
- (void)animateBorderFrom:(id)from to:(id)to duration:(double)duration;
- (void)animateInitialIfNeeded;
- (void)animateToColors:(id)colors duration:(double)duration;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
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
  viewFinderTintLayer = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [viewFinderTintLayer setFrame:{v4, v6, v8, v10}];

  [(PRXScannerIndicatorView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [viewFinderBorderLayer setFrame:{v13, v15, v17, v19}];

  [(PRXScannerIndicatorView *)self bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  initialWhiteTintLayer = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [initialWhiteTintLayer setFrame:{v22, v24, v26, v28}];

  [(PRXScannerIndicatorView *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  borderLayerMask = [(PRXScannerIndicatorView *)self borderLayerMask];
  [borderLayerMask setFrame:{v31, v33, v35, v37}];

  [(PRXScannerIndicatorView *)self updateBackgroundColors];
  [(PRXScannerIndicatorView *)self animateInitialIfNeeded];
}

- (void)updateBackgroundColors
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  cGColor = [systemBackgroundColor CGColor];
  viewFinderTintLayer = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [viewFinderTintLayer setFillColor:cGColor];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = systemBackgroundColor2;
  cGColor2 = [systemBackgroundColor2 CGColor];
  initialWhiteTintLayer = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [initialWhiteTintLayer setFillColor:cGColor2];
}

- (void)configure
{
  v3 = *MEMORY[0x277CDA698];
  viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [viewFinderBorderLayer setType:v3];

  viewFinderBorderLayer2 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [viewFinderBorderLayer2 setStartPoint:{0.5, 0.5}];

  viewFinderBorderLayer3 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  CGAffineTransformMakeRotation(&v19, 3.14159265);
  [viewFinderBorderLayer3 setAffineTransform:&v19];

  borderLayerMask = [(PRXScannerIndicatorView *)self borderLayerMask];
  LODWORD(v8) = 1060320051;
  [borderLayerMask setOpacity:v8];

  viewFinderTintLayer = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  LODWORD(v10) = 1062501089;
  [viewFinderTintLayer setOpacity:v10];

  initialWhiteTintLayer = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  LODWORD(v12) = 1.0;
  [initialWhiteTintLayer setOpacity:v12];

  layer = [(PRXScannerIndicatorView *)self layer];
  viewFinderBorderLayer4 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [layer insertSublayer:viewFinderBorderLayer4 atIndex:0];

  layer2 = [(PRXScannerIndicatorView *)self layer];
  initialWhiteTintLayer2 = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [layer2 insertSublayer:initialWhiteTintLayer2 atIndex:0];

  layer3 = [(PRXScannerIndicatorView *)self layer];
  viewFinderTintLayer2 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [layer3 insertSublayer:viewFinderTintLayer2 atIndex:0];

  [(PRXScannerIndicatorView *)self initial];
}

- (void)initial
{
  v14[2] = *MEMORY[0x277D85DE8];
  viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [viewFinderBorderLayer removeAllAnimations];

  v4 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:0.0];
  [objc_opt_class() strokeWidth];
  v6 = [(PRXScannerIndicatorView *)self innerHolePathForRatio:0.6 stroke:v5];
  [v4 appendPath:v6];

  cGPath = [v4 CGPath];
  borderLayerMask = [(PRXScannerIndicatorView *)self borderLayerMask];
  [borderLayerMask setPath:cGPath];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v10 = [systemBlueColor colorWithAlphaComponent:1.0];
  v14[0] = v10;
  systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
  v12 = [systemBlueColor2 colorWithAlphaComponent:1.0];
  v14[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  [(PRXScannerIndicatorView *)self animateToColors:v13 duration:0.0];
  [(PRXScannerIndicatorView *)self animateBorderFrom:0 to:v4 duration:0.0];
}

- (void)completed
{
  v13[2] = *MEMORY[0x277D85DE8];
  systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
  v4 = [systemGreenColor colorWithAlphaComponent:1.0];
  v13[0] = v4;
  systemGreenColor2 = [MEMORY[0x277D75348] systemGreenColor];
  v6 = [systemGreenColor2 colorWithAlphaComponent:1.0];
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

- (id)innerHolePathForRatio:(double)ratio stroke:(double)stroke
{
  [(PRXScannerIndicatorView *)self bounds];
  v8 = stroke + v7 * ratio;
  [(PRXScannerIndicatorView *)self bounds];
  v9 = CGRectGetMidX(v14) - v8 * 0.5;
  [(PRXScannerIndicatorView *)self bounds];
  v10 = CGRectGetMidY(v15) - v8 * 0.5;
  v11 = MEMORY[0x277D75208];

  return [v11 bezierPathWithRoundedRect:v9 cornerRadius:{v10, v8, v8, v8 * 0.5}];
}

- (void)animateToColors:(id)colors duration:(double)duration
{
  v24 = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = colorsCopy;
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
        [array addObject:{objc_msgSend(v13, "CGColor", v19)}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (duration <= 0.0)
  {
    viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [viewFinderBorderLayer setColors:array];
  }

  else
  {
    viewFinderBorderLayer = [MEMORY[0x277CD9E10] animationWithKeyPath:@"colors"];
    viewFinderBorderLayer2 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    colors = [viewFinderBorderLayer2 colors];
    [viewFinderBorderLayer setFromValue:colors];

    [viewFinderBorderLayer setToValue:array];
    [viewFinderBorderLayer setDuration:duration];
    [viewFinderBorderLayer setRemovedOnCompletion:0];
    [viewFinderBorderLayer setDelegate:self];
    viewFinderBorderLayer3 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [viewFinderBorderLayer3 setColors:array];

    viewFinderBorderLayer4 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
    [viewFinderBorderLayer4 addAnimation:viewFinderBorderLayer forKey:@"colors"];
  }
}

- (void)animateBorderFrom:(id)from to:(id)to duration:(double)duration
{
  v8 = MEMORY[0x277CD9E10];
  toCopy = to;
  fromCopy = from;
  v15 = [v8 animationWithKeyPath:@"path"];
  cGPath = [fromCopy CGPath];

  [v15 setFromValue:cGPath];
  cGPath2 = [toCopy CGPath];

  [v15 setToValue:cGPath2];
  [v15 setDuration:duration];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v13];

  [v15 setFillMode:*MEMORY[0x277CDA230]];
  [v15 setRemovedOnCompletion:0];
  borderLayerMask = [(PRXScannerIndicatorView *)self borderLayerMask];
  [borderLayerMask addAnimation:v15 forKey:@"path"];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = stopCopy;
  if (isKindOfClass)
  {
    v7 = stopCopy;
    keyPath = [v7 keyPath];
    v9 = [keyPath isEqualToString:@"colors"];

    if (v9)
    {
      toValue = [v7 toValue];
      viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
      [viewFinderBorderLayer setColors:toValue];

      if ([(PRXScannerIndicatorView *)self needsReset])
      {
        viewFinderBorderLayer2 = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
        [viewFinderBorderLayer2 removeAllAnimations];
      }

      [(PRXScannerIndicatorView *)self setNeedsReset:0];
    }

    v6 = stopCopy;
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

  cGPath = [v4 CGPath];
  viewFinderTintLayer = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [viewFinderTintLayer setPath:cGPath];

  cGPath2 = [v6 CGPath];
  borderLayerMask = [(PRXScannerIndicatorView *)self borderLayerMask];
  [borderLayerMask setPath:cGPath2];

  borderLayerMask2 = [(PRXScannerIndicatorView *)self borderLayerMask];
  viewFinderBorderLayer = [(PRXScannerIndicatorView *)self viewFinderBorderLayer];
  [viewFinderBorderLayer setMask:borderLayerMask2];

  v18 = MEMORY[0x277D75208];
  [(PRXScannerIndicatorView *)self bounds];
  v19 = [v18 bezierPathWithRoundedRect:? cornerRadius:?];
  cGPath3 = [v19 CGPath];
  initialWhiteTintLayer = [(PRXScannerIndicatorView *)self initialWhiteTintLayer];
  [initialWhiteTintLayer setPath:cGPath3];

  v22 = *MEMORY[0x277CDA248];
  viewFinderTintLayer2 = [(PRXScannerIndicatorView *)self viewFinderTintLayer];
  [viewFinderTintLayer2 setFillRule:v22];

  borderLayerMask3 = [(PRXScannerIndicatorView *)self borderLayerMask];
  [borderLayerMask3 setFillRule:v22];

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
  selfCopy = self;
  v34 = v25;
  v28 = v25;
  dispatch_after(v27, MEMORY[0x277D85CD0], &v29);
  [(PRXScannerIndicatorView *)self animateBorderFrom:v6 to:v9 duration:0.5, v29, v30, v31, v32, selfCopy];
}

void __49__PRXScannerIndicatorView_animateInitialIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) initialWhiteTintLayer];
  [v2 addAnimation:*(a1 + 40) forKey:@"opacity"];
}

@end