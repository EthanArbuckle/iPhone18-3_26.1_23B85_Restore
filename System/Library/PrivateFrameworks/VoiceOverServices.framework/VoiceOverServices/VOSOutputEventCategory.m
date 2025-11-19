@interface VOSOutputEventCategory
+ (NSArray)allCategories;
+ (VOSOutputEventCategory)interaction;
+ (id)appFeedback;
+ (id)braille;
+ (id)system;
+ (id)textEditing;
+ (id)voiceOverFeedback;
- (BOOL)containsOutputEvent:(id)a3;
- (VOSOutputEventCategory)initWithOutputEvents:(id)a3 localizedCategoryName:(id)a4;
@end

@implementation VOSOutputEventCategory

+ (VOSOutputEventCategory)interaction
{
  v19[11] = *MEMORY[0x277D85DE8];
  v18 = +[VOSOutputEvent DidFocusOnElement];
  v19[0] = v18;
  v17 = +[VOSOutputEvent DidFocusOnScreenRecognitionElement];
  v19[1] = v17;
  v2 = +[VOSOutputEvent DidActivateElement];
  v19[2] = v2;
  v3 = +[VOSOutputEvent DidWrapBackwards];
  v19[3] = v3;
  v4 = +[VOSOutputEvent DidWrapForwards];
  v19[4] = v4;
  v5 = +[VOSOutputEvent DidScrollByPage];
  v19[5] = v5;
  v6 = +[VOSOutputEvent BoundaryEncountered];
  v19[6] = v6;
  v7 = +[VOSOutputEvent NoItemExists];
  v19[7] = v7;
  v8 = +[VOSOutputEvent IsInteractable];
  v19[8] = v8;
  v9 = +[VOSOutputEvent InteractIn];
  v19[9] = v9;
  v10 = +[VOSOutputEvent InteractOut];
  v19[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:11];

  v12 = [VOSOutputEventCategory alloc];
  v13 = VOSLocString(@"VOSOutputEventCategory.Interaction");
  v14 = [(VOSOutputEventCategory *)v12 initWithOutputEvents:v11 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)voiceOverFeedback
{
  v38[30] = *MEMORY[0x277D85DE8];
  v37 = +[VOSOutputEvent ScreenDidChange];
  v38[0] = v37;
  v36 = +[VOSOutputEvent DidSyncWithSystemFocus];
  v38[1] = v36;
  v35 = +[VOSOutputEvent DidEnterTargetArea];
  v38[2] = v35;
  v34 = +[VOSOutputEvent DidLeaveTargetArea];
  v38[3] = v34;
  v33 = +[VOSOutputEvent DidEnterTouchContainer];
  v38[4] = v33;
  v32 = +[VOSOutputEvent DidSelectPreviousRotor];
  v38[5] = v32;
  v31 = +[VOSOutputEvent DidSelectNextRotor];
  v38[6] = v31;
  v30 = +[VOSOutputEvent PreviousRotorProgress];
  v38[7] = v30;
  v29 = +[VOSOutputEvent NextRotorProgress];
  v38[8] = v29;
  v28 = +[VOSOutputEvent DidBeginPassthrough];
  v38[9] = v28;
  v27 = +[VOSOutputEvent NoResultsFound];
  v38[10] = v27;
  v26 = +[VOSOutputEvent DidRecognizeMLContent];
  v38[11] = v26;
  v25 = +[VOSOutputEvent DidEnableQuickNav];
  v38[12] = v25;
  v24 = +[VOSOutputEvent DidDisableQuickNav];
  v38[13] = v24;
  v23 = +[VOSOutputEvent SensitiveContent];
  v38[14] = v23;
  v22 = +[VOSOutputEvent Startup];
  v38[15] = v22;
  v21 = +[VOSOutputEvent BSIDidEnableTyping];
  v38[16] = v21;
  v20 = +[VOSOutputEvent BSIDidEnableCommand];
  v38[17] = v20;
  v19 = +[VOSOutputEvent BSIDidDisable];
  v38[18] = v19;
  v17 = +[VOSOutputEvent BSIDidCalibrate];
  v38[19] = v17;
  v2 = +[VOSOutputEvent BSIDidCarriageReturn];
  v38[20] = v2;
  v3 = +[VOSOutputEvent BSIDidType];
  v38[21] = v3;
  v4 = +[VOSOutputEvent BSIDidDelete];
  v38[22] = v4;
  v5 = +[VOSOutputEvent BSIDidEnterSpace];
  v38[23] = v5;
  v6 = +[VOSOutputEvent BSIDidEnterChord];
  v38[24] = v6;
  v7 = +[VOSOutputEvent TutorialSuccess];
  v38[25] = v7;
  v8 = +[VOSOutputEvent TutorialMagicTapStart];
  v38[26] = v8;
  v9 = +[VOSOutputEvent TutorialMagicTapStop];
  v38[27] = v9;
  v10 = +[VOSOutputEvent BrailleDisplayReconnectionTriggered];
  v38[28] = v10;
  v11 = +[VOSOutputEvent UnknownCommand];
  v38[29] = v11;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:30];

  v12 = [VOSOutputEventCategory alloc];
  v13 = VOSLocString(@"VOSOutputEventCategory.VoiceOverFeedback");
  v14 = [(VOSOutputEventCategory *)v12 initWithOutputEvents:v18 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)appFeedback
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = +[VOSOutputEvent ItemIsLoading];
  v14[0] = v2;
  v3 = +[VOSOutputEvent ItemDidLoad];
  v14[1] = v3;
  v4 = +[VOSOutputEvent PopoverDidAppear];
  v14[2] = v4;
  v5 = +[VOSOutputEvent AlertDidAppear];
  v14[3] = v5;
  v6 = +[VOSOutputEvent NotificationDidAppear];
  v14[4] = v6;
  v7 = +[VOSOutputEvent DidReorderItem];
  v14[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:6];

  v9 = [VOSOutputEventCategory alloc];
  v10 = VOSLocString(@"VOSOutputEventCategory.AppFeedback");
  v11 = [(VOSOutputEventCategory *)v9 initWithOutputEvents:v8 localizedCategoryName:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)braille
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = +[VOSOutputEvent BrailleDisplayConnected];
  v3 = +[VOSOutputEvent BrailleDisplayDisconnected];
  v13[1] = v3;
  v4 = +[VOSOutputEvent ItemMemorizationSucceeded];
  v13[2] = v4;
  v5 = +[VOSOutputEvent ItemMemorizationFailed];
  v13[3] = v5;
  v6 = +[VOSOutputEvent ItemMemorizationInProgress];
  v13[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  v8 = [VOSOutputEventCategory alloc];
  v9 = VOSLocString(@"VOSOutputEventCategory.Braille");
  v10 = [(VOSOutputEventCategory *)v8 initWithOutputEvents:v7 localizedCategoryName:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)textEditing
{
  v15[7] = *MEMORY[0x277D85DE8];
  v2 = +[VOSOutputEvent CollaborationOccurred];
  v3 = +[VOSOutputEvent InsertionPointDidMove];
  v15[1] = v3;
  v4 = +[VOSOutputEvent AutofillDidAppear];
  v15[2] = v4;
  v5 = +[VOSOutputEvent AutofillDidDismiss];
  v15[3] = v5;
  v6 = +[VOSOutputEvent DidChangeTextSelectionDirection];
  v15[4] = v6;
  v7 = +[VOSOutputEvent DidSelectAutofill];
  v15[5] = v7;
  v8 = +[VOSOutputEvent DidEnterSecureText];
  v15[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];

  v10 = [VOSOutputEventCategory alloc];
  v11 = VOSLocString(@"VOSOutputEventCategory.TextEditing");
  v12 = [(VOSOutputEventCategory *)v10 initWithOutputEvents:v9 localizedCategoryName:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)system
{
  v21[13] = *MEMORY[0x277D85DE8];
  v20 = +[VOSOutputEvent TouchIDAuthenticated];
  v21[0] = v20;
  v19 = +[VOSOutputEvent TouchIDFailed];
  v21[1] = v19;
  v18 = +[VOSOutputEvent ReachabilityDidBegin];
  v21[2] = v18;
  v17 = +[VOSOutputEvent ReachabilityDidEnd];
  v21[3] = v17;
  v2 = +[VOSOutputEvent DockDidAppear];
  v21[4] = v2;
  v3 = +[VOSOutputEvent DockDidDisappear];
  v21[5] = v3;
  v4 = +[VOSOutputEvent FolderWillOpen];
  v21[6] = v4;
  v5 = +[VOSOutputEvent FolderDidOpen];
  v21[7] = v5;
  v6 = +[VOSOutputEvent FolderDidClose];
  v21[8] = v6;
  v7 = +[VOSOutputEvent KeyboardAppeared];
  v21[9] = v7;
  v8 = +[VOSOutputEvent KeyboardDisappeared];
  v21[10] = v8;
  v9 = +[VOSOutputEvent DidChangeVolume];
  v21[11] = v9;
  v10 = +[VOSOutputEvent ScreenDidTurnOff];
  v21[12] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:13];

  v12 = [VOSOutputEventCategory alloc];
  v13 = VOSLocString(@"VOSOutputEventCategory.System");
  v14 = [(VOSOutputEventCategory *)v12 initWithOutputEvents:v11 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (NSArray)allCategories
{
  v11[6] = *MEMORY[0x277D85DE8];
  v2 = +[VOSOutputEventCategory interaction];
  v11[0] = v2;
  v3 = +[VOSOutputEventCategory voiceOverFeedback];
  v11[1] = v3;
  v4 = +[VOSOutputEventCategory appFeedback];
  v11[2] = v4;
  v5 = +[VOSOutputEventCategory braille];
  v11[3] = v5;
  v6 = +[VOSOutputEventCategory textEditing];
  v11[4] = v6;
  v7 = +[VOSOutputEventCategory system];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (VOSOutputEventCategory)initWithOutputEvents:(id)a3 localizedCategoryName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VOSOutputEventCategory;
  v8 = [(VOSOutputEventCategory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOSOutputEventCategory *)v8 setLocalizedCategoryName:v7];
    [(VOSOutputEventCategory *)v9 setOutputEvents:v6];
  }

  return v9;
}

- (BOOL)containsOutputEvent:(id)a3
{
  v4 = a3;
  v5 = [(VOSOutputEventCategory *)self outputEvents];
  v6 = [v5 containsObject:v4];

  return v6;
}

@end