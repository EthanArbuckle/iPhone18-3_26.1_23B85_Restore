@interface UIKBAnalyticsDispatcher
+ (id)allowedValuesForTextEditingPreferredFieldName:(id)a3;
+ (id)allowedValuesForType:(id)a3;
+ (id)currentInputMode;
+ (id)preferredEventName:(id)a3;
+ (id)sharedInstance;
+ (void)analyticsDispatchEventTextEditingOperation:(id)a3 trigger:(id)a4;
+ (void)candidateViewExtended:(id)a3 direction:(id)a4;
+ (void)decrementAllowCursorMovementCount;
+ (void)didCandidateBarAction;
+ (void)didCandidateReplacement;
+ (void)didCandidateReplacementWithRemovedText:(id)a3 insertedText:(id)a4;
+ (void)didCommitText:(id)a3;
+ (void)didDeleteBackwardText:(id)a3;
+ (void)didInsertText:(id)a3 relativeRangeBefore:(_NSRange)a4 selectedTextBefore:(id)a5 withLanguage:(id)a6;
+ (void)didRevisionBubbleTap;
+ (void)dispatchFloatingKeyboardEventOfType:(id)a3 trigger:(id)a4 pinnedToEdge:(id)a5 position:(CGPoint)a6 touchUpPosition:(CGPoint)a7;
+ (void)emojiInsertedByMethod:(id)a3 inputType:(id)a4;
+ (void)emojiPopoverSummoned:(id)a3 appendsEmoji:(BOOL)a4;
+ (void)floatingKeyboardMoved:(id)a3 toPosition:(CGPoint)a4 touchPosition:(CGPoint)a5;
+ (void)floatingKeyboardSummonedEvent:(id)a3 trigger:(id)a4 finalPosition:(CGPoint)a5;
+ (void)globeKeyEducationShown:(double)a3;
+ (void)globeKeyLongPress;
+ (void)handwritingResized:(id)a3;
+ (void)hapticEventEngineDuration:(double)a3 startCount:(unint64_t)a4 actionCount:(unint64_t)a5;
+ (void)incrementAllowCursorMovementCount;
+ (void)keyboardAnalyticsDispatchWithSelector:(SEL)a3 withTrigger:(id)a4;
+ (void)keyboardCameraSessionEndedForTextContentType:(id)a3 didFindText:(BOOL)a4 didInsertText:(BOOL)a5 sender:(id)a6;
+ (void)keyboardShortcutInvokedWithKeyboardShortcutLeaf:(id)a3 keyEvent:(id)a4 keyboardProperties:(id)a5;
+ (void)sessionAnalyticsEnded:(id)a3;
+ (void)setKeyboardTrialParameters:(id)a3;
- (UIKBAnalyticsDispatcher)init;
- (void)resetCandidateReplacementVariables;
@end

@implementation UIKBAnalyticsDispatcher

void __41__UIKBAnalyticsDispatcher_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UIKBAnalyticsDispatcher);
  v1 = _MergedGlobals_1034;
  _MergedGlobals_1034 = v0;
}

+ (id)sharedInstance
{
  if (qword_1ED49CCB0 != -1)
  {
    dispatch_once(&qword_1ED49CCB0, &__block_literal_global_106);
  }

  v3 = _MergedGlobals_1034;

  return v3;
}

- (UIKBAnalyticsDispatcher)init
{
  v5.receiver = self;
  v5.super_class = UIKBAnalyticsDispatcher;
  v2 = [(UIKBAnalyticsDispatcher *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIKBAnalyticsDispatcher *)v2 resetCandidateReplacementVariables];
  }

  return v3;
}

- (void)resetCandidateReplacementVariables
{
  nextCandidateReplacementRemovedText = self->_nextCandidateReplacementRemovedText;
  self->_nextCandidateReplacementRemovedText = 0;

  nextCandidateReplacementInsertedText = self->_nextCandidateReplacementInsertedText;
  self->_nextCandidateReplacementInsertedText = 0;

  nextCandidateReplacementPostCandidateInsertedText = self->_nextCandidateReplacementPostCandidateInsertedText;
  self->_nextCandidateReplacementPostCandidateInsertedText = 0;

  self->_nextCandidateReplacementSource = 0;
}

+ (id)preferredEventName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"UIKBAnalytics", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)currentInputMode
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentInputMode];
  v4 = [v3 identifierWithLayouts];

  return v4;
}

+ (void)setKeyboardTrialParameters:(id)a3
{
  v3 = a3;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v5 _textInputSessionAnalytics];
  [v4 setKeyboardTrialParameters:v3];
}

