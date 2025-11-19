@interface _UIAttributedStringIntentResolver
+ (id)fontAttributeValueForInlineIntent:(int64_t)a3 suggestedBaseFont:(id)a4 suggestingTheDefaultFont:(BOOL)a5;
@end

@implementation _UIAttributedStringIntentResolver

+ (id)fontAttributeValueForInlineIntent:(int64_t)a3 suggestedBaseFont:(id)a4 suggestingTheDefaultFont:(BOOL)a5
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v6;
  v9 = v8;
  v10 = v8;
  if (isKindOfClass)
  {
    if ((v5 & 4) != 0)
    {
      v11 = v5 & 3 | 0x400u;
    }

    else
    {
      v11 = v5 & 3;
    }

    if (v11)
    {
      v12 = [v8 fontDescriptor];
      v13 = [v12 fontDescriptorWithSymbolicTraits:v11];
      v14 = v13;
      if ((v5 & 4) == 0 || ([v13 symbolicTraits] & 0x400) != 0)
      {
        v15 = [off_1E70ECC18 fontWithDescriptor:v14 size:0.0];
      }

      else
      {
        if ((v5 & 2) == 0)
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