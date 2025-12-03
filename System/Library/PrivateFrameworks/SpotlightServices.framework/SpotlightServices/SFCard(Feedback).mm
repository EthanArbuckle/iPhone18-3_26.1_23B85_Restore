@interface SFCard(Feedback)
- (void)copyForFeedback;
@end

@implementation SFCard(Feedback)

- (void)copyForFeedback
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [self copy];
  cardSections = [v1 cardSections];
  v3 = [cardSections mutableCopy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  cardSections2 = [v1 cardSections];
  v5 = [cardSections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(cardSections2);
        }

        copyForFeedback = [*(*(&v14 + 1) + 8 * v9) copyForFeedback];
        [v3 setObject:copyForFeedback atIndexedSubscript:v7];

        ++v7;
        ++v9;
      }

      while (v6 != v9);
      v6 = [cardSections2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  [v1 setCardSections:v11];

  v12 = *MEMORY[0x1E69E9840];
  return v1;
}

@end