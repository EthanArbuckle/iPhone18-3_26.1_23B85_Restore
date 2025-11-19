@interface WTUIActionClientToHost
+ (id)_settingForActionType:(int64_t)a3 session:(id)a4;
+ (id)actionForBeginTextPlaceholder;
+ (id)actionForCompositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
+ (id)actionForCopyText:(id)a3;
+ (id)actionForDidBeginWritingToolsSession:(id)a3 contexts:(id)a4;
+ (id)actionForDidEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
+ (id)actionForEnableIntelligentEntryFieldView:(BOOL)a3;
+ (id)actionForEnableSmallDetent:(BOOL)a3;
+ (id)actionForEndTextPlaceholderWillInsertText:(BOOL)a3 completion:(id)a4;
+ (id)actionForEndWritingToolsWithError:(id)a3;
+ (id)actionForEnrollmentBegan;
+ (id)actionForEnrollmentDismissedWithCompletion:(id)a3;
+ (id)actionForHandoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
+ (id)actionForMontaraDidStartRefinementForSessionWithUUID:(id)a3;
+ (id)actionForPromptEntryModeUpdateWithState:(int64_t)a3;
+ (id)actionForProofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7;
+ (id)actionForProofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
+ (id)actionForRedo;
+ (id)actionForReplaceSelectionWithText:(id)a3;
+ (id)actionForResetPresentationSelectedDetent;
+ (id)actionForSetFeedbackHiddenDetentEnabled:(BOOL)a3;
+ (id)actionForShareSheetDismissed;
+ (id)actionForShareSheetWithText:(id)a3;
+ (id)actionForShowAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
+ (id)actionForShowContentWarningWithTitle:(id)a3 message:(id)a4;
+ (id)actionForShowSmartReplyQuestionnaireWithRect:(CGRect)a3;
+ (id)actionForUndo;
+ (id)actionForUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanged:(BOOL)a4;
+ (id)actionForUpdateKeyboardTrackingHeight:(double)a3;
+ (id)actionForWillBeginWritingToolsSession:(id)a3 requestContextsCompletion:(id)a4;
+ (id)actionForWritingToolsSession:(id)a3 didReceiveAction:(int64_t)a4;
- (void)performActionForSceneController:(id)a3;
@end

@implementation WTUIActionClientToHost

+ (id)actionForWillBeginWritingToolsSession:(id)a3 requestContextsCompletion:(id)a4
{
  v6 = a4;
  v7 = [a1 _settingForActionType:1 session:a3];
  v8 = MEMORY[0x1E698E5F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__WTUIActionClientToHost_actionForWillBeginWritingToolsSession_requestContextsCompletion___block_invoke;
  v13[3] = &unk_1E8480FB0;
  v14 = v6;
  v9 = v6;
  v10 = [v8 responderWithHandler:v13];
  v11 = [[a1 alloc] initWithInfo:v7 responder:v10];

  return v11;
}

void __90__WTUIActionClientToHost_actionForWillBeginWritingToolsSession_requestContextsCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v5 = [v3 objectForSetting:13];

  v4 = [v5 array];
  (*(*(a1 + 32) + 16))();
}

+ (id)actionForWritingToolsSession:(id)a3 didReceiveAction:(int64_t)a4
{
  v6 = [a1 _settingForActionType:3 session:a3];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v6 setObject:v7 forSetting:8];

  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForDidBeginWritingToolsSession:(id)a3 contexts:(id)a4
{
  v6 = a4;
  v7 = [a1 _settingForActionType:2 session:a3];
  v8 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:v6];

  [v7 setObject:v8 forSetting:2];
  v9 = [[a1 alloc] initWithInfo:v7 responder:0];

  return v9;
}

+ (id)actionForDidEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v5 = [a1 _settingForActionType:4 session:a3];
  [v5 setFlag:BSSettingFlagForBool() forSetting:3];
  v6 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v6;
}

+ (id)actionForEndWritingToolsWithError:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB668 forSetting:1];
  if (v4)
  {
    v14[0] = @"domain";
    v6 = [v4 domain];
    v15[0] = v6;
    v14[1] = @"code";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
    v15[1] = v7;
    v14[2] = @"userInfo";
    v8 = [v4 userInfo];
    v15[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [v5 setObject:v9 forSetting:17];
  }

  v10 = [a1 alloc];
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

+ (id)actionForProofreadingSession:(id)a3 didReceiveSuggestions:(id)a4 processedRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  length = a5.length;
  location = a5.location;
  v12 = a6;
  v13 = a4;
  v14 = [a1 _settingForActionType:6 session:a3];
  v15 = [objc_alloc(MEMORY[0x1E698E7B0]) initWithArray:v13];

  [v14 setObject:v15 forSetting:10];
  v16 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v14 setObject:v16 forSetting:7];

  [v14 setObject:v12 forSetting:11];
  [v14 setFlag:BSSettingFlagForBool() forSetting:4];
  v17 = [[a1 alloc] initWithInfo:v14 responder:0];

  return v17;
}

