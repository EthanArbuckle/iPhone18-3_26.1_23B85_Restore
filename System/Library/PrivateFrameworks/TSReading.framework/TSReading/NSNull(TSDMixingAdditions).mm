@interface NSNull(TSDMixingAdditions)
- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:;
- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions;
@end

@implementation NSNull(TSDMixingAdditions)

- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions
{
  if ([MEMORY[0x277CBEB68] null] != a3)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSNull(TSDMixingAdditions) mixingTypeWithObject:]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"), 283, @"other object isn't NSNull!"}];
  }

  return 5;
}

- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:
{
  if ([MEMORY[0x277CBEB68] null] == a4)
  {
    return a1;
  }

  return [a4 mixedObjectWithFraction:a1 ofObject:1.0 - a2];
}

@end