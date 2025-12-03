@interface _UIAttributedStringIntentResolver
+ (id)fontAttributeValueForInlineIntent:(int64_t)intent suggestedBaseFont:(id)font suggestingTheDefaultFont:(BOOL)defaultFont;
@end

@implementation _UIAttributedStringIntentResolver

+ (id)fontAttributeValueForInlineIntent:(int64_t)intent suggestedBaseFont:(id)font suggestingTheDefaultFont:(BOOL)defaultFont
{
  intentCopy = intent;
  fontCopy = font;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = fontCopy;
  v9 = v8;
  v10 = v8;
  if (isKindOfClass)
  {
    if ((intentCopy & 4) != 0)
    {
      v11 = intentCopy & 3 | 0x400u;
    }

    else
    {
      v11 = intentCopy & 3;
    }

    if (v11)
    {
      fontDescriptor = [v8 fontDescriptor];
      v13 = [fontDescriptor fontDescriptorWithSymbolicTraits:v11];
      v14 = v13;
      if ((intentCopy & 4) == 0 || ([v13 symbolicTraits] & 0x400) != 0)
      {
        v15 = [off_1E70ECC18 fontWithDescriptor:v14 size:0.0];
      }

      else
      {
        if ((intentCopy & 2) == 0)
        {
          CTFontGetWeight();
        }

        [v9 pointSize];
        v15 = [off_1E70ECC18 monospacedSystemFontOfSize:? weight:?];
      }

      v10 = v15;
    }

    else
    {
      v10 = v8;
    }
  }

  return v10;
}

@end