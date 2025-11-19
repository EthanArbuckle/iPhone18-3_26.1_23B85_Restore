@interface PKPhoneGlyphLayer
- (PKPhoneGlyphLayer)init;
- (PKPhoneGlyphLayer)initWithFrame:(CGRect)a3 package:(id)a4;
- (void)_applyEffectivePrimaryColorToQRCodeAnimated:(BOOL)a3;
- (void)_endPhoneWiggle;
- (void)_restartPhoneWiggleIfNecessary;
- (void)_startPhoneWiggle;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowQRCode:(BOOL)a3;
@end

@implementation PKPhoneGlyphLayer

- (PKPhoneGlyphLayer)init
{
  if (PKUserIntentIsAvailable())
  {
    if (PKFrontFaceCameraIsWithinScreen())
    {
      v3 = @"Payment_glyph_phone-D73";
    }

    else
    {
      v3 = @"Payment_glyph_phone-D22";
    }
  }

  else
  {
    v3 = @"Payment_glyph_phone";
  }

  v4 = MEMORY[0x277CD9F28];
  v5 = PKPassKitUIFoundationBundle();
  v6 = [v5 URLForResource:v3 withExtension:@"caar"];
  v7 = [v4 packageWithContentsOfURL:v6 type:*MEMORY[0x277CDA7E8] options:0 error:0];

  v8 = [(PKPhoneGlyphLayer *)self initWithFrame:v7 package:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  return v8;
}

- (PKPhoneGlyphLayer)initWithFrame:(CGRect)a3 package:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = PKPhoneGlyphLayer;
  v10 = [(PKMicaLayer *)&v29 initWithFrame:v9 package:x, y, width, height];
  if (v10)
  {
    v11 = [v9 publishedObjectWithName:@"(shape:secondary_highlight)"];
    highlightLayer = v10->_highlightLayer;
    v10->_highlightLayer = v11;

    v13 = v10->_highlightLayer;
    v14 = PKLayerNullActions();
    [(CALayer *)v13 setActions:v14];

    [(CALayer *)v10->_highlightLayer position];
    v10->_highlightOffscreenPosition.x = v15;
    v10->_highlightOffscreenPosition.y = v16;
    v17 = [(CALayer *)v10->_highlightLayer superlayer];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v30.origin.x = v19;
    v30.origin.y = v21;
    v30.size.width = v23;
    v30.size.height = v25;
    MidX = CGRectGetMidX(v30);
    v31.origin.x = v19;
    v31.origin.y = v21;
    v31.size.width = v23;
    v31.size.height = v25;
    MidY = CGRectGetMidY(v31);
    v10->_highlightOnscreenPosition.x = MidX;
    v10->_highlightOnscreenPosition.y = MidY;
  }

  return v10;
}

- (void)layoutSublayers
{
  v21.receiver = self;
  v21.super_class = PKPhoneGlyphLayer;
  [(PKMicaLayer *)&v21 layoutSublayers];
  QRCodeLayer = self->_QRCodeLayer;
  if (QRCodeLayer)
  {
    v4 = [(CALayer *)QRCodeLayer contents];
    if (v4)
    {
      v5 = v4;
      CGImageRetain(v4);
      CGImageGetWidth(v5);
      CGImageGetHeight(v5);
      CGImageRelease(v5);
      [(PKPhoneGlyphLayer *)self contentsScale];
      [(PKPhoneGlyphLayer *)self bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      slice.origin.x = v6;
      slice.origin.y = v8;
      slice.size.width = v10;
      slice.size.height = v12;
      PKFloatRoundToPixelWithScale();
      PKSizeAspectFit();
      PKSizeRoundToPixelWithScale();
      memset(&v19, 0, sizeof(v19));
      PKFloatRoundToPixelWithScale();
      v15 = v14;
      v22.origin.x = v7;
      v22.origin.y = v9;
      v22.size.width = v11;
      v22.size.height = v13;
      CGRectDivide(v22, &slice, &v19, v15, CGRectMinYEdge);
      v16 = *MEMORY[0x277D385C0];
      PKSizeAlignedInRectWithScale();
      v17 = self->_QRCodeLayer;
    }

    else
    {
      v18 = self->_QRCodeLayer;
      [(PKPhoneGlyphLayer *)self bounds];
      v17 = v18;
    }

    [(CALayer *)v17 setFrame:*&v19.origin, *&v19.size, *&slice.origin.x, *&slice.origin.y, *&slice.size.width, *&slice.size.height];
  }
}

- (void)dealloc
{
  CGColorRelease(self->_primaryColor);
  v3.receiver = self;
  v3.super_class = PKPhoneGlyphLayer;
  [(PKMicaLayer *)&v3 dealloc];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = &OBJC_IVAR___PKPhoneGlyphLayer__highlightOffscreenPosition;
  if (a3)
  {
    v7 = &OBJC_IVAR___PKPhoneGlyphLayer__highlightOnscreenPosition;
  }

  v8 = (self + *v7);
  v9 = *v8;
  v10 = v8[1];
  [(CALayer *)self->_highlightLayer position];
  if (v9 != v11 || v10 != v12)
  {
    if (v4)
    {
      v14 = v11;
      v15 = v12;
      v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
      LODWORD(v19) = 1058642330;
      if (!v5)
      {
        *&v19 = 0.75;
      }

      LODWORD(v17) = *"ff&?";
      LODWORD(v18) = 1.0;
      v20 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :0.0 :v17 :v18];
      [v16 setTimingFunction:v20];

      [v16 setAdditive:1];
      [v16 pkui_updateForAdditiveAnimationFromPoint:v14 toPoint:{v15, v9, v10}];
      [v16 setDuration:1.3];
      v21 = [(CALayer *)self->_highlightLayer pkui_addAdditiveAnimation:v16];
    }

    highlightLayer = self->_highlightLayer;

    [(CALayer *)highlightLayer setPosition:v9, v10];
  }
}

