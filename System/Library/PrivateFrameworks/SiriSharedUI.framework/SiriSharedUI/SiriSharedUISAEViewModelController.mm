@interface SiriSharedUISAEViewModelController
- (AFConversation)previousConversation;
- (BOOL)alwaysShowRecognizedSpeech;
- (NSArray)storedTranscriptItems;
- (NSDictionary)serverUtteranceConversationIds;
- (SiriSharedUISAEViewModelChangeObserving)viewModelChangeObserver;
- (SiriSharedUISAEViewModelController)init;
- (SiriSharedUISAEViewModelController)initWithConversation:(id)conversation delegate:(id)delegate;
- (SiriSharedUISAEViewModelControllerDelegate)delegate;
- (id)serverUtterancesToDisplayForConversation:(id)conversation;
- (id)userUtteranceForConversationItem:(id)item;
- (int64_t)inputType;
- (unint64_t)_generateDiffFromViewModel:(id)model toViewModel:(id)viewModel;
- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)diff;
- (void)_processInitialConversationItemsForConversation:(id)conversation;
- (void)_processInsertedConversationItemsForConversationItems:(id)items forConversation:(id)conversation;
- (void)_processUpdatedConversationItemsAtIndexPaths:(id)paths;
- (void)clearLatencySummary;
- (void)clearLatencySummaryWithoutViewUpdate;
- (void)conversationDidChangeWithTransaction:(id)transaction;
- (void)didReceiveLatencyInformation:(id)information;
- (void)inputTypeDidChange;
- (void)resetViewsAndClearASR:(BOOL)r;
- (void)revealLatencyView;
- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object;
- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object asrAlternatives:(id)alternatives;
- (void)setConversation:(id)conversation;
- (void)setPreviousConversation:(id)conversation;
- (void)setServerUtteranceConversationIds:(id)ids;
- (void)setStoredTranscriptItems:(id)items;
- (void)setViewModel:(id)model;
- (void)setViewModelChangeObserver:(id)observer;
- (void)updateCurrentRequestText:(id)text;
@end

@implementation SiriSharedUISAEViewModelController

- (SiriSharedUISAEViewModelControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setConversation:(id)conversation
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_conversation);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_conversation) = conversation;
  conversationCopy = conversation;
}

- (NSDictionary)serverUtteranceConversationIds
{
  sub_21E4DB698();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5DD8);
  sub_21E477D68(&qword_280C15B50, MEMORY[0x277CC95F0]);
  v2 = sub_21E4DCE88();

  return v2;
}

- (void)setServerUtteranceConversationIds:(id)ids
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

- (void)setStoredTranscriptItems:(id)items
{
  sub_21E43F008(0, &qword_280C14128);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_storedTranscriptItems) = sub_21E4DD088();
}

- (SiriSharedUISAEViewModelController)initWithConversation:(id)conversation delegate:(id)delegate
{
  conversationCopy = conversation;
  swift_unknownObjectRetain();
  return sub_21E46C9A8(conversationCopy);
}

- (AFConversation)previousConversation
{
  v3 = OBJC_IVAR___SiriSharedUISAEViewModelController_previousConversation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreviousConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  SiriSharedUISAEViewModelController.previousConversation.setter(conversation);
}

- (SiriSharedUISAEViewModelChangeObserving)viewModelChangeObserver
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewModelChangeObserver:(id)observer
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = objc_allocWithZone(SiriSharedUISAEViewModel);
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = [v4 init];
  viewModel = [(SiriSharedUISAEViewModelController *)selfCopy viewModel];
  v8 = [(SiriSharedUISAEViewModelController *)selfCopy _generateDiffFromViewModel:v6 toViewModel:viewModel];

  [(SiriSharedUISAEViewModelController *)selfCopy _notifyObserverOfViewModelChangeWithDiff:v8];
  swift_unknownObjectRelease();
}

