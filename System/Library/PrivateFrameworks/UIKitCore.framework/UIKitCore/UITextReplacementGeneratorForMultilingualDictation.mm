@interface UITextReplacementGeneratorForMultilingualDictation
- (UITextReplacementGeneratorForMultilingualDictation)initWithMultilingualAlternatives:(id)alternatives stringToReplace:(id)replace replacementRange:(id)range;
- (id)replacements;
@end

@implementation UITextReplacementGeneratorForMultilingualDictation

- (UITextReplacementGeneratorForMultilingualDictation)initWithMultilingualAlternatives:(id)alternatives stringToReplace:(id)replace replacementRange:(id)range
{
  alternativesCopy = alternatives;
  replaceCopy = replace;
  rangeCopy = range;
  v15.receiver = self;
  v15.super_class = UITextReplacementGeneratorForMultilingualDictation;
  v12 = [(UITextReplacementGeneratorForMultilingualDictation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(UITextReplacementGenerator *)v12 setStringToReplace:replaceCopy];
    [(UITextReplacementGenerator *)v13 setReplacementRange:rangeCopy];
    objc_storeStrong(&v13->_multilingualAlternatives, alternatives);
  }

  return v13;
}

- (id)replacements
{
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  multilingualAlternatives = [(UITextReplacementGeneratorForMultilingualDictation *)self multilingualAlternatives];
  v5 = [multilingualAlternatives countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(multilingualAlternatives);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        text = [v9 text];
        v11 = [(UITextReplacementGenerator *)self shouldAllowString:text intoReplacements:array];

        if (v11)
        {
          replacementRange = [(UITextReplacementGenerator *)self replacementRange];
          stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
          v14 = [UIDictationMultilingualUtilities textReplacementFromMultilingualString:v9 replacementRange:replacementRange stringToReplace:stringToReplace];
          [array addObject:v14];
        }
      }

      v6 = [multilingualAlternatives countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = [array copy];

  return v15;
}

@end