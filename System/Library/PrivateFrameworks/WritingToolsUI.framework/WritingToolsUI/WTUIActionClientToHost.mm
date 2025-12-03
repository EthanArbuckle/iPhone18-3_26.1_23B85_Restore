@interface WTUIActionClientToHost
+ (id)_settingForActionType:(int64_t)type session:(id)session;
+ (id)actionForBeginTextPlaceholder;
+ (id)actionForCompositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
+ (id)actionForCopyText:(id)text;
+ (id)actionForDidBeginWritingToolsSession:(id)session contexts:(id)contexts;
+ (id)actionForDidEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
+ (id)actionForEnableIntelligentEntryFieldView:(BOOL)view;
+ (id)actionForEnableSmallDetent:(BOOL)detent;
+ (id)actionForEndTextPlaceholderWillInsertText:(BOOL)text completion:(id)completion;
+ (id)actionForEndWritingToolsWithError:(id)error;
+ (id)actionForEnrollmentBegan;
+ (id)actionForEnrollmentDismissedWithCompletion:(id)completion;
+ (id)actionForHandoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
+ (id)actionForMontaraDidStartRefinementForSessionWithUUID:(id)d;
+ (id)actionForPromptEntryModeUpdateWithState:(int64_t)state;
+ (id)actionForProofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished;
+ (id)actionForProofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
+ (id)actionForRedo;
+ (id)actionForReplaceSelectionWithText:(id)text;
+ (id)actionForResetPresentationSelectedDetent;
+ (id)actionForSetFeedbackHiddenDetentEnabled:(BOOL)enabled;
+ (id)actionForShareSheetDismissed;
+ (id)actionForShareSheetWithText:(id)text;
+ (id)actionForShowAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
+ (id)actionForShowContentWarningWithTitle:(id)title message:(id)message;
+ (id)actionForShowSmartReplyQuestionnaireWithRect:(CGRect)rect;
+ (id)actionForUndo;
+ (id)actionForUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanged:(BOOL)changed;
+ (id)actionForUpdateKeyboardTrackingHeight:(double)height;
+ (id)actionForWillBeginWritingToolsSession:(id)session requestContextsCompletion:(id)completion;
+ (id)actionForWritingToolsSession:(id)session didReceiveAction:(int64_t)action;
- (void)performActionForSceneController:(id)controller;
@end

@implementation WTUIActionClientToHost

+ (id)actionForWillBeginWritingToolsSession:(id)session requestContextsCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [self _settingForActionType:1 session:session];
  v8 = MEMORY[0x1E698E5F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__WTUIActionClientToHost_actionForWillBeginWritingToolsSession_requestContextsCompletion___block_invoke;
  v13[3] = &unk_1E8480FB0;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = [v8 responderWithHandler:v13];
  v11 = [[self alloc] initWithInfo:v7 responder:v10];

  return v11;
}

void __90__WTUIActionClientToHost_actionForWillBeginWritingToolsSession_requestContextsCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v5 = [v3 objectForSetting:13];

  v4 = [v5 array];
  (*(*(a1 + 32) + 16))();
}

+ (id)actionForWritingToolsSession:(id)session didReceiveAction:(int64_t)action
{
  v6 = [self _settingForActionType:3 session:session];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  [v6 setObject:v7 forSetting:8];

  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDidBeginWritingToolsSession:(id)session contexts:(id)contexts
{
  contextsCopy = contexts;
  v7 = [self _settingForActionType:2 session:session];
  v8 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:contextsCopy];

  [v7 setObject:v8 forSetting:2];
  v9 = [[self alloc] initWithInfo:v7 responder:0];

  return v9;
}

