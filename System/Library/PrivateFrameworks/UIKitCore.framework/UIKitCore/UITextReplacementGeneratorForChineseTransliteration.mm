@interface UITextReplacementGeneratorForChineseTransliteration
- (id)replacements;
@end

@implementation UITextReplacementGeneratorForChineseTransliteration

- (id)replacements
{
  array = [MEMORY[0x1E695DF70] array];
  stringToReplace = [(UITextReplacementGenerator *)self stringToReplace];
  if ([(__CFString *)stringToReplace length]>> 2 <= 0x800)
  {
    stringToReplace2 = [(UITextReplacementGenerator *)self stringToReplace];
    _containsIdeographicCharacters = [stringToReplace2 _containsIdeographicCharacters];

    if (!_containsIdeographicCharacters)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E696AD60];
    stringToReplace3 = [(UITextReplacementGenerator *)self stringToReplace];
    stringToReplace = [v7 stringWithString:stringToReplace3];

    if (CFStringTransform(stringToReplace, 0, @"Simplified-Traditional", 0))
    {
      stringToReplace4 = [(UITextReplacementGenerator *)self stringToReplace];
      v10 = [(__CFString *)stringToReplace isEqualToString:stringToReplace4];

      if (!v10 || CFStringTransform(stringToReplace, 0, @"Traditional-Simplified", 0) && ([(UITextReplacementGenerator *)self stringToReplace], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(__CFString *)stringToReplace isEqualToString:v11], v11, (v12 & 1) == 0))
      {
        v13 = [(UITextReplacementGenerator *)self replacementWithText:stringToReplace];
        [array addObject:v13];
      }
    }
  }

LABEL_9:

  return array;
}

@end