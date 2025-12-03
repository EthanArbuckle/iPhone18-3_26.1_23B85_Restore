@interface SiriSharedUISAEViewModel
- (SiriSharedUISAEViewModel)initWithInputType:(int64_t)type conversationTranscriptItems:(id)items serverUtterances:(id)utterances userUtterance:(id)utterance shouldPreserveResultSpace:(BOOL)space;
- (id)copyWithConversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis;
- (id)copyWithInputType:(int64_t)type;
- (id)copyWithInputType:(int64_t)type conversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis shouldPreserveResultSpace:(BOOL)space;
- (id)copyWithServerUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis;
- (id)copyWithSpeechRecognitionHypothesis:(id)hypothesis;
- (id)copyWithUserUtterance:(id)utterance;
@end

@implementation SiriSharedUISAEViewModel

- (SiriSharedUISAEViewModel)initWithInputType:(int64_t)type conversationTranscriptItems:(id)items serverUtterances:(id)utterances userUtterance:(id)utterance shouldPreserveResultSpace:(BOOL)space
{
  sub_21E43F008(0, &qword_280C14128);
  v11 = sub_21E4DD088();
  sub_21E43F008(0, &unk_280C14130);
  v12 = sub_21E4DD088();
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_inputType) = type;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_conversationTranscriptItems) = v11;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_serverUtterances) = v12;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_userUtterance) = utterance;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_shouldPreserveResultSpace) = space;
  v15.receiver = self;
  v15.super_class = SiriSharedUISAEViewModel;
  utteranceCopy = utterance;
  return [(SiriSharedUISAEViewModel *)&v15 init];
}

- (id)copyWithInputType:(int64_t)type conversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis shouldPreserveResultSpace:(BOOL)space
{
  sub_21E43F008(0, &qword_280C14128);
  v11 = sub_21E4DD088();
  sub_21E43F008(0, &unk_280C14130);
  v12 = sub_21E4DD088();
  hypothesisCopy = hypothesis;
  selfCopy = self;
  v15 = sub_21E46A654(type, v11, v12, hypothesis, space);

  return v15;
}

- (id)copyWithConversationTranscriptItems:(id)items serverUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis
{
  itemsCopy = items;
  utterancesCopy = utterances;
  hypothesisCopy = hypothesis;
  selfCopy = self;
  v12 = [(SiriSharedUISAEViewModel *)selfCopy copyWithInputType:[(SiriSharedUISAEViewModel *)selfCopy inputType] conversationTranscriptItems:itemsCopy serverUtterances:utterancesCopy speechRecognitionHypothesis:hypothesisCopy shouldPreserveResultSpace:[(SiriSharedUISAEViewModel *)selfCopy shouldPreserveResultSpace]];

  return v12;
}

- (id)copyWithInputType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_21E46AAB8(type);

  return v5;
}

- (id)copyWithSpeechRecognitionHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  selfCopy = self;
  v7 = sub_21E46AC5C(hypothesis);

  return v7;
}

- (id)copyWithServerUtterances:(id)utterances speechRecognitionHypothesis:(id)hypothesis
{
  sub_21E43F008(0, &unk_280C14130);
  sub_21E4DD088();
  selfCopy = self;
  hypothesisCopy = hypothesis;
  inputType = [(SiriSharedUISAEViewModel *)selfCopy inputType];
  conversationTranscriptItems = [(SiriSharedUISAEViewModel *)selfCopy conversationTranscriptItems];
  if (!conversationTranscriptItems)
  {
    sub_21E43F008(0, &qword_280C14128);
    sub_21E4DD088();
    conversationTranscriptItems = sub_21E4DD078();
  }

  v10 = sub_21E4DD078();
  v11 = [(SiriSharedUISAEViewModel *)selfCopy copyWithInputType:inputType conversationTranscriptItems:conversationTranscriptItems serverUtterances:v10 speechRecognitionHypothesis:hypothesisCopy shouldPreserveResultSpace:[(SiriSharedUISAEViewModel *)selfCopy shouldPreserveResultSpace]];

  return v11;
}

- (id)copyWithUserUtterance:(id)utterance
{
  utteranceCopy = utterance;
  selfCopy = self;
  v6 = sub_21E46B134(utteranceCopy);

  return v6;
}

@end