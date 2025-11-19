@interface SUICDictationWaveView
- (CGRect)_startingFrameForPipAtIndex:(unint64_t)a3;
- (SUICDictationWaveView)initWithFrame:(CGRect)a3;
- (double)_heightForIntroAnimationPips;
- (double)_leftMargin;
- (double)_originXForPipAtIndex:(unint64_t)a3;
- (float)_heightMultiplierForPipIndex:(unint64_t)a3;
- (float)_noiseForPipIndex:(unint64_t)a3;
- (float)_sinusoidalTaperForPipIndex:(unint64_t)a3;
- (float)_smoothStepTaperForPipIndex:(unint64_t)a3;
- (float)_smoothStepWithLowerBound:(float)a3 upperBound:(float)a4 innerValue:(float)a5;
- (unint64_t)_numberOfPips;
- (void)_addNewPips;
- (void)_animateInPipsBetweenLeftIndex:(unint64_t)a3 rightIndex:(unint64_t)a4;
- (void)_introAnimationTick;
- (void)_removeAllPips;
- (void)_resetPips;
- (void)_showPipsWithoutIntroAnimation;
- (void)_tick:(id)a3;
- (void)_updatePipColor;
- (void)_updatePipHeightAtIndex:(unint64_t)a3 withHeight:(double)a4;
- (void)_updatePipHeights;
- (void)layoutSubviews;
- (void)setAudioPowerLevelDataSource:(id)a3;
- (void)setPipColor:(id)a3;
- (void)setPowerLevel:(float)a3;
@end

@implementation SUICDictationWaveView

- (SUICDictationWaveView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = SUICDictationWaveView;
  v7 = [(SUICDictationWaveView *)&v17 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_cachedFrame.origin.x = x;
    v7->_cachedFrame.origin.y = y;
    v7->_cachedFrame.size.width = width;
    v7->_cachedFrame.size.height = height;
    v9 = [SUICAudioLevelSmoother alloc];
    LODWORD(v10) = -1032847360;
    LODWORD(v11) = 1051931443;
    LODWORD(v12) = 1063675494;
    LODWORD(v13) = -10.0;
    v14 = [(SUICAudioLevelSmoother *)v9 initWithMinimumPower:5 maximumPower:v10 historyLength:v13 attackSpeed:v11 decaySpeed:v12];
    smoother = v8->_smoother;
    v8->_smoother = v14;

    v8->_initialOffset = (vcvts_n_f32_s32(rand(), 0x1FuLL) * 600.0) + -300.0;
    [(SUICDictationWaveView *)v8 _resetPips];
  }

  return v8;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUICDictationWaveView;
  [(SUICDictationWaveView *)&v11 layoutSubviews];
  [(SUICDictationWaveView *)self frame];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  if (!CGRectEqualToRect(self->_cachedFrame, v12))
  {
    [(SUICDictationWaveView *)self frame];
    self->_cachedFrame.origin.x = v7;
    self->_cachedFrame.origin.y = v8;
    self->_cachedFrame.size.width = v9;
    self->_cachedFrame.size.height = v10;
    [(SUICDictationWaveView *)self _resetPips];
    [(SUICDictationWaveView *)self _showPipsWithoutIntroAnimation];
  }
}

- (void)_showPipsWithoutIntroAnimation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_pipLayers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v2);
        }

        LODWORD(v4) = 1.0;
        [*(*(&v8 + 1) + 8 * v7++) setOpacity:{v4, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updatePipColor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_pipLayers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setBackgroundColor:{-[UIColor CGColor](self->_pipColor, "CGColor", v8)}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_resetPips
{
  [(SUICDictationWaveView *)self _removeAllPips];

  [(SUICDictationWaveView *)self _addNewPips];
}

- (void)_removeAllPips
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_pipLayers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeFromSuperlayer];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_addNewPips
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pipLayers = self->_pipLayers;
  self->_pipLayers = v3;

  if ([(SUICDictationWaveView *)self _numberOfPips])
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E6979398] layer];
      [v6 setOpacity:0.0];
      [v6 setBackgroundColor:{-[UIColor CGColor](self->_pipColor, "CGColor")}];
      [(SUICDictationWaveView *)self _startingFrameForPipAtIndex:v5];
      [v6 setFrame:?];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v7 = [(SUICDictationWaveView *)self layer];
      [v7 addSublayer:v6];

      [(NSMutableArray *)self->_pipLayers addObject:v6];
      [MEMORY[0x1E6979518] commit];

      ++v5;
    }

    while ([(SUICDictationWaveView *)self _numberOfPips]> v5);
  }
}

