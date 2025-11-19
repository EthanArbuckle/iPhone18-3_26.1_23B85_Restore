@interface SiriSharedUISAEViewModelController
- (AFConversation)previousConversation;
- (BOOL)alwaysShowRecognizedSpeech;
- (NSArray)storedTranscriptItems;
- (NSDictionary)serverUtteranceConversationIds;
- (SiriSharedUISAEViewModelChangeObserving)viewModelChangeObserver;
- (SiriSharedUISAEViewModelController)init;
- (SiriSharedUISAEViewModelController)initWithConversation:(id)a3 delegate:(id)a4;
- (SiriSharedUISAEViewModelControllerDelegate)delegate;
- (id)serverUtterancesToDisplayForConversation:(id)a3;
- (id)userUtteranceForConversationItem:(id)a3;
- (int64_t)inputType;
- (unint64_t)_generateDiffFromViewModel:(id)a3 toViewModel:(id)a4;
- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)a3;
- (void)_processInitialConversationItemsForConversation:(id)a3;
- (void)_processInsertedConversationItemsForConversationItems:(id)a3 forConversation:(id)a4;
- (void)_processUpdatedConversationItemsAtIndexPaths:(id)a3;
- (void)clearLatencySummary;
- (void)clearLatencySummaryWithoutViewUpdate;
- (void)conversationDidChangeWithTransaction:(id)a3;
- (void)didReceiveLatencyInformation:(id)a3;
- (void)inputTypeDidChange;
- (void)resetViewsAndClearASR:(BOOL)a3;
- (void)revealLatencyView;
- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4;
- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4 asrAlternatives:(id)a5;
- (void)setConversation:(id)a3;
- (void)setPreviousConversation:(id)a3;
- (void)setServerUtteranceConversationIds:(id)a3;
- (void)setStoredTranscriptItems:(id)a3;
- (void)setViewModel:(id)a3;
- (void)setViewModelChangeObserver:(id)a3;
- (void)updateCurrentRequestText:(id)a3;
@end

@implementation SiriSharedUISAEViewModelController

- (SiriSharedUISAEViewModelControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setConversation:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_conversation);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_conversation) = a3;
  v3 = a3;
}

- (NSDictionary)serverUtteranceConversationIds
{
  sub_21E4DB698();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  v2 = sub_21E4DCE88();

  return v2;
}

- (void)setServerUtteranceConversationIds:(id)a3
{
  sub_21E4DB698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_serverUtteranceConversationIds) = sub_21E4DCE98();
}

- (NSArray)storedTranscriptItems
{
  sub_21E43F008(0, &qword_280C14128);

  v2 = sub_21E4DD078();

  return v2;
}

- (void)setStoredTranscriptItems:(id)a3
{
  sub_21E43F008(0, &qword_280C14128);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_storedTranscriptItems) = sub_21E4DD088();
}

- (SiriSharedUISAEViewModelController)initWithConversation:(id)a3 delegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  return sub_21E46C9A8(v4);
}

- (AFConversation)previousConversation
{
  v3 = OBJC_IVAR___SiriSharedUISAEViewModelController_previousConversation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreviousConversation:(id)a3
{
  v5 = a3;
  v6 = self;
  SiriSharedUISAEViewModelController.previousConversation.setter(a3);
}

- (SiriSharedUISAEViewModelChangeObserving)viewModelChangeObserver
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewModelChangeObserver:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(SiriSharedUISAEViewModel);
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [v4 init];
  v7 = [(SiriSharedUISAEViewModelController *)v5 viewModel];
  v8 = [(SiriSharedUISAEViewModelController *)v5 _generateDiffFromViewModel:v6 toViewModel:v7];

  [(SiriSharedUISAEViewModelController *)v5 _notifyObserverOfViewModelChangeWithDiff:v8];
  swift_unknownObjectRelease();
}

- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)a3
{
  if (a3)
  {
    v7 = self;
    v4 = [(SiriSharedUISAEViewModelController *)v7 viewModelChangeObserver];
    if (v4)
    {
      v5 = v4;
      v6 = [(SiriSharedUISAEViewModelController *)v7 viewModel];
      [(SiriSharedUISAEViewModelChangeObserving *)v5 saeViewModelDidChange:v6 withDiff:a3];
      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)_generateDiffFromViewModel:(id)a3 toViewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21E476F84(v6, v7);

  return v9;
}

- (void)setViewModel:(id)a3
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_viewModel);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_viewModel) = a3;
  v5 = a3;
  v6 = self;
  [(SiriSharedUISAEViewModelController *)v6 _notifyObserverOfViewModelChangeWithDiff:[(SiriSharedUISAEViewModelController *)v6 _generateDiffFromViewModel:v4 toViewModel:v5]];
}

- (void)_processInitialConversationItemsForConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E46D40C(v4);
}

- (void)conversationDidChangeWithTransaction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E46D770(v4);
}

- (void)_processUpdatedConversationItemsAtIndexPaths:(id)a3
{
  sub_21E4DB6F8();
  v4 = sub_21E4DD088();
  v5 = self;
  sub_21E46E8C4(v4);
}

- (void)_processInsertedConversationItemsForConversationItems:(id)a3 forConversation:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5DE0);
  v6 = sub_21E4DD088();
  v7 = a4;
  v8 = self;
  sub_21E46FF28(v6, v7);
}

- (id)userUtteranceForConversationItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_21E477BA4(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (id)serverUtterancesToDisplayForConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E4720B8(v4);

  sub_21E43F008(0, &unk_280C14130);
  v6 = sub_21E4DD078();

  return v6;
}

- (int64_t)inputType
{
  v2 = self;
  v3 = [(SiriSharedUISAEViewModelController *)v2 delegate];
  if (v3)
  {
    v4 = [(SiriSharedUISAEViewModelControllerDelegate *)v3 inputTypeForSAEViewModelController:v2];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)inputTypeDidChange
{
  v4 = self;
  v2 = [(SiriSharedUISAEViewModelController *)v4 viewModel];
  v3 = [(SiriSharedUISAEViewModel *)v2 copyWithInputType:[(SiriSharedUISAEViewModelController *)v4 inputType]];

  [(SiriSharedUISAEViewModelController *)v4 setViewModel:v3];
}

- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21E47344C(v6, a4);
}

- (void)revealUserUtterance:(id)a3 backingAceObject:(id)a4 asrAlternatives:(id)a5
{
  v8 = sub_21E4DD088();
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_21E47377C(v9, a4, v8);
}

- (void)resetViewsAndClearASR:(BOOL)a3
{
  v4 = self;
  sub_21E473B5C(a3);
}

- (void)revealLatencyView
{
  v2 = self;
  sub_21E473EA8();
}

- (void)clearLatencySummary
{
  v2 = self;
  sub_21E4741D8();
}

- (void)clearLatencySummaryWithoutViewUpdate
{
  v6 = self;
  v2 = [(SiriSharedUISAEViewModelController *)v6 viewModel];
  v3 = [(SiriSharedUISAEViewModel *)v2 userUtterance];

  [(SiriSharedUISAEUserUtteranceViewModel *)v3 setLatencySummary:0];
  v4 = [(SiriSharedUISAEViewModelController *)v6 viewModel];
  v5 = [(SiriSharedUISAEViewModel *)v4 userUtterance];

  [(SiriSharedUISAEUserUtteranceViewModel *)v5 setShouldShow:0];
}

- (void)didReceiveLatencyInformation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E474528(v4);
}

- (void)updateCurrentRequestText:(id)a3
{
  sub_21E4DCF78();
  v4 = self;
  sub_21E47489C();
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v2 = self;
  v3 = [(SiriSharedUISAEViewModelController *)v2 delegate];
  if (v3)
  {
    v4 = [(SiriSharedUISAEViewModelControllerDelegate *)v3 saeViewModelControllerShouldAlwaysShowRecognizedSpeech:v2];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (SiriSharedUISAEViewModelController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end