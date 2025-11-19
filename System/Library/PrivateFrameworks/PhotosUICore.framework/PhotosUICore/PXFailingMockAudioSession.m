@interface PXFailingMockAudioSession
@end

@implementation PXFailingMockAudioSession

void __34__PXFailingMockAudioSession__fail__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setStatus:4];
  v3 = [MEMORY[0x1E696ABC0] px_audioSessionErrorWithCode:1];
  [v2 setError:v3];
}

@end