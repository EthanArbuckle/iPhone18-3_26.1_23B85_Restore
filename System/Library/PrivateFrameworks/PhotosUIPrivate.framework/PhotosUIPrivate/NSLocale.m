@interface NSLocale
@end

@implementation NSLocale

void __50__NSLocale_PhotosUI__pu_currentCharacterDirection__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"NSForceRightToLeftWritingDirection"];

  if (v1)
  {
    pu_currentCharacterDirection_currentDirection = 2;
  }

  else
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 preferredLocalizations];
    v4 = [v3 firstObject];

    pu_currentCharacterDirection_currentDirection = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v4];
  }
}

@end