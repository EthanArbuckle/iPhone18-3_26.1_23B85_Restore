@interface SHShazamButtonLayer
- (CGPath)bottomStrokeLongPath;
- (CGPath)bottomStrokePath;
- (CGPath)topStrokeLongPath;
- (CGPath)topStrokePath;
- (SHShazamButtonViewDelegate)buttonDelegate;
- (id)strokeLayerWithPath:(CGPath *)path color:(CGColor *)color;
- (void)drawSolidShape;
- (void)drawSolidShapeWithDuration:(double)duration delay:(double)delay completion:(id)completion;
- (void)drawTransparentShape;
- (void)layoutSublayers;
- (void)performFadeInIntroAnimation:(double)animation delay:(double)delay;
- (void)performSDrawingAnimationWithDuration:(double)duration delay:(double)delay;
- (void)performSDrawingIntroAnimation;
- (void)removeTransparentShape;
- (void)removeTransparentShapeWithDuration:(double)duration delay:(double)delay completion:(id)completion;
- (void)setup;
- (void)skipIntroAnimation;
@end

@implementation SHShazamButtonLayer

- (void)setup
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHShazamButtonLayer *)self setBackgroundLayer:v3];

  [(SHShazamButtonLayer *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  backgroundLayer = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer setFrame:{v5, v7, v9, v11}];

  backgroundLayer2 = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer2 setMasksToBounds:1];

  palette = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundColor = [palette listeningButtonBackgroundColor];
  backgroundLayer3 = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer3 setBackgroundColor:listeningButtonBackgroundColor];

  backgroundLayer4 = [(SHShazamButtonLayer *)self backgroundLayer];
  [(SHShazamButtonLayer *)self addSublayer:backgroundLayer4];

  v18 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(SHShazamButtonLayer *)self setTopBorder:v18];

  palette2 = [(SHPaletteLayer *)self palette];
  listeningButtonTopBorderColor = [palette2 listeningButtonTopBorderColor];
  topBorder = [(SHShazamButtonLayer *)self topBorder];
  [topBorder setStrokeColor:listeningButtonTopBorderColor];

  topBorder2 = [(SHShazamButtonLayer *)self topBorder];
  [topBorder2 setLineWidth:1.0];

  palette3 = [(SHPaletteLayer *)self palette];
  clearColor = [palette3 clearColor];
  topBorder3 = [(SHShazamButtonLayer *)self topBorder];
  [topBorder3 setFillColor:clearColor];

  backgroundLayer5 = [(SHShazamButtonLayer *)self backgroundLayer];
  topBorder4 = [(SHShazamButtonLayer *)self topBorder];
  [backgroundLayer5 addSublayer:topBorder4];

  v28 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHShazamButtonLayer *)self setShapeLayer:v28];

  shapeLayer = [(SHShazamButtonLayer *)self shapeLayer];
  [shapeLayer setFrame:{0.0, 0.0, 210.0, 210.0}];

  backgroundLayer6 = [(SHShazamButtonLayer *)self backgroundLayer];
  shapeLayer2 = [(SHShazamButtonLayer *)self shapeLayer];
  [backgroundLayer6 addSublayer:shapeLayer2];

  [(SHShazamButtonLayer *)self drawTransparentShape];
}

- (void)layoutSublayers
{
  v37.receiver = self;
  v37.super_class = SHShazamButtonLayer;
  [(SHShazamButtonLayer *)&v37 layoutSublayers];
  Mutable = CGPathCreateMutable();
  [(SHShazamButtonLayer *)self bounds];
  v5 = v4 * 0.5;
  [(SHShazamButtonLayer *)self bounds];
  v7 = v6 * 0.5 + 2.0;
  [(SHShazamButtonLayer *)self bounds];
  CGPathAddArc(Mutable, 0, v5, v7, v8 * 0.5 + 1.0, 0.0, 3.14159265, 1);
  topBorder = [(SHShazamButtonLayer *)self topBorder];
  [topBorder setPath:Mutable];

  CGPathRelease(Mutable);
  [(SHShazamButtonLayer *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  backgroundLayer = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer setFrame:{v11, v13, v15, v17}];

  [(SHShazamButtonLayer *)self bounds];
  v20 = v19 * 0.5;
  backgroundLayer2 = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer2 setCornerRadius:v20];

  backgroundLayer3 = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer3 position];
  v24 = v23;
  v26 = v25;
  shapeLayer = [(SHShazamButtonLayer *)self shapeLayer];
  [shapeLayer setPosition:{v24, v26}];

  [(SHShazamButtonLayer *)self frame];
  v29 = v28 / 367.5;
  [(SHShazamButtonLayer *)self frame];
  CATransform3DMakeScale(&v36, v29, v30 / 367.5, 1.0);
  shapeLayer2 = [(SHShazamButtonLayer *)self shapeLayer];
  v35 = v36;
  [shapeLayer2 setTransform:&v35];

  palette = [(SHPaletteLayer *)self palette];
  listeningButtonBackgroundColor = [palette listeningButtonBackgroundColor];
  backgroundLayer4 = [(SHShazamButtonLayer *)self backgroundLayer];
  [backgroundLayer4 setBackgroundColor:listeningButtonBackgroundColor];
}

