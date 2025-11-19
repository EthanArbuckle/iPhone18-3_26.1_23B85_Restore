@interface LTSpeechTranslationResultsBuffer
@end

@implementation LTSpeechTranslationResultsBuffer

void __50___LTSpeechTranslationResultsBuffer_stopBuffering__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 delegate];
  [v5 speechRecognitionResult:v4];
}

@end