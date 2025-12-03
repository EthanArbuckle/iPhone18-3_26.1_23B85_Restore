@interface _UISmartReplyFeedbackManager
+ (BOOL)showReportConcernUI;
+ (id)_conversationTypePayloadValueFromConversationType:(int64_t)type;
+ (void)_sendAnalyticsForSignal:(id)signal toChannel:(id)channel withThreadId:(id)id payload:(id)payload;
+ (void)userSelectedSmartReply:(id)reply isLongForm:(BOOL)form withMailOrMsgThreadId:(id)id withConversationType:(int64_t)type withSmartReplyFeedbackManagerInstance:(id)instance;
- (BOOL)predictionsContainLongFormCandidates:(id)candidates;
- (BOOL)predictionsContainSmartActions:(id)actions;
- (BOOL)predictionsContainSmartReplies:(id)replies;
- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:(BOOL)split;
- (_UIKeyboardStateManager)keyboardStateManagerDelegate;
- (_UISmartReplyFeedbackManager)init;
- (_UISmartReplyFeedbackManager)initWithKeyboardStateManagerDelegate:(id)delegate;
- (_UISmartReplyFeedbackManager)initWithoutBundleIdCheck;
- (id)stringListFromPredictions:(id)predictions;
- (void)_sendAnalyticsForSignal:(id)signal toChannel:(id)channel withThreadId:(id)id payload:(id)payload;
- (void)_userSelectedSmartReply:(id)reply isLongForm:(BOOL)form withMailOrMsgThreadId:(id)id withConversationType:(int64_t)type;
- (void)composeFieldInFocusWithMailOrMsgThreadId:(id)id;
- (void)inputModeWillChange;
- (void)predictionBarDebounceTimeIntervalExpired;
- (void)reportFeedbackUIPresented;
- (void)reportSmartRepliesConcern;
- (void)reportSmartRepliesFeedbackSignal:(id)signal;
- (void)reportSmartRepliesThumbsDown;
- (void)reportSmartRepliesThumbsUp;
- (void)reportWritingToolsPanelDismissed;
- (void)resetOnKeyboardCandidatesCleared;
- (void)resetSmartReplyFeedbackUIIfAlreadyShown;
- (void)resetStateIfNoSmartReplySelected;
- (void)resetWithDebug:(id)debug;
- (void)smartRepliesPresented;
- (void)updateCandidates:(id)candidates;
- (void)userSelectedPollAction:(id)action withInputContextHistory:(id)history;
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
        selfCopy = 0;
        goto LABEL_7;
      }

      v4 = 1.7;
    }
  }

  [(_UISmartReplyFeedbackManager *)self setPredictionBarDebounceTimeInterval:v4];
  self = [(_UISmartReplyFeedbackManager *)self initWithoutBundleIdCheck];
  selfCopy = self;
LABEL_7:

  return selfCopy;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_inputModeWillChange name:@"UITextInputCurrentInputModeWillChangeNotification" object:0];
  }

  return v3;
}

- (_UISmartReplyFeedbackManager)initWithKeyboardStateManagerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(_UISmartReplyFeedbackManager *)self init];
  v6 = v5;
  if (v5)
  {
    [(_UISmartReplyFeedbackManager *)v5 setKeyboardStateManagerDelegate:delegateCopy];
  }

  return v6;
}

