@interface UIKBAnalyticsDispatcher
+ (id)allowedValuesForTextEditingPreferredFieldName:(id)name;
+ (id)allowedValuesForType:(id)type;
+ (id)currentInputMode;
+ (id)preferredEventName:(id)name;
+ (id)sharedInstance;
+ (void)analyticsDispatchEventTextEditingOperation:(id)operation trigger:(id)trigger;
+ (void)candidateViewExtended:(id)extended direction:(id)direction;
+ (void)decrementAllowCursorMovementCount;
+ (void)didCandidateBarAction;
+ (void)didCandidateReplacement;
+ (void)didCandidateReplacementWithRemovedText:(id)text insertedText:(id)insertedText;
+ (void)didCommitText:(id)text;
+ (void)didDeleteBackwardText:(id)text;
+ (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before selectedTextBefore:(id)textBefore withLanguage:(id)language;
+ (void)didRevisionBubbleTap;
+ (void)dispatchFloatingKeyboardEventOfType:(id)type trigger:(id)trigger pinnedToEdge:(id)edge position:(CGPoint)position touchUpPosition:(CGPoint)upPosition;
+ (void)emojiInsertedByMethod:(id)method inputType:(id)type;
+ (void)emojiPopoverSummoned:(id)summoned appendsEmoji:(BOOL)emoji;
+ (void)floatingKeyboardMoved:(id)moved toPosition:(CGPoint)position touchPosition:(CGPoint)touchPosition;
+ (void)floatingKeyboardSummonedEvent:(id)event trigger:(id)trigger finalPosition:(CGPoint)position;
+ (void)globeKeyEducationShown:(double)shown;
+ (void)globeKeyLongPress;
+ (void)handwritingResized:(id)resized;
+ (void)hapticEventEngineDuration:(double)duration startCount:(unint64_t)count actionCount:(unint64_t)actionCount;
+ (void)incrementAllowCursorMovementCount;
+ (void)keyboardAnalyticsDispatchWithSelector:(SEL)selector withTrigger:(id)trigger;
+ (void)keyboardCameraSessionEndedForTextContentType:(id)type didFindText:(BOOL)text didInsertText:(BOOL)insertText sender:(id)sender;
+ (void)keyboardShortcutInvokedWithKeyboardShortcutLeaf:(id)leaf keyEvent:(id)event keyboardProperties:(id)properties;
+ (void)sessionAnalyticsEnded:(id)ended;
+ (void)setKeyboardTrialParameters:(id)parameters;
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

+ (id)preferredEventName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (nameCopy && [nameCopy length])
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
  currentInputMode = [v2 currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];

  return identifierWithLayouts;
}

+ (void)setKeyboardTrialParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v5 _textInputSessionAnalytics];
  [_textInputSessionAnalytics setKeyboardTrialParameters:parametersCopy];
}

+ (id)allowedValuesForTextEditingPreferredFieldName:(id)name
{
  v10[6] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Operation"])
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

  if ([nameCopy isEqualToString:@"TriggerType"])
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
  _textInputSessionAnalytics = [v3 _textInputSessionAnalytics];
  [_textInputSessionAnalytics incrementAllowCursorMovementCount];
}

+ (void)decrementAllowCursorMovementCount
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v3 _textInputSessionAnalytics];
  [_textInputSessionAnalytics decrementAllowCursorMovementCount];
}

+ (void)analyticsDispatchEventTextEditingOperation:(id)operation trigger:(id)trigger
{
  v27 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  triggerCopy = trigger;
  v8 = UITextInputSessionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v24 = operationCopy;
    v25 = 2112;
    v26 = triggerCopy;
    _os_log_debug_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEBUG, "[UIKBAnalyticsDispatcher] analyticsDispatchEventTextEditingOperation:%@ trigger:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (analyticsDispatchEventTextEditingOperation_trigger__onceToken != -1)
  {
    dispatch_once(&analyticsDispatchEventTextEditingOperation_trigger__onceToken, block);
  }

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [objc_opt_class() preferredEventName:@"TextEditing"];
  v22[0] = operationCopy;
  v22[1] = triggerCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v10 values:v11 inputMode:currentInputMode];

  mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__UIKBAnalyticsDispatcher_analyticsDispatchEventTextEditingOperation_trigger___block_invoke_2;
  v18[3] = &unk_1E70FB4F0;
  v14 = operationCopy;
  v19 = v14;
  v15 = triggerCopy;
  v20 = v15;
  [mEMORY[0x1E69D4E18] logBlock:v18 domain:@"com.apple.keyboard.UIKit"];

  if (@"Copy" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v16 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didCopy];
    goto LABEL_15;
  }

  if (@"Cut" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v16 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didCut];
    goto LABEL_15;
  }

  if (@"Paste" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v16 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didPaste];
    goto LABEL_15;
  }

  if (@"Undo" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v16 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didUndo];
    goto LABEL_15;
  }

  if (@"Redo" == v14)
  {
    v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v16 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didRedo];
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