+ (id)actionForDidEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  v5 = [self _settingForActionType:4 session:session];
  [v5 setFlag:BSSettingFlagForBool() forSetting:3];
  v6 = [[self alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForEndWritingToolsWithError:(id)error
{
  v15[3] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB668 forSetting:1];
  if (errorCopy)
  {
    v14[0] = @"domain";
    domain = [errorCopy domain];
    v15[0] = domain;
    v14[1] = @"code";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v15[1] = v7;
    v14[2] = @"userInfo";
    userInfo = [errorCopy userInfo];
    v15[2] = userInfo;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [v5 setObject:v9 forSetting:17];
  }

  v10 = [self alloc];
  v11 = [MEMORY[0x1E698E5F8] responderWithHandler:&__block_literal_global_5];
  v12 = [v10 initWithInfo:v5 responder:v11];

  return v12;
}

void __60__WTUIActionClientToHost_actionForEndWritingToolsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = _WTVCLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__WTUIActionClientToHost_actionForEndWritingToolsWithError___block_invoke_cold_1(v2);
    }
  }
}

+ (id)actionForProofreadingSession:(id)session didReceiveSuggestions:(id)suggestions processedRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  suggestionsCopy = suggestions;
  v14 = [self _settingForActionType:6 session:session];
  v15 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:suggestionsCopy];

  [v14 setObject:v15 forSetting:10];
  v16 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v14 setObject:v16 forSetting:7];

  [v14 setObject:contextCopy forSetting:11];
  [v14 setFlag:BSSettingFlagForBool() forSetting:4];
  v17 = [[self alloc] initWithInfo:v14 responder:0];

  return v17;
}

+ (id)actionForProofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v12 = [self _settingForActionType:7 session:session];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [v12 setObject:v13 forSetting:12];

  [v12 setObject:dCopy forSetting:9];
  [v12 setObject:contextCopy forSetting:11];

  v14 = [[self alloc] initWithInfo:v12 responder:0];

  return v14;
}

+ (id)actionForCompositionSession:(id)session didReceiveText:(id)text replacementRange:(_NSRange)range inContext:(id)context finished:(BOOL)finished
{
  length = range.length;
  location = range.location;
  contextCopy = context;
  textCopy = text;
  v14 = [self _settingForActionType:8 session:session];
  v15 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v15 setAttributedString:textCopy];

  [v14 setObject:v15 forSetting:5];
  v16 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v14 setObject:v16 forSetting:7];

  [v14 setObject:contextCopy forSetting:11];
  [v14 setFlag:BSSettingFlagForBool() forSetting:4];
  v17 = [[self alloc] initWithInfo:v14 responder:0];

  return v17;
}

+ (id)actionForEnrollmentBegan
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB680 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForEnrollmentDismissedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB698 forSetting:1];
  v6 = MEMORY[0x1E698E5F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__WTUIActionClientToHost_actionForEnrollmentDismissedWithCompletion___block_invoke;
  v11[3] = &unk_1E8480FB0;
  v12 = completionCopy;
  v7 = completionCopy;
  v8 = [v6 responderWithHandler:v11];
  v9 = [[self alloc] initWithInfo:v5 responder:v8];

  return v9;
}

