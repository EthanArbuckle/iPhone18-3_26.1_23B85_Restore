@interface LTSpeechActivityDetector
@end

@implementation LTSpeechActivityDetector

void __48___LTSpeechActivityDetector_addSpeechAudioData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length] >> 1;
  v3 = objc_alloc(MEMORY[0x277CB83C8]);
  v4 = [*(a1 + 40) nativeAudioFormat];
  v5 = [v3 initWithPCMFormat:v4 frameCapacity:v2];

  [v5 setFrameLength:v2];
  memcpy(*[v5 int16ChannelData], objc_msgSend(*(a1 + 32), "bytes"), objc_msgSend(*(a1 + 32), "length"));
  [*(*(a1 + 40) + 16) analyzeAudioBuffer:v5 atAudioFramePosition:*(*(a1 + 40) + 24)];
  *(*(a1 + 40) + 24) += v2;
}

@end