- (void)setShowQRCode:(BOOL)a3
{
  if (self->_showQRCode == !a3)
  {
    self->_showQRCode = a3;
    v4 = 0.0;
    if (a3)
    {
      v4 = 1.0;
      if (!self->_QRCodeLayer)
      {
        [(PKPhoneGlyphLayer *)self contentsScale];
        v6 = v5;
        v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
        QRCodeLayer = self->_QRCodeLayer;
        self->_QRCodeLayer = v7;

        [(CALayer *)self->_QRCodeLayer setOpacity:0.0];
        v9 = self->_QRCodeLayer;
        v10 = PKLayerNullActions();
        [(CALayer *)v9 setActions:v10];

        [(CALayer *)self->_QRCodeLayer setContentsScale:v6];
        v11 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
        [v11 size];
        PKSizeScaleAspectFit();
        PKSizeRoundToPixelWithScale();
        v14 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v12, v13}];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __35__PKPhoneGlyphLayer_setShowQRCode___block_invoke;
        v18[3] = &unk_279A005E0;
        v19 = v11;
        v15 = v11;
        v16 = [v14 imageWithActions:v18];
        -[CALayer setContents:](self->_QRCodeLayer, "setContents:", [v16 CGImage]);
        [(PKPhoneGlyphLayer *)self insertSublayer:self->_QRCodeLayer below:self->_highlightLayer];
        [(PKPhoneGlyphLayer *)self _applyEffectivePrimaryColorToQRCodeAnimated:0];
        [(PKPhoneGlyphLayer *)self setNeedsLayout];

        LOBYTE(v17) = self->_showQRCode;
        v4 = v17;
      }
    }

    [(CALayer *)self->_QRCodeLayer pkui_animateToOpacity:0 withCompletion:v4];
  }
}

void __35__PKPhoneGlyphLayer_setShowQRCode___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*(a1 + 32) drawInRect:{v5, v7, v9, v11}];
  v12 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [v12 setFill];

  [v13 fillRect:20 blendMode:{v5, v7, v9, v11}];
}

