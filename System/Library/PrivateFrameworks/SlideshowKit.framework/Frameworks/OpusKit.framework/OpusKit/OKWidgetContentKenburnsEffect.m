@interface OKWidgetContentKenburnsEffect
+ (id)supportedSettings;
- (double)_fullDuration;
- (double)remainingPlayDuration;
- (float)_croppedFractionforRectAspectRatio:(float)a3 photoAspectRatio:(float)a4;
- (void)_applyGeometryForStart:(BOOL)a3;
- (void)_setupAnimation;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)applySettings;
- (void)dealloc;
- (void)pauseAnimation;
- (void)prepareContentEffectWithView:(id)a3;
- (void)resumeAnimation;
- (void)setDefaultDuration:(double)a3;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation OKWidgetContentKenburnsEffect

- (void)dealloc
{
  panGenerator = self->_panGenerator;
  if (panGenerator)
  {

    self->_panGenerator = 0;
  }

  translationXAnimation = self->_translationXAnimation;
  if (translationXAnimation)
  {

    self->_translationXAnimation = 0;
  }

  translationYAnimation = self->_translationYAnimation;
  if (translationYAnimation)
  {

    self->_translationYAnimation = 0;
  }

  scaleAnimation = self->_scaleAnimation;
  if (scaleAnimation)
  {

    self->_scaleAnimation = 0;
  }

  timingFunction = self->_timingFunction;
  if (timingFunction)
  {

    self->_timingFunction = 0;
  }

  v8.receiver = self;
  v8.super_class = OKWidgetContentKenburnsEffect;
  [(OKWidgetContentEffect *)&v8 dealloc];
}