+ (id)actionForProofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [a1 _settingForActionType:7 session:a3];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v12 setObject:v13 forSetting:12];

  [v12 setObject:v11 forSetting:9];
  [v12 setObject:v10 forSetting:11];

  v14 = [[a1 alloc] initWithInfo:v12 responder:0];

  return v14;
}

+ (id)actionForCompositionSession:(id)a3 didReceiveText:(id)a4 replacementRange:(_NSRange)a5 inContext:(id)a6 finished:(BOOL)a7
{
  length = a5.length;
  location = a5.location;
  v12 = a6;
  v13 = a4;
  v14 = [a1 _settingForActionType:8 session:a3];
  v15 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v15 setAttributedString:v13];

  [v14 setObject:v15 forSetting:5];
  v16 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v14 setObject:v16 forSetting:7];

  [v14 setObject:v12 forSetting:11];
  [v14 setFlag:BSSettingFlagForBool() forSetting:4];
  v17 = [[a1 alloc] initWithInfo:v14 responder:0];

  return v17;
}

+ (id)actionForEnrollmentBegan
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB680 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForEnrollmentDismissedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB698 forSetting:1];
  v6 = MEMORY[0x1E698E5F8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__WTUIActionClientToHost_actionForEnrollmentDismissedWithCompletion___block_invoke;
  v11[3] = &unk_1E8480FB0;
  v12 = v4;
  v7 = v4;
  v8 = [v6 responderWithHandler:v11];
  v9 = [[a1 alloc] initWithInfo:v5 responder:v8];

  return v9;
}

+ (id)actionForShareSheetWithText:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6B0 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:v5];

  [v6 setObject:v7 forSetting:5];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForShareSheetDismissed
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB6C8 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForReplaceSelectionWithText:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6E0 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:v5];

  [v6 setObject:v7 forSetting:5];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForCopyText:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB6F8 forSetting:1];
  v7 = objc_alloc_init(WTUIBSCompatibleAttributedString);
  [(WTBSCompatibleAttributedString *)v7 setAttributedString:v5];

  [v6 setObject:v7 forSetting:5];
  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

+ (id)actionForUndo
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB710 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForRedo
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB728 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForBeginTextPlaceholder
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB740 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

+ (id)actionForEndTextPlaceholderWillInsertText:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:&unk_1F4FCB758 forSetting:1];
  [v6 setFlag:BSSettingFlagForBool() forSetting:14];
  if (v5)
  {
    v7 = MEMORY[0x1E698E5F8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__WTUIActionClientToHost_actionForEndTextPlaceholderWillInsertText_completion___block_invoke;
    v11[3] = &unk_1E8480FB0;
    v12 = v5;
    v8 = [v7 responderWithHandler:v11];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[a1 alloc] initWithInfo:v6 responder:v8];

  return v9;
}

+ (id)actionForEnableSmallDetent:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB770 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:15];
  v5 = [[a1 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForSetFeedbackHiddenDetentEnabled:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB788 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:21];
  v5 = [[a1 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForEnableIntelligentEntryFieldView:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v4 setObject:&unk_1F4FCB7A0 forSetting:1];
  [v4 setFlag:BSSettingFlagForBool() forSetting:16];
  v5 = [[a1 alloc] initWithInfo:v4 responder:0];

  return v5;
}

+ (id)actionForShowContentWarningWithTitle:(id)a3 message:(id)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:&unk_1F4FCB7B8 forSetting:1];
  [v9 setObject:v8 forSetting:18];

  [v9 setObject:v7 forSetting:19];
  v10 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v10;
}

+ (id)actionForShowAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E698E700];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v11);
  [v15 setObject:&unk_1F4FCB7D0 forSetting:1];
  [v15 setObject:v14 forSetting:18];

  [v15 setObject:v13 forSetting:19];
  [v15 setObject:v12 forSetting:23];

  if (v10)
  {
    v16 = MEMORY[0x1E698E5F8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__WTUIActionClientToHost_actionForShowAlertWithTitle_message_buttonTitle_buttonAction___block_invoke;
    v20[3] = &unk_1E8480FB0;
    v21 = v10;
    v17 = [v16 responderWithHandler:v20];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[a1 alloc] initWithInfo:v15 responder:v17];

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

+ (id)actionForShowSmartReplyQuestionnaireWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v8 setObject:&unk_1F4FCB7E8 forSetting:1];
  v9 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v8 setObject:v9 forSetting:20];

  v10 = [[a1 alloc] initWithInfo:v8 responder:0];

  return v10;
}

