@interface TUIInputAnalytics
+ (void)didHandleSmartReplyAnalyticsEventOfType:(int64_t)a3 withBundleId:(id)a4 withInputContextHistoryRequestId:(id)a5 withMsgOrMailThreadId:(id)a6 withSmartReplyResponse:(id)a7 withConversationType:(int64_t)a8;
+ (void)sendGenmojiCreationSignal:(id)a3 payload:(id)a4;
+ (void)sendSmartRepliesPollActionShownSignalWithInputContextHistory:(id)a3;
@end

@implementation TUIInputAnalytics

+ (void)sendGenmojiCreationSignal:(id)a3 payload:(id)a4
{
  v5 = MEMORY[0x1E69A8CD8];
  v6 = a4;
  v7 = a3;
  v8 = +[TUIInputAnalytics getIAChannelGenmojiCreation];
  [v5 sendSignal:v7 toChannel:v8 withNullableUniqueStringID:0 withPayload:v6];
}

+ (void)sendSmartRepliesPollActionShownSignalWithInputContextHistory:(id)a3
{
  v10 = a3;
  v3 = [v10 recipientIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = [v10 recipientIdentifiers];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      v7 = MEMORY[0x1E69A8CD8];
      v8 = *MEMORY[0x1E69A8C40];
      v9 = [v10 threadIdentifier];
      [v7 sendSignal:@"PollActionShown" toChannel:v8 withNullableUniqueStringID:v9 withPayload:0];
    }
  }
}

+ (void)didHandleSmartReplyAnalyticsEventOfType:(int64_t)a3 withBundleId:(id)a4 withInputContextHistoryRequestId:(id)a5 withMsgOrMailThreadId:(id)a6 withSmartReplyResponse:(id)a7 withConversationType:(int64_t)a8
{
  v49 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = v17;
  if (v13)
  {
    [v17 setObject:v13 forKeyedSubscript:@"BundleID"];
  }

  if (v16)
  {
    v44 = v15;
    v45 = v14;
    v46 = v13;
    [v16 srResponse];
    v20 = v19 = v16;
    v21 = [v20 options];
    v22 = [v21 objectForKey:*MEMORY[0x1E69D9488]];

    v23 = [v19 modelInfoString];
    v24 = [v19 userFeedbackInputString];
    v25 = [v20 responseTexts];
    v26 = [v19 modelPromptTokenCount];
    v43 = v19;
    v27 = [v19 modelOutputTokenCount];
    if (v22)
    {
      [v18 setObject:v22 forKeyedSubscript:@"InputLanguage"];
    }

    if (v23)
    {
      [v18 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69A8C58]];
    }

    if (v24)
    {
      [v18 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69A8C48]];
    }

    if (v25)
    {
      [v18 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69A8C70]];
    }

    if (v26)
    {
      [v18 setObject:v26 forKeyedSubscript:@"InputTokenCount"];
    }

    if (v27)
    {
      [v18 setObject:v27 forKeyedSubscript:@"OutputTokenCount"];
    }

    v14 = v45;
    v13 = v46;
    v16 = v43;
    v15 = v44;
  }

  v28 = @"Unspecified";
  if (a8 == 1)
  {
    v28 = @"Mail";
  }

  if (a8)
  {
    v29 = v28;
  }

  else
  {
    v29 = @"Message";
  }

  [v18 setObject:v29 forKeyedSubscript:@"ConversationType"];
  if (a3 <= 1)
  {
    if (!a3)
    {
      v41 = mach_continuous_time();
      SetSmartReplyStartTimeForRequest(v14, v41);
      v42 = TUIInputAnalyticsLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_18FFDC000, v42, OS_LOG_TYPE_DEBUG, "Begin - SmartReplyGenerate", buf, 2u);
      }

      v30 = MEMORY[0x1E69A8CD8];
      v31 = MEMORY[0x1E69A8CC8];
      goto LABEL_50;
    }

    if (a3 == 1)
    {
      v32 = TUIInputAnalyticsLog();
      if (os_signpost_enabled(v32))
      {
        *buf = 134349056;
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(v14);
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SmartReplyGenerate", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v33 = TUIInputAnalyticsLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_DEBUG, "End - SmartReplyGenerate - SmartReply Generated successfully", buf, 2u);
      }

      if (v16)
      {
        v34 = [v16 responseFromCache];
        v35 = v34;
        if (v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = MEMORY[0x1E695E110];
        }

        [v18 setObject:v36 forKeyedSubscript:*MEMORY[0x1E69A8C78]];
      }

      v30 = MEMORY[0x1E69A8CD8];
      v31 = MEMORY[0x1E69A8CB8];
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  switch(a3)
  {
    case 2:
      v37 = TUIInputAnalyticsLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 134349056;
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(v14);
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SmartReplyGenerateFailure", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v38 = TUIInputAnalyticsLog();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_46;
      }

      *buf = 0;
      v39 = "End - SmartReplyGenerate - No SmartReply Generated";
      goto LABEL_53;
    case 3:
      v40 = TUIInputAnalyticsLog();
      if (os_signpost_enabled(v40))
      {
        *buf = 134349056;
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(v14);
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SmartReplyGenerateTimeout", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v38 = TUIInputAnalyticsLog();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_46;
      }

      *buf = 0;
      v39 = "End - SmartReplyGenerate - No SmartReply Generated - Timeout";
LABEL_53:
      _os_log_debug_impl(&dword_18FFDC000, v38, OS_LOG_TYPE_DEBUG, v39, buf, 2u);
LABEL_46:

      v30 = MEMORY[0x1E69A8CD8];
      v31 = MEMORY[0x1E69A8CC0];
      goto LABEL_50;
    case 4:
      v30 = MEMORY[0x1E69A8CD8];
      v31 = MEMORY[0x1E69A8CD0];
LABEL_50:
      [v30 sendSignal:*v31 toChannel:*MEMORY[0x1E69A8C40] withNullableUniqueStringID:v15 withPayload:v18];
      break;
  }

LABEL_51:
}

@end