+ (void)keyboardAnalyticsDispatchWithSelector:(SEL)selector withTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = NSStringFromSelector(selector);
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

  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v6 trigger:triggerCopy];
LABEL_8:
}

+ (id)allowedValuesForType:(id)type
{
  v22 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([typeCopy isEqualToString:@"eventType"])
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

  if ([typeCopy isEqualToString:@"triggerType"])
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

  if ([typeCopy isEqualToString:@"screenEdge"])
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

+ (void)floatingKeyboardSummonedEvent:(id)event trigger:(id)trigger finalPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  triggerCopy = trigger;
  eventCopy = event;
  [objc_opt_class() dispatchFloatingKeyboardEventOfType:eventCopy trigger:triggerCopy pinnedToEdge:@"NotOnEdge" position:x touchUpPosition:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

+ (void)floatingKeyboardMoved:(id)moved toPosition:(CGPoint)position touchPosition:(CGPoint)touchPosition
{
  y = touchPosition.y;
  x = touchPosition.x;
  v7 = position.y;
  v8 = position.x;
  movedCopy = moved;
  if ([movedCopy isEqualToString:@"BottomEdge"])
  {
    v9 = objc_opt_class();
    v10 = @"Tether";
    v11 = UIKBAnalyticsFloatingKeyboardTriggerTypeDocked;
  }

  else
  {
    v12 = [movedCopy isEqualToString:@"NotOnEdge"];
    v9 = objc_opt_class();
    v10 = @"Move";
    v11 = UIKBAnalyticsFloatingKeyboardTriggerTypePositioned;
    if (!v12)
    {
      v11 = UIKBAnalyticsFloatingKeyboardTriggerTypeSnappedToEdge;
    }
  }

  [v9 dispatchFloatingKeyboardEventOfType:v10 trigger:*v11 pinnedToEdge:movedCopy position:v8 touchUpPosition:{v7, x, y}];
}

+ (void)dispatchFloatingKeyboardEventOfType:(id)type trigger:(id)trigger pinnedToEdge:(id)edge position:(CGPoint)position touchUpPosition:(CGPoint)upPosition
{
  y = upPosition.y;
  x = upPosition.x;
  v9 = position.y;
  v10 = position.x;
  v42[7] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  triggerCopy = trigger;
  edgeCopy = edge;
  v17 = [objc_opt_class() preferredEventName:@"floatingKeyboardUsageEvent"];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke;
  block[3] = &unk_1E70F32F0;
  v40 = v17;
  selfCopy = self;
  v18 = dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition__onceToken;
  v19 = v17;
  if (v18 != -1)
  {
    dispatch_once(&dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition__onceToken, block);
  }

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v42[0] = typeCopy;
  v42[1] = triggerCopy;
  v42[2] = edgeCopy;
  [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v21 = v31 = typeCopy;
  v42[3] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v42[4] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v42[5] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v42[6] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:7];
  currentInputMode = [objc_opt_class() currentInputMode];
  v32 = v19;
  [mEMORY[0x1E69D9550] dispatchEventWithName:v19 values:v25 inputMode:currentInputMode];

  mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __109__UIKBAnalyticsDispatcher_dispatchFloatingKeyboardEventOfType_trigger_pinnedToEdge_position_touchUpPosition___block_invoke_2;
  v33[3] = &unk_1E70FB518;
  v34 = v31;
  v35 = triggerCopy;
  v36 = edgeCopy;
  v37 = v10;
  v38 = v9;
  v28 = edgeCopy;
  v29 = triggerCopy;
  v30 = v31;
  [mEMORY[0x1E69D4E18] logBlock:v33 domain:@"com.apple.keyboard.UIKit"];
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

+ (void)candidateViewExtended:(id)extended direction:(id)direction
{
  v18[2] = *MEMORY[0x1E69E9840];
  directionCopy = direction;
  extendedCopy = extended;
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

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v18[0] = extendedCopy;
  v18[1] = directionCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v9 values:v11 inputMode:currentInputMode];
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
  _textInputSessionAnalytics = [v3 _textInputSessionAnalytics];
  [_textInputSessionAnalytics didRevisionBubbleTap];
}

+ (void)didCandidateReplacement
{
  v14 = +[UIKBAnalyticsDispatcher sharedInstance];
  nextCandidateReplacementRemovedText = [v14 nextCandidateReplacementRemovedText];
  nextCandidateReplacementInsertedText = [v14 nextCandidateReplacementInsertedText];
  nextCandidateReplacementPostCandidateInsertedText = [v14 nextCandidateReplacementPostCandidateInsertedText];
  if (nextCandidateReplacementInsertedText)
  {
    v5 = nextCandidateReplacementInsertedText;
  }

  else
  {
    v5 = &stru_1EFB14550;
  }

  if (nextCandidateReplacementPostCandidateInsertedText)
  {
    v6 = nextCandidateReplacementPostCandidateInsertedText;
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  v7 = [(__CFString *)v5 stringByAppendingString:v6];
  v8 = v14;
  v9 = v7;
  if (nextCandidateReplacementInsertedText)
  {
    v10 = nextCandidateReplacementRemovedText == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    nextCandidateReplacementSource = [v14 nextCandidateReplacementSource];
    if (nextCandidateReplacementSource > 6)
    {
      if (nextCandidateReplacementSource > 8)
      {
        v8 = v14;
        if (nextCandidateReplacementSource == 9)
        {
          v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
          [_textInputSessionAnalytics didCompositionReplacementForText:nextCandidateReplacementRemovedText withText:v9];
        }

        else
        {
          if (nextCandidateReplacementSource != 10)
          {
            goto LABEL_29;
          }

          v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
          [_textInputSessionAnalytics didDecompositionReplacementForText:nextCandidateReplacementRemovedText withText:v9];
        }
      }

      else if (nextCandidateReplacementSource == 7)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didInlineCompletionTapOnCompletionReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }

      else
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didRevisionBubbleReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }
    }

    else if (nextCandidateReplacementSource > 4)
    {
      if (nextCandidateReplacementSource == 5)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didCandidateBarReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }

      else
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didInlineCompletionReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }
    }

    else
    {
      v8 = v14;
      if (nextCandidateReplacementSource == 3)
      {
        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didAutocorrectReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }

      else
      {
        if (nextCandidateReplacementSource != 4)
        {
          goto LABEL_29;
        }

        v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
        [_textInputSessionAnalytics didAutocorrectTapOnCompletionReplacementForText:nextCandidateReplacementRemovedText withText:v9];
      }
    }

    v8 = v14;
  }