+ (id)actionForHandoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v7 setObject:&unk_1F4FCB800 forSetting:1];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:26];

  if (v6)
  {
    [v7 setObject:v6 forSetting:24];
  }

  v9 = [[a1 alloc] initWithInfo:v7 responder:0];

  return v9;
}

+ (id)_settingForActionType:(int64_t)a3 session:(id)a4
{
  v5 = MEMORY[0x1E698E700];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:1];

  [v7 setObject:v6 forSetting:6];

  return v7;
}

+ (id)actionForResetPresentationSelectedDetent
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F4FCB818 forSetting:1];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = [(WTUIActionClientToHost *)self info];
  v6 = [v4 delegate];

  v7 = [v5 objectForSetting:6];
  v8 = [(WTUIActionClientToHost *)self info];
  v9 = [v8 objectForSetting:1];
  v10 = [v9 integerValue];

  switch(v10)
  {
    case 1:
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke;
      v66[3] = &unk_1E8480FF8;
      v66[4] = self;
      [v6 willBeginWritingToolsSession:v7 requestContexts:v66];
      break;
    case 2:
      v20 = [v5 objectForSetting:2];
      v21 = [v20 array];
      [v6 didBeginWritingToolsSession:v7 contexts:v21];
      goto LABEL_34;
    case 3:
      v30 = [v5 objectForSetting:8];
      v31 = [v30 integerValue];

      [v6 writingToolsSession:v7 didReceiveAction:v31];
      break;
    case 4:
      [v6 didEndWritingToolsSession:v7 accepted:{objc_msgSend(v5, "BOOLForSetting:", 3)}];
      break;
    case 5:
      v22 = [v5 objectForSetting:17];
      v23 = v22;
      if (v22)
      {
        v24 = MEMORY[0x1E696ABC0];
        v25 = [v22 objectForKeyedSubscript:@"domain"];
        v26 = [v23 objectForKeyedSubscript:@"code"];
        v27 = [v26 integerValue];
        v28 = [v23 objectForKeyedSubscript:@"userInfo"];
        v29 = [v24 errorWithDomain:v25 code:v27 userInfo:v28];
      }

      else
      {
        v29 = 0;
      }

      [v6 endWritingToolsWithError:v29];

      goto LABEL_47;
    case 6:
      v20 = [v5 objectForSetting:10];
      v46 = [v20 array];
      if (v46)
      {
        v21 = v46;
      }

      else
      {
        v21 = MEMORY[0x1E695E0F0];
      }

      v47 = [v5 objectForSetting:7];
      v48 = [v47 rangeValue];
      v50 = v49;

      v36 = [v5 objectForSetting:11];
      [v6 proofreadingSession:v7 didReceiveSuggestions:v21 processedRange:v48 inContext:v50 finished:{v36, objc_msgSend(v5, "BOOLForSetting:", 4)}];
      goto LABEL_26;
    case 7:
      v53 = [v5 objectForSetting:12];
      v54 = [v53 integerValue];

      v20 = [v5 objectForSetting:9];
      v55 = [v5 objectForSetting:11];
      [v6 proofreadingSession:v7 didUpdateState:v54 forSuggestionWithUUID:v20 inContext:v55];

      goto LABEL_35;
    case 8:
      v20 = [v5 objectForSetting:5];
      v21 = [v20 attributedString];
      v32 = [v5 objectForSetting:7];
      v33 = [v32 rangeValue];
      v35 = v34;

      v36 = [v5 objectForSetting:11];
      [v6 compositionSession:v7 didReceiveText:v21 replacementRange:v33 inContext:v35 finished:{v36, objc_msgSend(v5, "BOOLForSetting:", 4)}];
LABEL_26:

      goto LABEL_34;
    case 9:
      v20 = [v5 objectForSetting:5];
      v21 = [v20 attributedString];
      [v6 replaceSelectionWithText:v21];
      goto LABEL_34;
    case 10:
      v20 = [v5 objectForSetting:5];
      v21 = [v20 attributedString];
      [v6 copyText:v21];
      goto LABEL_34;
    case 11:
      [v6 undo];
      break;
    case 12:
      [v6 redo];
      break;
    case 13:
      [v6 beginTextPlaceholder];
      break;
    case 14:
      v52 = [v5 BOOLForSetting:14];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_2;
      v65[3] = &unk_1E8480BF8;
      v65[4] = self;
      [v6 endTextPlaceholderAndWillInsertText:v52 completion:v65];
      break;
    case 15:
      [v6 enableSmallDetent:{objc_msgSend(v5, "BOOLForSetting:", 15)}];
      break;
    case 16:
      if (objc_opt_respondsToSelector())
      {
        [v6 enableIntelligentEntryFieldView:{objc_msgSend(v5, "BOOLForSetting:", 16)}];
      }

      break;
    case 17:
      v20 = [v5 objectForSetting:18];
      v21 = [v5 objectForSetting:19];
      [v6 showContentWarningWithTitle:v20 message:v21];
      goto LABEL_34;
    case 18:
      v37 = [v5 objectForSetting:20];
      [v37 CGRectValue];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [v6 showSmartReplyQuestionnaireWithRect:{v39, v41, v43, v45}];
      break;
    case 19:
      [v6 setFeedbackHiddenDetentEnabled:{objc_msgSend(v5, "BOOLForSetting:", 21)}];
      break;
    case 20:
      [v6 enrollmentBegan];
      break;
    case 21:
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_4;
      v63[3] = &unk_1E8480BF8;
      v63[4] = self;
      [v6 enrollmentDismissedWithCompletion:v63];
      break;
    case 22:
      v51 = [v5 objectForSetting:22];
      v20 = v51;
      if (v51)
      {
        [v6 updatePromptEntryState:{objc_msgSend(v51, "integerValue")}];
      }

      goto LABEL_35;
    case 23:
      v29 = [v5 objectForSetting:18];
      v56 = [v5 objectForSetting:19];
      v57 = [v5 objectForSetting:23];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __58__WTUIActionClientToHost_performActionForSceneController___block_invoke_3;
      v64[3] = &unk_1E8480BF8;
      v64[4] = self;
      [v6 showAlertWithTitle:v29 message:v56 buttonTitle:v57 buttonAction:v64];

LABEL_47:
      break;
    case 24:
      v58 = [v5 objectForSetting:26];
      v59 = [v58 integerValue];

      v20 = [v5 objectForSetting:24];
      [v6 handoffFromUCBFromTool:v59 withPrompt:v20];
      goto LABEL_35;
    case 25:
      v20 = [v5 objectForSetting:5];
      v21 = [v20 attributedString];
      [v6 triggerShareSheetWithText:v21];
LABEL_34:

      goto LABEL_35;
    case 26:
      [v6 dismissShareSheet];
      break;
    case 27:
      if (objc_opt_respondsToSelector())
      {
        [v6 resetPresentationSelectedDetent];
      }

      break;
    case 28:
      if (objc_opt_respondsToSelector())
      {
        v11 = [v5 objectForSetting:20];
        [v11 CGRectValue];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        [v6 writingToolsDidUpdateKeyboardPosition:objc_msgSend(v5 preferredContentSizeChanging:{"BOOLForSetting:", 25), v13, v15, v17, v19}];
      }

      break;
    case 29:
      v20 = [v5 objectForSetting:28];
      [v6 didStartMontaraRefinementForSessionWithUUID:v20];
LABEL_35:

      break;
    case 30:
      if (objc_opt_respondsToSelector())
      {
        v60 = [v5 objectForSetting:27];
        [v60 doubleValue];
        v62 = v61;

        [v6 updateKeyboardTrackingHeight:v62];
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

+ (id)actionForPromptEntryModeUpdateWithState:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB830 forSetting:1];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 setObject:v6 forSetting:22];

  v7 = [[a1 alloc] initWithInfo:v5 responder:0];

  return v7;
}

+ (id)actionForUpdateKeyboardPosition:(CGRect)a3 preferredContentSizeChanged:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v9 setObject:&unk_1F4FCB848 forSetting:1];
  v10 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
  [v9 setObject:v10 forSetting:20];

  [v9 setFlag:BSSettingFlagForBool() forSetting:25];
  v11 = [[a1 alloc] initWithInfo:v9 responder:0];

  return v11;
}

+ (id)actionForMontaraDidStartRefinementForSessionWithUUID:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:&unk_1F4FCB860 forSetting:1];
  [v6 setObject:v5 forSetting:28];

  v7 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v7;
}

+ (id)actionForUpdateKeyboardTrackingHeight:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1F4FCB878 forSetting:1];
  *&v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v5 setObject:v7 forSetting:27];

  v8 = [[a1 alloc] initWithInfo:v5 responder:0];

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