@interface PREditingReticleView
+ (double)borderColor;
+ (double)maxBorderColor;
+ (double)minBorderColor;
+ (double)vibrancyStrength;
+ (id)reticleVibrancyForVibrancyConfiguration:(id)a3;
- (PREditingReticleView)init;
- (void)_startActiveAnimation;
- (void)_stopActiveAnimation;
- (void)setActive:(BOOL)a3;
- (void)setOutlineBorderCornerRadius:(double)a3;
@end

@implementation PREditingReticleView

+ (double)borderColor
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PRReticleBorderColor"];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1F1C6BD40;
  }

  [v3 doubleValue];
  v6 = v5;

  return v6;
}

+ (double)minBorderColor
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PRReticleMinBorderColor"];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1F1C6BD50;
  }

  [v3 doubleValue];
  v6 = v5;

  return v6;
}

+ (double)maxBorderColor
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PRReticleMaxBorderColor"];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1F1C6BD60;
  }

  [v3 doubleValue];
  v6 = v5;

  return v6;
}

+ (double)vibrancyStrength
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PRReticleVibrancyStrength"];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_1F1C6BD70;
  }

  [v3 doubleValue];
  v6 = v5;

  return v6;
}

+ (id)reticleVibrancyForVibrancyConfiguration:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E69DC888];
  +[PREditingReticleView vibrancyStrength];
  v6 = [v4 colorWithWhite:1.0 alpha:v5];
  if (v3)
  {
    v7 = [v3 copyWithEffectType:0 color:v6];
    v8 = [v7 copyWithGroupName:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E698E810]) initWithEffectType:0 backgroundType:0 color:v6 groupName:0];
  }

  return v8;
}

- (PREditingReticleView)init
{
  v18.receiver = self;
  v18.super_class = PREditingReticleView;
  v2 = [(PREditingReticleView *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(PREditingReticleView *)v2 layer];
    [v4 setAllowsGroupOpacity:0];

    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PREditingReticleView *)v3 bounds];
    v6 = [v5 initWithFrame:?];
    outlineBorderView = v3->_outlineBorderView;
    v3->_outlineBorderView = v6;

    [(UIView *)v3->_outlineBorderView setAutoresizingMask:18];
    v8 = [(UIView *)v3->_outlineBorderView layer];
    v9 = MEMORY[0x1E69DC888];
    +[PREditingReticleView borderColor];
    v10 = [v9 colorWithWhite:? alpha:?];
    [v8 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(UIView *)v3->_outlineBorderView layer];
    [v11 setBorderWidth:3.0];

    v12 = [(UIView *)v3->_outlineBorderView layer];
    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    v15 = 16.0;
    if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v15 = 20.0;
    }

    [v12 setCornerRadius:v15];

    v16 = [(UIView *)v3->_outlineBorderView layer];
    [v16 setCornerCurve:*MEMORY[0x1E69796E8]];

    [(PREditingReticleView *)v3 addSubview:v3->_outlineBorderView];
    [(PREditingReticleView *)v3 setAccessibilityIdentifier:@"posterboard-editing-reticle-view"];
  }

  return v3;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(PREditingReticleView *)self _startActiveAnimation];
    }

    else
    {
      [(PREditingReticleView *)self _stopActiveAnimation];
    }
  }
}

- (void)setOutlineBorderCornerRadius:(double)a3
{
  if (self->_outlineBorderCornerRadius != a3)
  {
    self->_outlineBorderCornerRadius = a3;
    v4 = [(UIView *)self->_outlineBorderView layer];
    [v4 setCornerRadius:a3];
  }
}

- (void)_startActiveAnimation
{
  v23 = [(PREditingReticleView *)self outlineBorderView];
  v2 = MEMORY[0x1E69DC888];
  +[PREditingReticleView minBorderColor];
  v3 = [v2 colorWithWhite:? alpha:?];
  v4 = MEMORY[0x1E69DC888];
  +[PREditingReticleView maxBorderColor];
  v5 = [v4 colorWithWhite:? alpha:?];
  v25 = CAFrameRateRangeMake(20.0, 30.0, 24.0);
  minimum = v25.minimum;
  maximum = v25.maximum;
  preferred = v25.preferred;
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"borderColor"];
  v10 = [v23 layer];
  [v9 setFromValue:{objc_msgSend(v10, "borderColor")}];

  [v9 setToValue:{objc_msgSend(v3, "CGColor")}];
  [v9 setDuration:0.5];
  v11 = *MEMORY[0x1E69795C0];
  [v9 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  *&v12 = minimum;
  *&v13 = maximum;
  *&v14 = preferred;
  [v9 setPreferredFrameRateRange:{v12, v13, v14}];
  v15 = [v23 layer];
  [v15 addAnimation:v9 forKey:@"pre-active animation"];

  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"borderColor"];
  [v16 setFromValue:{objc_msgSend(v3, "CGColor")}];
  [v16 setToValue:{objc_msgSend(v5, "CGColor")}];
  LODWORD(v17) = 2139095040;
  [v16 setRepeatCount:v17];
  [v16 setDuration:0.7];
  [v16 setAutoreverses:1];
  [v16 setBeginTime:0.5];
  [v16 setBeginTimeMode:v11];
  *&v18 = minimum;
  *&v19 = maximum;
  *&v20 = preferred;
  [v16 setPreferredFrameRateRange:{v18, v19, v20}];
  v21 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v16 setTimingFunction:v21];

  v22 = [v23 layer];
  [v22 addAnimation:v16 forKey:@"active animation"];
}

- (void)_stopActiveAnimation
{
  v12 = [(PREditingReticleView *)self outlineBorderView];
  v2 = [v12 layer];
  v3 = [v2 presentationLayer];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v12 layer];
  }

  v6 = v5;

  v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"borderColor"];
  [v7 setFromValue:{objc_msgSend(v6, "borderColor")}];
  v8 = MEMORY[0x1E69DC888];
  +[PREditingReticleView borderColor];
  v9 = [v8 colorWithWhite:? alpha:?];
  [v7 setToValue:{objc_msgSend(v9, "CGColor")}];

  [MEMORY[0x1E69DD250] _currentAnimationDuration];
  if (v10 == 0.0)
  {
    v10 = 0.3;
  }

  [v7 setDuration:v10];
  v14 = CAFrameRateRangeMake(20.0, 30.0, 24.0);
  [v7 setPreferredFrameRateRange:{*&v14.minimum, *&v14.maximum, *&v14.preferred}];
  v11 = [v12 layer];
  [v11 addAnimation:v7 forKey:@"active animation"];
}

@end