- (void)_animateInPipsBetweenLeftIndex:(unint64_t)a3 rightIndex:(unint64_t)a4
{
  if (a3 <= a4 && [(NSMutableArray *)self->_pipLayers count]> a4)
  {
    v7 = a3;
    do
    {
      v8 = [(NSMutableArray *)self->_pipLayers objectAtIndex:v7];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      LODWORD(v9) = 1.0;
      [v8 setOpacity:v9];
      [MEMORY[0x1E6979518] commit];

      ++v7;
    }

    while (v7 <= a4);
    [(SUICDictationWaveView *)self _heightForIntroAnimationPips];
    [(SUICDictationWaveView *)self _updatePipHeightAtIndex:a3 withHeight:?];
    [(SUICDictationWaveView *)self _heightForIntroAnimationPips];

    [(SUICDictationWaveView *)self _updatePipHeightAtIndex:a4 withHeight:?];
  }
}

- (void)_introAnimationTick
{
  v3 = (self->_numberOfFrames / self->_framesPerSecond);
  [(SUICDictationWaveView *)self _intervalForEachPipAnimation];
  *&v4 = v3 / v4;
  v5 = vcvtms_u32_f32(*&v4);
  v6 = [(SUICDictationWaveView *)self _numberOfPips]>> 1;
  if (v6 >= v5)
  {
    v7 = v6 + v5 + ([(SUICDictationWaveView *)self _numberOfPips]& 1) - 1;

    [(SUICDictationWaveView *)self _animateInPipsBetweenLeftIndex:v6 - v5 rightIndex:v7];
  }
}

- (void)_updatePipHeightAtIndex:(unint64_t)a3 withHeight:(double)a4
{
  if ([(NSMutableArray *)self->_pipLayers count]> a3)
  {
    v12 = [(NSMutableArray *)self->_pipLayers objectAtIndex:a3];
    [(SUICDictationWaveView *)self _originXForPipAtIndex:a3];
    v8 = v7;
    [(SUICDictationWaveView *)self frame];
    v9 = (CGRectGetHeight(v14) - a4) * 0.5;
    [(SUICDictationWaveView *)self _pipWidth];
    [v12 setCornerRadius:v10 * 0.5];
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(SUICDictationWaveView *)self _pipWidth];
    [v12 setFrame:{v8, v9, v11, a4}];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)_updatePipHeights
{
  if ([(NSMutableArray *)self->_pipLayers count])
  {
    v3 = 0;
    do
    {
      [(SUICDictationWaveView *)self _maximumPipHeight];
      v5 = v4;
      [(SUICDictationWaveView *)self _minimumPipHeight];
      v7 = v5 - v6;
      [(SUICDictationWaveView *)self _heightMultiplierForPipIndex:v3];
      v9 = v7 * v8;
      [(SUICDictationWaveView *)self _minimumPipHeight];
      v11 = v10 + v9;
      [(SUICDictationWaveView *)self _minimumPipHeight];
      if (v12 >= v11)
      {
        v11 = v12;
      }

      [(SUICDictationWaveView *)self _maximumPipHeight];
      if (v13 >= v11)
      {
        v13 = v11;
      }

      [(SUICDictationWaveView *)self _updatePipHeightAtIndex:v3++ withHeight:v13];
    }

    while ([(NSMutableArray *)self->_pipLayers count]> v3);
  }
}

- (void)setPipColor:(id)a3
{
  v5 = a3;
  if (self->_pipColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_pipColor, a3);
    [(SUICDictationWaveView *)self _updatePipColor];
    v5 = v6;
  }
}

- (void)setPowerLevel:(float)a3
{
  if (a3 < -96.0)
  {
    a3 = -96.0;
  }

  v4 = fminf(a3, 0.0);
  *&v5 = v4;
  [(SUICAudioLevelSmoother *)self->_smoother smoothedLevelForMicPower:v5];
  v7 = (v6 * 0.95) + 0.05;
  if (self->_linearPowerLevel != v7)
  {
    self->_linearPowerLevel = v7;
    self->_powerLevel = v4;
  }
}

- (void)setAudioPowerLevelDataSource:(id)a3
{
  v5 = a3;
  if (self->_audioPowerLevelDataSource != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_audioPowerLevelDataSource, a3);
    if (self->_audioPowerLevelDataSource)
    {
      v6 = [MEMORY[0x1E69DCEB0] _carScreen];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [MEMORY[0x1E69DCEB0] mainScreen];
      }

      v9 = v8;

      self->_framesPerSecond = [(CADisplayLink *)v9 maximumFramesPerSecond];
      v10 = [(CADisplayLink *)v9 displayLinkWithTarget:self selector:sel__tick_];
      displayLink = self->_displayLink;
      self->_displayLink = v10;

      v12 = self->_displayLink;
      if (!v12)
      {
        v13 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__tick_];
        v14 = self->_displayLink;
        self->_displayLink = v13;

        v12 = self->_displayLink;
      }

      v15 = [MEMORY[0x1E695DFD0] currentRunLoop];
      [(CADisplayLink *)v12 addToRunLoop:v15 forMode:*MEMORY[0x1E695D918]];
    }

    else
    {
      [(CADisplayLink *)self->_displayLink invalidate];
      v9 = self->_displayLink;
      self->_displayLink = 0;
    }

    v5 = v16;
  }
}

