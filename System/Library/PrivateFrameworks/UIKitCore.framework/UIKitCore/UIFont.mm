@interface UIFont
- (CTFontRef)_fontAdjustedForTypesettingLanguage:(const __CTFont *)a1;
- (CTFontRef)_fontAdjustedForTypesettingLanguageAwareLineHeightRatio:(const __CTFont *)a1;
@end

@implementation UIFont

- (CTFontRef)_fontAdjustedForTypesettingLanguage:(const __CTFont *)a1
{
  v2 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [(__CTFont *)a1 fontDescriptor];
    v5 = [v4 fontAttributes];
    v6 = *MEMORY[0x1E69656F0];
    v7 = [v5 objectForKey:*MEMORY[0x1E69656F0]];

    if ([a2 length])
    {
      if (!v7 || ([a2 isEqualToString:v7] & 1) == 0)
      {
        v8 = [(__CTFont *)v2 fontDescriptor];
        v16 = v6;
        v17[0] = a2;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        v10 = [v8 fontDescriptorByAddingAttributes:v9];

        if (!v10)
        {
          goto LABEL_11;
        }

LABEL_9:
        [(__CTFont *)v2 pointSize];
        v2 = CTFontCreateWithFontDescriptor(v10, v14, 0);
LABEL_12:

        goto LABEL_13;
      }
    }

    else if (v7)
    {
      v11 = [(__CTFont *)v2 fontDescriptor];
      v12 = [v11 fontAttributes];
      v13 = [v12 mutableCopy];

      [v13 removeObjectForKey:v6];
      v10 = [[off_1E70ECC20 alloc] initWithFontAttributes:v13];

      if (v10)
      {
        goto LABEL_9;
      }

LABEL_11:
      v2 = 0;
      goto LABEL_12;
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_13:

  return v2;
}

- (CTFontRef)_fontAdjustedForTypesettingLanguageAwareLineHeightRatio:(const __CTFont *)a1
{
  v2 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 == -1.0)
    {
LABEL_13:
      v13 = 0;
      goto LABEL_14;
    }

    v4 = [(__CTFont *)a1 fontDescriptor];
    v5 = *MEMORY[0x1E69657E0];
    v6 = [v4 objectForKey:*MEMORY[0x1E69657E0]];

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

      v15 = [(__CTFont *)v2 fontDescriptor];
      v18 = v5;
      v19[0] = v10;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [v15 fontDescriptorByAddingAttributes:v16];

      if (v13)
      {
        [(__CTFont *)v2 pointSize];
        v2 = CTFontCreateWithFontDescriptor(v13, v17, 0);
        goto LABEL_15;
      }

LABEL_14:
      v2 = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_12:
    goto LABEL_13;
  }

LABEL_16:

  return v2;
}

@end