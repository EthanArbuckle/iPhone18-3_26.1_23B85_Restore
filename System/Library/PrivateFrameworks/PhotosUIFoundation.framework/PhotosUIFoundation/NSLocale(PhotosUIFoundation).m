@interface NSLocale(PhotosUIFoundation)
+ (uint64_t)px_currentCharacterDirection;
+ (uint64_t)px_currentLeadingTextAlignment;
@end

@implementation NSLocale(PhotosUIFoundation)

+ (uint64_t)px_currentCharacterDirection
{
  if (px_currentCharacterDirection_onceToken != -1)
  {
    dispatch_once(&px_currentCharacterDirection_onceToken, &__block_literal_global_4182);
  }

  return px_currentCharacterDirection_currentDirection;
}

+ (uint64_t)px_currentLeadingTextAlignment
{
  if (px_currentLeadingTextAlignment_onceToken != -1)
  {
    dispatch_once(&px_currentLeadingTextAlignment_onceToken, &__block_literal_global_5);
  }

  return px_currentLeadingTextAlignment_textAlignment;
}

@end