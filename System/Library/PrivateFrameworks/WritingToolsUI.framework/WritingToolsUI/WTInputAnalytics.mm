@interface WTInputAnalytics
+ (id)getIAChannelWritingTools;
+ (id)getIAPayloadKeyWritingToolsUI;
+ (id)getIAPayloadValueWritingToolsUIAffordance;
+ (id)getIASignalWritingToolsPanelRequested;
+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5;
+ (void)sendWritingToolsSignal:(id)a3 payload:(id)a4;
@end

@implementation WTInputAnalytics

+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v10 = getIASignalAnalyticsClass_softClass_0;
  v16 = getIASignalAnalyticsClass_softClass_0;
  if (!getIASignalAnalyticsClass_softClass_0)
  {
    InputAnalyticsLibraryCore_0();
    v14[3] = objc_getClass("IASignalAnalytics");
    getIASignalAnalyticsClass_softClass_0 = v14[3];
    v10 = v14[3];
  }

  v11 = v10;
  _Block_object_dispose(&v13, 8);
  if (v10)
  {
    [v10 sendSignal:v7 toChannel:v8 withPayload:v9];
  }

  else
  {
    v12 = WTInputAnalyticsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WTInputAnalytics sendSignal:v12 toChannel:? withPayload:?];
    }
  }
}

+ (void)sendWritingToolsSignal:(id)a3 payload:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[WTInputAnalytics getIAChannelWritingTools];
  [WTInputAnalytics sendSignal:v6 toChannel:v7 withPayload:v5];
}

+ (id)getIAChannelWritingTools
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getIAChannelWritingToolsSymbolLoc_ptr_0;
  v10 = getIAChannelWritingToolsSymbolLoc_ptr_0;
  if (!getIAChannelWritingToolsSymbolLoc_ptr_0)
  {
    v3 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v3, "IAChannelWritingTools");
    getIAChannelWritingToolsSymbolLoc_ptr_0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIASignalWritingToolsPanelRequested
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  v10 = getIASignalWritingToolsPanelRequestedSymbolLoc_ptr;
  if (!getIASignalWritingToolsPanelRequestedSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v3, "IASignalWritingToolsPanelRequested");
    getIASignalWritingToolsPanelRequestedSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIAPayloadKeyWritingToolsUI
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0;
  v10 = getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0;
  if (!getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0)
  {
    v3 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v3, "IAPayloadKeyWritingToolsUI");
    getIAPayloadKeyWritingToolsUISymbolLoc_ptr_0 = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

+ (id)getIAPayloadValueWritingToolsUIAffordance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr;
  v10 = getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr;
  if (!getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr)
  {
    v3 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v3, "IAPayloadValueWritingToolsUIAffordance");
    getIAPayloadValueWritingToolsUIAffordanceSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [WTAnalyticsDelegate initWithSmartReplyBool:smartReplyConfig:analyticsUUID:requestedTool:isEditable:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = *v2;

  return v4;
}

@end