- (void)skipIntroAnimation
{
  [(SHShazamButtonLayer *)self setInitialAnimationPerformed:1];

  [(SHShazamButtonLayer *)self drawSolidShape];
}

- (void)performSDrawingIntroAnimation
{
  if (![(SHShazamButtonLayer *)self initialAnimationPerformed])
  {
    [(SHShazamButtonLayer *)self setInitialAnimationPerformed:1];

    [(SHShazamButtonLayer *)self performSDrawingAnimationWithDuration:0.839999974 delay:0.0];
  }
}

- (void)performSDrawingAnimationWithDuration:(double)duration delay:(double)delay
{
  v5 = delay + duration * 0.357142895;
  v6 = duration * 0.642857194;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SHShazamButtonLayer_performSDrawingAnimationWithDuration_delay___block_invoke;
  v8[3] = &unk_279BBFBE8;
  v8[4] = self;
  [(SHShazamButtonLayer *)self removeTransparentShapeWithDuration:v8 delay:duration * 0.357142895 completion:?];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SHShazamButtonLayer_performSDrawingAnimationWithDuration_delay___block_invoke_2;
  v7[3] = &unk_279BBFBE8;
  v7[4] = self;
  [(SHShazamButtonLayer *)self drawSolidShapeWithDuration:v7 delay:v6 completion:v5];
}

void __66__SHShazamButtonLayer_performSDrawingAnimationWithDuration_delay___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonDelegate];
  [v1 buttonWillFinishDrawingShazamShape];
}

void __66__SHShazamButtonLayer_performSDrawingAnimationWithDuration_delay___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) buttonDelegate];
  [v1 buttonDidFinishDrawingShazamShape];
}

- (void)performFadeInIntroAnimation:(double)animation delay:(double)delay
{
  [(SHShazamButtonLayer *)self drawSolidShape];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v7 setDuration:animation];
  [v7 setBeginTime:CACurrentMediaTime() + delay];
  [v7 setFromValue:&unk_2877ACCB8];
  [v7 setToValue:&unk_2877ACCC8];
  v8 = *MEMORY[0x277CDA7B8];
  v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v7 setTimingFunction:v9];

  [v7 setRemovedOnCompletion:1];
  v10 = *MEMORY[0x277CDA230];
  [v7 setFillMode:*MEMORY[0x277CDA230]];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v11 setDuration:animation];
  [v11 setBeginTime:CACurrentMediaTime() + delay];
  [v11 setFromValue:&unk_2877ACCC8];
  [v11 setToValue:&unk_2877ACCB8];
  v12 = [MEMORY[0x277CD9EF8] functionWithName:v8];
  [v11 setTimingFunction:v12];

  [v11 setRemovedOnCompletion:1];
  [v11 setFillMode:v10];
  [MEMORY[0x277CD9FF0] begin];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__SHShazamButtonLayer_performFadeInIntroAnimation_delay___block_invoke;
  v17[3] = &unk_279BBFBE8;
  v17[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v17];
  topSolidLayer = [(SHShazamButtonLayer *)self topSolidLayer];
  [topSolidLayer addAnimation:v7 forKey:0];

  bottomSolidLayer = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [bottomSolidLayer addAnimation:v7 forKey:0];

  topTransparentLayer = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer addAnimation:v11 forKey:0];

  bottomTransparentLayer = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer addAnimation:v11 forKey:0];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)removeTransparentShape
{
  topTransparentLayer = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer removeFromSuperlayer];

  bottomTransparentLayer = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer removeFromSuperlayer];

  [(SHShazamButtonLayer *)self setTopTransparentLayer:0];

  [(SHShazamButtonLayer *)self setBottomTransparentLayer:0];
}