+ (id)allowedValuesForTextEditingPreferredFieldName:(id)a3
{
  v10[6] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"Operation"])
  {
    v10[0] = @"Undo";
    v10[1] = @"UndoCancel";
    v10[2] = @"Redo";
    v10[3] = @"Cut";
    v10[4] = @"Copy";
    v10[5] = @"Paste";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v10;
    v6 = 6;
LABEL_5:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"TriggerType"])
  {
    v9[0] = @"UndoHUDGesturePan";
    v9[1] = @"UndoHUDGestureDoubleTap";
    v9[2] = @"UndoHUDGestureDoubleTapShortHand";
    v9[3] = @"UndoHUDControl";
    v9[4] = @"UCB";
    v9[5] = @"CalloutBar";
    v9[6] = @"Shake";
    v9[7] = @"SWKeyboard";
    v9[8] = @"HWKeyboard";
    v9[9] = @"EditMenu";
    v4 = MEMORY[0x1E695DEC8];
    v5 = v9;
    v6 = 10;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (void)incrementAllowCursorMovementCount
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 incrementAllowCursorMovementCount];
}

+ (void)decrementAllowCursorMovementCount
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 decrementAllowCursorMovementCount];
}

+ (void)analyticsDispatchEventTextEditingOperation:(id)a3 trigger:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UIKBAnalyticsDispatcher] analyticsDispatchEventTextEditingOperation:%@ trigger:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (analyticsDispatchEventTextEditingOperation_trigger__onceToken != -1)
  {
    dispatch_once(&analyticsDispatchEventTextEditingOperation_trigger__onceToken, block);
  }

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [objc_opt_class() preferredEventName:@"TextEditing"];
  v22[0] = v6;
  v22[1] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v12 = [objc_opt_class() currentInputMode];
  [v9 dispatchEventWithName:v10 values:v11 inputMode:v12];

  v13 = [MEMORY[0x1E69D4E18] sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke_2;
  v18[3] = &unk_1E70FB4F0;
  v14 = v6;
  v19 = v14;
  v15 = v7;
  v20 = v15;
  [v13 logBlock:v18 domain:@"com.apple.keyboard.UIKit"];

  if (@"Copy" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 _textInputSessionAnalytics];
    [v17 didCopy];
    goto LABEL_15;
  }

  if (@"Cut" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 _textInputSessionAnalytics];
    [v17 didCut];
    goto LABEL_15;
  }

  if (@"Paste" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 _textInputSessionAnalytics];
    [v17 didPaste];
    goto LABEL_15;
  }

  if (@"Undo" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 _textInputSessionAnalytics];
    [v17 didUndo];
    goto LABEL_15;
  }

  if (@"Redo" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v17 = [v16 _textInputSessionAnalytics];
    [v17 didRedo];
LABEL_15:
  }
}

void __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69D9548];
  v1 = [objc_opt_class() allowedValuesForTextEditingPreferredFieldName:@"Operation"];
  v2 = [v0 stringFieldSpecWithName:@"Operation" allowedValues:v1];

  v3 = MEMORY[0x1E69D9548];
  v4 = [objc_opt_class() allowedValuesForTextEditingPreferredFieldName:@"TriggerType"];
  v5 = [v3 stringFieldSpecWithName:@"TriggerType" allowedValues:v4];

  v6 = MEMORY[0x1E69D9540];
  v7 = [objc_opt_class() preferredEventName:@"TextEditing"];
  v11[0] = v2;
  v11[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v6 eventSpecWithName:v7 inputModeRequired:1 fieldSpecs:v8];

  v10 = [MEMORY[0x1E69D9550] sharedInstance];
  [v10 registerEventSpec:v9];
}

id __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke_2(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"KeyboardEventType";
  v5[1] = @"Operation";
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = @"TextEditing";
  v6[1] = v1;
  v5[2] = @"TriggerType";
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];

  return v3;
}

+ (void)keyboardAnalyticsDispatchWithSelector:(SEL)a3 withTrigger:(id)a4
{
  v7 = a4;
  v5 = NSStringFromSelector(a3);
  if ([v5 containsString:@"cut"])
  {
    v6 = UIKBAnalyticsTextEditingOperationCut;
  }

  else if ([v5 containsString:@"copy"])
  {
    v6 = UIKBAnalyticsTextEditingOperationCopy;
  }

  else
  {
    if (![v5 containsString:@"paste"])
    {
      goto LABEL_8;
    }

    v6 = UIKBAnalyticsTextEditingOperationPaste;
  }

  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v6 trigger:v7];
LABEL_8:
}

