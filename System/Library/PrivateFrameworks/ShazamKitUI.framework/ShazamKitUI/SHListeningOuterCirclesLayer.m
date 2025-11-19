@interface SHListeningOuterCirclesLayer
- (id)buildOuterCircleLayers;
- (id)outerCircleCoreBorderWidthAnimation;
- (id)outerCircleCoreScaleAnimation;
- (id)outerCircleCoreSizeAnimation;
- (id)scaleNullAnimation;
- (void)addCoreAnimationToOuterCircleLayer:(id)a3 withStartOffset:(double)a4;
- (void)addScaleAnimationToCircleLayer:(id)a3;
- (void)layoutSublayers;
- (void)setup;
- (void)startListeningAnimation;
@end

@implementation SHListeningOuterCirclesLayer

- (void)setup
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SHListeningOuterCirclesLayer *)self buildOuterCircleLayers];
  [(SHListeningOuterCirclesLayer *)self setOuterCircleLayers:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(SHListeningOuterCirclesLayer *)self outerCircleLayers];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(SHListeningOuterCirclesLayer *)self addSublayer:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)buildOuterCircleLayers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [SHListeningOuterCircleLayer alloc];
    v8 = [(SHPaletteLayer *)self palette];
    v9 = [(SHPaletteLayer *)v7 initWithPalette:v8];

    v10 = [&unk_2877ACF80 objectAtIndex:v4];
    [v10 floatValue];
    [(SHListeningOuterCircleLayer *)v9 setOpacity:?];

    [v3 addObject:v9];
    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);

  return v3;
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = SHListeningOuterCirclesLayer;
  [(SHListeningOuterCirclesLayer *)&v15 layoutSublayers];
  [(SHListeningOuterCirclesLayer *)self bounds];
  MidX = CGRectGetMidX(v16);
  [(SHListeningOuterCirclesLayer *)self bounds];
  MidY = CGRectGetMidY(v17);
  [(SHListeningOuterCirclesLayer *)self bounds];
  Width = CGRectGetWidth(v18);
  [(SHListeningOuterCirclesLayer *)self bounds];
  Height = CGRectGetHeight(v19);
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = [(SHListeningOuterCirclesLayer *)self outerCircleLayers];
    v11 = [v10 objectAtIndex:v7];

    v12 = [&unk_2877ACF98 objectAtIndex:v7];
    [v12 floatValue];
    v14 = v13;

    [v11 setBounds:{0.0, 0.0, Width * v14, Height * v14}];
    [v11 setPosition:{MidX, MidY}];
    [v11 setNeedsDisplay];
    [v11 layoutIfNeeded];

    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
}

- (void)startListeningAnimation
{
  v3 = [(SHListeningOuterCirclesLayer *)self outerCircleLayers];
  v4 = [v3 objectAtIndex:0];

  v5 = [&unk_2877ACFB0 objectAtIndex:0];
  [v5 floatValue];
  v7 = v6;

  [(SHListeningOuterCirclesLayer *)self addCoreAnimationToOuterCircleLayer:v4 withStartOffset:v7];
  [(SHListeningOuterCirclesLayer *)self addScaleAnimationToCircleLayer:v4];

  v8 = [(SHListeningOuterCirclesLayer *)self outerCircleLayers];
  v12 = [v8 objectAtIndex:1];

  v9 = [&unk_2877ACFB0 objectAtIndex:1];
  [v9 floatValue];
  v11 = v10;

  [(SHListeningOuterCirclesLayer *)self addCoreAnimationToOuterCircleLayer:v12 withStartOffset:v11];
  [(SHListeningOuterCirclesLayer *)self addScaleAnimationToCircleLayer:v12];
}

- (void)addScaleAnimationToCircleLayer:(id)a3
{
  v4 = a3;
  v6 = [(SHListeningOuterCirclesLayer *)self scaleNullAnimation];
  LODWORD(v5) = 2139095040;
  [v6 setRepeatCount:v5];
  [v6 setRemovedOnCompletion:0];
  [v4 addAnimation:v6 forKey:@"SHListeningOuterCircleScaleNullAnimationKey"];
}

