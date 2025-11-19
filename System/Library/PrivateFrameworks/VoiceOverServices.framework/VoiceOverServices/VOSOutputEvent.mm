@interface VOSOutputEvent
+ (NSSet)allOutputEvents;
+ (VOSOutputEvent)AlertDidAppear;
+ (VOSOutputEvent)AutofillDidAppear;
+ (VOSOutputEvent)AutofillDidDismiss;
+ (VOSOutputEvent)BSIDidCalibrate;
+ (VOSOutputEvent)BSIDidCarriageReturn;
+ (VOSOutputEvent)BSIDidDelete;
+ (VOSOutputEvent)BSIDidDisable;
+ (VOSOutputEvent)BSIDidEnableCommand;
+ (VOSOutputEvent)BSIDidEnableTyping;
+ (VOSOutputEvent)BSIDidEnterChord;
+ (VOSOutputEvent)BSIDidEnterSpace;
+ (VOSOutputEvent)BSIDidType;
+ (VOSOutputEvent)BoundaryEncountered;
+ (VOSOutputEvent)BrailleDisplayConnected;
+ (VOSOutputEvent)BrailleDisplayDisconnected;
+ (VOSOutputEvent)BrailleDisplayReconnectionTriggered;
+ (VOSOutputEvent)CollaborationOccurred;
+ (VOSOutputEvent)DidActivateElement;
+ (VOSOutputEvent)DidBeginPassthrough;
+ (VOSOutputEvent)DidChangeTextSelectionDirection;
+ (VOSOutputEvent)DidChangeVolume;
+ (VOSOutputEvent)DidDisableQuickNav;
+ (VOSOutputEvent)DidEnableQuickNav;
+ (VOSOutputEvent)DidEnterSecureText;
+ (VOSOutputEvent)DidEnterTargetArea;
+ (VOSOutputEvent)DidEnterTouchContainer;
+ (VOSOutputEvent)DidFocusOnElement;
+ (VOSOutputEvent)DidFocusOnScreenRecognitionElement;
+ (VOSOutputEvent)DidLeaveTargetArea;
+ (VOSOutputEvent)DidRecognizeMLContent;
+ (VOSOutputEvent)DidReorderItem;
+ (VOSOutputEvent)DidScrollByPage;
+ (VOSOutputEvent)DidSelectAutofill;
+ (VOSOutputEvent)DidSelectNextRotor;
+ (VOSOutputEvent)DidSelectPreviousRotor;
+ (VOSOutputEvent)DidSyncWithSystemFocus;
+ (VOSOutputEvent)DidWrapBackwards;
+ (VOSOutputEvent)DidWrapForwards;
+ (VOSOutputEvent)DockDidAppear;
+ (VOSOutputEvent)DockDidDisappear;
+ (VOSOutputEvent)FolderDidClose;
+ (VOSOutputEvent)FolderDidOpen;
+ (VOSOutputEvent)FolderWillOpen;
+ (VOSOutputEvent)InsertionPointDidMove;
+ (VOSOutputEvent)InteractIn;
+ (VOSOutputEvent)InteractOut;
+ (VOSOutputEvent)IsInteractable;
+ (VOSOutputEvent)ItemDidLoad;
+ (VOSOutputEvent)ItemIsLoading;
+ (VOSOutputEvent)ItemMemorizationFailed;
+ (VOSOutputEvent)ItemMemorizationInProgress;
+ (VOSOutputEvent)ItemMemorizationSucceeded;
+ (VOSOutputEvent)KeyboardAppeared;
+ (VOSOutputEvent)KeyboardDisappeared;
+ (VOSOutputEvent)NextRotorProgress;
+ (VOSOutputEvent)NoItemExists;
+ (VOSOutputEvent)NoResultsFound;
+ (VOSOutputEvent)NotificationDidAppear;
+ (VOSOutputEvent)PopoverDidAppear;
+ (VOSOutputEvent)PreviousRotorProgress;
+ (VOSOutputEvent)ReachabilityDidBegin;
+ (VOSOutputEvent)ReachabilityDidEnd;
+ (VOSOutputEvent)ScreenDidChange;
+ (VOSOutputEvent)ScreenDidTurnOff;
+ (VOSOutputEvent)SensitiveContent;
+ (VOSOutputEvent)Startup;
+ (VOSOutputEvent)TVDidBeginInteractionWithRotor;
+ (VOSOutputEvent)TVDidEndInteractionWithRotor;
+ (VOSOutputEvent)TouchIDAuthenticated;
+ (VOSOutputEvent)TouchIDFailed;
+ (VOSOutputEvent)TutorialMagicTapStart;
+ (VOSOutputEvent)TutorialMagicTapStop;
+ (VOSOutputEvent)TutorialSuccess;
+ (VOSOutputEvent)UnknownCommand;
+ (VOSOutputEvent)eventWithStringValue:(id)a3;
- (NSString)localizedName;
- (id)description;
@end

