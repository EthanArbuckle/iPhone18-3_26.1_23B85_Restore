@interface NSLocale(PhotosUI)
+ (uint64_t)pu_currentCharacterDirection;
@end

@implementation NSLocale(PhotosUI)

+ (uint64_t)pu_currentCharacterDirection
{
  if (pu_currentCharacterDirection_onceToken != -1)
  {
    dispatch_once(&pu_currentCharacterDirection_onceToken, &__block_literal_global_179);
  }

  return pu_currentCharacterDirection_currentDirection;
}

@end