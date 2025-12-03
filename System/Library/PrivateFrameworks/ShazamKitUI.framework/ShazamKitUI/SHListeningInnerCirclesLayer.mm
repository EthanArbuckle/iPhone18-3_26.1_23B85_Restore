@interface SHListeningInnerCirclesLayer
- (id)buildInnerCircleLayers;
- (id)innerCircleCoreAnimation;
- (id)innerCircleScaleNullAnimation;
- (void)addCoreAnimationToInnerCircleLayer:(id)layer withStartOffset:(double)offset;
- (void)addScaleNullAnimationToInnerCircleLayer:(id)layer;
- (void)layoutSublayers;
- (void)setup;
- (void)startListeningAnimation;
@end

@implementation SHListeningInnerCirclesLayer

- (void)setup
{
  v15 = *MEMORY[0x277D85DE8];
  buildInnerCircleLayers = [(SHListeningInnerCirclesLayer *)self buildInnerCircleLayers];
  [(SHListeningInnerCirclesLayer *)self setInnerCircleLayers:buildInnerCircleLayers];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  innerCircleLayers = [(SHListeningInnerCirclesLayer *)self innerCircleLayers];
  v5 = [innerCircleLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(innerCircleLayers);
        }

        [(SHListeningInnerCirclesLayer *)self addSublayer:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [innerCircleLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)buildInnerCircleLayers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    v5 = [SHListeningInnerCircleLayer alloc];
    palette = [(SHPaletteLayer *)self palette];
    v7 = [(SHPaletteLayer *)v5 initWithPalette:palette];

    v8 = [&unk_2877ACE78 objectAtIndex:i];
    [v8 floatValue];
    [(SHListeningInnerCircleLayer *)v7 setOpacity:?];

    [v3 addObject:v7];
  }

  return v3;
}

- (void)layoutSublayers
{
  v13.receiver = self;
  v13.super_class = SHListeningInnerCirclesLayer;
  [(SHListeningInnerCirclesLayer *)&v13 layoutSublayers];
  [(SHListeningInnerCirclesLayer *)self bounds];
  MidX = CGRectGetMidX(v14);
  [(SHListeningInnerCirclesLayer *)self bounds];
  MidY = CGRectGetMidY(v15);
  [(SHListeningInnerCirclesLayer *)self bounds];
  Width = CGRectGetWidth(v16);
  [(SHListeningInnerCirclesLayer *)self bounds];
  Height = CGRectGetHeight(v17);
  for (i = 0; i != 4; ++i)
  {
    innerCircleLayers = [(SHListeningInnerCirclesLayer *)self innerCircleLayers];
    v9 = [innerCircleLayers objectAtIndex:i];

    v10 = [&unk_2877ACE90 objectAtIndex:i];
    [v10 floatValue];
    v12 = v11;

    [v9 setBounds:{0.0, 0.0, Width * v12, Height * v12}];
    [v9 setPosition:{MidX, MidY}];
    [v9 setNeedsLayout];
    [v9 layoutIfNeeded];
  }
}

- (void)startListeningAnimation
{
  for (i = 0; i != 4; ++i)
  {
    innerCircleLayers = [(SHListeningInnerCirclesLayer *)self innerCircleLayers];
    v5 = [innerCircleLayers objectAtIndex:i];

    v6 = [&unk_2877ACEA8 objectAtIndex:i];
    [v6 floatValue];
    v8 = v7;

    [(SHListeningInnerCirclesLayer *)self addCoreAnimationToInnerCircleLayer:v5 withStartOffset:v8];
    [(SHListeningInnerCirclesLayer *)self addScaleNullAnimationToInnerCircleLayer:v5];
  }
}

- (void)addCoreAnimationToInnerCircleLayer:(id)layer withStartOffset:(double)offset
{
  layerCopy = layer;
  innerCircleCoreAnimation = [(SHListeningInnerCirclesLayer *)self innerCircleCoreAnimation];
  [innerCircleCoreAnimation duration];
  v8 = [SHListeningViewHelperMethods animationFromAnimation:innerCircleCoreAnimation withStartOffset:v7 * offset duration:2.32916653];
  v9 = [SHListeningViewHelperMethods animationFromAnimation:v8 withStartOffset:0.209624996 duration:1.90991654];

  [v9 setRemovedOnCompletion:0];
  LODWORD(v10) = 2139095040;
  [v9 setRepeatCount:v10];
  circleContainerLayer = [layerCopy circleContainerLayer];

  [circleContainerLayer addAnimation:v9 forKey:@"SHListeningInnerCircleCoreAnimationGroupKey"];
}

- (void)addScaleNullAnimationToInnerCircleLayer:(id)layer
{
  layerCopy = layer;
  innerCircleScaleNullAnimation = [(SHListeningInnerCirclesLayer *)self innerCircleScaleNullAnimation];
  v7 = [SHListeningViewHelperMethods animationFromAnimation:innerCircleScaleNullAnimation withStartOffset:0.209624996 duration:1.90991654];

  [v7 setRemovedOnCompletion:0];
  LODWORD(v6) = 2139095040;
  [v7 setRepeatCount:v6];
  [layerCopy addAnimation:v7 forKey:@"SHListeningInnerCircleScaleNullAnimationKey"];
}

- (id)innerCircleScaleNullAnimation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  [v3 setValues:&unk_2877ACEC0];
  [v3 setKeyTimes:&unk_2877ACED8];
  [v3 setDuration:2.32916653];
  linearTimingFunction = [(SHListeningInnerCirclesLayer *)self linearTimingFunction];
  v9[0] = linearTimingFunction;
  inOutSineTimingFunction = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v9[1] = inOutSineTimingFunction;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setTimingFunctions:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)innerCircleCoreAnimation
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  [v3 setValues:&unk_2877ACEF0];
  [v3 setKeyTimes:&unk_2877ACF08];
  inOutSineTimingFunction = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v22[0] = inOutSineTimingFunction;
  linearTimingFunction = [(SHListeningInnerCirclesLayer *)self linearTimingFunction];
  v22[1] = linearTimingFunction;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v3 setTimingFunctions:v6];

  [v3 setDuration:2.92499983];
  v7 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v7 setValues:&unk_2877ACF20];
  [v7 setKeyTimes:&unk_2877ACF38];
  inOutSineTimingFunction2 = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v21[0] = inOutSineTimingFunction2;
  inOutSineTimingFunction3 = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v21[1] = inOutSineTimingFunction3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [v7 setTimingFunctions:v10];

  [v7 setDuration:2.92499983];
  v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"sublayerTransform.scale"];
  [v11 setValues:&unk_2877ACF50];
  [v11 setKeyTimes:&unk_2877ACF68];
  inOutSineTimingFunction4 = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v20[0] = inOutSineTimingFunction4;
  inOutSineTimingFunction5 = [(SHListeningInnerCirclesLayer *)self inOutSineTimingFunction];
  v20[1] = inOutSineTimingFunction5;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v11 setTimingFunctions:v14];

  [v11 setDuration:2.92499983];
  animation = [MEMORY[0x277CD9E00] animation];
  v19[0] = v3;
  v19[1] = v7;
  v19[2] = v11;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [animation setAnimations:v16];

  [animation setDuration:2.92499983];
  [animation setFillMode:*MEMORY[0x277CDA238]];

  v17 = *MEMORY[0x277D85DE8];

  return animation;
}

@end