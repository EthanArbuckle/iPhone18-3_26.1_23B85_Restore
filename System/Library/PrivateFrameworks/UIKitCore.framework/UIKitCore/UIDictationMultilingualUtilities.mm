@interface UIDictationMultilingualUtilities
+ (BOOL)hasMultilingualAttributesForAttributedString:(id)string;
+ (id)multilingualAttributesForAttributedString:(id)string;
+ (id)textReplacementFromMultilingualString:(id)string replacementRange:(id)range stringToReplace:(id)replace;
@end

@implementation UIDictationMultilingualUtilities

+ (BOOL)hasMultilingualAttributesForAttributedString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v3 = [self multilingualAttributesForAttributedString:?];
  v4 = [v3 objectForKey:@"bestAlternatives"];
  v5 = v4 != 0;

  return v5;
}

+ (id)multilingualAttributesForAttributedString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    v5 = [v4 attribute:@"_UITextInputDictationResultMetadata" atIndex:0 effectiveRange:0];
    v6 = [v5 objectForKey:@"bestText"];
    if (v6)
    {
      if (qword_1ED49F2D8 != -1)
      {
        dispatch_once(&qword_1ED49F2D8, &__block_literal_global_816_0);
      }

      v7 = [v6 stringByTrimmingCharactersInSet:qword_1ED49F2D0];
    }

    else
    {
      v7 = 0;
    }

    string = [v4 string];
    if (string)
    {
      if (qword_1ED49F2D8 != -1)
      {
        dispatch_once(&qword_1ED49F2D8, &__block_literal_global_816_0);
      }

      v10 = [string stringByTrimmingCharactersInSet:qword_1ED49F2D0];
    }

    else
    {
      v10 = 0;
    }

    if ([v10 isEqualToString:v7])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)textReplacementFromMultilingualString:(id)string replacementRange:(id)range stringToReplace:(id)replace
{
  replaceCopy = replace;
  rangeCopy = range;
  stringCopy = string;
  text = [stringCopy text];
  text2 = [stringCopy text];
  v12 = [UITextReplacement replacementWithRange:rangeCopy original:replaceCopy replacement:text menuTitle:text2];

  dominantLanguage = [stringCopy dominantLanguage];
  correctionIdentifier = [stringCopy correctionIdentifier];
  interactionIdentifier = [stringCopy interactionIdentifier];
  phrases = [stringCopy phrases];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__UIDictationMultilingualUtilities_textReplacementFromMultilingualString_replacementRange_stringToReplace___block_invoke;
  v23[3] = &unk_1E7115828;
  v24 = dominantLanguage;
  v25 = replaceCopy;
  v26 = correctionIdentifier;
  v27 = interactionIdentifier;
  v28 = phrases;
  v17 = phrases;
  v18 = interactionIdentifier;
  v19 = correctionIdentifier;
  v20 = replaceCopy;
  v21 = dominantLanguage;
  [v12 setReplacementCompletionBlock:v23];

  return v12;
}

void __107__UIDictationMultilingualUtilities_textReplacementFromMultilingualString_replacementRange_stringToReplace___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = a2;
  v9 = +[UIDictationController sharedInstance];
  [v9 logDidAcceptReplacement:v8 replacementLanguageCode:*(a1 + 32) originalText:*(a1 + 40) correctionIdentifier:*(a1 + 48) interactionIdentifier:*(a1 + 56)];

  if ([*(a1 + 64) count])
  {
    [v7 replaceRange:v12 withText:&stru_1EFB14550];
    v10 = [[UIDictationSerializableResults alloc] initWithPhrases:*(a1 + 64)];
    v11 = +[UIDictationController sharedInstance];
    [v11 insertSerializedDictationResult:v10 withCorrectionIdentifier:*(a1 + 48)];
  }
}

@end