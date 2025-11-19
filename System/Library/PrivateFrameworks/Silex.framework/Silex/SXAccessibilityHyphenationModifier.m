@interface SXAccessibilityHyphenationModifier
- (void)enableHyphenationForComponentTextStyleWithIdentifier:(id)a3 DOM:(id)a4 context:(id)a5;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXAccessibilityHyphenationModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 layoutOptions];
  v9 = [v8 contentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);

  if (IsAccessibilityCategory)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v6 componentTextStyles];
    v12 = [v11 allKeys];

    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(SXAccessibilityHyphenationModifier *)self enableHyphenationForComponentTextStyleWithIdentifier:*(*(&v17 + 1) + 8 * v16++) DOM:v6 context:v7];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)enableHyphenationForComponentTextStyleWithIdentifier:(id)a3 DOM:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 componentTextStyles];
  v11 = [v10 objectForKey:v9];

  v12 = [v11 JSONRepresentation];
  v13 = v12;
  if (!v12)
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v14 = [v12 mutableCopy];

  [v14 setObject:MEMORY[0x1E695E118] forKey:@"hyphenation"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumWordLength"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumCharactersBefore"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumCharactersAfter"];
  [v14 setObject:&unk_1F538A178 forKey:@"hyphenationZone"];
  v15 = [SXComponentTextStyle alloc];
  v16 = [v7 specVersion];

  v18 = [(SXJSONObject *)v15 initWithJSONObject:v14 andVersion:v16];
  v17 = [v8 componentTextStyles];

  [v17 setObject:v18 forKey:v9];
}

@end