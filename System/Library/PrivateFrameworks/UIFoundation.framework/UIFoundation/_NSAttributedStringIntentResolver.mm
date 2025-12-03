@interface _NSAttributedStringIntentResolver
+ (id)attributedStringByResolvingString:(id)string;
+ (id)attributesByResolvingIntentsInAttributes:(id)attributes;
+ (void)_replaceInlinePresentationIntent:(id)intent get:(id)get set:(id)set;
+ (void)_replaceInlinePresentationIntentInString:(id)string range:(_NSRange)range value:(id)value;
+ (void)resolveAttributedString:(id)string inRange:(_NSRange)range;
@end

@implementation _NSAttributedStringIntentResolver

+ (id)attributedStringByResolvingString:(id)string
{
  if (![string _mayRequireIntentResolution])
  {
    return string;
  }

  v5 = [[_NSAttributedStringWithResolvedIntents alloc] initWithUnresolvedString:string resolver:self];

  return v5;
}

+ (void)resolveAttributedString:(id)string inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([string _mayRequireIntentResolution])
  {
    v8 = *MEMORY[0x1E696A4A0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___NSAttributedStringIntentResolver_resolveAttributedString_inRange___block_invoke;
    v9[3] = &unk_1E7266D20;
    v9[4] = self;
    v9[5] = string;
    [string enumerateAttribute:v8 inRange:location options:length usingBlock:{0x100000, v9}];
    if (!length && location == [string length])
    {
      [string _markIntentsResolved];
    }
  }
}

+ (id)attributesByResolvingIntentsInAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [attributes objectForKeyedSubscript:*MEMORY[0x1E696A4A0]];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__4;
  v13 = __Block_byref_object_dispose__4;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78___NSAttributedStringIntentResolver_attributesByResolvingIntentsInAttributes___block_invoke;
  v8[3] = &unk_1E7266D48;
  v8[4] = attributesCopy;
  v8[5] = &v9;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___NSAttributedStringIntentResolver_attributesByResolvingIntentsInAttributes___block_invoke_2;
  v7[3] = &unk_1E7266D70;
  v7[4] = attributesCopy;
  v7[5] = &v9;
  [self _replaceInlinePresentationIntent:v5 get:v8 set:v7];
  if (v10[5])
  {
    attributesCopy = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  return attributesCopy;
}

+ (void)_replaceInlinePresentationIntentInString:(id)string range:(_NSRange)range value:(id)value
{
  length = range.length;
  location = range.location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90___NSAttributedStringIntentResolver__replaceInlinePresentationIntentInString_range_value___block_invoke;
    v11[3] = &unk_1E7266D98;
    v11[4] = string;
    v11[5] = location;
    v11[6] = length;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90___NSAttributedStringIntentResolver__replaceInlinePresentationIntentInString_range_value___block_invoke_2;
    v10[3] = &unk_1E7266DC0;
    v10[4] = string;
    v10[5] = location;
    v10[6] = length;
    [self _replaceInlinePresentationIntent:value get:v11 set:v10];
  }
}

+ (void)_replaceInlinePresentationIntent:(id)intent get:(id)get set:(id)set
{
  integerValue = [intent integerValue];
  v9 = (*(get + 2))(get, @"NSFont");
  v10 = v9;
  v11 = v9;
  if (!v9)
  {
    v11 = NSDefaultFont();
  }

  v12 = [self fontAttributeValueForInlinePresentationIntent:integerValue suggestedBaseFont:v11 suggestingTheDefaultFont:v9 == 0];
  if (v12)
  {
    (*(set + 2))(set, @"NSFont", v12);
    if (integerValue != 32)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if ((integerValue - 1) < 2)
  {
    goto LABEL_9;
  }

  if (integerValue == 32)
  {
LABEL_5:
    (*(set + 2))(set, @"NSStrikethrough", &unk_1F01CC288);
    goto LABEL_13;
  }

  if (integerValue == 4)
  {
LABEL_9:
    if (!v9)
    {
      v10 = NSDefaultFont();
    }

    v13 = [self fontAttributeValueForInlineIntent:integerValue suggestedBaseFont:v10 suggestingTheDefaultFont:v9 == 0];
    if (v13)
    {
      (*(set + 2))(set, @"NSFont", v13);
    }
  }

LABEL_13:
  v14 = *MEMORY[0x1E696A4A0];
  v15 = *(set + 2);

  v15(set, v14, 0);
}

@end