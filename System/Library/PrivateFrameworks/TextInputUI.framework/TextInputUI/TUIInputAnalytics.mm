@interface TUIInputAnalytics
+ (void)didHandleSmartReplyAnalyticsEventOfType:(int64_t)type withBundleId:(id)id withInputContextHistoryRequestId:(id)requestId withMsgOrMailThreadId:(id)threadId withSmartReplyResponse:(id)response withConversationType:(int64_t)conversationType;
+ (void)sendGenmojiCreationSignal:(id)signal payload:(id)payload;
+ (void)sendSmartRepliesPollActionShownSignalWithInputContextHistory:(id)history;
@end

@implementation TUIInputAnalytics

+ (void)sendGenmojiCreationSignal:(id)signal payload:(id)payload
{
  v5 = MEMORY[0x1E69A8CD8];
  payloadCopy = payload;
  signalCopy = signal;
  v8 = +[TUIInputAnalytics getIAChannelGenmojiCreation];
  [v5 sendSignal:signalCopy toChannel:v8 withNullableUniqueStringID:0 withPayload:payloadCopy];
}

+ (void)sendSmartRepliesPollActionShownSignalWithInputContextHistory:(id)history
{
  historyCopy = history;
  recipientIdentifiers = [historyCopy recipientIdentifiers];
  if (recipientIdentifiers)
  {
    v4 = recipientIdentifiers;
    recipientIdentifiers2 = [historyCopy recipientIdentifiers];
    v6 = [recipientIdentifiers2 count];

    if (v6 >= 2)
    {
      v7 = MEMORY[0x1E69A8CD8];
      v8 = *MEMORY[0x1E69A8C40];
      threadIdentifier = [historyCopy threadIdentifier];
      [v7 sendSignal:@"PollActionShown" toChannel:v8 withNullableUniqueStringID:threadIdentifier withPayload:0];
    }
  }
}

+ (void)didHandleSmartReplyAnalyticsEventOfType:(int64_t)type withBundleId:(id)id withInputContextHistoryRequestId:(id)requestId withMsgOrMailThreadId:(id)threadId withSmartReplyResponse:(id)response withConversationType:(int64_t)conversationType
{
  v49 = *MEMORY[0x1E69E9840];
  idCopy = id;
  requestIdCopy = requestId;
  threadIdCopy = threadId;
  responseCopy = response;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = v17;
  if (idCopy)
  {
    [v17 setObject:idCopy forKeyedSubscript:@"BundleID"];
  }

  if (responseCopy)
  {
    v44 = threadIdCopy;
    v45 = requestIdCopy;
    v46 = idCopy;
    [responseCopy srResponse];
    v20 = v19 = responseCopy;
    options = [v20 options];
    v22 = [options objectForKey:*MEMORY[0x1E69D9488]];

    modelInfoString = [v19 modelInfoString];
    userFeedbackInputString = [v19 userFeedbackInputString];
    responseTexts = [v20 responseTexts];
    modelPromptTokenCount = [v19 modelPromptTokenCount];
    v43 = v19;
    modelOutputTokenCount = [v19 modelOutputTokenCount];
    if (v22)
    {
      [v18 setObject:v22 forKeyedSubscript:@"InputLanguage"];
    }

    if (modelInfoString)
    {
      [v18 setObject:modelInfoString forKeyedSubscript:*MEMORY[0x1E69A8C58]];
    }

    if (userFeedbackInputString)
    {
      [v18 setObject:userFeedbackInputString forKeyedSubscript:*MEMORY[0x1E69A8C48]];
    }

    if (responseTexts)
    {
      [v18 setObject:responseTexts forKeyedSubscript:*MEMORY[0x1E69A8C70]];
    }

    if (modelPromptTokenCount)
    {
      [v18 setObject:modelPromptTokenCount forKeyedSubscript:@"InputTokenCount"];
    }

    if (modelOutputTokenCount)
    {
      [v18 setObject:modelOutputTokenCount forKeyedSubscript:@"OutputTokenCount"];
    }

    requestIdCopy = v45;
    idCopy = v46;
    responseCopy = v43;
    threadIdCopy = v44;
  }

  v28 = @"Unspecified";
  if (conversationType == 1)
  {
    v28 = @"Mail";
  }

  if (conversationType)
  {
    v29 = v28;
  }

  else
  {
    v29 = @"Message";
  }

  [v18 setObject:v29 forKeyedSubscript:@"ConversationType"];
  if (type <= 1)
  {
    if (!type)
    {
      v41 = mach_continuous_time();
      SetSmartReplyStartTimeForRequest(requestIdCopy, v41);
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

    if (type == 1)
    {
      v32 = TUIInputAnalyticsLog();
      if (os_signpost_enabled(v32))
      {
        *buf = 134349056;
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(requestIdCopy);
        _os_signpost_emit_with_name_impl(&dword_18FFDC000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SmartReplyGenerate", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
      }

      v33 = TUIInputAnalyticsLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_DEBUG, "End - SmartReplyGenerate - SmartReply Generated successfully", buf, 2u);
      }

      if (responseCopy)
      {
        responseFromCache = [responseCopy responseFromCache];
        v35 = responseFromCache;
        if (responseFromCache)
        {
          v36 = responseFromCache;
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

  switch(type)
  {
    case 2:
      v37 = TUIInputAnalyticsLog();
      if (os_signpost_enabled(v37))
      {
        *buf = 134349056;
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(requestIdCopy);
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
        SmartReplyStartTimeForRequest = GetSmartReplyStartTimeForRequest(requestIdCopy);
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
      [v30 sendSignal:*v31 toChannel:*MEMORY[0x1E69A8C40] withNullableUniqueStringID:threadIdCopy withPayload:v18];
      break;
  }

LABEL_51:
}

@end