+ (id)allowedValuesForType:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"eventType"])
  {
    v19 = @"Untether";
    v20 = @"Tether";
    v21 = @"Move";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v19;
    v6 = 3;
LABEL_8:
    v7 = [v4 arrayWithObjects:v5 count:{v6, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"triggerType"])
  {
    v14 = @"Interactive";
    v15 = @"NonInteractive";
    v16 = @"DockedToBottom";
    v17 = @"PositionedAwayFromEdge";
    v18 = @"PositionedOnEdge";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v14;
LABEL_7:
    v6 = 5;
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"screenEdge"])
  {
    v9 = @"NotOnEdge";
    v10 = @"LeftEdge";
    v11 = @"BottomEdge";
    v12 = @"RightEdge";
    v13 = @"TopEdge";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v9;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (void)floatingKeyboardSummonedEvent:(id)a3 trigger:(id)a4 finalPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v9 = a3;
  [objc_opt_class() dispatchFloatingKeyboardEventOfType:v9 trigger:v8 pinnedToEdge:@"NotOnEdge" position:x touchUpPosition:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

+ (void)floatingKeyboardMoved:(id)a3 toPosition:(CGPoint)a4 touchPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v13 = a3;
  if ([v13 isEqualToString:@"BottomEdge"])
  {
    v9 = objc_opt_class();
    v10 = @"Tether";
    v11 = UIKBAnalyticsFloatingKeyboardTriggerTypeDocked;
  }

  else
  {
    v12 = [v13 isEqualToString:@"NotOnEdge"];
    v9 = objc_opt_class();
    v10 = @"Move";
    v11 = UIKBAnalyticsFloatingKeyboardTriggerTypePositioned;
    if (!v12)
    {
      v11 = UIKBAnalyticsFloatingKeyboardTriggerTypeSnappedToEdge;
    }
  }

  [v9 dispatchFloatingKeyboardEventOfType:v10 trigger:*v11 pinnedToEdge:v13 position:v8 touchUpPosition:{v7, x, y}];
}

+ (void)dispatchFloatingKeyboardEventOfType:(id)a3 trigger:(id)a4 pinnedToEdge:(id)a5 position:(CGPoint)a6 touchUpPosition:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v42[7] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [objc_opt_class() preferredEventName:@"floatingKeyboardUsageEvent"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke;
  block[3] = &unk_1E70F32F0;
  v40 = v17;
  v41 = a1;
  v18 = dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition__onceToken;
  v19 = v17;
  if (v18 != -1)
  {
    dispatch_once(&dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition__onceToken, block);
  }

  v20 = [MEMORY[0x1E69D9550] sharedInstance];
  v42[0] = v14;
  v42[1] = v15;
  v42[2] = v16;
  [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v21 = v31 = v14;
  v42[3] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v42[4] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v42[5] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v42[6] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:7];
  v26 = [objc_opt_class() currentInputMode];
  v32 = v19;
  [v20 dispatchEventWithName:v19 values:v25 inputMode:v26];

  v27 = [MEMORY[0x1E69D4E18] sharedInstance];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke_2;
  v33[3] = &unk_1E70FB518;
  v34 = v31;
  v35 = v15;
  v36 = v16;
  v37 = v10;
  v38 = v9;
  v28 = v16;
  v29 = v15;
  v30 = v31;
  [v27 logBlock:v33 domain:@"com.apple.keyboard.UIKit"];
}

void __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke(uint64_t a1)
{
  v20[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69D9548];
  v3 = [objc_opt_class() allowedValuesForType:@"eventType"];
  v4 = [v2 stringFieldSpecWithName:@"eventType" allowedValues:v3];

  v5 = MEMORY[0x1E69D9548];
  v6 = [objc_opt_class() allowedValuesForType:@"triggerType"];
  v7 = [v5 stringFieldSpecWithName:@"triggerType" allowedValues:v6];

  v8 = MEMORY[0x1E69D9548];
  v9 = [objc_opt_class() allowedValuesForType:@"screenEdge"];
  v10 = [v8 stringFieldSpecWithName:@"screenEdge" allowedValues:v9];

  v11 = [MEMORY[0x1E69D9548] floatFieldSpecWithName:@"originXCoord"];
  v12 = [MEMORY[0x1E69D9548] floatFieldSpecWithName:@"originYCoord"];
  v13 = [MEMORY[0x1E69D9548] floatFieldSpecWithName:@"touchXCoord"];
  v14 = [MEMORY[0x1E69D9548] floatFieldSpecWithName:@"touchYCoord"];
  v15 = MEMORY[0x1E69D9540];
  v16 = *(a1 + 32);
  v20[0] = v4;
  v20[1] = v7;
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v12;
  v20[5] = v13;
  v20[6] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7];
  v18 = [v15 eventSpecWithName:v16 inputModeRequired:1 fieldSpecs:v17];

  v19 = [MEMORY[0x1E69D9550] sharedInstance];
  [v19 registerEventSpec:v18];
}

