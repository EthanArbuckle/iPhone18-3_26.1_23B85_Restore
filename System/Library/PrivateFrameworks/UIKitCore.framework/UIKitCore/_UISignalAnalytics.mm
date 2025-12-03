@interface _UISignalAnalytics
+ (id)getIAChannelWritingTools;
+ (id)getIAGenmojiImageTypeFromImageGlyph:(id)glyph;
+ (id)getIAPayloadKeyWritingToolsUI;
+ (id)getIAPayloadValueWritingToolsUICandidateBar;
+ (id)getIASignalWritingToolsPanelRequested;
+ (void)asyncSendPencilSignal:(id)signal payload:(id)payload;
+ (void)asyncSendSafariSignal:(id)signal payload:(id)payload;
+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload;
+ (void)sendGenmojiCreationSignal:(id)signal payload:(id)payload;
+ (void)sendGenmojiSignal:(id)signal payload:(id)payload;
+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload;
+ (void)sendWritingToolsSignal:(id)signal payload:(id)payload;
@end

@implementation _UISignalAnalytics

+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  payloadCopy = payload;
  IASignalAnalyticsClass = getIASignalAnalyticsClass();
  if (IASignalAnalyticsClass)
  {
    [IASignalAnalyticsClass sendSignal:signalCopy toChannel:channelCopy withPayload:payloadCopy];
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

+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  dCopy = d;
  payloadCopy = payload;
  IASignalAnalyticsClass = getIASignalAnalyticsClass();
  if (IASignalAnalyticsClass)
  {
    [IASignalAnalyticsClass asyncSendSignal:signalCopy toChannel:channelCopy withNullableUniqueStringID:dCopy withPayload:payloadCopy];
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

+ (void)sendGenmojiSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[_UISignalAnalytics getIAChannelGenmoji];
  [_UISignalAnalytics sendSignal:signalCopy toChannel:v7 withPayload:payloadCopy];
}

+ (void)sendGenmojiCreationSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[_UISignalAnalytics getIAChannelGenmojiCreation];
  [_UISignalAnalytics sendSignal:signalCopy toChannel:v7 withPayload:payloadCopy];
}

+ (void)sendWritingToolsSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[_UISignalAnalytics getIAChannelWritingTools];
  [_UISignalAnalytics sendSignal:signalCopy toChannel:v7 withPayload:payloadCopy];
}

+ (void)asyncSendPencilSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[_UISignalAnalytics getIAChannelPencil];
  [_UISignalAnalytics asyncSendSignal:signalCopy toChannel:v7 withNullableUniqueStringID:0 withPayload:payloadCopy];
}

+ (void)asyncSendSafariSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  signalCopy = signal;
  v7 = +[_UISignalAnalytics getIAChannelSafari];
  [_UISignalAnalytics asyncSendSignal:signalCopy toChannel:v7 withNullableUniqueStringID:0 withPayload:payloadCopy];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAChannelWritingTools(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:25 description:{@"%s", dlerror()}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalWritingToolsPanelRequested(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:26 description:{@"%s", dlerror()}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAPayloadKeyWritingToolsUI(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:27 description:{@"%s", dlerror()}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIAPayloadValueWritingToolsUICandidateBar(void)"];
    [currentHandler handleFailureInFunction:v7 file:@"_UISignalAnalytics.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

+ (id)getIAGenmojiImageTypeFromImageGlyph:(id)glyph
{
  v13 = *MEMORY[0x1E69E9840];
  glyphCopy = glyph;
  type = [glyphCopy type];
  stickerSourceType = [glyphCopy stickerSourceType];

  v6 = _UISignalAnalyticsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    v10 = type;
    v11 = 2048;
    v12 = stickerSourceType;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "getIAGenmojiImageTypeFromImageGlyph type:%lu stickerSourceType:%lu", &v9, 0x16u);
  }

  if (type == 3)
  {
    goto LABEL_11;
  }

  if (type == 2)
  {
LABEL_14:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeMemoji];
    goto LABEL_16;
  }

  if (type != 1)
  {
LABEL_15:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiUnspecified];
    goto LABEL_16;
  }

  if (stickerSourceType <= 3)
  {
    if (stickerSourceType == 1)
    {
      v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeStickers1P];
      goto LABEL_16;
    }

    if (stickerSourceType == 3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (stickerSourceType == 4)
  {
LABEL_11:
    v7 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeEmoji];
    goto LABEL_16;
  }

  if (stickerSourceType != 5)
  {
    if (stickerSourceType == 6)
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