- (void)addCoreAnimationToOuterCircleLayer:(id)a3 withStartOffset:(double)a4
{
  v24[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SHListeningOuterCirclesLayer *)self outerCircleCoreSizeAnimation];
  v8 = [(SHListeningOuterCirclesLayer *)self outerCircleCoreBorderWidthAnimation];
  v9 = [(SHListeningOuterCirclesLayer *)self outerCircleCoreScaleAnimation];
  v10 = [MEMORY[0x277CD9E00] animation];
  v24[0] = v7;
  v24[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v10 setAnimations:v11];

  [v10 setDuration:1.50000004];
  v12 = *MEMORY[0x277CDA230];
  [v10 setFillMode:*MEMORY[0x277CDA230]];
  v13 = [MEMORY[0x277CD9E00] animation];
  v23 = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v13 setAnimations:v14];

  [v13 setDuration:1.50000004];
  [v13 setFillMode:v12];
  v15 = a4 * 1.50000004;
  v16 = [SHListeningViewHelperMethods animationFromAnimation:v10 withStartOffset:v15 duration:1.58333337];
  v17 = [SHListeningViewHelperMethods animationFromAnimation:v13 withStartOffset:v15 duration:1.58333337];
  LODWORD(v18) = 2139095040;
  [v16 setRepeatCount:v18];
  [v16 setRemovedOnCompletion:0];
  LODWORD(v19) = 2139095040;
  [v17 setRepeatCount:v19];
  [v17 setRemovedOnCompletion:0];
  v20 = [v6 circleLayer];
  [v20 addAnimation:v16 forKey:@"SHListeningOuterCircleCoreAnimationGroup1Key"];

  v21 = [v6 circleContainerLayer];

  [v21 addAnimation:v17 forKey:@"SHListeningOuterCircleCoreAnimationGroup2Key"];
  v22 = *MEMORY[0x277D85DE8];
}

- (id)scaleNullAnimation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  [v3 setValues:&unk_2877ACFC8];
  [v3 setKeyTimes:&unk_2877ACFE0];
  v4 = [(SHListeningOuterCirclesLayer *)self linearTimingFunction];
  v9[0] = v4;
  v5 = [(SHListeningOuterCirclesLayer *)self inOutSineTimingFunction];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setTimingFunctions:v6];

  [v3 setDuration:1.58333337];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)outerCircleCoreSizeAnimation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  [v3 setValues:&unk_2877ACFF8];
  [v3 setKeyTimes:&unk_2877AD010];
  v4 = [(SHListeningOuterCirclesLayer *)self inOutSineTimingFunction];
  v9[0] = v4;
  v5 = [(SHListeningOuterCirclesLayer *)self linearTimingFunction];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setTimingFunctions:v6];

  [v3 setDuration:1.50000004];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)outerCircleCoreBorderWidthAnimation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"borderWidth"];
  [v3 setValues:&unk_2877AD028];
  [v3 setKeyTimes:&unk_2877AD040];
  v4 = [(SHListeningOuterCirclesLayer *)self inOutQuartTimingFunction];
  v5 = [(SHListeningOuterCirclesLayer *)self linearTimingFunction];
  v10[1] = v5;
  v6 = [(SHListeningOuterCirclesLayer *)self inOutQuartTimingFunction];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  [v3 setTimingFunctions:v7];

  [v3 setDuration:1.50000004];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)outerCircleCoreScaleAnimation
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale"];
  [v3 setValues:&unk_2877AD058];
  [v3 setKeyTimes:&unk_2877AD070];
  v4 = [(SHListeningOuterCirclesLayer *)self inOutSineTimingFunction];
  v9[0] = v4;
  v5 = [(SHListeningOuterCirclesLayer *)self linearTimingFunction];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v3 setTimingFunctions:v6];

  [v3 setDuration:1.50000004];
  [v3 setFillMode:*MEMORY[0x277CDA238]];
  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

@end