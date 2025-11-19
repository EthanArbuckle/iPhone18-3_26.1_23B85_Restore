@interface NCSpringAnimationSettings
+ (id)moduleWithSectionTitle:(id)a3;
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (CAFrameRateRange)frameRateRange;
- (void)animateTracking:(BOOL)a3 animations:(id)a4 completion:(id)a5;
- (void)setDefaultCriticallyDampedValues;
- (void)setDefaultValues;
- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4;
@end

@implementation NCSpringAnimationSettings

+ (id)moduleWithSectionTitle:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v6 = [MEMORY[0x277D431F0] rowWithTitle:@"Damping Ratio" valueKeyPath:@"dampingRatio"];
  v7 = [v6 between:0.001 and:10.0];
  v8 = [v7 precision:3];
  [v5 addObject:v8];

  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"response"];
  v10 = [v9 between:0.0 and:1000.0];
  v11 = [v10 precision:3];
  [v5 addObject:v11];

  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Retarget Impulse" valueKeyPath:@"retargetImpulse"];
  v13 = [v12 between:0.0 and:1.0];
  v14 = [v13 precision:3];
  [v5 addObject:v14];

  v15 = [MEMORY[0x277D431E0] rowWithTitle:@"Frame Rate Range" childSettingsKeyPath:@"preferredFrameRateRange"];
  [v5 addObject:v15];

  v16 = MEMORY[0x277D43218];
  v17 = [MEMORY[0x277D43218] sectionWithRows:v5 title:v4];

  v21[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v19 = [v16 moduleWithTitle:0 contents:v18];

  return v19;
}

- (void)setFrameRateRange:(CAFrameRateRange)a3 highFrameRateReason:(unsigned int)a4
{
  v4 = *&a4;
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  v11 = [(NCSpringAnimationSettings *)self preferredFrameRateRange];
  *&v8 = minimum;
  *&v9 = maximum;
  *&v10 = preferred;
  [v11 setFrameRateRange:v4 highFrameRateReason:{v8, v9, v10}];
}

- (CAFrameRateRange)frameRateRange
{
  v2 = [(NCSpringAnimationSettings *)self preferredFrameRateRange];
  [v2 frameRateRange];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.preferred = v11;
  result.maximum = v10;
  result.minimum = v9;
  return result;
}

- (void)animateTracking:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = MEMORY[0x277D75D18];
  v9 = a5;
  v10 = NCModifyFrameRateForAnimationBlockFromSettings(a4, self);
  [v8 _animateUsingSpringBehavior:self tracking:v6 animations:v10 completion:v9];
}

- (void)setDefaultValues
{
  [(NCSpringAnimationSettings *)self setDampingRatio:0.845];
  [(NCSpringAnimationSettings *)self setResponse:0.531];

  [(NCSpringAnimationSettings *)self setRetargetImpulse:0.0];
}

- (void)setDefaultCriticallyDampedValues
{
  [(NCSpringAnimationSettings *)self setDefaultValues];
  [(NCSpringAnimationSettings *)self setDampingRatio:1.0];

  [(NCSpringAnimationSettings *)self setResponse:0.336];
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  retstr->var9 = 0.0;
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  var7 = self->var7;
  *&retstr->var2 = 0u;
  var8 = self->var8;
  retstr->var0 = var7;
  retstr->var1 = var8;
  retstr->var10 = self->var9;
  return self;
}

@end