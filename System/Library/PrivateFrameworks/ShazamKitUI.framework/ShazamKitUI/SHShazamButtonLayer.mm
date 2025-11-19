@interface SHShazamButtonLayer
- (CGPath)bottomStrokeLongPath;
- (CGPath)bottomStrokePath;
- (CGPath)topStrokeLongPath;
- (CGPath)topStrokePath;
- (SHShazamButtonViewDelegate)buttonDelegate;
- (id)strokeLayerWithPath:(CGPath *)a3 color:(CGColor *)a4;
- (void)drawSolidShape;
- (void)drawSolidShapeWithDuration:(double)a3 delay:(double)a4 completion:(id)a5;
- (void)drawTransparentShape;
- (void)layoutSublayers;
- (void)performFadeInIntroAnimation:(double)a3 delay:(double)a4;
- (void)performSDrawingAnimationWithDuration:(double)a3 delay:(double)a4;
- (void)performSDrawingIntroAnimation;
- (void)removeTransparentShape;
- (void)removeTransparentShapeWithDuration:(double)a3 delay:(double)a4 completion:(id)a5;
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
  v12 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v13 setMasksToBounds:1];

  v14 = [(SHPaletteLayer *)self palette];
  v15 = [v14 listeningButtonBackgroundColor];
  v16 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v16 setBackgroundColor:v15];

  v17 = [(SHShazamButtonLayer *)self backgroundLayer];
  [(SHShazamButtonLayer *)self addSublayer:v17];

  v18 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(SHShazamButtonLayer *)self setTopBorder:v18];

  v19 = [(SHPaletteLayer *)self palette];
  v20 = [v19 listeningButtonTopBorderColor];
  v21 = [(SHShazamButtonLayer *)self topBorder];
  [v21 setStrokeColor:v20];

  v22 = [(SHShazamButtonLayer *)self topBorder];
  [v22 setLineWidth:1.0];

  v23 = [(SHPaletteLayer *)self palette];
  v24 = [v23 clearColor];
  v25 = [(SHShazamButtonLayer *)self topBorder];
  [v25 setFillColor:v24];

  v26 = [(SHShazamButtonLayer *)self backgroundLayer];
  v27 = [(SHShazamButtonLayer *)self topBorder];
  [v26 addSublayer:v27];

  v28 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(SHShazamButtonLayer *)self setShapeLayer:v28];

  v29 = [(SHShazamButtonLayer *)self shapeLayer];
  [v29 setFrame:{0.0, 0.0, 210.0, 210.0}];

  v30 = [(SHShazamButtonLayer *)self backgroundLayer];
  v31 = [(SHShazamButtonLayer *)self shapeLayer];
  [v30 addSublayer:v31];

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
  v9 = [(SHShazamButtonLayer *)self topBorder];
  [v9 setPath:Mutable];

  CGPathRelease(Mutable);
  [(SHShazamButtonLayer *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v18 setFrame:{v11, v13, v15, v17}];

  [(SHShazamButtonLayer *)self bounds];
  v20 = v19 * 0.5;
  v21 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v21 setCornerRadius:v20];

  v22 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v22 position];
  v24 = v23;
  v26 = v25;
  v27 = [(SHShazamButtonLayer *)self shapeLayer];
  [v27 setPosition:{v24, v26}];

  [(SHShazamButtonLayer *)self frame];
  v29 = v28 / 367.5;
  [(SHShazamButtonLayer *)self frame];
  CATransform3DMakeScale(&v36, v29, v30 / 367.5, 1.0);
  v31 = [(SHShazamButtonLayer *)self shapeLayer];
  v35 = v36;
  [v31 setTransform:&v35];

  v32 = [(SHPaletteLayer *)self palette];
  v33 = [v32 listeningButtonBackgroundColor];
  v34 = [(SHShazamButtonLayer *)self backgroundLayer];
  [v34 setBackgroundColor:v33];
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

