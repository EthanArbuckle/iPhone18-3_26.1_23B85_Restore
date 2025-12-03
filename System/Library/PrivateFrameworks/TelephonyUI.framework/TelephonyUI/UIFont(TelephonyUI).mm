@interface UIFont(TelephonyUI)
+ (id)telephonyUIBodyShortEmphasizedFont;
+ (id)telephonyUIBodyShortFont;
+ (id)telephonyUIBodyShortItalicFont;
+ (id)telephonyUIFontWithDescriptor:()TelephonyUI;
+ (id)telephonyUIFootnoteShortFont;
+ (id)telephonyUISubheadlineShortEmphasizedFont;
+ (id)telephonyUISubheadlineShortFont;
+ (id)telephonyUISubheadlineShortSemiboldFont;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont(TelephonyUI)

+ (id)telephonyUIBodyShortFont
{
  telephonyUIBodyShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortFontDescriptor];
  v3 = [self telephonyUIFontWithDescriptor:telephonyUIBodyShortFontDescriptor];

  return v3;
}

+ (id)telephonyUIBodyShortEmphasizedFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIBodyShortEmphasizedFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortEmphasizedFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIBodyShortEmphasizedFontDescriptor];

  return v2;
}

+ (id)telephonyUIBodyShortItalicFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIBodyShortItalicFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIBodyShortItalicFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIBodyShortItalicFontDescriptor];

  return v2;
}

+ (id)telephonyUIFootnoteShortFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUIFootnoteShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUIFootnoteShortFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUIFootnoteShortFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUISubheadlineShortFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortEmphasizedFont
{
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortEmphasizedFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortEmphasizedFontDescriptor];
  v2 = [v0 telephonyUIFontWithDescriptor:telephonyUISubheadlineShortEmphasizedFontDescriptor];

  return v2;
}

+ (id)telephonyUISubheadlineShortSemiboldFont
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DB878];
  telephonyUISubheadlineShortSemiboldFontDescriptor = [MEMORY[0x1E69DB880] telephonyUISubheadlineShortSemiboldFontDescriptor];
  v8 = *MEMORY[0x1E69DB990];
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [telephonyUISubheadlineShortSemiboldFontDescriptor fontDescriptorByAddingAttributes:v3];
  v5 = [v0 telephonyUIFontWithDescriptor:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)withCaseSensitiveAttribute
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E69DB8B0];
  v2 = *MEMORY[0x1E69DB900];
  v11[0] = *MEMORY[0x1E69DB908];
  v11[1] = v2;
  v12[0] = &unk_1F2CB1168;
  v12[1] = &unk_1F2CB1180;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v15[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  fontDescriptor = [self fontDescriptor];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v5];

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:0.0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)telephonyUIFontWithDescriptor:()TelephonyUI
{
  v1 = [self fontWithDescriptor:0.0 size:?];
  withCaseSensitiveAttribute = [v1 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

@end