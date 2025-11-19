@interface UITextReplacementGeneratorForMultilingualDictation
- (UITextReplacementGeneratorForMultilingualDictation)initWithMultilingualAlternatives:(id)a3 stringToReplace:(id)a4 replacementRange:(id)a5;
- (id)replacements;
@end

@implementation UITextReplacementGeneratorForMultilingualDictation

- (UITextReplacementGeneratorForMultilingualDictation)initWithMultilingualAlternatives:(id)a3 stringToReplace:(id)a4 replacementRange:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UITextReplacementGeneratorForMultilingualDictation;
  v12 = [(UITextReplacementGeneratorForMultilingualDictation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(UITextReplacementGenerator *)v12 setStringToReplace:v10];
    [(UITextReplacementGenerator *)v13 setReplacementRange:v11];
    objc_storeStrong(&v13->_multilingualAlternatives, a3);
  }

  return v13;
}

- (id)replacements
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(UITextReplacementGeneratorForMultilingualDictation *)self multilingualAlternatives];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 text];
        v11 = [(UITextReplacementGenerator *)self shouldAllowString:v10 intoReplacements:v3];

        if (v11)
        {
          v12 = [(UITextReplacementGenerator *)self replacementRange];
          v13 = [(UITextReplacementGenerator *)self stringToReplace];
          v14 = [UIDictationMultilingualUtilities textReplacementFromMultilingualString:v9 replacementRange:v12 stringToReplace:v13];
          [v3 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];

  return v15;
}

@end