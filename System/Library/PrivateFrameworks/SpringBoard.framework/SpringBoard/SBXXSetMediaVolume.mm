@interface SBXXSetMediaVolume
@end

@implementation SBXXSetMediaVolume

void ___SBXXSetMediaVolume_block_invoke(uint64_t a1)
{
  v3 = [SBApp volumeControl];
  LODWORD(v2) = *(a1 + 32);
  [v3 _setMediaVolumeForIAP:v2];
}

@end