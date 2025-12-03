@interface CAPropertyAnimation(TSDCAAnimationAdditions)
- (double)TSD_animationPercentFromAnimationTime:()TSDCAAnimationAdditions;
- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions;
- (uint64_t)p_adjustedResultWithValue:()TSDCAAnimationAdditions;
- (uint64_t)p_interpolatedValueFrom:()TSDCAAnimationAdditions to:percent:;
- (void)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:;
@end

@implementation CAPropertyAnimation(TSDCAAnimationAdditions)

- (uint64_t)p_adjustedResultWithValue:()TSDCAAnimationAdditions
{
  if (!a3)
  {
    return a3;
  }

  if (([objc_msgSend(self "keyPath")] & 1) != 0 || (objc_msgSend(objc_msgSend(self, "keyPath"), "isEqualToString:", @"transform.rotation.x") & 1) != 0 || (objc_msgSend(objc_msgSend(self, "keyPath"), "isEqualToString:", @"transform.rotation.y") & 1) != 0 || objc_msgSend(objc_msgSend(self, "keyPath"), "isEqualToString:", @"transform.rotation.z"))
  {
    [a3 doubleValue];
    v6 = fmod(v5 + 3.14159265, 6.28318531) + -3.14159265;
    if (v6 < -3.14159265)
    {
      v6 = v6 + 6.28318531;
    }

    v7 = MEMORY[0x277CCABB0];

    return [v7 numberWithDouble:v6];
  }

  if (([objc_msgSend(self "keyPath")] & 1) == 0 && !objc_msgSend(objc_msgSend(self, "keyPath"), "isEqualToString:", @"doubleSided"))
  {
    return a3;
  }

  charValue = [a3 charValue];
  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithChar:charValue];
}

- (uint64_t)p_interpolatedValueFrom:()TSDCAAnimationAdditions to:percent:
{
  v8 = CFGetTypeID(cf);
  if (v8 == CGColorGetTypeID())
  {
    v9 = [MEMORY[0x277D6C2A8] colorWithCGColor:cf];
    v10 = [v9 blendedColorWithFraction:objc_msgSend(MEMORY[0x277D6C2A8] ofColor:{"colorWithCGColor:", a5), a4}];

    return [v10 CGColor];
  }

  else
  {

    return [cf mixedObjectWithFraction:a5 ofObject:a4];
  }
}

- (double)TSD_animationPercentFromAnimationTime:()TSDCAAnimationAdditions
{
  [self beginTime];
  v5 = a2 - v4;
  [self timeOffset];
  v7 = v5 - v6;
  [self duration];
  return v7 / v8;
}

- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions
{
  keyPath = [self keyPath];

  return [keyPath isEqualToString:a3];
}

- (void)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:
{
  if ([objc_msgSend(self "keyPath")])
  {
    return self;
  }

  else
  {
    return 0;
  }
}

@end