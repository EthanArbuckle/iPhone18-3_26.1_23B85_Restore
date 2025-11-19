@interface _UISmartReplyFeedbackManager
+ (BOOL)showReportConcernUI;
+ (id)_conversationTypePayloadValueFromConversationType:(int64_t)a3;
+ (void)_sendAnalyticsForSignal:(id)a3 toChannel:(id)a4 withThreadId:(id)a5 payload:(id)a6;
+ (void)userSelectedSmartReply:(id)a3 isLongForm:(BOOL)a4 withMailOrMsgThreadId:(id)a5 withConversationType:(int64_t)a6 withSmartReplyFeedbackManagerInstance:(id)a7;
- (BOOL)predictionsContainLongFormCandidates:(id)a3;
- (BOOL)predictionsContainSmartActions:(id)a3;
- (BOOL)predictionsContainSmartReplies:(id)a3;
- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:(BOOL)a3;
- (_UIKeyboardStateManager)keyboardStateManagerDelegate;
- (_UISmartReplyFeedbackManager)init;
- (_UISmartReplyFeedbackManager)initWithKeyboardStateManagerDelegate:(id)a3;
- (_UISmartReplyFeedbackManager)initWithoutBundleIdCheck;
- (id)stringListFromPredictions:(id)a3;
- (void)_sendAnalyticsForSignal:(id)a3 toChannel:(id)a4 withThreadId:(id)a5 payload:(id)a6;
- (void)_userSelectedSmartReply:(id)a3 isLongForm:(BOOL)a4 withMailOrMsgThreadId:(id)a5 withConversationType:(int64_t)a6;
- (void)composeFieldInFocusWithMailOrMsgThreadId:(id)a3;
- (void)inputModeWillChange;
- (void)predictionBarDebounceTimeIntervalExpired;
- (void)reportFeedbackUIPresented;
- (void)reportSmartRepliesConcern;
- (void)reportSmartRepliesFeedbackSignal:(id)a3;
- (void)reportSmartRepliesThumbsDown;
- (void)reportSmartRepliesThumbsUp;
- (void)reportWritingToolsPanelDismissed;
- (void)resetOnKeyboardCandidatesCleared;
- (void)resetSmartReplyFeedbackUIIfAlreadyShown;
- (void)resetStateIfNoSmartReplySelected;
- (void)resetWithDebug:(id)a3;
- (void)smartRepliesPresented;
- (void)updateCandidates:(id)a3;
- (void)userSelectedPollAction:(id)a3 withInputContextHistory:(id)a4;
@end

@implementation _UISmartReplyFeedbackManager

- (_UISmartReplyFeedbackManager)init
{
  v3 = _UIMainBundleIdentifier();
  v4 = 0.75;
  if (([v3 isEqualToString:@"com.apple.MobileSMS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.MessagesNotificationExtension") & 1) == 0)
  {
    v4 = 1.0;
    if (([v3 isEqualToString:@"com.apple.mobilemail"] & 1) == 0)
    {
      if (!+[UIKeyboard isKeyboardProcess])
      {
        v5 = 0;
        goto LABEL_7;
      }

      v4 = 1.7;
    }
  }

  [(_UISmartReplyFeedbackManager *)self setPredictionBarDebounceTimeInterval:v4];
  self = [(_UISmartReplyFeedbackManager *)self initWithoutBundleIdCheck];
  v5 = self;
LABEL_7:

  return v5;
}

- (void)resetOnKeyboardCandidatesCleared
{
  v5 = *MEMORY[0x1E69E9840];
  if ([(_UISmartReplyFeedbackManager *)self smartReplyWasSelected]&& ![(_UISmartReplyFeedbackManager *)self feedbackUIWasPresented])
  {
    v3 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = [(_UISmartReplyFeedbackManager *)self isLongFormCandidate];
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_INFO, "resetOnKeyboardCandidatesCleared ignored; long form = %d", v4, 8u);
    }
  }

  else
  {

    [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"resetOnKeyboardCandidatesCleared"];
  }
}

- (void)resetSmartReplyFeedbackUIIfAlreadyShown
{
  if ([(_UISmartReplyFeedbackManager *)self state]>= 7)
  {

    [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"resetSmartReplyFeedbackUIIfAlreadyShown"];
  }
}

