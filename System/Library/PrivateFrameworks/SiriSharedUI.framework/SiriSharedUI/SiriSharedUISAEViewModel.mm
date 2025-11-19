@interface SiriSharedUISAEViewModel
- (SiriSharedUISAEViewModel)initWithInputType:(int64_t)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 userUtterance:(id)a6 shouldPreserveResultSpace:(BOOL)a7;
- (id)copyWithConversationTranscriptItems:(id)a3 serverUtterances:(id)a4 speechRecognitionHypothesis:(id)a5;
- (id)copyWithInputType:(int64_t)a3;
- (id)copyWithInputType:(int64_t)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 speechRecognitionHypothesis:(id)a6 shouldPreserveResultSpace:(BOOL)a7;
- (id)copyWithServerUtterances:(id)a3 speechRecognitionHypothesis:(id)a4;
- (id)copyWithSpeechRecognitionHypothesis:(id)a3;
- (id)copyWithUserUtterance:(id)a3;
@end

@implementation SiriSharedUISAEViewModel

- (SiriSharedUISAEViewModel)initWithInputType:(int64_t)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 userUtterance:(id)a6 shouldPreserveResultSpace:(BOOL)a7
{
  sub_21E43F008(0, &qword_280C14128);
  v11 = sub_21E4DD088();
  sub_21E43F008(0, &unk_280C14130);
  v12 = sub_21E4DD088();
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_inputType) = a3;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_conversationTranscriptItems) = v11;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_serverUtterances) = v12;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_userUtterance) = a6;
  *(self + OBJC_IVAR___SiriSharedUISAEViewModel_shouldPreserveResultSpace) = a7;
  v15.receiver = self;
  v15.super_class = SiriSharedUISAEViewModel;
  v13 = a6;
  return [(SiriSharedUISAEViewModel *)&v15 init];
}

- (id)copyWithInputType:(int64_t)a3 conversationTranscriptItems:(id)a4 serverUtterances:(id)a5 speechRecognitionHypothesis:(id)a6 shouldPreserveResultSpace:(BOOL)a7
{
  sub_21E43F008(0, &qword_280C14128);
  v11 = sub_21E4DD088();
  sub_21E43F008(0, &unk_280C14130);
  v12 = sub_21E4DD088();
  v13 = a6;
  v14 = self;
  v15 = sub_21E46A654(a3, v11, v12, a6, a7);

  return v15;
}

- (id)copyWithConversationTranscriptItems:(id)a3 serverUtterances:(id)a4 speechRecognitionHypothesis:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = [(SiriSharedUISAEViewModel *)v11 copyWithInputType:[(SiriSharedUISAEViewModel *)v11 inputType] conversationTranscriptItems:v8 serverUtterances:v9 speechRecognitionHypothesis:v10 shouldPreserveResultSpace:[(SiriSharedUISAEViewModel *)v11 shouldPreserveResultSpace]];

  return v12;
}

- (id)copyWithInputType:(int64_t)a3
{
  v4 = self;
  v5 = sub_21E46AAB8(a3);

  return v5;
}

- (id)copyWithSpeechRecognitionHypothesis:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_21E46AC5C(a3);

  return v7;
}

- (id)copyWithServerUtterances:(id)a3 speechRecognitionHypothesis:(id)a4
{
  sub_21E43F008(0, &unk_280C14130);
  sub_21E4DD088();
  v6 = self;
  v7 = a4;
  v8 = [(SiriSharedUISAEViewModel *)v6 inputType];
  v9 = [(SiriSharedUISAEViewModel *)v6 conversationTranscriptItems];
  if (!v9)
  {
    sub_21E43F008(0, &qword_280C14128);
    sub_21E4DD088();
    v9 = sub_21E4DD078();
  }

  v10 = sub_21E4DD078();
  v11 = [(SiriSharedUISAEViewModel *)v6 copyWithInputType:v8 conversationTranscriptItems:v9 serverUtterances:v10 speechRecognitionHypothesis:v7 shouldPreserveResultSpace:[(SiriSharedUISAEViewModel *)v6 shouldPreserveResultSpace]];

  return v11;
}

- (id)copyWithUserUtterance:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21E46B134(v4);

  return v6;
}

@end