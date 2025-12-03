@interface SXAccessibilityHyphenationModifier
- (void)enableHyphenationForComponentTextStyleWithIdentifier:(id)identifier DOM:(id)m context:(id)context;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXAccessibilityHyphenationModifier

- (void)modifyDOM:(id)m context:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  mCopy = m;
  contextCopy = context;
  layoutOptions = [contextCopy layoutOptions];
  contentSizeCategory = [layoutOptions contentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(contentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    componentTextStyles = [mCopy componentTextStyles];
    allKeys = [componentTextStyles allKeys];

    v13 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          [(SXAccessibilityHyphenationModifier *)self enableHyphenationForComponentTextStyleWithIdentifier:*(*(&v17 + 1) + 8 * v16++) DOM:mCopy context:contextCopy];
        }

        while (v14 != v16);
        v14 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)enableHyphenationForComponentTextStyleWithIdentifier:(id)identifier DOM:(id)m context:(id)context
{
  contextCopy = context;
  mCopy = m;
  identifierCopy = identifier;
  componentTextStyles = [mCopy componentTextStyles];
  v11 = [componentTextStyles objectForKey:identifierCopy];

  jSONRepresentation = [v11 JSONRepresentation];
  v13 = jSONRepresentation;
  if (!jSONRepresentation)
  {
    jSONRepresentation = MEMORY[0x1E695E0F8];
  }

  v14 = [jSONRepresentation mutableCopy];

  [v14 setObject:MEMORY[0x1E695E118] forKey:@"hyphenation"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumWordLength"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumCharactersBefore"];
  [v14 setObject:&unk_1F538A160 forKey:@"hyphenationMinimumCharactersAfter"];
  [v14 setObject:&unk_1F538A178 forKey:@"hyphenationZone"];
  v15 = [SXComponentTextStyle alloc];
  specVersion = [contextCopy specVersion];

  v18 = [(SXJSONObject *)v15 initWithJSONObject:v14 andVersion:specVersion];
  componentTextStyles2 = [mCopy componentTextStyles];

  [componentTextStyles2 setObject:v18 forKey:identifierCopy];
}

@end