id __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = @"FloatingKeyboardUsageEvent";
  v4[0] = @"KeyboardEventType";
  v4[1] = @"eventType";
  v6 = *(a1 + 32);
  v4[2] = @"triggerType";
  v4[3] = @"screenEdge";
  v7 = *(a1 + 48);
  v4[4] = @"TouchCoordinates";
  v1 = NSStringFromCGPoint(*(a1 + 56));
  v8 = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:5];

  return v2;
}

+ (void)candidateViewExtended:(id)a3 direction:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() preferredEventName:@"candidateViewExtended"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __59__UIKBAnalyticsDispatcher_candidateViewExtended_direction___block_invoke;
  v16 = &unk_1E70F3590;
  v17 = v7;
  v8 = candidateViewExtended_direction__onceToken;
  v9 = v7;
  if (v8 != -1)
  {
    dispatch_once(&candidateViewExtended_direction__onceToken, &v13);
  }

  v10 = [MEMORY[0x1E69D9550] sharedInstance];
  v18[0] = v6;
  v18[1] = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [objc_opt_class() currentInputMode];
  [v10 dispatchEventWithName:v9 values:v11 inputMode:v12];
}

void __59__UIKBAnalyticsDispatcher_candidateViewExtended_direction___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69D9548];
  v15[0] = @"Button";
  v15[1] = @"Gesture";
  v15[2] = @"Automatic";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v4 = [v2 stringFieldSpecWithName:@"EventType" allowedValues:v3];

  v5 = MEMORY[0x1E69D9548];
  v14[0] = @"Close";
  v14[1] = @"Open";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 stringFieldSpecWithName:@"Direction" allowedValues:v6];

  v8 = MEMORY[0x1E69D9540];
  v9 = *(a1 + 32);
  v13[0] = v4;
  v13[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v8 eventSpecWithName:v9 inputModeRequired:1 fieldSpecs:v10];

  v12 = [MEMORY[0x1E69D9550] sharedInstance];
  [v12 registerEventSpec:v11];
}

+ (void)didRevisionBubbleTap
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 didRevisionBubbleTap];
}

+ (void)didCandidateReplacement
{
  v14 = +[UIKBAnalyticsDispatcher sharedInstance];
  v2 = [v14 nextCandidateReplacementRemovedText];
  v3 = [v14 nextCandidateReplacementInsertedText];
  v4 = [v14 nextCandidateReplacementPostCandidateInsertedText];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  v7 = [(__CFString *)v5 stringByAppendingString:v6];
  v8 = v14;
  v9 = v7;
  if (v3)
  {
    v10 = v2 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = [v14 nextCandidateReplacementSource];
    if (v11 > 6)
    {
      if (v11 > 8)
      {
        v8 = v14;
        if (v11 == 9)
        {
          v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v13 = [v12 _textInputSessionAnalytics];
          [v13 didCompositionReplacementForText:v2 withText:v9];
        }

        else
        {
          if (v11 != 10)
          {
            goto LABEL_29;
          }

          v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v13 = [v12 _textInputSessionAnalytics];
          [v13 didDecompositionReplacementForText:v2 withText:v9];
        }
      }

      else if (v11 == 7)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didInlineCompletionTapOnCompletionReplacementForText:v2 withText:v9];
      }

      else
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didRevisionBubbleReplacementForText:v2 withText:v9];
      }
    }

    else if (v11 > 4)
    {
      if (v11 == 5)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didCandidateBarReplacementForText:v2 withText:v9];
      }

      else
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didInlineCompletionReplacementForText:v2 withText:v9];
      }
    }

    else
    {
      v8 = v14;
      if (v11 == 3)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didAutocorrectReplacementForText:v2 withText:v9];
      }

      else
      {
        if (v11 != 4)
        {
          goto LABEL_29;
        }

        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v13 = [v12 _textInputSessionAnalytics];
        [v13 didAutocorrectTapOnCompletionReplacementForText:v2 withText:v9];
      }
    }

    v8 = v14;
  }

LABEL_29:
  [v8 resetCandidateReplacementVariables];
}

+ (void)didCandidateReplacementWithRemovedText:(id)a3 insertedText:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v7 setNextCandidateReplacementRemovedText:v6];

  v8 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v8 setNextCandidateReplacementInsertedText:v5];

  +[UIKBAnalyticsDispatcher didCandidateReplacement];
}

+ (void)didCommitText:(id)a3
{
  v7 = a3;
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 _textInputSessionAnalytics];

  v6 = [v3 nextCommitTextSource];
  if ((v6 - 3) >= 4)
  {
    if (v6 == 1)
    {
      [v5 didCommitTextFromImplicitAction:v7];
    }

    else if (v6 == 2)
    {
      [v5 didCommitTextFromCandidateBar:v7];
    }

    else
    {
      [v5 didCommitTextFromUnknownSource:v7];
    }
  }

  else
  {
    [v5 didCommitTextFromKeyboard:v7];
  }

  [v3 setNextCommitTextSource:0];
}

