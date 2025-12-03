@interface UITextReplacementGeneratorForDictation
- (UITextReplacementGeneratorForDictation)initWithAlternatives:(id)alternatives stringToReplace:(id)replace replacementRange:(id)range;
- (id)replacements;
@end

@implementation UITextReplacementGeneratorForDictation

- (UITextReplacementGeneratorForDictation)initWithAlternatives:(id)alternatives stringToReplace:(id)replace replacementRange:(id)range
{
  alternativesCopy = alternatives;
  replaceCopy = replace;
  rangeCopy = range;
  v15.receiver = self;
  v15.super_class = UITextReplacementGeneratorForDictation;
  v12 = [(UITextReplacementGeneratorForDictation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(UITextReplacementGenerator *)v12 setStringToReplace:replaceCopy];
    [(UITextReplacementGenerator *)v13 setReplacementRange:rangeCopy];
    objc_storeStrong(&v13->_alternatives, alternatives);
  }

  return v13;
}

- (id)replacements
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  alternatives = [(UITextReplacementGeneratorForDictation *)self alternatives];
  alternativeStrings = [alternatives alternativeStrings];

  v6 = [alternativeStrings countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(alternativeStrings);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(UITextReplacementGenerator *)self shouldAllowString:v10 intoReplacements:array])
        {
          v11 = [(UITextReplacementGenerator *)self replacementWithText:v10];
          [array addObject:v11];
        }
      }

      v7 = [alternativeStrings countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

@end