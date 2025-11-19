@interface AVAudioPCMBuffer
@end

@implementation AVAudioPCMBuffer

void *__49__AVAudioPCMBuffer_RCAdditions__extractChannels___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[5] + 16 * a2;
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 24);
  v5 = a1[6] + 16 * v4;
  *(v3 + 24) = v4 + 1;
  return memcpy(*(v5 + 16), *(v2 + 16), *(v2 + 12));
}

@end