+ (void)didCandidateBarAction
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 didCandidateBarAction];
}

+ (void)globeKeyEducationShown:(double)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = qword_1ED49CCB8;
  qword_1ED49CCB8 = v4;

  v6 = [objc_opt_class() preferredEventName:@"globeKeyEducationShown"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIKBAnalyticsDispatcher_globeKeyEducationShown___block_invoke;
  block[3] = &unk_1E70F3590;
  v14 = v6;
  v7 = qword_1ED49CCC0;
  v8 = v6;
  if (v7 != -1)
  {
    dispatch_once(&qword_1ED49CCC0, block);
  }

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [objc_opt_class() currentInputMode];
  [v9 dispatchEventWithName:v8 values:v11 inputMode:v12];
}

void __50__UIKBAnalyticsDispatcher_globeKeyEducationShown___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D9548] floatFieldSpecWithName:@"Duration"];
  v3 = MEMORY[0x1E69D9540];
  v4 = *(a1 + 32);
  v8[0] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v3 eventSpecWithName:v4 inputModeRequired:1 fieldSpecs:v5];

  v7 = [MEMORY[0x1E69D9550] sharedInstance];
  [v7 registerEventSpec:v6];
}

+ (void)globeKeyLongPress
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED49CCB8)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    [v2 timeIntervalSinceDate:qword_1ED49CCB8];
    v4 = v3;

    v5 = v4 < 5.0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_opt_class() preferredEventName:@"globeKeyLongPress"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIKBAnalyticsDispatcher_globeKeyLongPress__block_invoke;
  block[3] = &unk_1E70F3590;
  v14 = v6;
  v7 = qword_1ED49CCC8;
  v8 = v6;
  if (v7 != -1)
  {
    dispatch_once(&qword_1ED49CCC8, block);
  }

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [objc_opt_class() currentInputMode];
  [v9 dispatchEventWithName:v8 values:v11 inputMode:v12];
}

void __44__UIKBAnalyticsDispatcher_globeKeyLongPress__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D9548] BOOLeanFieldSpecWithName:@"AfterEducation"];
  v3 = MEMORY[0x1E69D9540];
  v4 = *(a1 + 32);
  v8[0] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v3 eventSpecWithName:v4 inputModeRequired:1 fieldSpecs:v5];

  v7 = [MEMORY[0x1E69D9550] sharedInstance];
  [v7 registerEventSpec:v6];
}

+ (void)handwritingResized:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() preferredEventName:@"handwritingResized"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__UIKBAnalyticsDispatcher_handwritingResized___block_invoke;
  block[3] = &unk_1E70F3590;
  v11 = v4;
  v5 = handwritingResized__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&handwritingResized__onceToken, block);
  }

  v7 = [MEMORY[0x1E69D9550] sharedInstance];
  v12[0] = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = [objc_opt_class() currentInputMode];
  [v7 dispatchEventWithName:v6 values:v8 inputMode:v9];
}

void __46__UIKBAnalyticsDispatcher_handwritingResized___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69D9548];
  v11[0] = @"Close";
  v11[1] = @"Open";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v4 = [v2 stringFieldSpecWithName:@"Direction" allowedValues:v3];

  v5 = MEMORY[0x1E69D9540];
  v6 = *(a1 + 32);
  v10 = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  v8 = [v5 eventSpecWithName:v6 inputModeRequired:1 fieldSpecs:v7];

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  [v9 registerEventSpec:v8];
}

+ (void)sessionAnalyticsEnded:(id)a3
{
  v3 = a3;
  v4 = @"TextInputSession";
  v5 = @"TextInputSessionUpdate";
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke;
  block[3] = &unk_1E70F6228;
  v29 = v3;
  v6 = v4;
  v30 = v6;
  v7 = v5;
  v31 = v7;
  v8 = sessionAnalyticsEnded__onceToken;
  v9 = v3;
  if (v8 != -1)
  {
    dispatch_once(&sessionAnalyticsEnded__onceToken, block);
  }

  v10 = [objc_opt_class() currentInputMode];
  v11 = [v9 sessionIdentifier];
  v12 = [v11 UUIDString];
  v13 = v12;
  v14 = @"<nil>";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke_69;
  v24[3] = &unk_1E70FB540;
  v25 = v6;
  v16 = v15;
  v26 = v16;
  v17 = v10;
  v27 = v17;
  [v9 enumerateAnalytics:v24];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke_2;
  v20[3] = &unk_1E70FB540;
  v21 = v7;
  v22 = v16;
  v23 = v17;
  v18 = v17;
  v19 = v16;
  [v9 enumerateSeparateCycleAnalytics:v20];
}