- (void)drawTransparentShape
{
  topStrokePath = [(SHShazamButtonLayer *)self topStrokePath];
  palette = [(SHPaletteLayer *)self palette];
  v5 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", topStrokePath, [palette listeningButtonBackgroundTransparentColor]);
  [(SHShazamButtonLayer *)self setTopTransparentLayer:v5];

  bottomStrokePath = [(SHShazamButtonLayer *)self bottomStrokePath];
  palette2 = [(SHPaletteLayer *)self palette];
  v8 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", bottomStrokePath, [palette2 listeningButtonBackgroundTransparentColor]);
  [(SHShazamButtonLayer *)self setBottomTransparentLayer:v8];

  palette3 = [(SHPaletteLayer *)self palette];
  listeningButtonTopBorderColor = [palette3 listeningButtonTopBorderColor];
  topTransparentLayer = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer setShadowColor:listeningButtonTopBorderColor];

  topTransparentLayer2 = [(SHShazamButtonLayer *)self topTransparentLayer];
  LODWORD(v13) = 1.0;
  [topTransparentLayer2 setShadowOpacity:v13];

  topTransparentLayer3 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer3 setShadowRadius:1.0];

  topTransparentLayer4 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer4 setShadowOffset:{0.5, 1.0}];

  palette4 = [(SHPaletteLayer *)self palette];
  listeningButtonTopBorderColor2 = [palette4 listeningButtonTopBorderColor];
  bottomTransparentLayer = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer setShadowColor:listeningButtonTopBorderColor2];

  bottomTransparentLayer2 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  LODWORD(v20) = 1.0;
  [bottomTransparentLayer2 setShadowOpacity:v20];

  bottomTransparentLayer3 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer3 setShadowRadius:1.0];

  bottomTransparentLayer4 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer4 setShadowOffset:{0.5, 1.0}];

  shapeLayer = [(SHShazamButtonLayer *)self shapeLayer];
  topTransparentLayer5 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [shapeLayer addSublayer:topTransparentLayer5];

  shapeLayer2 = [(SHShazamButtonLayer *)self shapeLayer];
  bottomTransparentLayer5 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [shapeLayer2 addSublayer:bottomTransparentLayer5];
}

- (void)removeTransparentShapeWithDuration:(double)duration delay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v9 setDuration:duration];
  [v9 setBeginTime:CACurrentMediaTime() + delay];
  [v9 setFromValue:&unk_2877ACCB8];
  [v9 setToValue:&unk_2877ACCC8];
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  LODWORD(v12) = 1.0;
  v13 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v10 :0.0 :v11 :v12];
  [v9 setTimingFunction:v13];

  [v9 setRemovedOnCompletion:1];
  [v9 setFillMode:*MEMORY[0x277CDA230]];
  [MEMORY[0x277CD9FF0] setValue:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDA918]];
  topTransparentLayer = [(SHShazamButtonLayer *)self topTransparentLayer];
  [topTransparentLayer setStrokeStart:1.0];

  bottomTransparentLayer = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer setStrokeStart:1.0];

  v16 = MEMORY[0x277CD9FF0];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __75__SHShazamButtonLayer_removeTransparentShapeWithDuration_delay_completion___block_invoke;
  v23 = &unk_279BBFC10;
  selfCopy = self;
  v25 = completionCopy;
  v17 = completionCopy;
  [v16 setCompletionBlock:&v20];
  v18 = [(SHShazamButtonLayer *)self topTransparentLayer:v20];
  [v18 addAnimation:v9 forKey:@"strokeEnd"];

  bottomTransparentLayer2 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [bottomTransparentLayer2 addAnimation:v9 forKey:@"strokeEnd"];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __75__SHShazamButtonLayer_removeTransparentShapeWithDuration_delay_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topTransparentLayer];
  [v2 removeFromSuperlayer];

  v3 = [*(a1 + 32) bottomTransparentLayer];
  [v3 removeFromSuperlayer];

  [*(a1 + 32) setTopTransparentLayer:0];
  [*(a1 + 32) setBottomTransparentLayer:0];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)drawSolidShape
{
  topStrokePath = [(SHShazamButtonLayer *)self topStrokePath];
  palette = [(SHPaletteLayer *)self palette];
  v5 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", topStrokePath, [palette listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setTopSolidLayer:v5];

  bottomStrokePath = [(SHShazamButtonLayer *)self bottomStrokePath];
  palette2 = [(SHPaletteLayer *)self palette];
  v8 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", bottomStrokePath, [palette2 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setBottomSolidLayer:v8];

  shapeLayer = [(SHShazamButtonLayer *)self shapeLayer];
  topSolidLayer = [(SHShazamButtonLayer *)self topSolidLayer];
  [shapeLayer addSublayer:topSolidLayer];

  shapeLayer2 = [(SHShazamButtonLayer *)self shapeLayer];
  bottomSolidLayer = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [shapeLayer2 addSublayer:bottomSolidLayer];
}