- (void)_tick:(id)a3
{
  self->_numberOfFrames = self->_numberOfFrames + 1.0;
  self->_runningVolumeSum = self->_linearPowerLevel + self->_runningVolumeSum;
  [(SUICAudioPowerLevelDataSource *)self->_audioPowerLevelDataSource audioPowerLevel];
  [(SUICDictationWaveView *)self setPowerLevel:?];
  [(SUICDictationWaveView *)self _updatePipHeights];

  [(SUICDictationWaveView *)self _introAnimationTick];
}

- (float)_noiseForPipIndex:(unint64_t)a3
{
  [(SUICDictationWaveView *)self _numberOfPips];
  noise2();
  return fabsf(v3) / 0.707;
}

- (float)_smoothStepTaperForPipIndex:(unint64_t)a3
{
  v4 = a3;
  *&v5 = a3 / ([(SUICDictationWaveView *)self _numberOfPips]- 1);
  LODWORD(v6) = -1102263091;
  LODWORD(v7) = 1050253722;
  [(SUICDictationWaveView *)self _smoothStepWithLowerBound:v6 upperBound:v7 innerValue:v5];
  v9 = v8;
  *&v10 = v4 / ([(SUICDictationWaveView *)self _numberOfPips]- 1);
  LODWORD(v11) = 1060320051;
  LODWORD(v12) = 1067030938;
  [(SUICDictationWaveView *)self _smoothStepWithLowerBound:v11 upperBound:v12 innerValue:v10];
  return v9 - v13;
}

- (float)_smoothStepWithLowerBound:(float)a3 upperBound:(float)a4 innerValue:(float)a5
{
  v5 = (a5 - a3) / (a4 - a3);
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = fminf(v5, 1.0);
  return (v6 * v6) * ((v6 * -2.0) + 3.0);
}

- (float)_sinusoidalTaperForPipIndex:(unint64_t)a3
{
  v3 = (a3 / ([(SUICDictationWaveView *)self _numberOfPips]- 1)) * 3.14159265 * 0.800000012 + 0.314159244;

  return sinf(v3);
}

- (float)_heightMultiplierForPipIndex:(unint64_t)a3
{
  [(SUICDictationWaveView *)self _noiseForPipIndex:?];
  v6 = v5;
  [(SUICDictationWaveView *)self _sinusoidalTaperForPipIndex:a3];
  v8 = v7;
  [(SUICDictationWaveView *)self _smoothStepTaperForPipIndex:a3];
  v10 = (v8 * v9) * (v6 * self->_linearPowerLevel);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  return fminf(v10, 1.0);
}

- (unint64_t)_numberOfPips
{
  [(SUICDictationWaveView *)self frame];
  Width = CGRectGetWidth(v8);
  [(SUICDictationWaveView *)self _pipWidth];
  v5 = Width - v4;
  [(SUICDictationWaveView *)self _pipWidth];
  return vcvtmd_u64_f64(v5 / (v6 + v6));
}

- (double)_leftMargin
{
  [(SUICDictationWaveView *)self frame];
  Width = CGRectGetWidth(v8);
  [(SUICDictationWaveView *)self _pipWidth];
  v5 = Width + v4 * [(SUICDictationWaveView *)self _numberOfPips]* -2.0;
  [(SUICDictationWaveView *)self _pipWidth];
  return floor((v6 + v5) * 0.5);
}

- (double)_originXForPipAtIndex:(unint64_t)a3
{
  [(SUICDictationWaveView *)self _leftMargin];
  v6 = v5;
  [(SUICDictationWaveView *)self _pipWidth];
  return v6 + (v7 + v7) * a3;
}

- (CGRect)_startingFrameForPipAtIndex:(unint64_t)a3
{
  [(SUICDictationWaveView *)self _pipWidth];
  v6 = v5;
  [(SUICDictationWaveView *)self _minimumPipHeight];
  v8 = v7;
  [(SUICDictationWaveView *)self _originXForPipAtIndex:a3];
  v10 = v9;
  [(SUICDictationWaveView *)self frame];
  v11 = (CGRectGetHeight(v15) - v8) * 0.5;
  v12 = v10;
  v13 = v6;
  v14 = v8;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (double)_heightForIntroAnimationPips
{
  [(SUICDictationWaveView *)self _smoothStepTaperForPipIndex:0];
  v4 = v3;
  [(SUICDictationWaveView *)self _sinusoidalTaperForPipIndex:0];
  v6 = v4 * v5;
  [(SUICDictationWaveView *)self _maximumPipHeight];
  v8 = v7;
  [(SUICDictationWaveView *)self _minimumPipHeight];
  v10 = (v8 - v9) * v6;
  [(SUICDictationWaveView *)self _minimumPipHeight];
  return v11 + v10;
}

@end