void __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke(uint64_t a1)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D9548] stringFieldSpecWithName:@"Identifier"];
  v3 = MEMORY[0x1E69D9548];
  v4 = [*(a1 + 32) allAccumulatorNames];
  v5 = [v3 stringFieldSpecWithName:@"SessionAction" allowedValues:v4];

  v6 = MEMORY[0x1E69D9548];
  v7 = +[UITextInputSessionActionAnalytics allowedValuesForTextInputSource];
  v8 = [v6 stringFieldSpecWithName:@"InputSource" allowedValues:v7];

  v9 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"Value" minValue:&unk_1EFE2FFF8 maxValue:0 significantDigits:&unk_1EFE30010];
  v10 = MEMORY[0x1E69D9540];
  v11 = *(a1 + 40);
  v21[0] = v2;
  v21[1] = v5;
  v21[2] = v8;
  v21[3] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v13 = [v10 eventSpecWithName:v11 inputModeRequired:1 fieldSpecs:v12];

  v14 = [MEMORY[0x1E69D9550] sharedInstance];
  [v14 registerEventSpec:v13];

  v15 = MEMORY[0x1E69D9540];
  v16 = *(a1 + 48);
  v20[0] = v2;
  v20[1] = v5;
  v20[2] = v8;
  v20[3] = v9;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v18 = [v15 eventSpecWithName:v16 inputModeRequired:1 fieldSpecs:v17];

  v19 = [MEMORY[0x1E69D9550] sharedInstance];
  [v19 registerEventSpec:v18];
}

void __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke_69(void *a1, void *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"SessionAction"];
  v7 = [v5 objectForKeyedSubscript:@"InputSource"];

  v8 = MEMORY[0x1E69D9558];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v8 roundNumber:v9 toSignificantDigits:&unk_1EFE30010];

  v11 = [MEMORY[0x1E69D9550] sharedInstance];
  v12 = a1[4];
  v14[0] = a1[5];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  [v11 dispatchEventWithName:v12 values:v13 inputMode:a1[6]];
}

void __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"SessionAction"];
  v7 = [v5 objectForKeyedSubscript:@"InputSource"];

  if (([v7 isEqualToString:@"Dictation"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Insertion") & 1) == 0)
  {
    v8 = MEMORY[0x1E69D9558];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v10 = [v8 roundNumber:v9 toSignificantDigits:&unk_1EFE30010];

    v11 = [MEMORY[0x1E69D9550] sharedInstance];
    v12 = a1[4];
    v14[0] = a1[5];
    v14[1] = v6;
    v14[2] = v7;
    v14[3] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    [v11 dispatchEventWithName:v12 values:v13 inputMode:a1[6]];
  }
}

+ (void)didInsertText:(id)a3 relativeRangeBefore:(_NSRange)a4 selectedTextBefore:(id)a5 withLanguage:(id)a6
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v10 = a5;
  v11 = a6;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v13 = [v12 _textInputSessionAnalytics];
    [v13 didInsertText:v14 relativeRangeBefore:location selectedTextBefore:length withLanguage:{v10, v11}];
  }
}

+ (void)didDeleteBackwardText:(id)a3
{
  v13 = a3;
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v3 nextCandidateReplacementSource] == 9)
  {

LABEL_4:
    v6 = +[UIKBAnalyticsDispatcher sharedInstance];
    v7 = [v6 nextCandidateReplacementRemovedText];
    v8 = v7;
    v9 = &stru_1EFB14550;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v13 stringByAppendingString:v10];

    v12 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v12 setNextCandidateReplacementRemovedText:v11];
    goto LABEL_7;
  }

  v4 = +[UIKBAnalyticsDispatcher sharedInstance];
  v5 = [v4 nextCandidateReplacementSource];

  if (v5 == 10)
  {
    goto LABEL_4;
  }

  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v11 _textInputSessionAnalytics];
    [v12 didDeleteBackwardText:v13];
LABEL_7:
  }
}

+ (void)emojiPopoverSummoned:(id)a3 appendsEmoji:(BOOL)a4
{
  v4 = a4;
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_opt_class() preferredEventName:@"emojiPopoverSummoned"];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __61__UIKBAnalyticsDispatcher_emojiPopoverSummoned_appendsEmoji___block_invoke;
  v16 = &unk_1E70F3590;
  v17 = v6;
  v7 = emojiPopoverSummoned_appendsEmoji__onceToken;
  v8 = v6;
  if (v7 != -1)
  {
    dispatch_once(&emojiPopoverSummoned_appendsEmoji__onceToken, &v13);
  }

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  v18[0] = v5;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [objc_opt_class() currentInputMode];
  [v9 dispatchEventWithName:v8 values:v11 inputMode:v12];
}