LABEL_29:
  [v8 resetCandidateReplacementVariables];
}

+ (void)didCandidateReplacementWithRemovedText:(id)text insertedText:(id)insertedText
{
  insertedTextCopy = insertedText;
  textCopy = text;
  v7 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v7 setNextCandidateReplacementRemovedText:textCopy];

  v8 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v8 setNextCandidateReplacementInsertedText:insertedTextCopy];

  +[UIKBAnalyticsDispatcher didCandidateReplacement];
}

+ (void)didCommitText:(id)text
{
  textCopy = text;
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v4 _textInputSessionAnalytics];

  nextCommitTextSource = [v3 nextCommitTextSource];
  if ((nextCommitTextSource - 3) >= 4)
  {
    if (nextCommitTextSource == 1)
    {
      [_textInputSessionAnalytics didCommitTextFromImplicitAction:textCopy];
    }

    else if (nextCommitTextSource == 2)
    {
      [_textInputSessionAnalytics didCommitTextFromCandidateBar:textCopy];
    }

    else
    {
      [_textInputSessionAnalytics didCommitTextFromUnknownSource:textCopy];
    }
  }

  else
  {
    [_textInputSessionAnalytics didCommitTextFromKeyboard:textCopy];
  }

  [v3 setNextCommitTextSource:0];
}

+ (void)didCandidateBarAction
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [v3 _textInputSessionAnalytics];
  [_textInputSessionAnalytics didCandidateBarAction];
}

+ (void)globeKeyEducationShown:(double)shown
{
  v15[1] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v5 = qword_1ED49CCB8;
  qword_1ED49CCB8 = date;

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

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:shown];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v8 values:v11 inputMode:currentInputMode];
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
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:qword_1ED49CCB8];
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

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v8 values:v11 inputMode:currentInputMode];
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

