@interface TIAutocorrectionList(UIKBExtras)
- (uint64_t)isShowingSuggestionForKeyboardCamera;
- (uint64_t)isShowingSuggestionForWritingTools;
- (uint64_t)sourceForAutocorrection;
- (void)updateLabelsWithSmartPunctuation:()UIKBExtras;
@end

@implementation TIAutocorrectionList(UIKBExtras)

- (void)updateLabelsWithSmartPunctuation:()UIKBExtras
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    autocorrection = [self autocorrection];

    if (autocorrection)
    {
      autocorrection2 = [self autocorrection];
      label = [autocorrection2 label];
      v8 = [v4 smartPunctuationedStringForString:label];

      autocorrection3 = [self autocorrection];
      [autocorrection3 setLabel:v8];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    predictions = [self predictions];
    v11 = [predictions countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(predictions);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          label2 = [v15 label];
          v17 = [v4 smartPunctuationedStringForString:label2];

          [v15 setLabel:v17];
        }

        v12 = [predictions countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (uint64_t)sourceForAutocorrection
{
  autocorrection = [self autocorrection];
  isContinuousPathConversion = [autocorrection isContinuousPathConversion];

  if (isContinuousPathConversion)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isShowingSuggestionForKeyboardCamera
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  predictions = [self predictions];
  v2 = [predictions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(predictions);
        }

        textSuggestion = [*(*(&v7 + 1) + 8 * i) textSuggestion];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [textSuggestion action] == sel_captureTextFromCamera_)
        {

          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [predictions countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

- (uint64_t)isShowingSuggestionForWritingTools
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  predictions = [self predictions];
  v2 = [predictions countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(predictions);
        }

        textSuggestion = [*(*(&v7 + 1) + 8 * i) textSuggestion];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [textSuggestion action] == sel_showWritingTools_)
        {

          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [predictions countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

@end