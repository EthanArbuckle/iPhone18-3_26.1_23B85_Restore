@interface ReducedLanguageIdentifierForKeyboardLanguage
@end

@implementation ReducedLanguageIdentifierForKeyboardLanguage

void ___ReducedLanguageIdentifierForKeyboardLanguage_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v1 = _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts;
  _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts = v0;

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = UIKeyboardGetSupportedLanguages();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = _ReducedLanguageIdentifierForKeyboardLanguage___languageCounts;
        v8 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

@end