+ (void)handwritingResized:(id)resized
{
  v12[1] = *MEMORY[0x1E69E9840];
  resizedCopy = resized;
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

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v12[0] = resizedCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v6 values:v8 inputMode:currentInputMode];
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

+ (void)sessionAnalyticsEnded:(id)ended
{
  endedCopy = ended;
  v4 = @"TextInputSession";
  v5 = @"TextInputSessionUpdate";
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke;
  block[3] = &unk_1E70F6228;
  v29 = endedCopy;
  v6 = v4;
  v30 = v6;
  v7 = v5;
  v31 = v7;
  v8 = sessionAnalyticsEnded__onceToken;
  v9 = endedCopy;
  if (v8 != -1)
  {
    dispatch_once(&sessionAnalyticsEnded__onceToken, block);
  }

  currentInputMode = [objc_opt_class() currentInputMode];
  sessionIdentifier = [v9 sessionIdentifier];
  uUIDString = [sessionIdentifier UUIDString];
  v13 = uUIDString;
  v14 = @"<nil>";
  if (uUIDString)
  {
    v14 = uUIDString;
  }

  v15 = v14;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__UIKBAnalyticsDispatcher_sessionAnalyticsEnded___block_invoke_69;
  v24[3] = &unk_1E70FB540;
  v25 = v6;
  v16 = v15;
  v26 = v16;
  v17 = currentInputMode;
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

+ (void)didInsertText:(id)text relativeRangeBefore:(_NSRange)before selectedTextBefore:(id)textBefore withLanguage:(id)language
{
  length = before.length;
  location = before.location;
  textCopy = text;
  textBeforeCopy = textBefore;
  languageCopy = language;
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v12 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didInsertText:textCopy relativeRangeBefore:location selectedTextBefore:length withLanguage:{textBeforeCopy, languageCopy}];
  }
}

+ (void)didDeleteBackwardText:(id)text
{
  textCopy = text;
  v3 = +[UIKBAnalyticsDispatcher sharedInstance];
  if ([v3 nextCandidateReplacementSource] == 9)
  {

LABEL_4:
    v6 = +[UIKBAnalyticsDispatcher sharedInstance];
    nextCandidateReplacementRemovedText = [v6 nextCandidateReplacementRemovedText];
    v8 = nextCandidateReplacementRemovedText;
    v9 = &stru_1EFB14550;
    if (nextCandidateReplacementRemovedText)
    {
      v9 = nextCandidateReplacementRemovedText;
    }

    v10 = v9;

    v11 = [textCopy stringByAppendingString:v10];

    _textInputSessionAnalytics = +[UIKBAnalyticsDispatcher sharedInstance];
    [_textInputSessionAnalytics setNextCandidateReplacementRemovedText:v11];
    goto LABEL_7;
  }

  v4 = +[UIKBAnalyticsDispatcher sharedInstance];
  nextCandidateReplacementSource = [v4 nextCandidateReplacementSource];

  if (nextCandidateReplacementSource == 10)
  {
    goto LABEL_4;
  }

  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard isKeyboardProcess])
  {
    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    _textInputSessionAnalytics = [v11 _textInputSessionAnalytics];
    [_textInputSessionAnalytics didDeleteBackwardText:textCopy];
LABEL_7:
  }
}

+ (void)emojiPopoverSummoned:(id)summoned appendsEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  v18[2] = *MEMORY[0x1E69E9840];
  summonedCopy = summoned;
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

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v18[0] = summonedCopy;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:emojiCopy];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v8 values:v11 inputMode:currentInputMode];
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

