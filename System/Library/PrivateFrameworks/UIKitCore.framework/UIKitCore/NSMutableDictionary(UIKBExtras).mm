@interface NSMutableDictionary(UIKBExtras)
+ (id)_dictionaryWithContentsOfDictionaries:()UIKBExtras;
@end

@implementation NSMutableDictionary(UIKBExtras)

+ (id)_dictionaryWithContentsOfDictionaries:()UIKBExtras
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [dictionary addEntriesFromDictionary:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return dictionary;
}

@end