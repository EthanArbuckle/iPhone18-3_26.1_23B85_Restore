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
    v5 = [a1 autocorrection];

    if (v5)
    {
      v6 = [a1 autocorrection];
      v7 = [v6 label];
      v8 = [v4 smartPunctuationedStringForString:v7];

      v9 = [a1 autocorrection];
      [v9 setLabel:v8];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a1 predictions];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 label];
          v17 = [v4 smartPunctuationedStringForString:v16];

          [v15 setLabel:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (uint64_t)sourceForAutocorrection
{
  v1 = [a1 autocorrection];
  v2 = [v1 isContinuousPathConversion];

  if (v2)
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
  v1 = [a1 predictions];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v7 + 1) + 8 * i) textSuggestion];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 action] == sel_captureTextFromCamera_)
        {

          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v1 = [a1 predictions];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v7 + 1) + 8 * i) textSuggestion];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 action] == sel_showWritingTools_)
        {

          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
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