- (void)drawSolidShapeWithDuration:(double)duration delay:(double)delay completion:(id)completion
{
  v36[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  topStrokeLongPath = [(SHShazamButtonLayer *)self topStrokeLongPath];
  palette = [(SHPaletteLayer *)self palette];
  v11 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", topStrokeLongPath, [palette listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setTopSolidLayer:v11];

  bottomStrokeLongPath = [(SHShazamButtonLayer *)self bottomStrokeLongPath];
  palette2 = [(SHPaletteLayer *)self palette];
  v14 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", bottomStrokeLongPath, [palette2 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setBottomSolidLayer:v14];

  shapeLayer = [(SHShazamButtonLayer *)self shapeLayer];
  topSolidLayer = [(SHShazamButtonLayer *)self topSolidLayer];
  [shapeLayer addSublayer:topSolidLayer];

  shapeLayer2 = [(SHShazamButtonLayer *)self shapeLayer];
  bottomSolidLayer = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [shapeLayer2 addSublayer:bottomSolidLayer];

  LODWORD(v19) = 1053609165;
  LODWORD(v20) = 1053944709;
  LODWORD(v21) = 1.0;
  LODWORD(v22) = 1.0;
  v23 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :v21 :v20 :v22];
  v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v24 setDuration:duration];
  [v24 setFromValue:&unk_2877ACE48];
  [v24 setToValue:&unk_2877ACE60];
  [v24 setTimingFunction:v23];
  [v24 setRemovedOnCompletion:0];
  v25 = *MEMORY[0x277CDA230];
  [v24 setFillMode:*MEMORY[0x277CDA230]];
  [v24 setBeginTime:delay];
  v26 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v26 setDuration:duration];
  [v26 setFromValue:&unk_2877ACE48];
  [v26 setToValue:&unk_2877ACCD8];
  [v26 setTimingFunction:v23];
  [v26 setRemovedOnCompletion:0];
  [v26 setFillMode:v25];
  [v26 setBeginTime:delay];
  v27 = MEMORY[0x277CD9FF0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__SHShazamButtonLayer_drawSolidShapeWithDuration_delay_completion___block_invoke;
  v34[3] = &unk_279BBFC10;
  v34[4] = self;
  v35 = completionCopy;
  v28 = completionCopy;
  [v27 setCompletionBlock:v34];
  animation = [MEMORY[0x277CD9E00] animation];
  v36[0] = v26;
  v36[1] = v24;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [animation setAnimations:v30];

  [animation setDuration:duration + delay];
  [animation setRemovedOnCompletion:0];
  [animation setFillMode:v25];
  topSolidLayer2 = [(SHShazamButtonLayer *)self topSolidLayer];
  [topSolidLayer2 addAnimation:animation forKey:0];

  bottomSolidLayer2 = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [bottomSolidLayer2 addAnimation:animation forKey:0];

  [MEMORY[0x277CD9FF0] commit];
  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __67__SHShazamButtonLayer_drawSolidShapeWithDuration_delay_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topSolidLayer];
  [v2 removeFromSuperlayer];

  v3 = [*(a1 + 32) bottomSolidLayer];
  [v3 removeFromSuperlayer];

  v4 = *(a1 + 32);
  v5 = [v4 topStrokePath];
  v6 = [*(a1 + 32) palette];
  v7 = [v4 strokeLayerWithPath:v5 color:{objc_msgSend(v6, "listeningButtonShazamShapeColor")}];
  [*(a1 + 32) setTopSolidLayer:v7];

  v8 = *(a1 + 32);
  v9 = [v8 bottomStrokePath];
  v10 = [*(a1 + 32) palette];
  v11 = [v8 strokeLayerWithPath:v9 color:{objc_msgSend(v10, "listeningButtonShazamShapeColor")}];
  [*(a1 + 32) setBottomSolidLayer:v11];

  v12 = [*(a1 + 32) shapeLayer];
  v13 = [*(a1 + 32) topSolidLayer];
  [v12 addSublayer:v13];

  v14 = [*(a1 + 32) shapeLayer];
  v15 = [*(a1 + 32) bottomSolidLayer];
  [v14 addSublayer:v15];

  result = *(a1 + 40);
  if (result)
  {
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

- (id)strokeLayerWithPath:(CGPath *)path color:(CGColor *)color
{
  v7 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v7 setPath:path];
  [v7 setStrokeColor:color];
  [v7 setLineWidth:38.0];
  [v7 setLineCap:*MEMORY[0x277CDA780]];
  palette = [(SHPaletteLayer *)self palette];
  [v7 setFillColor:{objc_msgSend(palette, "clearColor")}];

  return v7;
}

