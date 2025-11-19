@interface UIDictationMultilingualUtilities
+ (BOOL)hasMultilingualAttributesForAttributedString:(id)a3;
+ (id)multilingualAttributesForAttributedString:(id)a3;
+ (id)textReplacementFromMultilingualString:(id)a3 replacementRange:(id)a4 stringToReplace:(id)a5;
@end

@implementation UIDictationMultilingualUtilities

+ (BOOL)hasMultilingualAttributesForAttributedString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a1 multilingualAttributesForAttributedString:?];
  v4 = [v3 objectForKey:@"bestAlternatives"];
  v5 = v4 != 0;

  return v5;
}

+ (id)multilingualAttributesForAttributedString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
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

    v9 = [v4 string];
    if (v9)
    {
      if (qword_1ED49F2D8 != -1)
      {
        dispatch_once(&qword_1ED49F2D8, &__block_literal_global_816_0);
      }

      v10 = [v9 stringByTrimmingCharactersInSet:qword_1ED49F2D0];
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

+ (id)textReplacementFromMultilingualString:(id)a3 replacementRange:(id)a4 stringToReplace:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 text];
  v11 = [v9 text];
  v12 = [UITextReplacement replacementWithRange:v8 original:v7 replacement:v10 menuTitle:v11];

  v13 = [v9 dominantLanguage];
  v14 = [v9 correctionIdentifier];
  v15 = [v9 interactionIdentifier];
  v16 = [v9 phrases];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__UIDictationMultilingualUtilities_textReplacementFromMultilingualString_replacementRange_stringToReplace___block_invoke;
  v23[3] = &unk_1E7115828;
  v24 = v13;
  v25 = v7;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v7;
  v21 = v13;
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