void __61__UIKBAnalyticsDispatcher_emojiPopoverSummoned_appendsEmoji___block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69D9548];
  v12[0] = @"ucb";
  v12[1] = @"keyboardShortcut";
  v12[2] = @"globeKey";
  v12[3] = @"other";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v4 = [v2 stringFieldSpecWithName:@"triggerType" allowedValues:v3];

  v5 = [MEMORY[0x1E69D9548] BOOLeanFieldSpecWithName:@"appendsEmoji"];
  v6 = MEMORY[0x1E69D9540];
  v7 = *(a1 + 32);
  v11[0] = v4;
  v11[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v6 eventSpecWithName:v7 inputModeRequired:1 fieldSpecs:v8];

  v10 = [MEMORY[0x1E69D9550] sharedInstance];
  [v10 registerEventSpec:v9];
}

+ (void)emojiInsertedByMethod:(id)a3 inputType:(id)a4
{
  v16[3] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UIKBAnalyticsDispatcher_emojiInsertedByMethod_inputType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v5 = emojiInsertedByMethod_inputType__onceToken;
  v6 = a4;
  v7 = a3;
  if (v5 != -1)
  {
    dispatch_once(&emojiInsertedByMethod_inputType__onceToken, block);
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 hardwareKeyboardAttached];

  v10 = [MEMORY[0x1E69D9550] sharedInstance];
  v11 = [objc_opt_class() preferredEventName:@"emojiInserted"];
  v16[0] = v7;
  v16[1] = v6;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  v14 = [objc_opt_class() currentInputMode];
  [v10 dispatchEventWithName:v11 values:v13 inputMode:v14];
}

void __59__UIKBAnalyticsDispatcher_emojiInsertedByMethod_inputType___block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69D9548];
  v14[0] = @"ReturnKey";
  v14[1] = @"SearchResult";
  v14[2] = @"SpaceBar";
  v14[3] = @"Touch";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v2 = [v0 stringFieldSpecWithName:@"selectionMethod" allowedValues:v1];

  v3 = MEMORY[0x1E69D9548];
  v13[0] = @"Keyboard";
  v13[1] = @"Popover";
  v13[2] = @"PopoverSearch";
  v13[3] = @"PredictionBar";
  v13[4] = @"Search";
  v13[5] = @"SearchFavorites";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];
  v5 = [v3 stringFieldSpecWithName:@"inputType" allowedValues:v4];

  v6 = [MEMORY[0x1E69D9548] BOOLeanFieldSpecWithName:@"hardwareKeyboardAttached"];
  v7 = MEMORY[0x1E69D9540];
  v8 = [objc_opt_class() preferredEventName:@"emojiInserted"];
  v12[0] = v2;
  v12[1] = v5;
  v12[2] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v10 = [v7 eventSpecWithName:v8 inputModeRequired:1 fieldSpecs:v9];

  v11 = [MEMORY[0x1E69D9550] sharedInstance];
  [v11 registerEventSpec:v10];
}

+ (void)keyboardShortcutInvokedWithKeyboardShortcutLeaf:(id)a3 keyEvent:(id)a4 keyboardProperties:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 language];
  v11 = [MEMORY[0x1E696AD60] string];
  v12 = [v7 _keyboardShortcut];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 currentLocalizedKeyCombination];
    v15 = [v14 _readableStringForModifierFlagsUsingWords:0 forHUD:0];
    [v11 appendString:v15];

    v16 = [v13 currentLocalizedKeyCombination];
    v17 = [v16 _readableStringForKeyEquivalentUsingWords:0 forHUD:0 isSingleCharacterOrKeySymbol:0];
    [v11 appendString:v17];
  }

  v18 = [v11 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EFB14550];
  v19 = [v11 copy];
  v20 = v19;
  if (v19 && [v19 length])
  {
    v33 = v8;
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    v22 = [v21 currentSystemInputMode];
    v23 = [v22 identifier];

    if (!v23 || ![(__CFString *)v23 length])
    {
      goto LABEL_19;
    }

    v24 = +[UIKeyboardInputModeController sharedInputModeController];
    v25 = [v24 currentSystemInputMode];
    v26 = [v25 isExtensionInputMode];

    if (v26)
    {

      v23 = @"Other";
    }

    v27 = _UIMainBundleIdentifier();
    v28 = v27;
    v8 = v33;
    if (!v27 || ![v27 length])
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    [v33 _keyCode];
    [v33 _modifierFlags];
    [v9 subinterfaceID];
    [v9 standardType];
    v29 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v7 action];

      if (v30)
      {
        v31 = NSStringFromSelector(v30);
LABEL_17:
        v34 = v10;
        v35 = v23;
        v36 = v28;
        v37 = v20;
        v38 = v31;
        v32 = v31;
        AnalyticsSendEventLazy();

        v8 = v33;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v31 = @"unknown";
    goto LABEL_17;
  }

LABEL_20:
}