+ (id)actionForShareSheetWithText:(id)text
{
  v4 = MEMORY[0x1E698E700];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6B0 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:textCopy];

  [v6 setObject:v7 forSetting:5];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForShareSheetDismissed
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB6C8 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForReplaceSelectionWithText:(id)text
{
  v4 = MEMORY[0x1E698E700];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6E0 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:textCopy];

  [v6 setObject:v7 forSetting:5];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForCopyText:(id)text
{
  v4 = MEMORY[0x1E698E700];
  textCopy = text;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6F8 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:textCopy];

  [v6 setObject:v7 forSetting:5];
  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForUndo
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB710 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForRedo
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB728 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForBeginTextPlaceholder
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB740 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForEndTextPlaceholderWillInsertText:(BOOL)text completion:(id)completion
{
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:&unk_1F4FCB758 forSetting:1];
  [v6 setFlag:BSSettingFlagForBool() forSetting:14];
  if (completionCopy)
  {
    v7 = MEMORY[0x1E698E5F8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__WTUIActionClientToHost_actionForEndTextPlaceholderWillInsertText_completion___block_invoke;
    v11[3] = &unk_1E8480FB0;
    v12 = completionCopy;
    v8 = [v7 responderWithHandler:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[self alloc] initWithInfo:v6 responder:v8];

  return v9;
}

+ (id)actionForEnableSmallDetent:(BOOL)detent
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB770 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:15];
  v5 = [[self alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForSetFeedbackHiddenDetentEnabled:(BOOL)enabled
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB788 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:21];
  v5 = [[self alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForEnableIntelligentEntryFieldView:(BOOL)view
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB7A0 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:16];
  v5 = [[self alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForShowContentWarningWithTitle:(id)title message:(id)message
{
  v6 = MEMORY[0x1E698E700];
  messageCopy = message;
  titleCopy = title;
  v9 = objc_alloc_init(v6);
  [v9 setObject:&unk_1F4FCB7B8 forSetting:1];
  [v9 setObject:titleCopy forSetting:18];

  [v9 setObject:messageCopy forSetting:19];
  v10 = [[self alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForShowAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  actionCopy = action;
  v11 = MEMORY[0x1E698E700];
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  v15 = objc_alloc_init(v11);
  [v15 setObject:&unk_1F4FCB7D0 forSetting:1];
  [v15 setObject:titleCopy forSetting:18];

  [v15 setObject:messageCopy forSetting:19];
  [v15 setObject:buttonTitleCopy forSetting:23];

  if (actionCopy)
  {
    v16 = MEMORY[0x1E698E5F8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__WTUIActionClientToHost_actionForShowAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
    v20[3] = &unk_1E8480FB0;
    v21 = actionCopy;
    v17 = [v16 responderWithHandler:v20];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[self alloc] initWithInfo:v15 responder:v17];

  return v18;
}

void __87__WTUIActionClientToHost_actionForShowAlertWithTitle_message_buttonTitle_buttonAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = _WTVCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__WTUIActionClientToHost_actionForShowAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_cold_1(v3);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)actionForShowSmartReplyQuestionnaireWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v8 setObject:&unk_1F4FCB7E8 forSetting:1];
  v9 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v9 forSetting:20];

  v10 = [[self alloc] initWithInfo:v8 responder:0];

  return v10;
}

+ (id)actionForHandoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  promptCopy = prompt;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v7 setObject:&unk_1F4FCB800 forSetting:1];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:tool];
  [v7 setObject:v8 forSetting:26];

  if (promptCopy)
  {
    [v7 setObject:promptCopy forSetting:24];
  }

  v9 = [[self alloc] initWithInfo:v7 responder:0];

  return v9;
}

+ (id)_settingForActionType:(int64_t)type session:(id)session
{
  v5 = MEMORY[0x1E698E700];
  sessionCopy = session;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v7 setObject:v8 forSetting:1];

  [v7 setObject:sessionCopy forSetting:6];

  return v7;
}