- (BOOL)shouldShowSmartReplyFeedbackInputDashboardViewControllerWithKeyboardIsSplit:(BOOL)split
{
  splitCopy = split;
  if ([(_UISmartReplyFeedbackManager *)self state]< 3)
  {
    return 0;
  }

  if (![(_UISmartReplyFeedbackManager *)self isLongFormCandidate])
  {
    result = 1;
    if (!splitCopy)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [(_UISmartReplyFeedbackManager *)self state]> 4;
  if (splitCopy)
  {
LABEL_7:
    result = 0;
    self->_state = 7;
  }

  return result;
}

- (void)composeFieldInFocusWithMailOrMsgThreadId:(id)id
{
  idCopy = id;
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
    [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v7 toChannel:v8 withThreadId:idCopy payload:0];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalSmartRepliesComposeFieldInFocus(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"_UISmartReplyFeedbackManager.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (id)stringListFromPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(predictionsCopy, "count")}];
  if ([predictionsCopy count])
  {
    v5 = 0;
    do
    {
      v6 = [predictionsCopy objectAtIndexedSubscript:v5];
      label = [v6 label];
      v8 = [label copy];
      [v4 setObject:v8 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [predictionsCopy count]);
  }

  return v4;
}

- (BOOL)predictionsContainSmartReplies:(id)replies
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  repliesCopy = replies;
  v4 = [repliesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(repliesCopy);
        }

        if ([_UISmartReplyFeedbackManager candidateIsSmartReply:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [repliesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)predictionsContainSmartActions:(id)actions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  actionsCopy = actions;
  v4 = [actionsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(actionsCopy);
        }

        if ([_UISmartReplyFeedbackManager candidateIsSmartAction:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [actionsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)predictionsContainLongFormCandidates:(id)candidates
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  candidatesCopy = candidates;
  v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(candidatesCopy);
        }

        if ([_UISmartReplyFeedbackManager candidateIsLongFormSmartReply:*(*(&v8 + 1) + 8 * i), v8])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [candidatesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)updateCandidates:(id)candidates
{
  v14 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  if ([(_UISmartReplyFeedbackManager *)self state]< 3 || [(_UISmartReplyFeedbackManager *)self state]> 7)
  {
    if ([(_UISmartReplyFeedbackManager *)self predictionsContainSmartReplies:candidatesCopy]|| [(_UISmartReplyFeedbackManager *)self predictionsContainSmartActions:candidatesCopy])
    {
      v6 = [(_UISmartReplyFeedbackManager *)self stringListFromPredictions:candidatesCopy];
      previouslyShownCandidates = [(_UISmartReplyFeedbackManager *)self previouslyShownCandidates];
      v8 = [previouslyShownCandidates isEqualToArray:v6];

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
        self->_isLongFormCandidate = [(_UISmartReplyFeedbackManager *)self predictionsContainLongFormCandidates:candidatesCopy];
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
      state = [(_UISmartReplyFeedbackManager *)self state];
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

+ (id)_conversationTypePayloadValueFromConversationType:(int64_t)type
{
  if (type > 2)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E7118BA0[type];
  }
}

- (void)_userSelectedSmartReply:(id)reply isLongForm:(BOOL)form withMailOrMsgThreadId:(id)id withConversationType:(int64_t)type
{
  formCopy = form;
  v31[2] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  idCopy = id;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 2)
  {
    v12 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v26 = 134217984;
      state = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unexpected state %lu in _userSelectedSmartReply", &v26, 0xCu);
    }
  }

  if ([(_UISmartReplyFeedbackManager *)self isLongFormCandidate]!= formCopy)
  {
    v13 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = @"NO";
      if (formCopy)
      {
        v25 = @"YES";
      }

      v26 = 138477827;
      state = v25;
      _os_log_error_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Unexpected isLongForm %{private}@ in _userSelectedSmartReply", &v26, 0xCu);
    }
  }

  v14 = 4;
  if (!formCopy)
  {
    v14 = 5;
  }

  self->_state = v14;
  [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:replyCopy];
  self->_isLongFormCandidate = formCopy;
  keyboardStateManagerDelegate = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
  [keyboardStateManagerDelegate updateAssistantView];

  v16 = getIASignalSmartRepliesIntentEngaged();
  v17 = getIAChannelSmartReplies();
  v18 = getIAPayloadKeySmartRepliesSelectedIntent();
  v19 = v18;
  if (replyCopy)
  {
    v20 = replyCopy;
  }

  else
  {
    v20 = @"None";
  }

  v30[0] = v18;
  v30[1] = @"ConversationType";
  v31[0] = v20;
  v21 = [_UISmartReplyFeedbackManager _conversationTypePayloadValueFromConversationType:type];
  v31[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v16 toChannel:v17 withThreadId:idCopy payload:v22];

  v23 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"short form";
    if (formCopy)
    {
      v24 = @"long form";
    }

    v26 = 138478083;
    state = v24;
    v28 = 2117;
    v29 = replyCopy;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_INFO, "_userSelectedSmartReply %{private}@ '%{sensitive}@'", &v26, 0x16u);
  }
}

+ (void)userSelectedSmartReply:(id)reply isLongForm:(BOOL)form withMailOrMsgThreadId:(id)id withConversationType:(int64_t)type withSmartReplyFeedbackManagerInstance:(id)instance
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (instance)
  {
    formCopy = form;
    idCopy = id;
    replyCopy = reply;
    [instance _userSelectedSmartReply:replyCopy isLongForm:formCopy withMailOrMsgThreadId:idCopy withConversationType:type];
  }

  else
  {
    idCopy2 = id;
    replyCopy2 = reply;
    replyCopy = getIASignalSmartRepliesIntentEngaged();
    idCopy = getIAChannelSmartReplies();
    v15 = getIAPayloadKeySmartRepliesSelectedIntent();
    v16 = v15;
    if (replyCopy2)
    {
      v17 = replyCopy2;
    }

    else
    {
      v17 = @"None";
    }

    v20[0] = v15;
    v20[1] = @"ConversationType";
    v21[0] = v17;
    v18 = [_UISmartReplyFeedbackManager _conversationTypePayloadValueFromConversationType:type];
    v21[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [_UISmartReplyFeedbackManager _sendAnalyticsForSignal:replyCopy toChannel:idCopy withThreadId:idCopy2 payload:v19];
  }
}

- (void)userSelectedPollAction:(id)action withInputContextHistory:(id)history
{
  v23 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  historyCopy = history;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 2)
  {
    v8 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      state = [(_UISmartReplyFeedbackManager *)self state];
      _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected state %lu in userSelectedPollAction", buf, 0xCu);
    }
  }

  self->_state = 5;
  [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:actionCopy];
  self->_isPollAction = 1;
  keyboardStateManagerDelegate = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
  [keyboardStateManagerDelegate updateAssistantView];

  recipientIdentifiers = [historyCopy recipientIdentifiers];
  if (recipientIdentifiers)
  {
    v11 = recipientIdentifiers;
    recipientIdentifiers2 = [historyCopy recipientIdentifiers];
    v13 = [recipientIdentifiers2 count];

    if (v13 >= 2)
    {
      v14 = getIAChannelSmartReplies();
      threadIdentifier = [historyCopy threadIdentifier];
      if (actionCopy)
      {
        v16 = actionCopy;
      }

      else
      {
        v16 = @"None";
      }

      v19 = @"PollActionTitle";
      v20 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:@"PollActionEngaged" toChannel:v14 withThreadId:threadIdentifier payload:v17];
    }
  }

  v18 = UIFeedbackServiceLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138739971;
    state = actionCopy;
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
    reportFeedbackUIPresentedCalledTime = [(_UISmartReplyFeedbackManager *)self reportFeedbackUIPresentedCalledTime];

    if (!reportFeedbackUIPresentedCalledTime)
    {
      date = [MEMORY[0x1E695DF00] date];
      [(_UISmartReplyFeedbackManager *)self setReportFeedbackUIPresentedCalledTime:date];

      self->_state = 6;
      [(_UISmartReplyFeedbackManager *)self predictionBarDebounceTimeInterval];
      v6 = v5;
      isPollAction = [(_UISmartReplyFeedbackManager *)self isPollAction];
      v8 = 1.0;
      if (!isPollAction)
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
        analyticsSessionId = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
        [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v12 toChannel:v13 withThreadId:analyticsSessionId payload:0];

        v15 = UIFeedbackServiceLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_INFO, "reportFeedbackUIPresented", buf, 2u);
        }
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceSmartRepliesFeedbackUIPresented(void)"];
        [currentHandler handleFailureInFunction:v17 file:@"_UISmartReplyFeedbackManager.m" lineNumber:41 description:{@"%s", dlerror()}];

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

    keyboardStateManagerDelegate = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
    _hasMarkedText = [keyboardStateManagerDelegate _hasMarkedText];

    if (_hasMarkedText)
    {
      [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"predictionBarDebounceTimeIntervalExpired with marked text"];
    }
  }

  else
  {
    state = [(_UISmartReplyFeedbackManager *)self state];
    v7 = UIFeedbackServiceLog();
    v8 = v7;
    if (state == 1)
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
      state2 = [(_UISmartReplyFeedbackManager *)self state];
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

- (void)reportSmartRepliesFeedbackSignal:(id)signal
{
  v14[2] = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = +[UIKeyboard keyboardBundleIdentifier];
    v6 = +[UIKeyboardImpl activeInstance];
    inputSystemSourceSession = [v6 inputSystemSourceSession];
    documentTraits = [inputSystemSourceSession documentTraits];
    sceneID = [documentTraits sceneID];

    v10 = 0;
    if (v5 && sceneID)
    {
      v13[0] = @"FeedbackServiceRequestingBundleID";
      v13[1] = @"FeedbackServiceRequestingSceneID";
      v14[0] = v5;
      v14[1] = sceneID;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    }
  }

  else
  {
    sceneID = 0;
    v5 = 0;
    v10 = 0;
  }

  v11 = getIAChannelFeedbackService();
  analyticsSessionId = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
  [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:signalCopy toChannel:v11 withThreadId:analyticsSessionId payload:v10];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesReportConcern(void)"];
    [currentHandler handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:40 description:{@"%s", dlerror()}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesThumbsUp(void)"];
    [currentHandler handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:38 description:{@"%s", dlerror()}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceLaunchSmartRepliesThumbsDown(void)"];
    [currentHandler handleFailureInFunction:v6 file:@"_UISmartReplyFeedbackManager.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)resetWithDebug:(id)debug
{
  v26 = *MEMORY[0x1E69E9840];
  debugCopy = debug;
  if ([(_UISmartReplyFeedbackManager *)self state]!= 1)
  {
    v5 = UIFeedbackServiceLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = debugCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_INFO, "Resetting state (%{private}@)", &buf, 0xCu);
    }

    predictionBarDebounceTimeIntervalTimer = [(_UISmartReplyFeedbackManager *)self predictionBarDebounceTimeIntervalTimer];
    [predictionBarDebounceTimeIntervalTimer invalidate];

    self->_state = 1;
    *&self->_isLongFormCandidate = 0;
    [(_UISmartReplyFeedbackManager *)self setPreviouslyShownCandidates:0];
    [(_UISmartReplyFeedbackManager *)self setSelectedCandidateDescription:0];
    reportFeedbackUIPresentedCalledTime = [(_UISmartReplyFeedbackManager *)self reportFeedbackUIPresentedCalledTime];
    LOBYTE(predictionBarDebounceTimeIntervalTimer) = reportFeedbackUIPresentedCalledTime == 0;

    if ((predictionBarDebounceTimeIntervalTimer & 1) == 0)
    {
      v8 = UIFeedbackServiceLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_INFO, "Updating assistant view...", &buf, 2u);
      }

      [(_UISmartReplyFeedbackManager *)self setReportFeedbackUIPresentedCalledTime:0];
      keyboardStateManagerDelegate = [(_UISmartReplyFeedbackManager *)self keyboardStateManagerDelegate];
      [keyboardStateManagerDelegate updateAssistantView];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getIASignalFeedbackServiceSmartRepliesFeedbackUIReset(void)"];
      [currentHandler handleFailureInFunction:v17 file:@"_UISmartReplyFeedbackManager.m" lineNumber:42 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v13 = *v10;
    v14 = getIAChannelFeedbackService();
    analyticsSessionId = [(_UISmartReplyFeedbackManager *)self analyticsSessionId];
    [(_UISmartReplyFeedbackManager *)self _sendAnalyticsForSignal:v13 toChannel:v14 withThreadId:analyticsSessionId payload:0];
  }
}

- (void)resetStateIfNoSmartReplySelected
{
  if ([(_UISmartReplyFeedbackManager *)self state]== 2)
  {

    [(_UISmartReplyFeedbackManager *)self resetWithDebug:@"resetStateIfNoSmartReplySelected"];
  }
}

- (void)_sendAnalyticsForSignal:(id)signal toChannel:(id)channel withThreadId:(id)id payload:(id)payload
{
  payloadCopy = payload;
  idCopy = id;
  channelCopy = channel;
  signalCopy = signal;
  [(_UISmartReplyFeedbackManager *)self setAnalyticsSessionId:idCopy];
  [_UISmartReplyFeedbackManager _sendAnalyticsForSignal:signalCopy toChannel:channelCopy withThreadId:idCopy payload:payloadCopy];
}

+ (void)_sendAnalyticsForSignal:(id)signal toChannel:(id)channel withThreadId:(id)id payload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  idCopy = id;
  payloadCopy = payload;
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
    [v13 sendSignal:signalCopy toChannel:channelCopy withNullableUniqueStringID:idCopy withPayload:payloadCopy];
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