- (void)_applyEffectivePrimaryColorToQRCodeAnimated:(BOOL)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (self->_QRCodeLayer)
  {
    v3 = a3;
    if (!self->_QRCodeColorFilter)
    {
      v5 = objc_alloc(MEMORY[0x277CD9EA0]);
      v6 = [v5 initWithType:*MEMORY[0x277CDA5B0]];
      QRCodeColorFilter = self->_QRCodeColorFilter;
      self->_QRCodeColorFilter = v6;

      [(CAFilter *)self->_QRCodeColorFilter setName:@"QRCodeColorFilter"];
      [(CAFilter *)self->_QRCodeColorFilter setValue:self->_primaryColor forKey:@"inputColor"];
      QRCodeLayer = self->_QRCodeLayer;
      v16[0] = self->_QRCodeColorFilter;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [(CALayer *)QRCodeLayer setFilters:v9];
    }

    v10 = MEMORY[0x277D75348];
    v11 = [(CALayer *)self->_QRCodeLayer presentationLayer];
    v12 = [v11 valueForKeyPath:@"filters.QRCodeColorFilter.inputColor"];
    if (!v12)
    {
      v12 = [(CALayer *)self->_QRCodeLayer valueForKeyPath:@"filters.QRCodeColorFilter.inputColor"];
    }

    v13 = [v10 colorWithCGColor:v12];

    [(CALayer *)self->_QRCodeLayer setValue:self->_primaryColor forKeyPath:@"filters.QRCodeColorFilter.inputColor"];
    if (v3)
    {
      v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.QRCodeColorFilter.inputColor"];
      [v14 setDuration:0.15];
      [v14 setFillMode:*MEMORY[0x277CDA238]];
      [v14 setFromValue:{objc_msgSend(v13, "CGColor")}];
      [v14 setToValue:self->_primaryColor];
      [(CALayer *)self->_QRCodeLayer removeAnimationForKey:@"QRCodeColorAnimationKey"];
      [(CALayer *)self->_QRCodeLayer addAnimation:v14 forKey:@"QRCodeColorAnimationKey"];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_restartPhoneWiggleIfNecessary
{
  if (self->_phoneWiggleAnimationKey)
  {
    v3 = [(CALayer *)self->_highlightLayer animationForKey:?];

    if (!v3)
    {
      phoneWiggleAnimationKey = self->_phoneWiggleAnimationKey;
      self->_phoneWiggleAnimationKey = 0;

      [(PKPhoneGlyphLayer *)self _startPhoneWiggle];
    }
  }
}

- (void)_startPhoneWiggle
{
  if (!self->_phoneWiggleAnimationKey || ([(PKPhoneGlyphLayer *)self _endPhoneWiggle], !self->_phoneWiggleAnimationKey))
  {
    v3.f64[0] = self->_highlightOnscreenPosition.x;
    v3.f64[1] = self->_highlightOffscreenPosition.y;
    *v10 = vsubq_f64(vmlaq_f64(vmulq_f64(self->_highlightOffscreenPosition, vdupq_n_s64(0x3FE4CCCCCCCCCCCDuLL)), vdupq_n_s64(0x3FD6666666666666uLL), v3), self->_highlightOnscreenPosition);
    v4 = [MEMORY[0x277CCAE60] valueWithPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v10[0]}];
    v5 = [MEMORY[0x277CCAE60] valueWithPoint:*v10];
    v11 = __38__PKPhoneGlyphLayer__startPhoneWiggle__block_invoke(v5, @"position", v4, v5);

    [v11 setDuration:2.6];
    LODWORD(v6) = 2139095040;
    [v11 setRepeatCount:v6];
    v7 = [(CALayer *)self->_highlightLayer pkui_addAdditiveAnimation:v11];
    v8 = [v7 copy];
    phoneWiggleAnimationKey = self->_phoneWiggleAnimationKey;
    self->_phoneWiggleAnimationKey = v8;
  }
}

id __38__PKPhoneGlyphLayer__startPhoneWiggle__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CD9EC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 animationWithKeyPath:a2];
  [v9 setAdditive:1];
  [v9 setKeyTimes:&unk_286FD1370];
  v23[0] = v8;
  v23[1] = v7;
  v23[2] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [v9 setValues:v10];

  LODWORD(v11) = 0.75;
  LODWORD(v12) = 1.0;
  LODWORD(v13) = *"ff&?";
  v14 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v11 :0.0 :v13 :v12];
  LODWORD(v15) = 1058642330;
  LODWORD(v16) = 1.0;
  LODWORD(v17) = *"ff&?";
  v18 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v15 :0.0 :v17 :{v16, v14}];
  v22[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  [v9 setTimingFunctions:v19];
  [v9 setDuration:2.6];
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_endPhoneWiggle
{
  phoneWiggleAnimationKey = self->_phoneWiggleAnimationKey;
  if (phoneWiggleAnimationKey)
  {
    v4 = phoneWiggleAnimationKey;
    v5 = [(CALayer *)self->_highlightLayer animationForKey:v4];
    v6 = self->_phoneWiggleAnimationKey;
    self->_phoneWiggleAnimationKey = 0;

    [(CALayer *)self->_highlightLayer pkui_elapsedDurationForAnimationWithKey:v4];
    if (v7 <= 0.0)
    {
      [(CALayer *)self->_highlightLayer removeAnimationForKey:v4];
    }

    else
    {
      v8 = v7;
      [v5 duration];
      v10 = ((v9 - fmod(v8, v9)) * 1000000000.0);
      objc_initWeak(&location, self);
      v11 = dispatch_time(0, v10);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PKPhoneGlyphLayer__endPhoneWiggle__block_invoke;
      block[3] = &unk_2799FFAF8;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      v4 = v4;
      dispatch_after(v11, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __36__PKPhoneGlyphLayer__endPhoneWiggle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[11] removeAnimationForKey:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end