+ (BOOL)showReportConcernUI
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (_UISmartReplyFeedbackManager)initWithoutBundleIdCheck
{
  v6.receiver = self;
  v6.super_class = _UISmartReplyFeedbackManager;
  v2 = [(_UISmartReplyFeedbackManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    [(_UISmartReplyFeedbackManager *)v2 resetWithDebug:@"init"];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel_inputModeWillChange name:@"UITextInputCurrentInputModeWillChangeNotification" object:0];
  }

  return v3;
}

- (_UISmartReplyFeedbackManager)initWithKeyboardStateManagerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UISmartReplyFeedbackManager *)self init];
  v6 = v5;
  if (v5)
  {
    [(_UISmartReplyFeedbackManager *)v5 setKeyboardStateManagerDelegate:v4];
  }

  return v6;
}

- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:(BOOL)a3
{
  v3 = a3;
  if ([(_UISmartReplyFeedbackManager *)self state]< 3)
  {
    return 0;
  }

  if (![(_UISmartReplyFeedbackManager *)self isLongFormCandidate])
  {
    result = 1;
    if (!v3)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [(_UISmartReplyFeedbackManager *)self state]> 4;
  if (v3)
  {
LABEL_7:
    result = 0;
    self->_state = 7;
  }

  return result;
}

- (void)composeFieldInFocusWithMailOrMsgThreadId:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_ptr;
  v14 = getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_ptr;
  if (!getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_ptr)
  {
    v6 = InputAnalyticsLibrary_0();
    v12[3] = dlsym(v6, "IASignalSmartRepliesComposeFieldInFocus");
    getIASignalSmartRepliesComposeFieldInFocusSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v5)
  {
    v7 = *v5;
    v8 = getIAChannelSmartReplies();
    [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v7 toChannel:v8 withThreadId:v4 payload:0];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalSmartRepliesComposeFieldInFocus(void)"];
    [v9 handleFailureInFunction:v10 file:@"_UISmartReplyFeedbackManager.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (id)stringListFromPredictions:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      v7 = [v6 label];
      v8 = [v7 copy];
      [v4 setObject:v8 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  return v4;
}

- (BOOL)predictionsContainSmartReplies:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([_UISmartReplyFeedbackManager candidateIsSmartReply:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)predictionsContainSmartActions:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([_UISmartReplyFeedbackManager candidateIsSmartAction:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)predictionsContainLongFormCandidates:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([_UISmartReplyFeedbackManager candidateIsLongFormSmartReply:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)updateCandidates:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UISmartReplyFeedbackManager *)self state]< 3 || [(_UISmartReplyFeedbackManager *)self state]> 7)
  {
    if ([(_UISmartReplyFeedbackManager *)self predictionsContainSmartReplies:v4]|| [(_UISmartReplyFeedbackManager *)self predictionsContainSmartActions:v4])
    {
      v6 = [(_UISmartReplyFeedbackManager *)self stringListFromPredictions:v4];
      v7 = [(_UISmartReplyFeedbackManager *)self previouslyShownCandidates];
      v8 = [v7 isEqualToArray:v6];

      if (v8)
      {
        v9 = UIFeedbackServiceLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v12) = 0;
          _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "updateCandidates: Ignoring update due to identical candidates", &v12, 2u);
        }
      }

      else
      {
        [(_UISmartReplyFeedbackManager *)self setPreviouslyShownCandidates:v6];
        [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"updateCandidates"];
        self->_isLongFormCandidate = [(_UISmartReplyFeedbackManager *)self predictionsContainLongFormCandidates:v4];
        v10 = UIFeedbackServiceLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          if (self->_isLongFormCandidate)
          {
            v11 = @"Found";
          }

          else
          {
            v11 = @"Didn't find";
          }

          v12 = 138477827;
          v13 = v11;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "%{private}@ long form candidates", &v12, 0xCu);
        }

        [(_UISmartReplyFeedbackManager *)self smartRepliesPresented];
      }
    }

    else
    {
      [(_UISmartReplyFeedbackManager *)self resetStateIfNoSmartReplySelected];
    }
  }

  else
  {
    v5 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "updateCandidates called, but awaiting feedback UI still. Ignoring update.", &v12, 2u);
    }
  }
}

- (void)smartRepliesPresented
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(_UISmartReplyFeedbackManager *)self state]== 1)
  {
    self->_state = 2;
  }

  else
  {
    v3 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected state %lu in smartRepliesPresented", &v5, 0xCu);
    }
  }

  v4 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_INFO, "smartRepliesPresented", &v5, 2u);
  }
}

+ (id)_conversationTypePayloadValueFromConversationType:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E7118BA0[a3];
  }
}

