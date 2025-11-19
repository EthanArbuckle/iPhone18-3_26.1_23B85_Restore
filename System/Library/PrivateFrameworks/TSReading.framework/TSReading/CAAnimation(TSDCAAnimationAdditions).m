@interface CAAnimation(TSDCAAnimationAdditions)
+ (uint64_t)TSD_supportedKeyPaths;
- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:;
- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions;
- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:;
- (uint64_t)TSD_valueForKeyPath:()TSDCAAnimationAdditions atTime:animationCache:;
- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:;
@end

@implementation CAAnimation(TSDCAAnimationAdditions)

+ (uint64_t)TSD_supportedKeyPaths
{
  if (TSD_supportedKeyPaths_onceToken != -1)
  {
    +[CAAnimation(TSDCAAnimationAdditions) TSD_supportedKeyPaths];
  }

  return TSD_supportedKeyPaths_s_supportedKeyPaths;
}

- (uint64_t)p_getValue:()TSDCAAnimationAdditions animationPercent:atTime:initialValue:
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) p_getValue:animationPercent:atTime:initialValue:]"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:169 description:@"Implement me in subclass!"];
}

- (uint64_t)TSD_valueForKeyPath:()TSDCAAnimationAdditions atTime:animationCache:
{
  if (([objc_msgSend(a1 "keyPath")] & 1) == 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) TSD_valueForKeyPath:atTime:animationCache:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 174, @"Wrong keyPath for animation!"}];
  }

  v11 = [objc_msgSend(a5 "initialValues")];

  return [a1 TSD_valueAtTime:v11 initialValue:a2];
}

- (uint64_t)TSD_valueAtTime:()TSDCAAnimationAdditions initialValue:
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) TSD_valueAtTime:initialValue:]"];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 188, @"Implement me in subclass!"}];
  return 0;
}

- (double)TSD_animationPercentByApplyingTimingFunctionForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) TSD_animationPercentByApplyingTimingFunctionForKeyPath:atTime:]"];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 194, @"Implement me in subclass!"}];
  return 0.0;
}

- (uint64_t)TSD_containsAnimationForKeyPath:()TSDCAAnimationAdditions
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) TSD_containsAnimationForKeyPath:]"];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 200, @"Implement me in subclass!"}];
  return 0;
}

- (uint64_t)TSD_animationForKeyPath:()TSDCAAnimationAdditions atTime:
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CAAnimation(TSDCAAnimationAdditions) TSD_animationForKeyPath:atTime:]"];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CAAnimationAdditions.m"), 206, @"Implement me in subclass!"}];
  return 0;
}

@end