- (void)performSDrawingAnimationWithDuration:(double)a3 delay:(double)a4
{
  v5 = a4 + a3 * 0.357142895;
  v6 = a3 * 0.642857194;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SHShazamButtonLayer_performSDrawingAnimationWithDuration_delay___block_invoke;
  v8[3] = &unk_279BBFBE8;
  v8[4] = self;
  [(SHShazamButtonLayer *)self removeTransparentShapeWithDuration:v8 delay:a3 * 0.357142895 completion:?];
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

- (void)performFadeInIntroAnimation:(double)a3 delay:(double)a4
{
  [(SHShazamButtonLayer *)self drawSolidShape];
  v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v7 setDuration:a3];
  [v7 setBeginTime:CACurrentMediaTime() + a4];
  [v7 setFromValue:&unk_2877ACCB8];
  [v7 setToValue:&unk_2877ACCC8];
  v8 = *MEMORY[0x277CDA7B8];
  v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v7 setTimingFunction:v9];

  [v7 setRemovedOnCompletion:1];
  v10 = *MEMORY[0x277CDA230];
  [v7 setFillMode:*MEMORY[0x277CDA230]];
  v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v11 setDuration:a3];
  [v11 setBeginTime:CACurrentMediaTime() + a4];
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
  v13 = [(SHShazamButtonLayer *)self topSolidLayer];
  [v13 addAnimation:v7 forKey:0];

  v14 = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [v14 addAnimation:v7 forKey:0];

  v15 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v15 addAnimation:v11 forKey:0];

  v16 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v16 addAnimation:v11 forKey:0];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)removeTransparentShape
{
  v3 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v3 removeFromSuperlayer];

  v4 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v4 removeFromSuperlayer];

  [(SHShazamButtonLayer *)self setTopTransparentLayer:0];

  [(SHShazamButtonLayer *)self setBottomTransparentLayer:0];
}

- (void)drawTransparentShape
{
  v3 = [(SHShazamButtonLayer *)self topStrokePath];
  v4 = [(SHPaletteLayer *)self palette];
  v5 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v3, [v4 listeningButtonBackgroundTransparentColor]);
  [(SHShazamButtonLayer *)self setTopTransparentLayer:v5];

  v6 = [(SHShazamButtonLayer *)self bottomStrokePath];
  v7 = [(SHPaletteLayer *)self palette];
  v8 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v6, [v7 listeningButtonBackgroundTransparentColor]);
  [(SHShazamButtonLayer *)self setBottomTransparentLayer:v8];

  v9 = [(SHPaletteLayer *)self palette];
  v10 = [v9 listeningButtonTopBorderColor];
  v11 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v11 setShadowColor:v10];

  v12 = [(SHShazamButtonLayer *)self topTransparentLayer];
  LODWORD(v13) = 1.0;
  [v12 setShadowOpacity:v13];

  v14 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v14 setShadowRadius:1.0];

  v15 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v15 setShadowOffset:{0.5, 1.0}];

  v16 = [(SHPaletteLayer *)self palette];
  v17 = [v16 listeningButtonTopBorderColor];
  v18 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v18 setShadowColor:v17];

  v19 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  LODWORD(v20) = 1.0;
  [v19 setShadowOpacity:v20];

  v21 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v21 setShadowRadius:1.0];

  v22 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v22 setShadowOffset:{0.5, 1.0}];

  v23 = [(SHShazamButtonLayer *)self shapeLayer];
  v24 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v23 addSublayer:v24];

  v26 = [(SHShazamButtonLayer *)self shapeLayer];
  v25 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v26 addSublayer:v25];
}

- (void)removeTransparentShapeWithDuration:(double)a3 delay:(double)a4 completion:(id)a5
{
  v8 = a5;
  [MEMORY[0x277CD9FF0] begin];
  v9 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v9 setDuration:a3];
  [v9 setBeginTime:CACurrentMediaTime() + a4];
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
  v14 = [(SHShazamButtonLayer *)self topTransparentLayer];
  [v14 setStrokeStart:1.0];

  v15 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v15 setStrokeStart:1.0];

  v16 = MEMORY[0x277CD9FF0];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __75__SHShazamButtonLayer_removeTransparentShapeWithDuration_delay_completion___block_invoke;
  v23 = &unk_279BBFC10;
  v24 = self;
  v25 = v8;
  v17 = v8;
  [v16 setCompletionBlock:&v20];
  v18 = [(SHShazamButtonLayer *)self topTransparentLayer:v20];
  [v18 addAnimation:v9 forKey:@"strokeEnd"];

  v19 = [(SHShazamButtonLayer *)self bottomTransparentLayer];
  [v19 addAnimation:v9 forKey:@"strokeEnd"];

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
  v3 = [(SHShazamButtonLayer *)self topStrokePath];
  v4 = [(SHPaletteLayer *)self palette];
  v5 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v3, [v4 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setTopSolidLayer:v5];

  v6 = [(SHShazamButtonLayer *)self bottomStrokePath];
  v7 = [(SHPaletteLayer *)self palette];
  v8 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v6, [v7 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setBottomSolidLayer:v8];

  v9 = [(SHShazamButtonLayer *)self shapeLayer];
  v10 = [(SHShazamButtonLayer *)self topSolidLayer];
  [v9 addSublayer:v10];

  v12 = [(SHShazamButtonLayer *)self shapeLayer];
  v11 = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [v12 addSublayer:v11];
}