- (void)_userSelectedSmartReply:(id)a3 isLongForm:(BOOL)a4 withMailOrMsgThreadId:(id)a5 withConversationType:(int64_t)a6
{
  v8 = a4;
  v31[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 2)
  {
    v12 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v26 = 134217984;
      v27 = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unexpected state %lu in _userSelectedSmartReply", &v26, 0xCu);
    }
  }

  if ([(_UISmartReplyFeedbackManager *)self isLongFormCandidate]!= v8)
  {
    v13 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = @"NO";
      if (v8)
      {
        v25 = @"YES";
      }

      v26 = 138477827;
      v27 = v25;
      _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Unexpected isLongForm %{private}@ in _userSelectedSmartReply", &v26, 0xCu);
    }
  }

  v14 = 4;
  if (!v8)
  {
    v14 = 5;
  }

  self->_state = v14;
  [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:v10];
  self->_isLongFormCandidate = v8;
  v15 = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
  [v15 updateAssistantView];

  v16 = getIASignalSmartRepliesIntentEngaged();
  v17 = getIAChannelSmartReplies();
  v18 = getIAPayloadKeySmartRepliesSelectedIntent();
  v19 = v18;
  if (v10)
  {
    v20 = v10;
  }

  else
  {
    v20 = @"None";
  }

  v30[0] = v18;
  v30[1] = @"ConversationType";
  v31[0] = v20;
  v21 = [_UISmartReplyFeedbackManager _conversationTypePayloadValueFromConversationType:a6];
  v31[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v16 toChannel:v17 withThreadId:v11 payload:v22];

  v23 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"short form";
    if (v8)
    {
      v24 = @"long form";
    }

    v26 = 138478083;
    v27 = v24;
    v28 = 2117;
    v29 = v10;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_INFO, "_userSelectedSmartReply %{private}@ '%{sensitive}@'", &v26, 0x16u);
  }
}

+ (void)userSelectedSmartReply:(id)a3 isLongForm:(BOOL)a4 withMailOrMsgThreadId:(id)a5 withConversationType:(int64_t)a6 withSmartReplyFeedbackManagerInstance:(id)a7
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v10 = a4;
    v11 = a5;
    v12 = a3;
    [a7 _userSelectedSmartReply:v12 isLongForm:v10 withMailOrMsgThreadId:v11 withConversationType:a6];
  }

  else
  {
    v13 = a5;
    v14 = a3;
    v12 = getIASignalSmartRepliesIntentEngaged();
    v11 = getIAChannelSmartReplies();
    v15 = getIAPayloadKeySmartRepliesSelectedIntent();
    v16 = v15;
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = @"None";
    }

    v20[0] = v15;
    v20[1] = @"ConversationType";
    v21[0] = v17;
    v18 = [_UISmartReplyFeedbackManager _conversationTypePayloadValueFromConversationType:a6];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [_UISmartReplyFeedbackManager _sendAnalyticsForSignal:v12 toChannel:v11 withThreadId:v13 payload:v19];
  }
}

- (void)userSelectedPollAction:(id)a3 withInputContextHistory:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 2)
  {
    v8 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v22 = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected state %lu in userSelectedPollAction", buf, 0xCu);
    }
  }

  self->_state = 5;
  [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:v6];
  self->_isPollAction = 1;
  v9 = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
  [v9 updateAssistantView];

  v10 = [v7 recipientIdentifiers];
  if (v10)
  {
    v11 = v10;
    v12 = [v7 recipientIdentifiers];
    v13 = [v12 count];

    if (v13 >= 2)
    {
      v14 = getIAChannelSmartReplies();
      v15 = [v7 threadIdentifier];
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = @"None";
      }

      v19 = @"PollActionTitle";
      v20 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:@"PollActionEngaged" toChannel:v14 withThreadId:v15 payload:v17];
    }
  }

  v18 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    v22 = v6;
    _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_INFO, "userSelectedPollAction '%{sensitive}@'", buf, 0xCu);
  }
}

- (void)reportWritingToolsPanelDismissed
{
  if ([(_UISmartReplyFeedbackManager *)self isLongFormCandidate])
  {
    if ([(_UISmartReplyFeedbackManager *)self state]<= 4)
    {
      self->_state = 5;
      if (+[UIKeyboard isKeyboardProcess])
      {
        v3 = +[UIKeyboardImpl activeInstance];
        [v3 generateCandidates];
      }
    }

    v4 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_INFO, "reportWritingToolsPanelDismissed", v5, 2u);
    }
  }
}