+ (void)emojiInsertedByMethod:(id)method inputType:(id)type
{
  v16[3] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UIKBAnalyticsDispatcher_emojiInsertedByMethod_inputType___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v5 = emojiInsertedByMethod_inputType__onceToken;
  typeCopy = type;
  methodCopy = method;
  if (v5 != -1)
  {
    dispatch_once(&emojiInsertedByMethod_inputType__onceToken, block);
  }

  v8 = +[UIKeyboardImpl activeInstance];
  hardwareKeyboardAttached = [v8 hardwareKeyboardAttached];

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v11 = [objc_opt_class() preferredEventName:@"emojiInserted"];
  v16[0] = methodCopy;
  v16[1] = typeCopy;
  v12 = [MEMORY[0x1E696AD98] numberWithBool:hardwareKeyboardAttached];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  currentInputMode = [objc_opt_class() currentInputMode];
  [mEMORY[0x1E69D9550] dispatchEventWithName:v11 values:v13 inputMode:currentInputMode];
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

+ (void)keyboardShortcutInvokedWithKeyboardShortcutLeaf:(id)leaf keyEvent:(id)event keyboardProperties:(id)properties
{
  leafCopy = leaf;
  eventCopy = event;
  propertiesCopy = properties;
  language = [propertiesCopy language];
  string = [MEMORY[0x1E696AD60] string];
  _keyboardShortcut = [leafCopy _keyboardShortcut];
  v13 = _keyboardShortcut;
  if (_keyboardShortcut)
  {
    currentLocalizedKeyCombination = [_keyboardShortcut currentLocalizedKeyCombination];
    v15 = [currentLocalizedKeyCombination _readableStringForModifierFlagsUsingWords:0 forHUD:0];
    [string appendString:v15];

    currentLocalizedKeyCombination2 = [v13 currentLocalizedKeyCombination];
    v17 = [currentLocalizedKeyCombination2 _readableStringForKeyEquivalentUsingWords:0 forHUD:0 isSingleCharacterOrKeySymbol:0];
    [string appendString:v17];
  }

  v18 = [string stringByReplacingOccurrencesOfString:@" " withString:&stru_1EFB14550];
  v19 = [string copy];
  v20 = v19;
  if (v19 && [v19 length])
  {
    v33 = eventCopy;
    v21 = +[UIKeyboardInputModeController sharedInputModeController];
    currentSystemInputMode = [v21 currentSystemInputMode];
    identifier = [currentSystemInputMode identifier];

    if (!identifier || ![(__CFString *)identifier length])
    {
      goto LABEL_19;
    }

    v24 = +[UIKeyboardInputModeController sharedInputModeController];
    currentSystemInputMode2 = [v24 currentSystemInputMode];
    isExtensionInputMode = [currentSystemInputMode2 isExtensionInputMode];

    if (isExtensionInputMode)
    {

      identifier = @"Other";
    }

    v27 = _UIMainBundleIdentifier();
    v28 = v27;
    eventCopy = v33;
    if (!v27 || ![v27 length])
    {
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    [v33 _keyCode];
    [v33 _modifierFlags];
    [propertiesCopy subinterfaceID];
    [propertiesCopy standardType];
    v29 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      action = [leafCopy action];

      if (action)
      {
        v31 = NSStringFromSelector(action);
LABEL_17:
        v34 = language;
        v35 = identifier;
        v36 = v28;
        v37 = v20;
        v38 = v31;
        v32 = v31;
        AnalyticsSendEventLazy();

        eventCopy = v33;
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

+ (void)keyboardCameraSessionEndedForTextContentType:(id)type didFindText:(BOOL)text didInsertText:(BOOL)insertText sender:(id)sender
{
  insertTextCopy = insertText;
  textCopy = text;
  v19[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  senderCopy = sender;
  if (keyboardCameraSessionEndedForTextContentType_didFindText_didInsertText_sender__onceToken != -1)
  {
    dispatch_once(&keyboardCameraSessionEndedForTextContentType_didFindText_didInsertText_sender__onceToken, &__block_literal_global_114);
  }

  if (![(__CFString *)typeCopy length])
  {

    typeCopy = @"None";
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

  if (v13 == senderCopy)
  {
    v12 = UIKBAnalyticsKeyboardCameraInvocationSourceCalloutBar;
    goto LABEL_9;
  }

LABEL_10:
  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:insertTextCopy];
  v19[0] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:textCopy];
  v19[1] = v17;
  v19[2] = typeCopy;
  v19[3] = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [mEMORY[0x1E69D9550] dispatchEventWithName:@"keyboardCameraSessionEnded" values:v18];
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

+ (void)hapticEventEngineDuration:(double)duration startCount:(unint64_t)count actionCount:(unint64_t)actionCount
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (hapticEventEngineDuration_startCount_actionCount__onceToken != -1)
  {
    dispatch_once(&hapticEventEngineDuration_startCount_actionCount__onceToken, &__block_literal_global_121);
  }

  mEMORY[0x1E69D9550] = [MEMORY[0x1E69D9550] sharedInstance];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:llround(duration)];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{count, v9}];
  v13[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:actionCount];
  v13[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  [mEMORY[0x1E69D9550] dispatchEventWithName:@"HapticFeedback.Daily" values:v12];
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