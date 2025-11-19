@interface TIEmojiCharacterSet
@end

@implementation TIEmojiCharacterSet

void ____TIEmojiCharacterSet_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EmojiFoundationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6F4BAD8;
    v6 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v4[0];
    if (EmojiFoundationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = v4[0];
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = [MEMORY[0x1E696AB08] _emojiCharacterSet];
  v2 = __TIEmojiCharacterSet___emojiCharacterSet;
  __TIEmojiCharacterSet___emojiCharacterSet = v1;
}

@end