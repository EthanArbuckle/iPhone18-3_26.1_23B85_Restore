@interface UITextReplacementGeneratorForDictation
- (UITextReplacementGeneratorForDictation)initWithAlternatives:(id)a3 stringToReplace:(id)a4 replacementRange:(id)a5;
- (id)replacements;
@end

@implementation UITextReplacementGeneratorForDictation

- (UITextReplacementGeneratorForDictation)initWithAlternatives:(id)a3 stringToReplace:(id)a4 replacementRange:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UITextReplacementGeneratorForDictation;
  v12 = [(UITextReplacementGeneratorForDictation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(UITextReplacementGenerator *)v12 setStringToReplace:v10];
    [(UITextReplacementGenerator *)v13 setReplacementRange:v11];
    objc_storeStrong(&v13->_alternatives, a3);
  }

  return v13;
}

- (id)replacements
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(UITextReplacementGeneratorForDictation *)self alternatives];
  v5 = [v4 alternativeStrings];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(UITextReplacementGenerator *)self shouldAllowString:v10 intoReplacements:v3])
        {
          v11 = [(UITextReplacementGenerator *)self replacementWithText:v10];
          [v3 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

@end