@interface SiriSharedUISAEUserUtteranceViewModel
- (BOOL)shouldShow;
- (NSArray)asrAlternatives;
- (SRUIFSpeechRecognitionHypothesis)speech;
- (SiriSharedUISAEUserUtteranceViewModel)init;
- (SiriSharedUISAEUserUtteranceViewModel)initWithSpeech:(id)a3 asrAlternatives:(id)a4 latencySummary:(id)a5 shouldShow:(BOOL)a6 taskIdentifier:(id)a7;
- (void)setAsrAlternatives:(id)a3;
- (void)setShouldShow:(BOOL)a3;
- (void)setSpeech:(id)a3;
@end

@implementation SiriSharedUISAEUserUtteranceViewModel

- (SRUIFSpeechRecognitionHypothesis)speech
{
  v3 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSpeech:(id)a3
{
  v5 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_speech;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSArray)asrAlternatives
{
  swift_beginAccess();

  v2 = sub_21E4DD078();

  return v2;
}

- (void)setAsrAlternatives:(id)a3
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

- (void)setShouldShow:(BOOL)a3
{
  v5 = OBJC_IVAR___SiriSharedUISAEUserUtteranceViewModel_shouldShow;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (SiriSharedUISAEUserUtteranceViewModel)initWithSpeech:(id)a3 asrAlternatives:(id)a4 latencySummary:(id)a5 shouldShow:(BOOL)a6 taskIdentifier:(id)a7
{
  v11 = sub_21E4DD088();
  if (!a5)
  {
    v13 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  a5 = sub_21E4DCF78();
  v13 = v12;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  a7 = sub_21E4DCF78();
  v15 = v14;
LABEL_6:
  v16 = a3;
  v17 = sub_21E460008(a3, v11, a5, v13, a6, a7, v15);

  return v17;
}

- (SiriSharedUISAEUserUtteranceViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end