- (CGPath)topStrokeLongPath
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 133.6, 117.9);
  CGPathAddCurveToPoint(Mutable, 0, 144.05, 107.41, 155.21, 96.08, 161.2, 89.7);
  CGPathAddCurveToPoint(Mutable, 0, 181.72, 67.84, 180.89, 30.51, 159.4, 9.7);
  CGPathAddCurveToPoint(Mutable, 0, 136.89, -13.49, 100.97, -11.49, 80.7, 6.17);
  CGPathAddCurveToPoint(Mutable, 0, 80.7, 6.17, 77.6, 9.12, 76.3, 10.4);
  CGPathAddCurveToPoint(Mutable, 0, 62.4, 24.48, 41.85, 44.71, 32.49, 54.68);
  CGPathAddCurveToPoint(Mutable, 0, 11.96, 76.54, 12.8, 113.87, 34.29, 134.68);
  CGPathAddCurveToPoint(Mutable, 0, 56.8, 157.87, 93.03, 156.21, 113.29, 138.21);
  CGPathAddCurveToPoint(Mutable, 0, 119.79, 132.0, 133.69, 117.88, 133.69, 117.88);
  CFAutorelease(Mutable);
  return Mutable;
}

- (CGPath)bottomStrokeLongPath
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 76.4, 93.5);
  CGPathAddCurveToPoint(Mutable, 0, 65.95, 103.99, 55.21, 114.99, 49.22, 121.37);
  CGPathAddCurveToPoint(Mutable, 0, 28.69, 143.24, 29.53, 180.57, 51.02, 201.37);
  CGPathAddCurveToPoint(Mutable, 0, 73.53, 224.57, 109.45, 222.57, 129.72, 204.9);
  CGPathAddCurveToPoint(Mutable, 0, 129.72, 204.9, 132.31, 202.48, 133.62, 201.2);
  CGPathAddCurveToPoint(Mutable, 0, 147.6, 186.93, 168.16, 166.7, 177.52, 156.72);
  CGPathAddCurveToPoint(Mutable, 0, 198.04, 134.86, 197.21, 97.53, 175.72, 76.72);
  CGPathAddCurveToPoint(Mutable, 0, 153.21, 53.53, 116.98, 55.2, 96.72, 73.2);
  CGPathAddCurveToPoint(Mutable, 0, 90.22, 79.4, 76.32, 93.52, 76.32, 93.52);
  CFAutorelease(Mutable);
  return Mutable;
}

- (CGPath)topStrokePath
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 76.19, 10.38);
  CGPathAddCurveToPoint(Mutable, 0, 62.4, 24.48, 41.85, 44.71, 32.49, 54.68);
  CGPathAddCurveToPoint(Mutable, 0, 11.96, 76.54, 12.8, 113.87, 34.29, 134.68);
  CGPathAddCurveToPoint(Mutable, 0, 56.8, 157.87, 93.03, 156.21, 113.29, 138.21);
  CGPathAddCurveToPoint(Mutable, 0, 119.79, 132.0, 133.69, 117.88, 133.69, 117.88);
  CFAutorelease(Mutable);
  return Mutable;
}

- (CGPath)bottomStrokePath
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 133.82, 201.02);
  CGPathAddCurveToPoint(Mutable, 0, 147.6, 186.93, 168.16, 166.7, 177.52, 156.72);
  CGPathAddCurveToPoint(Mutable, 0, 198.04, 134.86, 197.21, 97.53, 175.72, 76.72);
  CGPathAddCurveToPoint(Mutable, 0, 153.21, 53.53, 116.98, 55.2, 96.72, 73.2);
  CGPathAddCurveToPoint(Mutable, 0, 90.22, 79.4, 76.32, 93.52, 76.32, 93.52);
  CFAutorelease(Mutable);
  return Mutable;
}

- (SHShazamButtonViewDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end