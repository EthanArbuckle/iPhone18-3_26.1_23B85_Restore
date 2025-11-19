@interface SBAveragePixelLuminanceLimitController
- (UIView)targetView;
- (id)_targetLayer;
- (void)_addFilter;
- (void)_removeFilter;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)setAplLimitsEnabled:(BOOL)a3;
@end

@implementation SBAveragePixelLuminanceLimitController

- (void)setAplLimitsEnabled:(BOOL)a3
{
  if (self->_aplLimitsEnabled != a3)
  {
    v16[5] = v6;
    v16[6] = v5;
    v16[13] = v3;
    v16[14] = v4;
    self->_aplLimitsEnabled = a3;
    v8 = [(SBAveragePixelLuminanceLimitController *)self _targetLayer];
    if (v8)
    {
      v9 = CACurrentMediaTime();
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277D75D18] inheritedAnimationDuration];
      v11 = v10;
      v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.averagePixelLuminanceLimit.inputScale"];
      v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      [v12 setTimingFunction:v13];

      [v8 convertTime:0 fromLayer:v9];
      [v12 setBeginTime:?];
      [v12 setDuration:v11];
      [v12 setFillMode:*MEMORY[0x277CDA228]];
      if (self->_aplLimitsEnabled)
      {
        [(SBAveragePixelLuminanceLimitController *)self _addFilter];
        [v8 setValue:&unk_28336F600 forKeyPath:@"filters.averagePixelLuminanceLimit.inputScale"];
        [v12 setFromValue:&unk_28336F610];
        [v12 setToValue:&unk_28336F600];
      }

      else
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __62__SBAveragePixelLuminanceLimitController_setAplLimitsEnabled___block_invoke;
        v16[3] = &unk_2783A8C18;
        v16[4] = self;
        v14 = MEMORY[0x223D6F7F0](v16);
        [v8 setValue:&unk_28336F610 forKeyPath:@"filters.averagePixelLuminanceLimit.inputScale"];
        [v12 setFromValue:&unk_28336F600];
        [v12 setToValue:&unk_28336F610];
        v15 = [v14 copy];
        [v12 setValue:v15 forKey:@"SBAPLFilterAnimationCompletionKey"];

        [v12 setDelegate:self];
      }

      [v8 removeAnimationForKey:@"aplFilter"];
      [v8 addAnimation:v12 forKey:@"aplFilter"];
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

uint64_t __62__SBAveragePixelLuminanceLimitController_setAplLimitsEnabled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) areAplLimitsEnabled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _removeFilter];
  }

  return result;
}

- (id)_targetLayer
{
  v3 = [(SBAveragePixelLuminanceLimitController *)self targetView];
  v4 = [v3 layer];

  if ([(SBAveragePixelLuminanceLimitController *)self isGlobalFilter])
  {
    v5 = [v4 context];
    v6 = [v5 layer];

    v4 = v6;
  }

  return v4;
}

- (void)_addFilter
{
  v14 = [(SBAveragePixelLuminanceLimitController *)self _targetLayer];
  v3 = [v14 valueForKeyPath:@"filters.averagePixelLuminanceLimit"];
  if (!v3 || ([MEMORY[0x277CBEB68] null], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", v3), v4, v5))
  {
    v6 = +[SBAlwaysOnDomain rootSettings];
    v7 = [v6 aplSettings];

    v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA558]];
    [v8 setName:@"averagePixelLuminanceLimit"];
    v9 = MEMORY[0x277CCABB0];
    [v7 overallAPLLimit];
    v10 = [v9 numberWithDouble:?];
    [v8 setValue:v10 forKeyPath:*MEMORY[0x277CDA360]];

    [v8 setAccessibility:{-[SBAveragePixelLuminanceLimitController isGlobalFilter](self, "isGlobalFilter")}];
    v11 = [v14 filters];
    v12 = v11;
    if (!v11)
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    v13 = [v11 arrayByAddingObject:v8];
    [v14 setFilters:v13];
  }
}

- (void)_removeFilter
{
  v6 = [(SBAveragePixelLuminanceLimitController *)self _targetLayer];
  v2 = [v6 valueForKeyPath:@"filters.averagePixelLuminanceLimit"];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = [v6 mutableArrayValueForKeyPath:@"filters"];
      [v5 removeObject:v2];
    }
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = [a3 valueForKey:{@"SBAPLFilterAnimationCompletionKey", a4}];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end