@implementation VOSOutputEvent

+ (VOSOutputEvent)DidActivateElement
{
  if (DidActivateElement_onceToken != -1)
  {
    +[VOSOutputEvent DidActivateElement];
  }

  v3 = DidActivateElement__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidActivateElement__block_invoke()
{
  DidActivateElement__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidActivateElement" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)NoResultsFound
{
  if (NoResultsFound_onceToken != -1)
  {
    +[VOSOutputEvent NoResultsFound];
  }

  v3 = NoResultsFound__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_NoResultsFound__block_invoke()
{
  NoResultsFound__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"NoResultsFound" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidFocusOnElement
{
  if (DidFocusOnElement_onceToken != -1)
  {
    +[VOSOutputEvent DidFocusOnElement];
  }

  v3 = DidFocusOnElement__Event;

  return v3;
}

uint64_t __35__VOSOutputEvent_DidFocusOnElement__block_invoke()
{
  DidFocusOnElement__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidFocusOnElement" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidFocusOnScreenRecognitionElement
{
  if (DidFocusOnScreenRecognitionElement_onceToken != -1)
  {
    +[VOSOutputEvent DidFocusOnScreenRecognitionElement];
  }

  v3 = DidFocusOnScreenRecognitionElement__Event;

  return v3;
}

uint64_t __52__VOSOutputEvent_DidFocusOnScreenRecognitionElement__block_invoke()
{
  DidFocusOnScreenRecognitionElement__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidFocusOnScreenRecognitionElement" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidScrollByPage
{
  if (DidScrollByPage_onceToken != -1)
  {
    +[VOSOutputEvent DidScrollByPage];
  }

  v3 = DidScrollByPage__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_DidScrollByPage__block_invoke()
{
  DidScrollByPage__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidScrollByPage" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BoundaryEncountered
{
  if (BoundaryEncountered_onceToken != -1)
  {
    +[VOSOutputEvent BoundaryEncountered];
  }

  v3 = BoundaryEncountered__Event;

  return v3;
}

uint64_t __37__VOSOutputEvent_BoundaryEncountered__block_invoke()
{
  BoundaryEncountered__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BoundaryEncountered" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)NoItemExists
{
  if (NoItemExists_onceToken != -1)
  {
    +[VOSOutputEvent NoItemExists];
  }

  v3 = NoItemExists__Event;

  return v3;
}

uint64_t __30__VOSOutputEvent_NoItemExists__block_invoke()
{
  NoItemExists__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"NoItemExists" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)IsInteractable
{
  if (IsInteractable_onceToken != -1)
  {
    +[VOSOutputEvent IsInteractable];
  }

  v3 = IsInteractable__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_IsInteractable__block_invoke()
{
  IsInteractable__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"IsInteractable" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)InteractIn
{
  if (InteractIn_onceToken != -1)
  {
    +[VOSOutputEvent InteractIn];
  }

  v3 = InteractIn__Event;

  return v3;
}

uint64_t __28__VOSOutputEvent_InteractIn__block_invoke()
{
  InteractIn__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"InteractIn" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)InteractOut
{
  if (InteractOut_onceToken != -1)
  {
    +[VOSOutputEvent InteractOut];
  }

  v3 = InteractOut__Event;

  return v3;
}

uint64_t __29__VOSOutputEvent_InteractOut__block_invoke()
{
  InteractOut__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"InteractOut" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidSelectAutofill
{
  if (DidSelectAutofill_onceToken != -1)
  {
    +[VOSOutputEvent DidSelectAutofill];
  }

  v3 = DidSelectAutofill__Event;

  return v3;
}

uint64_t __35__VOSOutputEvent_DidSelectAutofill__block_invoke()
{
  DidSelectAutofill__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidSelectAutofill" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidBeginPassthrough
{
  if (DidBeginPassthrough_onceToken != -1)
  {
    +[VOSOutputEvent DidBeginPassthrough];
  }

  v3 = DidBeginPassthrough__Event;

  return v3;
}

uint64_t __37__VOSOutputEvent_DidBeginPassthrough__block_invoke()
{
  DidBeginPassthrough__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidBeginPassthrough" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidSelectPreviousRotor
{
  if (DidSelectPreviousRotor_onceToken != -1)
  {
    +[VOSOutputEvent DidSelectPreviousRotor];
  }

  v3 = DidSelectPreviousRotor__Event;

  return v3;
}

uint64_t __40__VOSOutputEvent_DidSelectPreviousRotor__block_invoke()
{
  DidSelectPreviousRotor__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidSelectPreviousRotor" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidSelectNextRotor
{
  if (DidSelectNextRotor_onceToken != -1)
  {
    +[VOSOutputEvent DidSelectNextRotor];
  }

  v3 = DidSelectNextRotor__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidSelectNextRotor__block_invoke()
{
  DidSelectNextRotor__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidSelectNextRotor" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)PreviousRotorProgress
{
  if (PreviousRotorProgress_onceToken != -1)
  {
    +[VOSOutputEvent PreviousRotorProgress];
  }

  v3 = PreviousRotorProgress__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_PreviousRotorProgress__block_invoke()
{
  PreviousRotorProgress__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"PreviousRotorProgress" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)NextRotorProgress
{
  if (NextRotorProgress_onceToken != -1)
  {
    +[VOSOutputEvent NextRotorProgress];
  }

  v3 = NextRotorProgress__Event;

  return v3;
}

uint64_t __35__VOSOutputEvent_NextRotorProgress__block_invoke()
{
  NextRotorProgress__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"NextRotorProgress" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidEnterSecureText
{
  if (DidEnterSecureText_onceToken != -1)
  {
    +[VOSOutputEvent DidEnterSecureText];
  }

  v3 = DidEnterSecureText__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidEnterSecureText__block_invoke()
{
  DidEnterSecureText__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidEnterSecureText" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidChangeTextSelectionDirection
{
  if (DidChangeTextSelectionDirection_onceToken != -1)
  {
    +[VOSOutputEvent DidChangeTextSelectionDirection];
  }

  v3 = DidChangeTextSelectionDirection__Event;

  return v3;
}

uint64_t __49__VOSOutputEvent_DidChangeTextSelectionDirection__block_invoke()
{
  DidChangeTextSelectionDirection__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidChangeTextSelectionDirection" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)UnknownCommand
{
  if (UnknownCommand_onceToken != -1)
  {
    +[VOSOutputEvent UnknownCommand];
  }

  v3 = UnknownCommand__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_UnknownCommand__block_invoke()
{
  UnknownCommand__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"UnknownCommand" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidRecognizeMLContent
{
  if (DidRecognizeMLContent_onceToken != -1)
  {
    +[VOSOutputEvent DidRecognizeMLContent];
  }

  v3 = DidRecognizeMLContent__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_DidRecognizeMLContent__block_invoke()
{
  DidRecognizeMLContent__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidRecognizeMLContent" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidEnterTargetArea
{
  if (DidEnterTargetArea_onceToken != -1)
  {
    +[VOSOutputEvent DidEnterTargetArea];
  }

  v3 = DidEnterTargetArea__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidEnterTargetArea__block_invoke()
{
  DidEnterTargetArea__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidEnterTargetArea" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidLeaveTargetArea
{
  if (DidLeaveTargetArea_onceToken != -1)
  {
    +[VOSOutputEvent DidLeaveTargetArea];
  }

  v3 = DidLeaveTargetArea__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidLeaveTargetArea__block_invoke()
{
  DidLeaveTargetArea__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidLeaveTargetArea" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidSyncWithSystemFocus
{
  if (DidSyncWithSystemFocus_onceToken != -1)
  {
    +[VOSOutputEvent DidSyncWithSystemFocus];
  }

  v3 = DidSyncWithSystemFocus__Event;

  return v3;
}

uint64_t __40__VOSOutputEvent_DidSyncWithSystemFocus__block_invoke()
{
  DidSyncWithSystemFocus__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidSyncWithSystemFocus" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidEnterTouchContainer
{
  if (DidEnterTouchContainer_onceToken != -1)
  {
    +[VOSOutputEvent DidEnterTouchContainer];
  }

  v3 = DidEnterTouchContainer__Event;

  return v3;
}

uint64_t __40__VOSOutputEvent_DidEnterTouchContainer__block_invoke()
{
  DidEnterTouchContainer__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidEnterTouchContainer" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidChangeVolume
{
  if (DidChangeVolume_onceToken != -1)
  {
    +[VOSOutputEvent DidChangeVolume];
  }

  v3 = DidChangeVolume__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_DidChangeVolume__block_invoke()
{
  DidChangeVolume__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidChangeVolume" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidReorderItem
{
  if (DidReorderItem_onceToken != -1)
  {
    +[VOSOutputEvent DidReorderItem];
  }

  v3 = DidReorderItem__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_DidReorderItem__block_invoke()
{
  DidReorderItem__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidReorderItem" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidWrapBackwards
{
  if (DidWrapBackwards_onceToken != -1)
  {
    +[VOSOutputEvent DidWrapBackwards];
  }

  v3 = DidWrapBackwards__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_DidWrapBackwards__block_invoke()
{
  DidWrapBackwards__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidWrapBackwards" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidWrapForwards
{
  if (DidWrapForwards_onceToken != -1)
  {
    +[VOSOutputEvent DidWrapForwards];
  }

  v3 = DidWrapForwards__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_DidWrapForwards__block_invoke()
{
  DidWrapForwards__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidWrapForwards" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidEnableQuickNav
{
  if (DidEnableQuickNav_onceToken != -1)
  {
    +[VOSOutputEvent DidEnableQuickNav];
  }

  v3 = DidEnableQuickNav__Event;

  return v3;
}

uint64_t __35__VOSOutputEvent_DidEnableQuickNav__block_invoke()
{
  DidEnableQuickNav__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidEnableQuickNav" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DidDisableQuickNav
{
  if (DidDisableQuickNav_onceToken != -1)
  {
    +[VOSOutputEvent DidDisableQuickNav];
  }

  v3 = DidDisableQuickNav__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_DidDisableQuickNav__block_invoke()
{
  DidDisableQuickNav__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DidDisableQuickNav" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TVDidBeginInteractionWithRotor
{
  if (TVDidBeginInteractionWithRotor_onceToken != -1)
  {
    +[VOSOutputEvent TVDidBeginInteractionWithRotor];
  }

  v3 = TVDidBeginInteractionWithRotor__Event;

  return v3;
}

uint64_t __48__VOSOutputEvent_TVDidBeginInteractionWithRotor__block_invoke()
{
  TVDidBeginInteractionWithRotor__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TVDidBeginInteractionWithRotor" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TVDidEndInteractionWithRotor
{
  if (TVDidEndInteractionWithRotor_onceToken != -1)
  {
    +[VOSOutputEvent TVDidEndInteractionWithRotor];
  }

  v3 = TVDidEndInteractionWithRotor__Event;

  return v3;
}

uint64_t __46__VOSOutputEvent_TVDidEndInteractionWithRotor__block_invoke()
{
  TVDidEndInteractionWithRotor__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TVDidEndInteractionWithRotor" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidEnableTyping
{
  if (BSIDidEnableTyping_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidEnableTyping];
  }

  v3 = BSIDidEnableTyping__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_BSIDidEnableTyping__block_invoke()
{
  BSIDidEnableTyping__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidEnableTyping" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidEnableCommand
{
  if (BSIDidEnableCommand_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidEnableCommand];
  }

  v3 = BSIDidEnableCommand__Event;

  return v3;
}

uint64_t __37__VOSOutputEvent_BSIDidEnableCommand__block_invoke()
{
  BSIDidEnableCommand__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidEnableCommand" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidDisable
{
  if (BSIDidDisable_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidDisable];
  }

  v3 = BSIDidDisable__Event;

  return v3;
}

uint64_t __31__VOSOutputEvent_BSIDidDisable__block_invoke()
{
  BSIDidDisable__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidDisable" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidCalibrate
{
  if (BSIDidCalibrate_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidCalibrate];
  }

  v3 = BSIDidCalibrate__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_BSIDidCalibrate__block_invoke()
{
  BSIDidCalibrate__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidCalibrate" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidCarriageReturn
{
  if (BSIDidCarriageReturn_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidCarriageReturn];
  }

  v3 = BSIDidCarriageReturn__Event;

  return v3;
}

uint64_t __38__VOSOutputEvent_BSIDidCarriageReturn__block_invoke()
{
  BSIDidCarriageReturn__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidCarriageReturn" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidType
{
  if (BSIDidType_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidType];
  }

  v3 = BSIDidType__Event;

  return v3;
}

uint64_t __28__VOSOutputEvent_BSIDidType__block_invoke()
{
  BSIDidType__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidType" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidDelete
{
  if (BSIDidDelete_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidDelete];
  }

  v3 = BSIDidDelete__Event;

  return v3;
}

uint64_t __30__VOSOutputEvent_BSIDidDelete__block_invoke()
{
  BSIDidDelete__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidDelete" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidEnterSpace
{
  if (BSIDidEnterSpace_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidEnterSpace];
  }

  v3 = BSIDidEnterSpace__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_BSIDidEnterSpace__block_invoke()
{
  BSIDidEnterSpace__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidEnterSpace" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BSIDidEnterChord
{
  if (BSIDidEnterChord_onceToken != -1)
  {
    +[VOSOutputEvent BSIDidEnterChord];
  }

  v3 = BSIDidEnterChord__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_BSIDidEnterChord__block_invoke()
{
  BSIDidEnterChord__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BSIDidEnterChord" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BrailleDisplayReconnectionTriggered
{
  if (BrailleDisplayReconnectionTriggered_onceToken != -1)
  {
    +[VOSOutputEvent BrailleDisplayReconnectionTriggered];
  }

  v3 = BrailleDisplayReconnectionTriggered__Event;

  return v3;
}

uint64_t __53__VOSOutputEvent_BrailleDisplayReconnectionTriggered__block_invoke()
{
  BrailleDisplayReconnectionTriggered__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BrailleDisplayReconnectionTriggered" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)AlertDidAppear
{
  if (AlertDidAppear_onceToken != -1)
  {
    +[VOSOutputEvent AlertDidAppear];
  }

  v3 = AlertDidAppear__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_AlertDidAppear__block_invoke()
{
  AlertDidAppear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"AlertDidAppear" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)NotificationDidAppear
{
  if (NotificationDidAppear_onceToken != -1)
  {
    +[VOSOutputEvent NotificationDidAppear];
  }

  v3 = NotificationDidAppear__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_NotificationDidAppear__block_invoke()
{
  NotificationDidAppear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"NotificationDidAppear" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)PopoverDidAppear
{
  if (PopoverDidAppear_onceToken != -1)
  {
    +[VOSOutputEvent PopoverDidAppear];
  }

  v3 = PopoverDidAppear__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_PopoverDidAppear__block_invoke()
{
  PopoverDidAppear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"PopoverDidAppear" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)AutofillDidAppear
{
  if (AutofillDidAppear_onceToken != -1)
  {
    +[VOSOutputEvent AutofillDidAppear];
  }

  v3 = AutofillDidAppear__Event;

  return v3;
}

uint64_t __35__VOSOutputEvent_AutofillDidAppear__block_invoke()
{
  AutofillDidAppear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"AutofillDidAppear" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)AutofillDidDismiss
{
  if (AutofillDidDismiss_onceToken != -1)
  {
    +[VOSOutputEvent AutofillDidDismiss];
  }

  v3 = AutofillDidDismiss__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_AutofillDidDismiss__block_invoke()
{
  AutofillDidDismiss__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"AutofillDidDismiss" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ItemIsLoading
{
  if (ItemIsLoading_onceToken != -1)
  {
    +[VOSOutputEvent ItemIsLoading];
  }

  v3 = ItemIsLoading__Event;

  return v3;
}

uint64_t __31__VOSOutputEvent_ItemIsLoading__block_invoke()
{
  ItemIsLoading__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ItemIsLoading" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ItemDidLoad
{
  if (ItemDidLoad_onceToken != -1)
  {
    +[VOSOutputEvent ItemDidLoad];
  }

  v3 = ItemDidLoad__Event;

  return v3;
}

uint64_t __29__VOSOutputEvent_ItemDidLoad__block_invoke()
{
  ItemDidLoad__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ItemDidLoad" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ScreenDidTurnOff
{
  if (ScreenDidTurnOff_onceToken != -1)
  {
    +[VOSOutputEvent ScreenDidTurnOff];
  }

  v3 = ScreenDidTurnOff__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_ScreenDidTurnOff__block_invoke()
{
  ScreenDidTurnOff__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ScreenDidTurnOff" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)InsertionPointDidMove
{
  if (InsertionPointDidMove_onceToken != -1)
  {
    +[VOSOutputEvent InsertionPointDidMove];
  }

  v3 = InsertionPointDidMove__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_InsertionPointDidMove__block_invoke()
{
  InsertionPointDidMove__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"InsertionPointDidMove" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)KeyboardAppeared
{
  if (KeyboardAppeared_onceToken != -1)
  {
    +[VOSOutputEvent KeyboardAppeared];
  }

  v3 = KeyboardAppeared__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_KeyboardAppeared__block_invoke()
{
  KeyboardAppeared__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"KeyboardAppeared" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)KeyboardDisappeared
{
  if (KeyboardDisappeared_onceToken != -1)
  {
    +[VOSOutputEvent KeyboardDisappeared];
  }

  v3 = KeyboardDisappeared__Event;

  return v3;
}

uint64_t __37__VOSOutputEvent_KeyboardDisappeared__block_invoke()
{
  KeyboardDisappeared__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"KeyboardDisappeared" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ItemMemorizationSucceeded
{
  if (ItemMemorizationSucceeded_onceToken != -1)
  {
    +[VOSOutputEvent ItemMemorizationSucceeded];
  }

  v3 = ItemMemorizationSucceeded__Event;

  return v3;
}

uint64_t __43__VOSOutputEvent_ItemMemorizationSucceeded__block_invoke()
{
  ItemMemorizationSucceeded__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ItemMemorizationSucceeded" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ScreenDidChange
{
  if (ScreenDidChange_onceToken != -1)
  {
    +[VOSOutputEvent ScreenDidChange];
  }

  v3 = ScreenDidChange__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_ScreenDidChange__block_invoke()
{
  ScreenDidChange__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ScreenDidChange" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)CollaborationOccurred
{
  if (CollaborationOccurred_onceToken != -1)
  {
    +[VOSOutputEvent CollaborationOccurred];
  }

  v3 = CollaborationOccurred__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_CollaborationOccurred__block_invoke()
{
  CollaborationOccurred__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"CollaborationOccurred" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)FolderWillOpen
{
  if (FolderWillOpen_onceToken != -1)
  {
    +[VOSOutputEvent FolderWillOpen];
  }

  v3 = FolderWillOpen__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_FolderWillOpen__block_invoke()
{
  FolderWillOpen__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"FolderWillOpen" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)FolderDidOpen
{
  if (FolderDidOpen_onceToken != -1)
  {
    +[VOSOutputEvent FolderDidOpen];
  }

  v3 = FolderDidOpen__Event;

  return v3;
}

uint64_t __31__VOSOutputEvent_FolderDidOpen__block_invoke()
{
  FolderDidOpen__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"FolderDidOpen" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)FolderDidClose
{
  if (FolderDidClose_onceToken != -1)
  {
    +[VOSOutputEvent FolderDidClose];
  }

  v3 = FolderDidClose__Event;

  return v3;
}

uint64_t __32__VOSOutputEvent_FolderDidClose__block_invoke()
{
  FolderDidClose__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"FolderDidClose" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BrailleDisplayConnected
{
  if (BrailleDisplayConnected_onceToken != -1)
  {
    +[VOSOutputEvent BrailleDisplayConnected];
  }

  v3 = BrailleDisplayConnected__Event;

  return v3;
}

uint64_t __41__VOSOutputEvent_BrailleDisplayConnected__block_invoke()
{
  BrailleDisplayConnected__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BrailleDisplayConnected" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)BrailleDisplayDisconnected
{
  if (BrailleDisplayDisconnected_onceToken != -1)
  {
    +[VOSOutputEvent BrailleDisplayDisconnected];
  }

  v3 = BrailleDisplayDisconnected__Event;

  return v3;
}

uint64_t __44__VOSOutputEvent_BrailleDisplayDisconnected__block_invoke()
{
  BrailleDisplayDisconnected__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"BrailleDisplayDisconnected" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ItemMemorizationFailed
{
  if (ItemMemorizationFailed_onceToken != -1)
  {
    +[VOSOutputEvent ItemMemorizationFailed];
  }

  v3 = ItemMemorizationFailed__Event;

  return v3;
}

uint64_t __40__VOSOutputEvent_ItemMemorizationFailed__block_invoke()
{
  ItemMemorizationFailed__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ItemMemorizationFailed" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ItemMemorizationInProgress
{
  if (ItemMemorizationInProgress_onceToken != -1)
  {
    +[VOSOutputEvent ItemMemorizationInProgress];
  }

  v3 = ItemMemorizationInProgress__Event;

  return v3;
}

uint64_t __44__VOSOutputEvent_ItemMemorizationInProgress__block_invoke()
{
  ItemMemorizationInProgress__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ItemMemorizationInProgress" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DockDidAppear
{
  if (DockDidAppear_onceToken != -1)
  {
    +[VOSOutputEvent DockDidAppear];
  }

  v3 = DockDidAppear__Event;

  return v3;
}

uint64_t __31__VOSOutputEvent_DockDidAppear__block_invoke()
{
  DockDidAppear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DockDidAppear" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)DockDidDisappear
{
  if (DockDidDisappear_onceToken != -1)
  {
    +[VOSOutputEvent DockDidDisappear];
  }

  v3 = DockDidDisappear__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_DockDidDisappear__block_invoke()
{
  DockDidDisappear__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"DockDidDisappear" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ReachabilityDidBegin
{
  if (ReachabilityDidBegin_onceToken != -1)
  {
    +[VOSOutputEvent ReachabilityDidBegin];
  }

  v3 = ReachabilityDidBegin__Event;

  return v3;
}

uint64_t __38__VOSOutputEvent_ReachabilityDidBegin__block_invoke()
{
  ReachabilityDidBegin__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ReachabilityDidBegin" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)ReachabilityDidEnd
{
  if (ReachabilityDidEnd_onceToken != -1)
  {
    +[VOSOutputEvent ReachabilityDidEnd];
  }

  v3 = ReachabilityDidEnd__Event;

  return v3;
}

uint64_t __36__VOSOutputEvent_ReachabilityDidEnd__block_invoke()
{
  ReachabilityDidEnd__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"ReachabilityDidEnd" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TouchIDAuthenticated
{
  if (TouchIDAuthenticated_onceToken != -1)
  {
    +[VOSOutputEvent TouchIDAuthenticated];
  }

  v3 = TouchIDAuthenticated__Event;

  return v3;
}

uint64_t __38__VOSOutputEvent_TouchIDAuthenticated__block_invoke()
{
  TouchIDAuthenticated__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TouchIDAuthenticated" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TouchIDFailed
{
  if (TouchIDFailed_onceToken != -1)
  {
    +[VOSOutputEvent TouchIDFailed];
  }

  v3 = TouchIDFailed__Event;

  return v3;
}

uint64_t __31__VOSOutputEvent_TouchIDFailed__block_invoke()
{
  TouchIDFailed__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TouchIDFailed" supportsSoundEffect:1 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)SensitiveContent
{
  if (SensitiveContent_onceToken != -1)
  {
    +[VOSOutputEvent SensitiveContent];
  }

  v3 = SensitiveContent__Event;

  return v3;
}

uint64_t __34__VOSOutputEvent_SensitiveContent__block_invoke()
{
  SensitiveContent__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"SensitiveContent" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)Startup
{
  if (Startup_onceToken != -1)
  {
    +[VOSOutputEvent Startup];
  }

  v3 = Startup__Event;

  return v3;
}

uint64_t __25__VOSOutputEvent_Startup__block_invoke()
{
  Startup__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"Startup" supportsSoundEffect:0 supportsHaptic:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TutorialSuccess
{
  if (TutorialSuccess_onceToken != -1)
  {
    +[VOSOutputEvent TutorialSuccess];
  }

  v3 = TutorialSuccess__Event;

  return v3;
}

uint64_t __33__VOSOutputEvent_TutorialSuccess__block_invoke()
{
  TutorialSuccess__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TutorialSuccess" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TutorialMagicTapStart
{
  if (TutorialMagicTapStart_onceToken != -1)
  {
    +[VOSOutputEvent TutorialMagicTapStart];
  }

  v3 = TutorialMagicTapStart__Event;

  return v3;
}

uint64_t __39__VOSOutputEvent_TutorialMagicTapStart__block_invoke()
{
  TutorialMagicTapStart__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TutorialMagicTapStart" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSOutputEvent)TutorialMagicTapStop
{
  if (TutorialMagicTapStop_onceToken != -1)
  {
    +[VOSOutputEvent TutorialMagicTapStop];
  }

  v3 = TutorialMagicTapStop__Event;

  return v3;
}

uint64_t __38__VOSOutputEvent_TutorialMagicTapStop__block_invoke()
{
  TutorialMagicTapStop__Event = [[VOSOutputEvent alloc] _initOutputEventWithRawValue:@"TutorialMagicTapStop" supportsSoundEffect:1 supportsHaptic:0];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)allOutputEvents
{
  if (allOutputEvents_onceToken != -1)
  {
    +[VOSOutputEvent allOutputEvents];
  }

  v3 = allOutputEvents__AllOutputEvents;

  return v3;
}

void __33__VOSOutputEvent_allOutputEvents__block_invoke()
{
  v14 = MEMORY[0x277CBEB98];
  v76 = +[VOSOutputEvent DidActivateElement];
  v75 = +[VOSOutputEvent NoResultsFound];
  v74 = +[VOSOutputEvent DidFocusOnElement];
  v73 = +[VOSOutputEvent DidFocusOnScreenRecognitionElement];
  v72 = +[VOSOutputEvent DidScrollByPage];
  v71 = +[VOSOutputEvent BoundaryEncountered];
  v70 = +[VOSOutputEvent NoItemExists];
  v69 = +[VOSOutputEvent IsInteractable];
  v68 = +[VOSOutputEvent InteractIn];
  v67 = +[VOSOutputEvent InteractOut];
  v66 = +[VOSOutputEvent DidSelectAutofill];
  v65 = +[VOSOutputEvent DidBeginPassthrough];
  v64 = +[VOSOutputEvent DidSelectPreviousRotor];
  v63 = +[VOSOutputEvent DidSelectNextRotor];
  v62 = +[VOSOutputEvent PreviousRotorProgress];
  v61 = +[VOSOutputEvent NextRotorProgress];
  v60 = +[VOSOutputEvent DidEnterSecureText];
  v59 = +[VOSOutputEvent DidChangeTextSelectionDirection];
  v58 = +[VOSOutputEvent UnknownCommand];
  v57 = +[VOSOutputEvent DidRecognizeMLContent];
  v56 = +[VOSOutputEvent DidEnterTargetArea];
  v55 = +[VOSOutputEvent DidLeaveTargetArea];
  v54 = +[VOSOutputEvent DidSyncWithSystemFocus];
  v53 = +[VOSOutputEvent DidEnterTouchContainer];
  v52 = +[VOSOutputEvent DidChangeVolume];
  v51 = +[VOSOutputEvent DidReorderItem];
  v50 = +[VOSOutputEvent DidWrapBackwards];
  v49 = +[VOSOutputEvent DidWrapForwards];
  v48 = +[VOSOutputEvent DidEnableQuickNav];
  v47 = +[VOSOutputEvent DidDisableQuickNav];
  v46 = +[VOSOutputEvent TVDidBeginInteractionWithRotor];
  v45 = +[VOSOutputEvent TVDidEndInteractionWithRotor];
  v44 = +[VOSOutputEvent BSIDidEnableTyping];
  v43 = +[VOSOutputEvent BSIDidEnableCommand];
  v42 = +[VOSOutputEvent BSIDidDisable];
  v41 = +[VOSOutputEvent BSIDidCalibrate];
  v40 = +[VOSOutputEvent BSIDidCarriageReturn];
  v39 = +[VOSOutputEvent BSIDidType];
  v38 = +[VOSOutputEvent BSIDidDelete];
  v37 = +[VOSOutputEvent BSIDidEnterSpace];
  v36 = +[VOSOutputEvent BSIDidEnterChord];
  v35 = +[VOSOutputEvent BrailleDisplayReconnectionTriggered];
  v34 = +[VOSOutputEvent AlertDidAppear];
  v33 = +[VOSOutputEvent NotificationDidAppear];
  v29 = +[VOSOutputEvent PopoverDidAppear];
  v31 = +[VOSOutputEvent AutofillDidAppear];
  v32 = +[VOSOutputEvent AutofillDidDismiss];
  v30 = +[VOSOutputEvent ItemIsLoading];
  v13 = +[VOSOutputEvent ItemDidLoad];
  v28 = +[VOSOutputEvent ScreenDidTurnOff];
  v12 = +[VOSOutputEvent InsertionPointDidMove];
  v27 = +[VOSOutputEvent KeyboardAppeared];
  v26 = +[VOSOutputEvent KeyboardDisappeared];
  v25 = +[VOSOutputEvent ItemMemorizationSucceeded];
  v24 = +[VOSOutputEvent ScreenDidChange];
  v23 = +[VOSOutputEvent CollaborationOccurred];
  v22 = +[VOSOutputEvent FolderWillOpen];
  v21 = +[VOSOutputEvent FolderDidOpen];
  v20 = +[VOSOutputEvent FolderDidClose];
  v19 = +[VOSOutputEvent BrailleDisplayConnected];
  v18 = +[VOSOutputEvent BrailleDisplayDisconnected];
  v17 = +[VOSOutputEvent ItemMemorizationFailed];
  v16 = +[VOSOutputEvent ItemMemorizationInProgress];
  v15 = +[VOSOutputEvent DockDidAppear];
  v10 = +[VOSOutputEvent DockDidDisappear];
  v0 = +[VOSOutputEvent ReachabilityDidBegin];
  v1 = +[VOSOutputEvent ReachabilityDidEnd];
  v11 = +[VOSOutputEvent TouchIDAuthenticated];
  v2 = +[VOSOutputEvent TouchIDFailed];
  v3 = +[VOSOutputEvent SensitiveContent];
  v4 = +[VOSOutputEvent Startup];
  v5 = +[VOSOutputEvent TutorialSuccess];
  v6 = +[VOSOutputEvent TutorialMagicTapStart];
  v9 = +[VOSOutputEvent TutorialMagicTapStop];
  v7 = [v14 setWithObjects:{v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v29, v31, v32, v30, v13, v28, v12, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18}];
  v8 = allOutputEvents__AllOutputEvents;
  allOutputEvents__AllOutputEvents = v7;
}

+ (VOSOutputEvent)eventWithStringValue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a1 allOutputEvents];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9[1] isEqualToString:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)localizedName
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"VOSOutputEvent.%@", self->_rawValue];
  v3 = VOSLocString(v2);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(VOSOutputEvent *)self rawValue];
  v5 = [(VOSOutputEvent *)self localizedName];
  v6 = [v3 stringWithFormat:@"VOSOutputEvent<%p> %@ (%@)", self, v4, v5];

  return v6;
}

@end