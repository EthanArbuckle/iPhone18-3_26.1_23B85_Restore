@interface NSLocale
@end

@implementation NSLocale

void __60__NSLocale_PhotosUIFoundation__px_currentCharacterDirection__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NSForceRightToLeftWritingDirection"];

  if (v1)
  {
    px_currentCharacterDirection_currentDirection = 2;
  }

  else
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 preferredLocalizations];
    v4 = [v3 firstObject];

    px_currentCharacterDirection_currentDirection = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v4];
  }
}

uint64_t __62__NSLocale_PhotosUIFoundation__px_currentLeadingTextAlignment__block_invoke()
{
  result = [MEMORY[0x1E695DF58] px_currentCharacterDirection];
  px_currentLeadingTextAlignment_textAlignment = 2 * (result == 2);
  return result;
}

@end