- (void)applySettings
{
  v51.receiver = self;
  v51.super_class = OKWidgetContentKenburnsEffect;
  [(OKWidgetContentEffect *)&v51 applySettings];
  self->_toY = 0.0;
  self->_fromY = 0.0;
  self->_toX = 0.0;
  self->_fromX = 0.0;
  self->_toScale = 1.0;
  self->_fromScale = 1.0;
  self->_beginTime = 0.0;
  self->_timingFunction = *MEMORY[0x277CDA7C8];
  self->_speedMitigator = 1.0;
  self->_panningCropThreshold = 0.0;
  v3 = [(NSDictionary *)self->super._settings objectForKey:@"maximumZoom"];
  if (v3)
  {
    [v3 doubleValue];
    self->_toScale = v4;
  }

  v5 = [(NSDictionary *)self->super._settings objectForKey:@"fromPt"];
  if (v5)
  {
    [v5 CGPointValue];
    self->_toX = v6;
    self->_fromX = v6;
    self->_toY = v7;
    self->_fromY = v7;
  }

  v8 = [(NSDictionary *)self->super._settings objectForKey:@"toPt"];
  if (v8)
  {
    [v8 CGPointValue];
    self->_toX = v9;
    self->_toY = v10;
  }

  v11 = [(NSDictionary *)self->super._settings objectForKey:@"timingFunction"];
  if (v11)
  {
    v12 = v11;

    self->_timingFunction = v12;
  }

  v13 = [(NSDictionary *)self->super._settings objectForKey:@"beginTime"];
  if (v13)
  {
    [v13 doubleValue];
    self->_beginTime = v14;
  }

  v15 = [(NSDictionary *)self->super._settings objectForKey:@"durationPadding"];
  if (v15)
  {
    [v15 doubleValue];
    self->_durationPadding = v16;
  }

  v17 = [(NSDictionary *)self->super._settings objectForKey:@"speedMitigator"];
  if (v17)
  {
    [v17 doubleValue];
    self->_speedMitigator = v18;
  }

  v19 = [(NSDictionary *)self->super._settings objectForKey:@"mediaItemAspectRatio"];
  if (v19)
  {
    v20 = v19;
    panGenerator = self->_panGenerator;
    if (panGenerator)
    {

      self->_panGenerator = 0;
    }

    v22 = [OKPanGenerator alloc];
    [v20 doubleValue];
    self->_panGenerator = [(OKPanGenerator *)v22 initWithAspectRatio:?];
  }

  v23 = [(NSDictionary *)self->super._settings objectForKey:@"mediaItemRegionsOfInterest"];
  if (v23)
  {
    [(OKPanGenerator *)self->_panGenerator setMediaItemRegionsOfInterest:v23];
  }

  v24 = [(NSDictionary *)self->super._settings objectForKey:@"panningCropThreshold"];
  if (v24)
  {
    [v24 floatValue];
    self->_panningCropThreshold = v25;
  }

  v26 = [(NSDictionary *)self->super._settings objectForKey:@"panningType"];
  if (v26)
  {
    -[OKPanGenerator setPanningType:](self->_panGenerator, "setPanningType:", [v26 integerValue]);
    if ([(OKPanGenerator *)self->_panGenerator panningType]>= 0xF && [(OKPanGenerator *)self->_panGenerator panningType]<= 0x11)
    {
      v27 = [(NSDictionary *)self->super._settings objectForKey:@"seed"];
      if (v27)
      {
        v28 = [v27 integerValue];
      }

      else
      {
        v29 = arc4random();
        v28 = arc4random() | (v29 << 32);
      }

      [(OKPanGenerator *)self->_panGenerator setRandomizer:v28];
    }
  }

  [-[OFUIView superview](-[OKWidgetContentEffect animatedView](self "animatedView")];
  v34 = v32;
  v35 = v33;
  if (self->_panGenerator)
  {
    v36 = v30;
    v37 = v31;
    if (!CGRectEqualToRect(*&v30, *MEMORY[0x277CBF3A0]))
    {
      [(OKPanGenerator *)self->_panGenerator mediaItemAspectRatio];
      *&v40 = v39;
      v38 = v34 / v35;
      *&v39 = v38;
      [(OKWidgetContentKenburnsEffect *)self _croppedFractionforRectAspectRatio:v39 photoAspectRatio:v40];
      v42 = v41;
      [(OKPanGenerator *)self->_panGenerator mediaItemAspectRatio];
      v44 = v34 / v35 / v43;
      [(OKPanGenerator *)self->_panGenerator setReferenceFrame:v36, v37, v34, v35];
      v45 = self->_panGenerator;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __46__OKWidgetContentKenburnsEffect_applySettings__block_invoke;
      v50[3] = &unk_279C91528;
      v50[4] = self;
      *&v50[5] = v44;
      [(OKPanGenerator *)v45 enumeratePanStepsWithBlock:v50];
      if (self->_panningCropThreshold > v42)
      {
        v46 = (self->_fromX + self->_toX) * 0.5;
        self->_toX = v46;
        self->_fromX = v46;
        v47 = (self->_fromY + self->_toY) * 0.5;
        self->_toY = v47;
        self->_fromY = v47;
      }
    }
  }

  v48 = 0.0;
  if (v34 > 0.0 && v35 > 0.0)
  {
    v48 = vabdd_f64(self->_toX, self->_fromX) / v34;
    v49 = vabdd_f64(self->_toY, self->_fromY) / v35;
    if (v48 <= v49)
    {
      v48 = v49;
    }
  }

  self->_panningAmount = v48;
  self->_fromX = self->_fromX - v34 * 0.5;
  self->_toX = self->_toX - v34 * 0.5;
  self->_fromY = self->_fromY - v35 * 0.5;
  self->_toY = self->_toY - v35 * 0.5;
}

double __46__OKWidgetContentKenburnsEffect_applySettings__block_invoke(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    *(v5 + 112) = a3;
    *(*(a1 + 32) + 128) = a4;
    v8 = *(a1 + 40);
    if (v8 >= 1.0)
    {
      v9 = a5;
    }

    else
    {
      v9 = v8 * a5;
    }

    *(*(a1 + 32) + 96) = v9;
  }

  else
  {
    *(v5 + 104) = a3;
    *(*(a1 + 32) + 120) = a4;
    v6 = *(a1 + 40);
    if (v6 >= 1.0)
    {
      v7 = a5;
    }

    else
    {
      v7 = v6 * a5;
    }

    *(*(a1 + 32) + 88) = v7;
  }

  v10 = *(a1 + 32);
  result = 1.0;
  if (*(v10 + 88) < 1.0 || *(v10 + 96) < 1.0)
  {
    *(v10 + 88) = kOKPanningDefaultFromScale;
    result = *&kOKPanningDefaultToScale;
    *(*(a1 + 32) + 96) = kOKPanningDefaultToScale;
  }

  return result;
}

