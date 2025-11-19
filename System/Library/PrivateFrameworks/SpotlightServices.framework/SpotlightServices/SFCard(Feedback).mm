@interface SFCard(Feedback)
- (void)copyForFeedback;
@end

@implementation SFCard(Feedback)

- (void)copyForFeedback
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [a1 copy];
  v2 = [v1 cardSections];
  v3 = [v2 mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v1 cardSections];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) copyForFeedback];
        [v3 setObject:v10 atIndexedSubscript:v7];

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  [v1 setCardSections:v11];

  v12 = *MEMORY[0x1E69E9840];
  return v1;
}

@end