- (void)_notifyObserverOfViewModelChangeWithDiff:(unint64_t)diff
{
  if (diff)
  {
    selfCopy = self;
    viewModelChangeObserver = [(SiriSharedUISAEViewModelController *)selfCopy viewModelChangeObserver];
    if (viewModelChangeObserver)
    {
      v5 = viewModelChangeObserver;
      viewModel = [(SiriSharedUISAEViewModelController *)selfCopy viewModel];
      [(SiriSharedUISAEViewModelChangeObserving *)v5 saeViewModelDidChange:viewModel withDiff:diff];
      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)_generateDiffFromViewModel:(id)model toViewModel:(id)viewModel
{
  modelCopy = model;
  viewModelCopy = viewModel;
  selfCopy = self;
  v9 = sub_21E476F84(modelCopy, viewModelCopy);

  return v9;
}

- (void)setViewModel:(id)model
{
  v4 = *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_viewModel);
  *(self + OBJC_IVAR___SiriSharedUISAEViewModelController_viewModel) = model;
  modelCopy = model;
  selfCopy = self;
  [(SiriSharedUISAEViewModelController *)selfCopy _notifyObserverOfViewModelChangeWithDiff:[(SiriSharedUISAEViewModelController *)selfCopy _generateDiffFromViewModel:v4 toViewModel:modelCopy]];
}

- (void)_processInitialConversationItemsForConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_21E46D40C(conversationCopy);
}

- (void)conversationDidChangeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  selfCopy = self;
  sub_21E46D770(transactionCopy);
}

- (void)_processUpdatedConversationItemsAtIndexPaths:(id)paths
{
  sub_21E4DB6F8();
  v4 = sub_21E4DD088();
  selfCopy = self;
  sub_21E46E8C4(v4);
}

- (void)_processInsertedConversationItemsForConversationItems:(id)items forConversation:(id)conversation
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5DE0);
  v6 = sub_21E4DD088();
  conversationCopy = conversation;
  selfCopy = self;
  sub_21E46FF28(v6, conversationCopy);
}

- (id)userUtteranceForConversationItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_21E477BA4(item);
  swift_unknownObjectRelease();

  return v6;
}

- (id)serverUtterancesToDisplayForConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_21E4720B8(conversationCopy);

  sub_21E43F008(0, &unk_280C14130);
  v6 = sub_21E4DD078();

  return v6;
}

- (int64_t)inputType
{
  selfCopy = self;
  delegate = [(SiriSharedUISAEViewModelController *)selfCopy delegate];
  if (delegate)
  {
    v4 = [(SiriSharedUISAEViewModelControllerDelegate *)delegate inputTypeForSAEViewModelController:selfCopy];
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
  selfCopy = self;
  viewModel = [(SiriSharedUISAEViewModelController *)selfCopy viewModel];
  v3 = [(SiriSharedUISAEViewModel *)viewModel copyWithInputType:[(SiriSharedUISAEViewModelController *)selfCopy inputType]];

  [(SiriSharedUISAEViewModelController *)selfCopy setViewModel:v3];
}

- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object
{
  utteranceCopy = utterance;
  objectCopy = object;
  selfCopy = self;
  sub_21E47344C(utteranceCopy, object);
}

- (void)revealUserUtterance:(id)utterance backingAceObject:(id)object asrAlternatives:(id)alternatives
{
  v8 = sub_21E4DD088();
  utteranceCopy = utterance;
  objectCopy = object;
  selfCopy = self;
  sub_21E47377C(utteranceCopy, object, v8);
}

- (void)resetViewsAndClearASR:(BOOL)r
{
  selfCopy = self;
  sub_21E473B5C(r);
}

- (void)revealLatencyView
{
  selfCopy = self;
  sub_21E473EA8();
}

- (void)clearLatencySummary
{
  selfCopy = self;
  sub_21E4741D8();
}

- (void)clearLatencySummaryWithoutViewUpdate
{
  selfCopy = self;
  viewModel = [(SiriSharedUISAEViewModelController *)selfCopy viewModel];
  userUtterance = [(SiriSharedUISAEViewModel *)viewModel userUtterance];

  [(SiriSharedUISAEUserUtteranceViewModel *)userUtterance setLatencySummary:0];
  viewModel2 = [(SiriSharedUISAEViewModelController *)selfCopy viewModel];
  userUtterance2 = [(SiriSharedUISAEViewModel *)viewModel2 userUtterance];

  [(SiriSharedUISAEUserUtteranceViewModel *)userUtterance2 setShouldShow:0];
}

- (void)didReceiveLatencyInformation:(id)information
{
  informationCopy = information;
  selfCopy = self;
  sub_21E474528(informationCopy);
}

- (void)updateCurrentRequestText:(id)text
{
  sub_21E4DCF78();
  selfCopy = self;
  sub_21E47489C();
}

- (BOOL)alwaysShowRecognizedSpeech
{
  selfCopy = self;
  delegate = [(SiriSharedUISAEViewModelController *)selfCopy delegate];
  if (delegate)
  {
    v4 = [(SiriSharedUISAEViewModelControllerDelegate *)delegate saeViewModelControllerShouldAlwaysShowRecognizedSpeech:selfCopy];
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