id __103__UIKBAnalyticsDispatcher_keyboardShortcutInvokedWithKeyboardShortcutLeaf_keyEvent_keyboardProperties___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v15[0] = @"keyCode";
  v2 = [MEMORY[0x1E696AD98] numberWithLong:*(a1 + 72)];
  v3 = [v2 stringValue];
  v16[0] = v3;
  v15[1] = @"modifierFlags";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
  v5 = [v4 stringValue];
  v16[1] = v5;
  v15[2] = @"keyboardType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 88)];
  v7 = [v6 stringValue];
  v16[2] = v7;
  v15[3] = @"keyboardStandardType";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 96)];
  v9 = [v8 stringValue];
  v10 = v9;
  v11 = @"unknown";
  v12 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v11 = *(a1 + 32);
  }

  v16[3] = v9;
  v16[4] = v11;
  v15[4] = @"keyboardLanguage";
  v15[5] = @"inputSource";
  v16[5] = v12;
  v17 = *(a1 + 48);
  v15[6] = @"bundleId";
  v15[7] = @"shortcut";
  v15[8] = @"title";
  v18 = *(a1 + 64);
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:9];

  return v13;
}

+ (void)keyboardCameraSessionEndedForTextContentType:(id)a3 didFindText:(BOOL)a4 didInsertText:(BOOL)a5 sender:(id)a6
{
  v7 = a5;
  v8 = a4;
  v19[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if (keyboardCameraSessionEndedForTextContentType_didFindText_didInsertText_sender__onceToken != -1)
  {
    dispatch_once(&keyboardCameraSessionEndedForTextContentType_didFindText_didInsertText_sender__onceToken, &__block_literal_global_114);
  }

  if (![(__CFString *)v9 length])
  {

    v9 = @"None";
  }

  v11 = @"custom";
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = UIKBAnalyticsKeyboardCameraInvocationSourceTextSuggestion;
LABEL_9:
    v14 = *v12;

    v11 = v14;
    goto LABEL_10;
  }

  v13 = +[UIMenuController sharedMenuController];

  if (v13 == v10)
  {
    v12 = UIKBAnalyticsKeyboardCameraInvocationSourceCalloutBar;
    goto LABEL_9;
  }

LABEL_10:
  v15 = [MEMORY[0x1E69D9550] sharedInstance];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v19[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v19[1] = v17;
  v19[2] = v9;
  v19[3] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v15 dispatchEventWithName:@"keyboardCameraSessionEnded" values:v18];
}

void __105__UIKBAnalyticsDispatcher_keyboardCameraSessionEndedForTextContentType_didFindText_didInsertText_sender___block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69D9548] BOOLeanFieldSpecWithName:@"didInsert"];
  v1 = [MEMORY[0x1E69D9548] BOOLeanFieldSpecWithName:@"didFindText"];
  v2 = [MEMORY[0x1E69D9548] stringFieldSpecWithName:@"textContentType"];
  v3 = MEMORY[0x1E69D9548];
  v11[0] = @"calloutBar";
  v11[1] = @"textSuggestion";
  v11[2] = @"custom";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v5 = [v3 stringFieldSpecWithName:@"invocationSource" allowedValues:v4];

  v6 = MEMORY[0x1E69D9540];
  v10[0] = v0;
  v10[1] = v1;
  v10[2] = v2;
  v10[3] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v6 eventSpecWithName:@"keyboardCameraSessionEnded" inputModeRequired:0 fieldSpecs:v7];

  v9 = [MEMORY[0x1E69D9550] sharedInstance];
  [v9 registerEventSpec:v8];
}

+ (void)hapticEventEngineDuration:(double)a3 startCount:(unint64_t)a4 actionCount:(unint64_t)a5
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (hapticEventEngineDuration_startCount_actionCount__onceToken != -1)
  {
    dispatch_once(&hapticEventEngineDuration_startCount_actionCount__onceToken, &__block_literal_global_121);
  }

  v8 = [MEMORY[0x1E69D9550] sharedInstance];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:llround(a3)];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a4, v9}];
  v13[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v13[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [v8 dispatchEventWithName:@"HapticFeedback.Daily" values:v12];
}

void __76__UIKBAnalyticsDispatcher_hapticEventEngineDuration_startCount_actionCount___block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"EngineActiveTime"];
  v1 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"EngineStartCount"];
  v2 = [MEMORY[0x1E69D9548] integerFieldSpecWithName:@"ActionCount"];
  v3 = MEMORY[0x1E69D9540];
  v7[0] = v0;
  v7[1] = v1;
  v7[2] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = [v3 eventSpecWithName:@"HapticFeedback.Daily" inputModeRequired:0 fieldSpecs:v4];

  v6 = [MEMORY[0x1E69D9550] sharedInstance];
  [v6 registerEventSpec:v5];
}

@end