+ (id)actionForResetPresentationSelectedDetent
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB818 forSetting:1];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  info = [(WTUIActionClientToHost *)self info];
  delegate = [controllerCopy delegate];

  v7 = [info objectForSetting:6];
  info2 = [(WTUIActionClientToHost *)self info];
  v9 = [info2 objectForSetting:1];
  integerValue = [v9 integerValue];

  switch(integerValue)
  {
    case 1:
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke;
      v66[3] = &unk_1E8480FF8;
      v66[4] = self;
      [delegate willBeginWritingToolsSession:v7 requestContexts:v66];
      break;
    case 2:
      v20 = [info objectForSetting:2];
      array = [v20 array];
      [delegate didBeginWritingToolsSession:v7 contexts:array];
      goto LABEL_34;
    case 3:
      v30 = [info objectForSetting:8];
      integerValue2 = [v30 integerValue];

      [delegate writingToolsSession:v7 didReceiveAction:integerValue2];
      break;
    case 4:
      [delegate didEndWritingToolsSession:v7 accepted:{objc_msgSend(info, "BOOLForSetting:", 3)}];
      break;
    case 5:
      v22 = [info objectForSetting:17];
      v23 = v22;
      if (v22)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = [v22 objectForKeyedSubscript:@"domain"];
        v26 = [v23 objectForKeyedSubscript:@"code"];
        integerValue3 = [v26 integerValue];
        v28 = [v23 objectForKeyedSubscript:@"userInfo"];
        v29 = [v24 errorWithDomain:v25 code:integerValue3 userInfo:v28];
      }

      else
      {
        v29 = 0;
      }

      [delegate endWritingToolsWithError:v29];

      goto LABEL_47;
    case 6:
      v20 = [info objectForSetting:10];
      array2 = [v20 array];
      if (array2)
      {
        array = array2;
      }

      else
      {
        array = MEMORY[0x1E695E0F0];
      }

      v47 = [info objectForSetting:7];
      rangeValue = [v47 rangeValue];
      v50 = v49;

      v36 = [info objectForSetting:11];
      [delegate proofreadingSession:v7 didReceiveSuggestions:array processedRange:rangeValue inContext:v50 finished:{v36, objc_msgSend(info, "BOOLForSetting:", 4)}];
      goto LABEL_26;
    case 7:
      v53 = [info objectForSetting:12];
      integerValue4 = [v53 integerValue];

      v20 = [info objectForSetting:9];
      v55 = [info objectForSetting:11];
      [delegate proofreadingSession:v7 didUpdateState:integerValue4 forSuggestionWithUUID:v20 inContext:v55];

      goto LABEL_35;
    case 8:
      v20 = [info objectForSetting:5];
      array = [v20 attributedString];
      v32 = [info objectForSetting:7];
      rangeValue2 = [v32 rangeValue];
      v35 = v34;

      v36 = [info objectForSetting:11];
      [delegate compositionSession:v7 didReceiveText:array replacementRange:rangeValue2 inContext:v35 finished:{v36, objc_msgSend(info, "BOOLForSetting:", 4)}];
LABEL_26:

      goto LABEL_34;
    case 9:
      v20 = [info objectForSetting:5];
      array = [v20 attributedString];
      [delegate replaceSelectionWithText:array];
      goto LABEL_34;
    case 10:
      v20 = [info objectForSetting:5];
      array = [v20 attributedString];
      [delegate copyText:array];
      goto LABEL_34;
    case 11:
      [delegate undo];
      break;
    case 12:
      [delegate redo];
      break;
    case 13:
      [delegate beginTextPlaceholder];
      break;
    case 14:
      v52 = [info BOOLForSetting:14];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_2;
      v65[3] = &unk_1E8480BF8;
      v65[4] = self;
      [delegate endTextPlaceholderAndWillInsertText:v52 completion:v65];
      break;
    case 15:
      [delegate enableSmallDetent:{objc_msgSend(info, "BOOLForSetting:", 15)}];
      break;
    case 16:
      if (objc_opt_respondsToSelector())
      {
        [delegate enableIntelligentEntryFieldView:{objc_msgSend(info, "BOOLForSetting:", 16)}];
      }

      break;
    case 17:
      v20 = [info objectForSetting:18];
      array = [info objectForSetting:19];
      [delegate showContentWarningWithTitle:v20 message:array];
      goto LABEL_34;
    case 18:
      v37 = [info objectForSetting:20];
      [v37 CGRectValue];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [delegate showSmartReplyQuestionnaireWithRect:{v39, v41, v43, v45}];
      break;
    case 19:
      [delegate setFeedbackHiddenDetentEnabled:{objc_msgSend(info, "BOOLForSetting:", 21)}];
      break;
    case 20:
      [delegate enrollmentBegan];
      break;
    case 21:
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_4;
      v63[3] = &unk_1E8480BF8;
      v63[4] = self;
      [delegate enrollmentDismissedWithCompletion:v63];
      break;
    case 22:
      v51 = [info objectForSetting:22];
      v20 = v51;
      if (v51)
      {
        [delegate updatePromptEntryState:{objc_msgSend(v51, "integerValue")}];
      }

      goto LABEL_35;
    case 23:
      v29 = [info objectForSetting:18];
      v56 = [info objectForSetting:19];
      v57 = [info objectForSetting:23];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_3;
      v64[3] = &unk_1E8480BF8;
      v64[4] = self;
      [delegate showAlertWithTitle:v29 message:v56 buttonTitle:v57 buttonAction:v64];