- (void)reportFeedbackUIPresented
{
  if (![(_UISmartReplyFeedbackManager *)self isLongFormCandidate]|| [(_UISmartReplyFeedbackManager *)self state]>= 5)
  {
    v3 = [(_UISmartReplyFeedbackManager *)self reportFeedbackUIPresentedCalledTime];

    if (!v3)
    {
      v4 = [MEMORY[0x1E695DF00] date];
      [(_UISmartReplyFeedbackManager *)self setReportFeedbackUIPresentedCalledTime:v4];

      self->_state = 6;
      [(_UISmartReplyFeedbackManager *)self predictionBarDebounceTimeInterval];
      v6 = v5;
      v7 = [(_UISmartReplyFeedbackManager *)self isPollAction];
      v8 = 1.0;
      if (!v7)
      {
        v8 = v6;
      }

      v9 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_predictionBarDebounceTimeIntervalExpired selector:0 userInfo:0 repeats:v8];
      [(_UISmartReplyFeedbackManager *)self setPredictionBarDebounceTimeIntervalTimer:v9];

      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v10 = getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_ptr;
      v26 = getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_ptr;
      if (!getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_block_invoke;
        v21 = &unk_1E70F2F20;
        v22 = &v23;
        v11 = InputAnalyticsLibrary_0();
        v24[3] = dlsym(v11, "IASignalFeedbackServiceSmartRepliesFeedbackUIPresented");
        getIASignalFeedbackServiceSmartRepliesFeedbackUIPresentedSymbolLoc_ptr = *(v22[1] + 24);
        v10 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v10)
      {
        v12 = *v10;
        v13 = getIAChannelFeedbackService();
        v14 = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
        [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v12 toChannel:v13 withThreadId:v14 payload:0];

        v15 = UIFeedbackServiceLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_INFO, "reportFeedbackUIPresented", buf, 2u);
        }
      }

      else
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceSmartRepliesFeedbackUIPresented(void)"];
        [v16 handleFailureInFunction:v17 file:@"_UISmartReplyFeedbackManager.m" lineNumber:41 description:{@"%s", dlerror()}];

        __break(1u);
      }
    }
  }
}

- (void)predictionBarDebounceTimeIntervalExpired
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(_UISmartReplyFeedbackManager *)self state]== 6)
  {
    self->_state = 7;
    v3 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_INFO, "predictionBarDebounceTimeIntervalExpired", &v9, 2u);
    }

    v4 = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
    v5 = [v4 _hasMarkedText];

    if (v5)
    {
      [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"predictionBarDebounceTimeIntervalExpired with marked text"];
    }
  }

  else
  {
    v6 = [(_UISmartReplyFeedbackManager *)self state];
    v7 = UIFeedbackServiceLog();
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "predictionBarDebounceTimeIntervalExpired, but was previously reset", &v9, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected state %lu in predictionBarDebounceTimeIntervalExpired", &v9, 0xCu);
    }
  }
}

- (void)inputModeWillChange
{
  v3 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_INFO, "inputModeWillChange", v4, 2u);
  }

  [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"resetOnInputModeWillChange"];
}

- (void)reportSmartRepliesFeedbackSignal:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboard keyboardBundleIdentifier];
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 inputSystemSourceSession];
    v8 = [v7 documentTraits];
    v9 = [v8 sceneID];

    v10 = 0;
    if (v5 && v9)
    {
      v13[0] = @"FeedbackServiceRequestingBundleID";
      v13[1] = @"FeedbackServiceRequestingSceneID";
      v14[0] = v5;
      v14[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    }
  }

  else
  {
    v9 = 0;
    v5 = 0;
    v10 = 0;
  }

  v11 = getIAChannelFeedbackService();
  v12 = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
  [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v4 toChannel:v11 withThreadId:v12 payload:v10];

  [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"reportSmartRepliesFeedbackSignal"];
}

