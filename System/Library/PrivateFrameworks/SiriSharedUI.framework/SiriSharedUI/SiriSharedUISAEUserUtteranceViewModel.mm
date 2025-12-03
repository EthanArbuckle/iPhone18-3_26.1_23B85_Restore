@interface SiriSharedUISAEUserUtteranceViewModel
- (BOOL)shouldShow;
- (NSArray)asrAlternatives;
- (SRUIFSpeechRecognitionHypothesis)speech;
- (SiriSharedUISAEUserUtteranceViewModel)init;
- (SiriSharedUISAEUserUtteranceViewModel)initWithSpeech:(id)speech asrAlternatives:(id)alternatives latencySummary:(id)summary shouldShow:(BOOL)show taskIdentifier:(id)identifier;
- (void)setAsrAlternatives:(id)alternatives;
- (void)setShouldShow:(BOOL)show;
- (void)setSpeech:(id)speech;
@end

@implementation SiriSharedUISAEUserUtteranceViewModel

- (SRUIFSpeechRecognitionHypothesis)speech
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSpeech:(id)speech
{
  v5 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = speech;
  speechCopy = speech;
}

- (NSArray)asrAlternatives
{
  swift_beginAccess();

  v2 = sub_21E4DD078();

  return v2;
}

- (void)setAsrAlternatives:(id)alternatives
{
  v4 = sub_21E4DD088();
  v5 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_asrAlternatives;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)shouldShow
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShow:(BOOL)show
{
  v5 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow;
  swift_beginAccess();
  *(self + v5) = show;
}

- (SiriSharedUISAEUserUtteranceViewModel)initWithSpeech:(id)speech asrAlternatives:(id)alternatives latencySummary:(id)summary shouldShow:(BOOL)show taskIdentifier:(id)identifier
{
  v11 = sub_21E4DD088();
  if (!summary)
  {
    v13 = 0;
    if (identifier)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  summary = sub_21E4DCF78();
  v13 = v12;
  if (!identifier)
  {
    goto LABEL_5;
  }

LABEL_3:
  identifier = sub_21E4DCF78();
  v15 = v14;
LABEL_6:
  speechCopy = speech;
  v17 = sub_21E460008(speech, v11, summary, v13, show, identifier, v15);

  return v17;
}

- (SiriSharedUISAEUserUtteranceViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end