@interface HoldMusicProvider
- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance;
@end

@implementation HoldMusicProvider

- (void)speechSynthesizer:(id)synthesizer didStartSpeechUtterance:(id)utterance
{
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  sub_1003A12A0(selfCopy, v8, "started speech synthesizer utterance", 36, 0);
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  sub_1003A10F0();
}

- (void)speechSynthesizer:(id)synthesizer didCancelSpeechUtterance:(id)utterance
{
  synthesizerCopy = synthesizer;
  utteranceCopy = utterance;
  selfCopy = self;
  sub_1003A12A0(selfCopy, v8, "canceled speech synthesizer utterance", 37, 1);
}

@end