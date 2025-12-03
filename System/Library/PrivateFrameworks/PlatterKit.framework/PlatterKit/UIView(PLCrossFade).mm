@interface UIView(PLCrossFade)
- (void)pl_performCrossFadeIfNecessary;
@end

@implementation UIView(PLCrossFade)

- (void)pl_performCrossFadeIfNecessary
{
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    animation = [MEMORY[0x277CDA000] animation];
    _currentAnimationCurve = [MEMORY[0x277D75D18] _currentAnimationCurve];
    v7 = PLCAMediaTimingFunctionForViewAnimationCurve(_currentAnimationCurve, v3, v4, v5, v6);
    [animation setTimingFunction:v7];

    [animation setType:*MEMORY[0x277CDA928]];
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [animation setDuration:?];
    layer = [self layer];
    [layer addAnimation:animation forKey:@"crossFade"];
  }
}

@end