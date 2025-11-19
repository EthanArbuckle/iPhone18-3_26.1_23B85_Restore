@interface UIView(PLCrossFade)
- (void)pl_performCrossFadeIfNecessary;
@end

@implementation UIView(PLCrossFade)

- (void)pl_performCrossFadeIfNecessary
{
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
  {
    v9 = [MEMORY[0x277CDA000] animation];
    v2 = [MEMORY[0x277D75D18] _currentAnimationCurve];
    v7 = PLCAMediaTimingFunctionForViewAnimationCurve(v2, v3, v4, v5, v6);
    [v9 setTimingFunction:v7];

    [v9 setType:*MEMORY[0x277CDA928]];
    [MEMORY[0x277D75D18] _currentAnimationDuration];
    [v9 setDuration:?];
    v8 = [a1 layer];
    [v8 addAnimation:v9 forKey:@"crossFade"];
  }
}

@end