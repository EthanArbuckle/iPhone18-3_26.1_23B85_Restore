@interface _UISignalAnalytics
+ (id)getIAChannelWritingTools;
+ (id)getIAGenmojiImageTypeFromImageGlyph:(id)a3;
+ (id)getIAPayloadKeyWritingToolsUI;
+ (id)getIAPayloadValueWritingToolsUICandidateBar;
+ (id)getIASignalWritingToolsPanelRequested;
+ (void)asyncSendPencilSignal:(id)a3 payload:(id)a4;
+ (void)asyncSendSafariSignal:(id)a3 payload:(id)a4;
+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6;
+ (void)sendGenmojiCreationSignal:(id)a3 payload:(id)a4;
+ (void)sendGenmojiSignal:(id)a3 payload:(id)a4;
+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5;
+ (void)sendWritingToolsSignal:(id)a3 payload:(id)a4;
@end

@implementation _UISignalAnalytics

+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  IASignalAnalyticsClass = getIASignalAnalyticsClass();
  if (IASignalAnalyticsClass)
  {
    [IASignalAnalyticsClass sendSignal:v7 toChannel:v8 withPayload:v9];
  }

  else
  {
    v11 = _UISignalAnalyticsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Could not soft link InputAnalytics", v12, 2u);
    }
  }
}

+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  IASignalAnalyticsClass = getIASignalAnalyticsClass();
  if (IASignalAnalyticsClass)
  {
    [IASignalAnalyticsClass asyncSendSignal:v9 toChannel:v10 withNullableUniqueStringID:v11 withPayload:v12];
  }

  else
  {
    v14 = _UISignalAnalyticsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Could not soft link InputAnalytics", v15, 2u);
    }
  }
}

+ (void)sendGenmojiSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_UISignalAnalytics getIAChannelGenmoji];
  [_UISignalAnalytics sendSignal:v6 toChannel:v7 withPayload:v5];
}

+ (void)sendGenmojiCreationSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_UISignalAnalytics getIAChannelGenmojiCreation];
  [_UISignalAnalytics sendSignal:v6 toChannel:v7 withPayload:v5];
}

+ (void)sendWritingToolsSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_UISignalAnalytics getIAChannelWritingTools];
  [_UISignalAnalytics sendSignal:v6 toChannel:v7 withPayload:v5];
}

+ (void)asyncSendPencilSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_UISignalAnalytics getIAChannelPencil];
  [_UISignalAnalytics asyncSendSignal:v6 toChannel:v7 withNullableUniqueStringID:0 withPayload:v5];
}

+ (void)asyncSendSafariSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_UISignalAnalytics getIAChannelSafari];
  [_UISignalAnalytics asyncSendSignal:v6 toChannel:v7 withNullableUniqueStringID:0 withPayload:v5];
}

+ (id)getIAChannelWritingTools
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAChannelWritingToolsSymbolLoc_ptr;
  v11 = getIAChannelWritingToolsSymbolLoc_ptr;
  if (!getIAChannelWritingToolsSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAChannelWritingTools");
    getIAChannelWritingToolsSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAChannelWritingTools(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)getIASignalWritingToolsPanelRequested
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  v11 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  if (!getIASignalWritingToolsPanelRequestedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IASignalWritingToolsPanelRequested");
    getIASignalWritingToolsPanelRequestedSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalWritingToolsPanelRequested(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)getIAPayloadKeyWritingToolsUI
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
  v11 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr;
  if (!getIAPayloadKeyWritingToolsUISymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadKeyWritingToolsUI");
    getIAPayloadKeyWritingToolsUISymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAPayloadKeyWritingToolsUI(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)getIAPayloadValueWritingToolsUICandidateBar
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_ptr;
  v11 = getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary();
    v9[3] = dlsym(v3, "IAPayloadValueWritingToolsUICandidateBar");
    getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = *v2;

    return v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAPayloadValueWritingToolsUICandidateBar(void)"];
    [v6 handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)getIAGenmojiImageTypeFromImageGlyph:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 stickerSourceType];

  v6 = _UISignalAnalyticsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "getIAGenmojiImageTypeFromImageGlyph type:%lu stickerSourceType:%lu", &v9, 0x16u);
  }

  if (v4 == 3)
  {
    goto LABEL_11;
  }

  if (v4 == 2)
  {
LABEL_14:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeMemoji];
    goto LABEL_16;
  }

  if (v4 != 1)
  {
LABEL_15:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiUnspecified];
    goto LABEL_16;
  }

  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeStickers1P];
      goto LABEL_16;
    }

    if (v5 == 3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v5 == 4)
  {
LABEL_11:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeEmoji];
    goto LABEL_16;
  }

  if (v5 != 5)
  {
    if (v5 == 6)
    {
      v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeGenmoji];
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeStickers3P];
LABEL_16:

  return v7;
}

@end