LABEL_47:
      break;
    case 24:
      v58 = [info objectForSetting:26];
      integerValue5 = [v58 integerValue];

      v20 = [info objectForSetting:24];
      [delegate handoffFromUCBFromTool:integerValue5 withPrompt:v20];
      goto LABEL_35;
    case 25:
      v20 = [info objectForSetting:5];
      array = [v20 attributedString];
      [delegate triggerShareSheetWithText:array];
LABEL_34:

      goto LABEL_35;
    case 26:
      [delegate dismissShareSheet];
      break;
    case 27:
      if (objc_opt_respondsToSelector())
      {
        [delegate resetPresentationSelectedDetent];
      }

      break;
    case 28:
      if (objc_opt_respondsToSelector())
      {
        v11 = [info objectForSetting:20];
        [v11 CGRectValue];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        [delegate writingToolsDidUpdateKeyboardPosition:objc_msgSend(info preferredContentSizeChanging:{"BOOLForSetting:", 25), v13, v15, v17, v19}];
      }

      break;
    case 29:
      v20 = [info objectForSetting:28];
      [delegate didStartMontaraRefinementForSessionWithUUID:v20];
LABEL_35:

      break;
    case 30:
      if (objc_opt_respondsToSelector())
      {
        v60 = [info objectForSetting:27];
        [v60 doubleValue];
        v62 = v61;

        [delegate updateKeyboardTrackingHeight:v62];
      }

      break;
    default:
      break;
  }
}

void __58__WTUIActionClientToHost_performActionForSceneController___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E700];
  v4 = a2;
  v8 = objc_alloc_init(v3);
  v5 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:v4];

  [v8 setObject:v5 forSetting:13];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E698E600] responseWithInfo:v8];
  [v6 sendResponse:v7];
}

void __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E698E600] response];
  [v1 sendResponse:v2];
}

void __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E698E600] response];
  [v1 sendResponse:v2];
}

void __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E698E600] response];
  [v1 sendResponse:v2];
}

+ (id)actionForPromptEntryModeUpdateWithState:(int64_t)state
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB830 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [v5 setObject:v6 forSetting:22];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForUpdateKeyboardPosition:(CGRect)position preferredContentSizeChanged:(BOOL)changed
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1F4FCB848 forSetting:1];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v9 setObject:v10 forSetting:20];

  [v9 setFlag:BSSettingFlagForBool() forSetting:25];
  v11 = [[self alloc] initWithInfo:v9 responder:0];

  return v11;
}

+ (id)actionForMontaraDidStartRefinementForSessionWithUUID:(id)d
{
  v4 = MEMORY[0x1E698E700];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB860 forSetting:1];
  [v6 setObject:dCopy forSetting:28];

  v7 = [[self alloc] initWithInfo:v6 responder:0];

  return v7;
}

+ (id)actionForUpdateKeyboardTrackingHeight:(double)height
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB878 forSetting:1];
  *&v6 = height;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setObject:v7 forSetting:27];

  v8 = [[self alloc] initWithInfo:v5 responder:0];

  return v8;
}

void __60__WTUIActionClientToHost_actionForEndWritingToolsWithError___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1(&dword_1D451D000, v2, v3, "Unexpected error when ending writing tools: %@", v4, v5, v6, v7, 2u);
}

void __87__WTUIActionClientToHost_actionForShowAlertWithTitle_message_buttonTitle_buttonAction___block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1(&dword_1D451D000, v2, v3, "Unexpected error when showing alert: %@", v4, v5, v6, v7, 2u);
}

@end