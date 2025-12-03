@interface UIFont
- (CTFontRef)_fontAdjustedForTypesettingLanguage:(const __CTFont *)language;
- (CTFontRef)_fontAdjustedForTypesettingLanguageAwareLineHeightRatio:(const __CTFont *)ratio;
@end

@implementation UIFont

- (CTFontRef)_fontAdjustedForTypesettingLanguage:(const __CTFont *)language
{
  languageCopy = language;
  v17[1] = *MEMORY[0x1E69E9840];
  if (language)
  {
    fontDescriptor = [(__CTFont *)language fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v6 = *MEMORY[0x1E69656F0];
    v7 = [fontAttributes objectForKey:*MEMORY[0x1E69656F0]];

    if ([a2 length])
    {
      if (!v7 || ([a2 isEqualToString:v7] & 1) == 0)
      {
        fontDescriptor2 = [(__CTFont *)languageCopy fontDescriptor];
        v16 = v6;
        v17[0] = a2;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v10 = [fontDescriptor2 fontDescriptorByAddingAttributes:v9];

        if (!v10)
        {
          goto LABEL_11;
        }

LABEL_9:
        [(__CTFont *)languageCopy pointSize];
        languageCopy = CTFontCreateWithFontDescriptor(v10, v14, 0);
LABEL_12:

        goto LABEL_13;
      }
    }

    else if (v7)
    {
      fontDescriptor3 = [(__CTFont *)languageCopy fontDescriptor];
      fontAttributes2 = [fontDescriptor3 fontAttributes];
      v13 = [fontAttributes2 mutableCopy];

      [v13 removeObjectForKey:v6];
      v10 = [[off_1E70ECC20 alloc] initWithFontAttributes:v13];

      if (v10)
      {
        goto LABEL_9;
      }

LABEL_11:
      languageCopy = 0;
      goto LABEL_12;
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_13:

  return languageCopy;
}

- (CTFontRef)_fontAdjustedForTypesettingLanguageAwareLineHeightRatio:(const __CTFont *)ratio
{
  ratioCopy = ratio;
  v19[1] = *MEMORY[0x1E69E9840];
  if (ratio)
  {
    if (a2 == -1.0)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    fontDescriptor = [(__CTFont *)ratio fontDescriptor];
    v5 = *MEMORY[0x1E69657E0];
    v6 = [fontDescriptor objectForKey:*MEMORY[0x1E69657E0]];

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 != v9)
    {
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
      }

      else
      {
        v12 = [v8 isEqual:v9];

        if (v12)
        {
          goto LABEL_12;
        }
      }

      fontDescriptor2 = [(__CTFont *)ratioCopy fontDescriptor];
      v18 = v5;
      v19[0] = v10;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [fontDescriptor2 fontDescriptorByAddingAttributes:v16];

      if (v13)
      {
        [(__CTFont *)ratioCopy pointSize];
        ratioCopy = CTFontCreateWithFontDescriptor(v13, v17, 0);
        goto LABEL_15;
      }

LABEL_14:
      ratioCopy = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_16:

  return ratioCopy;
}

@end