@interface HoldMusicProvider
- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4;
@end

@implementation HoldMusicProvider

- (void)speechSynthesizer:(id)a3 didStartSpeechUtterance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_1003A12A0(v9, v8, "started speech synthesizer utterance", 36, 0);
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003A10F0();
}

- (void)speechSynthesizer:(id)a3 didCancelSpeechUtterance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  sub_1003A12A0(v9, v8, "canceled speech synthesizer utterance", 37, 1);
}

@end