@interface UIDictationTipEmojiHandler
- (UIDictationTipEmojiHandler)init;
- (id)replaceEmojiInStringWithEmojiDictationCommand:(id)command;
@end

@implementation UIDictationTipEmojiHandler

- (UIDictationTipEmojiHandler)init
{
  v3.receiver = self;
  v3.super_class = UIDictationTipEmojiHandler;
  return [(UIDictationTipEmojiHandler *)&v3 init];
}

- (id)replaceEmojiInStringWithEmojiDictationCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy _containsEmoji])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3010000000;
    v22 = 0;
    v23 = 0;
    v21 = "";
    v5 = [commandCopy length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__UIDictationTipEmojiHandler_replaceEmojiInStringWithEmojiDictationCommand___block_invoke;
    v14[3] = &unk_1E7102210;
    v17 = &v18;
    v6 = v4;
    v15 = v6;
    v7 = commandCopy;
    v16 = v7;
    [v7 _enumerateEmojiTokensInRange:0 block:{v5, v14}];
    v8 = v19[4];
    v9 = [v7 length];
    v10 = [v7 substringWithRange:{v8, v9 - v19[4]}];
    [v6 appendString:v10];

    v11 = v16;
    v12 = v6;

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = commandCopy;
  }

  return v12;
}

void __76__UIDictationTipEmojiHandler_replaceEmojiInStringWithEmojiDictationCommand___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(*(*(a1 + 48) + 8) + 32);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) substringWithRange:{v8, a3 - v8}];
  [v9 appendString:v10];

  v11 = *(*(a1 + 48) + 8);
  *(v11 + 32) = a3 + a4;
  *(v11 + 40) = 0;
  v12 = off_1E70EA000;
  v13 = +[UIKeyboardInputModeController sharedInputModeController];
  v14 = [v13 currentInputMode];
  v15 = [v14 dictationLanguage];
  if (v15)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v16 = _MergedGlobals_1052;
    v41 = _MergedGlobals_1052;
    if (!_MergedGlobals_1052)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getEMFEmojiLocaleDataClass_block_invoke;
      v36 = &unk_1E70F2F20;
      v37 = &v38;
      __getEMFEmojiLocaleDataClass_block_invoke(&v33);
      v16 = v39[3];
    }

    v17 = v16;
    _Block_object_dispose(&v38, 8);
    v18 = +[UIKeyboardInputModeController sharedInputModeController];
    v19 = [v18 currentInputMode];
    v20 = [v19 dictationLanguage];
    v21 = [v16 emojiLocaleDataWithLocaleIdentifier:v20];

    v12 = off_1E70EA000;
  }

  else
  {
    v21 = 0;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v22 = qword_1ED49D7D0;
  v41 = qword_1ED49D7D0;
  if (!qword_1ED49D7D0)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getEMFEmojiTokenClass_block_invoke;
    v36 = &unk_1E70F2F20;
    v37 = &v38;
    __getEMFEmojiTokenClass_block_invoke(&v33);
    v22 = v39[3];
  }

  v23 = v22;
  _Block_object_dispose(&v38, 8);
  v24 = [v7 string];
  v25 = [v22 emojiTokenWithString:v24 localeData:v21];

  v26 = [v25 nameForType:2];
  if (v26)
  {
    v27 = [(__objc2_class *)v12[13] sharedInputModeController];
    v28 = [v27 currentInputMode];
    v29 = [v28 dictationLanguage];
    v30 = _UILocalizedStringWithLocale(@"added emoji name", @"add in emoji word", @"%@ emoji", v29);

    v31 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v30, v26];
    [*(a1 + 32) appendString:v31];
  }

  else
  {
    v32 = *(a1 + 32);
    v30 = [v25 string];
    [v32 appendString:v30];
  }
}

@end