- (void)drawSolidShapeWithDuration:(double)a3 delay:(double)a4 completion:(id)a5
{
  v36[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  [MEMORY[0x277CD9FF0] begin];
  v9 = [(SHShazamButtonLayer *)self topStrokeLongPath];
  v10 = [(SHPaletteLayer *)self palette];
  v11 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v9, [v10 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setTopSolidLayer:v11];

  v12 = [(SHShazamButtonLayer *)self bottomStrokeLongPath];
  v13 = [(SHPaletteLayer *)self palette];
  v14 = -[SHShazamButtonLayer strokeLayerWithPath:color:](self, "strokeLayerWithPath:color:", v12, [v13 listeningButtonShazamShapeColor]);
  [(SHShazamButtonLayer *)self setBottomSolidLayer:v14];

  v15 = [(SHShazamButtonLayer *)self shapeLayer];
  v16 = [(SHShazamButtonLayer *)self topSolidLayer];
  [v15 addSublayer:v16];

  v17 = [(SHShazamButtonLayer *)self shapeLayer];
  v18 = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [v17 addSublayer:v18];

  LODWORD(v19) = 1053609165;
  LODWORD(v20) = 1053944709;
  LODWORD(v21) = 1.0;
  LODWORD(v22) = 1.0;
  v23 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :v21 :v20 :v22];
  v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v24 setDuration:a3];
  [v24 setFromValue:&unk_2877ACE48];
  [v24 setToValue:&unk_2877ACE60];
  [v24 setTimingFunction:v23];
  [v24 setRemovedOnCompletion:0];
  v25 = *MEMORY[0x277CDA230];
  [v24 setFillMode:*MEMORY[0x277CDA230]];
  [v24 setBeginTime:a4];
  v26 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v26 setDuration:a3];
  [v26 setFromValue:&unk_2877ACE48];
  [v26 setToValue:&unk_2877ACCD8];
  [v26 setTimingFunction:v23];
  [v26 setRemovedOnCompletion:0];
  [v26 setFillMode:v25];
  [v26 setBeginTime:a4];
  v27 = MEMORY[0x277CD9FF0];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__SHShazamButtonLayer_drawSolidShapeWithDuration_delay_completion___block_invoke;
  v34[3] = &unk_279BBFC10;
  v34[4] = self;
  v35 = v8;
  v28 = v8;
  [v27 setCompletionBlock:v34];
  v29 = [MEMORY[0x277CD9E00] animation];
  v36[0] = v26;
  v36[1] = v24;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  [v29 setAnimations:v30];

  [v29 setDuration:a3 + a4];
  [v29 setRemovedOnCompletion:0];
  [v29 setFillMode:v25];
  v31 = [(SHShazamButtonLayer *)self topSolidLayer];
  [v31 addAnimation:v29 forKey:0];

  v32 = [(SHShazamButtonLayer *)self bottomSolidLayer];
  [v32 addAnimation:v29 forKey:0];

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

- (id)strokeLayerWithPath:(CGPath *)a3 color:(CGColor *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v7 setPath:a3];
  [v7 setStrokeColor:a4];
  [v7 setLineWidth:38.0];
  [v7 setLineCap:*MEMORY[0x277CDA780]];
  v8 = [(SHPaletteLayer *)self palette];
  [v7 setFillColor:{objc_msgSend(v8, "clearColor")}];

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