+ (id)supportedSettings
{
  v33[13] = *MEMORY[0x277D85DE8];
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OKWidgetContentKenburnsEffect;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v32[0] = @"beginTime";
  v30[0] = @"type";
  v30[1] = @"default";
  v31[0] = &unk_287AF16B8;
  v31[1] = &unk_287AF16D0;
  v33[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v32[1] = @"duration";
  v28[0] = @"type";
  v28[1] = @"default";
  v29[0] = &unk_287AF16B8;
  v29[1] = &unk_287AF23B8;
  v33[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v32[2] = @"speedMitigator";
  v26[0] = @"type";
  v26[1] = @"default";
  v27[0] = &unk_287AF16B8;
  v27[1] = &unk_287AF23C8;
  v33[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v32[3] = @"durationPadding";
  v24[0] = @"type";
  v24[1] = @"default";
  v25[0] = &unk_287AF16B8;
  v25[1] = &unk_287AF23D8;
  v33[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v32[4] = @"maximumZoom";
  v22[0] = @"type";
  v22[1] = @"default";
  v23[0] = &unk_287AF16B8;
  v23[1] = &unk_287AF23E8;
  v33[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v32[5] = @"fromPt";
  v20[1] = @"default";
  v21[0] = &unk_287AF16E8;
  v20[0] = @"type";
  v21[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{512.0, 384.0}];
  v33[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v32[6] = @"toPt";
  v18[1] = @"default";
  v19[0] = &unk_287AF16E8;
  v18[0] = @"type";
  v19[1] = [MEMORY[0x277CCAE60] valueWithCGPoint:{512.0, 384.0}];
  v33[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v32[7] = @"timingFunction";
  v16[0] = @"type";
  v16[1] = @"default";
  v3 = *MEMORY[0x277CDA7C8];
  v17[0] = &unk_287AF1700;
  v17[1] = v3;
  v33[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v32[8] = @"seed";
  v14[0] = @"type";
  v14[1] = @"default";
  v15[0] = &unk_287AF1718;
  v15[1] = &unk_287AF16D0;
  v33[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v32[9] = @"panningType";
  v12[0] = @"type";
  v12[1] = @"mapping";
  v13[0] = &unk_287AF1730;
  v13[1] = &unk_287AF2158;
  v12[2] = @"default";
  v13[2] = &unk_287AF1748;
  v33[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v32[10] = @"mediaItemAspectRatio";
  v10 = @"type";
  v11 = &unk_287AF18F8;
  v33[10] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v32[11] = @"mediaItemRegionsOfInterest";
  v8 = @"type";
  v9 = &unk_287AF1910;
  v33[11] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v32[12] = @"panningCropThreshold";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF18F8;
  v7[1] = &unk_287AF23D8;
  v33[12] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v33, v32, 13)}];
  return v2;
}

- (void)prepareContentEffectWithView:(id)a3
{
  [(OKWidgetContentEffect *)self setAnimatedView:?];
  [(OKWidgetContentKenburnsEffect *)self applySettings];
  [(OKWidgetContentKenburnsEffect *)self _applyGeometryForStart:1];
  self->_animationIsUnderway = 0;
  self->_animationResumeTime = 0.0;
  self->_animationProgressAtStateChange = 0.0;
  v5 = [a3 layer];
  uuid = self->super._uuid;

  [v5 removeAnimationForKey:uuid];
}

- (void)startAnimation
{
  if ([(OKWidgetContentEffect *)self autoplay])
  {

    [(OKWidgetContentKenburnsEffect *)self resumeAnimation];
  }
}

- (void)pauseAnimation
{
  v21.receiver = self;
  v21.super_class = OKWidgetContentKenburnsEffect;
  [(OKWidgetContentEffect *)&v21 pauseAnimation];
  v3 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
  if (self->_animationIsUnderway)
  {
    v4 = v3;
    [(CAAnimation *)[(OKWidgetContentEffect *)self animation] duration];
    v6 = v5;
    [v4 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v6 - (v7 - self->_animationResumeTime);
    [(OKWidgetContentKenburnsEffect *)self _fullDuration];
    v10 = 1.0 - v8 / v9;
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    self->_animationProgressAtStateChange = v10;
    self->_animationResumeTime = 0.0;
    v11 = [v4 presentationLayer];
    if (v11)
    {
      [v11 transform];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
    }

    v12[4] = v17;
    v12[5] = v18;
    v12[6] = v19;
    v12[7] = v20;
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    [v4 setTransform:v12];
    [v4 removeAnimationForKey:self->super._uuid];
    self->_animationIsUnderway = self->_animationProgressAtStateChange < 1.0;
  }
}

- (void)resumeAnimation
{
  v43.receiver = self;
  v43.super_class = OKWidgetContentKenburnsEffect;
  [(OKWidgetContentEffect *)&v43 resumeAnimation];
  if (([objc_msgSend(-[OFUIView layer](-[OKWidgetContentEffect animatedView](self "animatedView")] & 1) == 0)
  {
    v3 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
    if (self->_animationIsUnderway)
    {
      [(OKWidgetContentKenburnsEffect *)self remainingPlayDuration];
      v5 = v4;
      if (self->_translationXAnimation)
      {
        v6 = MEMORY[0x277CCABB0];
        if (v3)
        {
          [v3 transform];
          v7 = *&v41;
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v7 = 0.0;
          v35 = 0u;
          v36 = 0u;
        }

        -[CABasicAnimation setFromValue:](self->_translationXAnimation, "setFromValue:", [v6 numberWithDouble:v7]);
        [(CABasicAnimation *)self->_translationXAnimation setDuration:v5];
      }

      if (self->_translationYAnimation)
      {
        v8 = MEMORY[0x277CCABB0];
        if (v3)
        {
          [v3 transform];
          v9 = *(&v33 + 1);
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = 0.0;
          v27 = 0u;
          v28 = 0u;
        }

        -[CABasicAnimation setFromValue:](self->_translationYAnimation, "setFromValue:", [v8 numberWithDouble:v9]);
        [(CABasicAnimation *)self->_translationYAnimation setDuration:v5];
      }

      if (self->_scaleAnimation)
      {
        v10 = MEMORY[0x277CCABB0];
        if (v3)
        {
          [v3 transform];
          v11 = *&v19;
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = 0.0;
          v19 = 0u;
          v20 = 0u;
        }

        -[CABasicAnimation setFromValue:](self->_scaleAnimation, "setFromValue:", [v10 numberWithDouble:v11]);
        [(CABasicAnimation *)self->_scaleAnimation setDuration:v5];
      }

      [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDuration:v5];
      -[CAAnimation setTimingFunction:](-[OKWidgetContentEffect animation](self, "animation"), "setTimingFunction:", [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]]);
    }

    else
    {
      [(OKWidgetContentKenburnsEffect *)self _setupAnimation];
    }

    v12 = *(MEMORY[0x277CD9DE8] + 80);
    v18[4] = *(MEMORY[0x277CD9DE8] + 64);
    v18[5] = v12;
    v13 = *(MEMORY[0x277CD9DE8] + 112);
    v18[6] = *(MEMORY[0x277CD9DE8] + 96);
    v18[7] = v13;
    v14 = *(MEMORY[0x277CD9DE8] + 16);
    v18[0] = *MEMORY[0x277CD9DE8];
    v18[1] = v14;
    v15 = *(MEMORY[0x277CD9DE8] + 48);
    v18[2] = *(MEMORY[0x277CD9DE8] + 32);
    v18[3] = v15;
    [v3 setTransform:v18];
    v16 = [(OKWidgetContentEffect *)self animation];
    if (v16)
    {
      [v3 addAnimation:v16 forKey:self->super._uuid];
      [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
      self->_animationResumeTime = v17;
      self->_animationIsUnderway = 1;
    }
  }
}

- (void)_setupAnimation
{
  [(OKWidgetContentKenburnsEffect *)self _fullDuration];
  v4 = v3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_fromScale == 1.0 && self->_toScale == 1.0)
  {
    v5 = *MEMORY[0x277CDA230];
  }

  else
  {

    self->_scaleAnimation = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale.xy"];
    -[CABasicAnimation setFromValue:](self->_scaleAnimation, "setFromValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_fromScale]);
    -[CABasicAnimation setToValue:](self->_scaleAnimation, "setToValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_toScale]);
    [(CABasicAnimation *)self->_scaleAnimation setBeginTime:self->_beginTime];
    [(CABasicAnimation *)self->_scaleAnimation setDuration:v4];
    -[CABasicAnimation setTimingFunction:](self->_scaleAnimation, "setTimingFunction:", [MEMORY[0x277CD9EF8] functionWithName:self->_timingFunction]);
    v5 = *MEMORY[0x277CDA230];
    [(CABasicAnimation *)self->_scaleAnimation setFillMode:*MEMORY[0x277CDA230]];
    [v7 addObject:self->_scaleAnimation];
  }

  self->_translationXAnimation = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.x"];
  -[CABasicAnimation setFromValue:](self->_translationXAnimation, "setFromValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_fromX]);
  -[CABasicAnimation setToValue:](self->_translationXAnimation, "setToValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_toX]);
  [(CABasicAnimation *)self->_translationXAnimation setBeginTime:self->_beginTime];
  [(CABasicAnimation *)self->_translationXAnimation setDuration:v4];
  -[CABasicAnimation setTimingFunction:](self->_translationXAnimation, "setTimingFunction:", [MEMORY[0x277CD9EF8] functionWithName:self->_timingFunction]);
  [(CABasicAnimation *)self->_translationXAnimation setFillMode:v5];
  [v7 addObject:self->_translationXAnimation];

  self->_translationYAnimation = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.translation.y"];
  -[CABasicAnimation setFromValue:](self->_translationYAnimation, "setFromValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_fromY]);
  -[CABasicAnimation setToValue:](self->_translationYAnimation, "setToValue:", [MEMORY[0x277CCABB0] numberWithDouble:self->_toY]);
  [(CABasicAnimation *)self->_translationYAnimation setBeginTime:self->_beginTime];
  [(CABasicAnimation *)self->_translationYAnimation setDuration:v4];
  -[CABasicAnimation setTimingFunction:](self->_translationYAnimation, "setTimingFunction:", [MEMORY[0x277CD9EF8] functionWithName:self->_timingFunction]);
  [(CABasicAnimation *)self->_translationYAnimation setFillMode:v5];
  [v7 addObject:self->_translationYAnimation];
  if ([v7 count])
  {
    v6 = [MEMORY[0x277CD9E00] animation];
    [v6 setAnimations:v7];
    [v6 setDuration:v4 + self->_beginTime];
    [v6 setRemovedOnCompletion:0];
    [v6 setFillMode:v5];
    [v6 setDelegate:self];
    [(OKWidgetContentEffect *)self setAnimation:v6];
  }
}

- (void)_applyGeometryForStart:(BOOL)a3
{
  v4 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__toScale;
  if (a3)
  {
    v4 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__fromScale;
    v5 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__fromX;
  }

  else
  {
    v5 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__toX;
  }

  if (a3)
  {
    v6 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__fromY;
  }

  else
  {
    v6 = &OBJC_IVAR___OKWidgetContentKenburnsEffect__toY;
  }

  CATransform3DMakeScale(&v10, *(&self->super.super.isa + *v4), *(&self->super.super.isa + *v4), 1.0);
  v14 = *&v10.m21;
  v15 = *&v10.m23;
  v16 = *&v10.m31;
  v17 = *&v10.m33;
  v12 = *&v10.m11;
  v13 = *&v10.m13;
  v11 = *&v10.m43;
  v7 = *(&self->super.super.isa + *v5);
  v8 = *(&self->super.super.isa + *v6);
  v9 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
  *&v10.m21 = v14;
  *&v10.m23 = v15;
  *&v10.m31 = v16;
  *&v10.m33 = v17;
  *&v10.m11 = v12;
  *&v10.m13 = v13;
  v10.m41 = v7;
  v10.m42 = v8;
  *&v10.m43 = v11;
  [v9 setTransform:&v10];
}

- (float)_croppedFractionforRectAspectRatio:(float)a3 photoAspectRatio:(float)a4
{
  if (a4 >= a3)
  {
    return (a4 - a3) / a4;
  }

  else
  {
    return (1.0 / a4 - 1.0 / a3) / (1.0 / a4);
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    self->_animationProgressAtStateChange = 1.0;
    [(OKWidgetContentKenburnsEffect *)self _applyGeometryForStart:0];

    [(OKWidgetContentKenburnsEffect *)self stopAnimation];
  }

  else if ([(OKWidgetContentEffect *)self loop])
  {
    v5 = [(OKWidgetContentEffect *)self animation];
    if (v5)
    {
      v6 = v5;
      v7 = [(OFUIView *)[(OKWidgetContentEffect *)self animatedView] layer];
      uuid = self->super._uuid;

      [v7 addAnimation:v6 forKey:uuid];
    }
  }
}

- (void)stopAnimation
{
  [(CAAnimation *)[(OKWidgetContentEffect *)self animation] setDelegate:0];
  [(OKWidgetContentEffect *)self setAnimation:0];
  [-[OFUIView layer](-[OKWidgetContentEffect animatedView](self "animatedView")];
  self->_animationIsUnderway = 0;
}

- (void)setDefaultDuration:(double)a3
{
  [(OKWidgetContentEffect *)self defaultDuration];
  if (v5 != a3)
  {
    if (self->_animationIsUnderway)
    {
      [(OKWidgetContentKenburnsEffect *)self pauseAnimation];
    }

    v6.receiver = self;
    v6.super_class = OKWidgetContentKenburnsEffect;
    [(OKWidgetContentEffect *)&v6 setDefaultDuration:a3];
    if (self->_animationIsUnderway)
    {
      [(OKWidgetContentKenburnsEffect *)self resumeAnimation];
    }
  }
}

- (double)_fullDuration
{
  v3 = [(NSDictionary *)self->super._settings objectForKey:@"duration"];
  if (v3)
  {
    [v3 doubleValue];
    if (result < 0.0)
    {
      [(OKWidgetContentEffect *)self defaultDuration];
      return v5 + self->_durationPadding;
    }
  }

  else
  {
    result = 0.0;
    if (self->_panningAmount > 0.0)
    {
      [(OKWidgetContentEffect *)self defaultDuration];
      return self->_durationPadding + v6 * (self->_panningAmount * self->_speedMitigator + 1.0);
    }
  }

  return result;
}

- (double)remainingPlayDuration
{
  if ([(OKWidgetContentEffect *)self animation])
  {
    v3 = 1.0 - self->_animationProgressAtStateChange;
    [(OKWidgetContentKenburnsEffect *)self _fullDuration];
    v5 = v3 * v4;
    if (self->_animationResumeTime > 0.0)
    {
      [-[OFUIView layer](-[OKWidgetContentEffect animatedView](self "animatedView")];
      return v5 - (v6 - self->_animationResumeTime);
    }

    return v5;
  }

  if (self->_animationResumeTime != 0.0)
  {
    return 0.0;
  }

  [(OKWidgetContentKenburnsEffect *)self _fullDuration];
  return result;
}

@end