- (void)reportSmartRepliesConcern
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_ptr;
  v10 = getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_ptr;
  if (!getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v4, "IASignalFeedbackServiceLaunchSmartRepliesReportConcern");
    getIASignalFeedbackServiceLaunchSmartRepliesReportConcernSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    [(_UISmartReplyFeedbackManager *)self reportSmartRepliesFeedbackSignal:*v3];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesReportConcern(void)"];
    [v5 handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)reportSmartRepliesThumbsUp
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_ptr;
  v10 = getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_ptr;
  if (!getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v4, "IASignalFeedbackServiceLaunchSmartRepliesThumbsUp");
    getIASignalFeedbackServiceLaunchSmartRepliesThumbsUpSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    [(_UISmartReplyFeedbackManager *)self reportSmartRepliesFeedbackSignal:*v3];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesThumbsUp(void)"];
    [v5 handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)reportSmartRepliesThumbsDown
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_ptr;
  v10 = getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_ptr;
  if (!getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_ptr)
  {
    v4 = InputAnalyticsLibrary_0();
    v8[3] = dlsym(v4, "IASignalFeedbackServiceLaunchSmartRepliesThumbsDown");
    getIASignalFeedbackServiceLaunchSmartRepliesThumbsDownSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    [(_UISmartReplyFeedbackManager *)self reportSmartRepliesFeedbackSignal:*v3];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesThumbsDown(void)"];
    [v5 handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)resetWithDebug:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 1)
  {
    v5 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_INFO, "Resetting state (%{private}@)", &buf, 0xCu);
    }

    v6 = [(_UISmartReplyFeedbackManager *)self predictionBarDebounceTimeIntervalTimer];
    [v6 invalidate];

    self->_state = 1;
    *&self->_isLongFormCandidate = 0;
    [(_UISmartReplyFeedbackManager *)self setPreviouslyShownCandidates:0];
    [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:0];
    v7 = [(_UISmartReplyFeedbackManager *)self reportFeedbackUIPresentedCalledTime];
    LOBYTE(v6) = v7 == 0;

    if ((v6 & 1) == 0)
    {
      v8 = UIFeedbackServiceLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Updating assistant view...", &buf, 2u);
      }

      [(_UISmartReplyFeedbackManager *)self setReportFeedbackUIPresentedCalledTime:0];
      v9 = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
      [v9 updateAssistantView];
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v10 = getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_ptr;
    v21 = getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_ptr;
    if (!getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v23 = __getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_block_invoke;
      v24 = &unk_1E70F2F20;
      v25 = &v18;
      v11 = InputAnalyticsLibrary_0();
      v12 = dlsym(v11, "IASignalFeedbackServiceSmartRepliesFeedbackUIReset");
      *(v25[1] + 24) = v12;
      getIASignalFeedbackServiceSmartRepliesFeedbackUIResetSymbolLoc_ptr = *(v25[1] + 24);
      v10 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v10)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceSmartRepliesFeedbackUIReset(void)"];
      [v16 handleFailureInFunction:v17 file:@"_UISmartReplyFeedbackManager.m" lineNumber:42 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v13 = *v10;
    v14 = getIAChannelFeedbackService();
    v15 = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
    [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v13 toChannel:v14 withThreadId:v15 payload:0];
  }
}

- (void)resetStateIfNoSmartReplySelected
{
  if ([(_UISmartReplyFeedbackManager *)self state]== 2)
  {

    [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"resetStateIfNoSmartReplySelected"];
  }
}

- (void)_sendAnalyticsForSignal:(id)a3 toChannel:(id)a4 withThreadId:(id)a5 payload:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(_UISmartReplyFeedbackManager *)self setAnalyticsSessionId:v11];
  [_UISmartReplyFeedbackManager _sendAnalyticsForSignal:v13 toChannel:v12 withThreadId:v11 payload:v10];
}

+ (void)_sendAnalyticsForSignal:(id)a3 toChannel:(id)a4 withThreadId:(id)a5 payload:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v13 = getIASignalAnalyticsClass_softClass_0;
  v21 = getIASignalAnalyticsClass_softClass_0;
  if (!getIASignalAnalyticsClass_softClass_0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getIASignalAnalyticsClass_block_invoke_0;
    v16[3] = &unk_1E70F2F20;
    v17 = &v18;
    InputAnalyticsLibraryCore_1();
    v19[3] = objc_getClass("IASignalAnalytics");
    getIASignalAnalyticsClass_softClass_0 = *(v17[1] + 24);
    v13 = v19[3];
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);
  if (v13)
  {
    [v13 sendSignal:v9 toChannel:v10 withNullableUniqueStringID:v11 withPayload:v12];
  }

  else
  {
    v15 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16[0]) = 0;
      _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Could not soft link InputAnalytics", v16, 2u);
    }
  }
}

- (_UIKeyboardStateManager)keyboardStateManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardStateManagerDelegate);

  return WeakRetained;
}

@end