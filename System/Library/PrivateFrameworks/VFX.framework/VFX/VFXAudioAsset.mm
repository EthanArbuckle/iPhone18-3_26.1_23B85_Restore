@interface VFXAudioAsset
- (void)didDetachFromWorld:(id)a3;
@end

@implementation VFXAudioAsset

- (void)didDetachFromWorld:(id)a3
{
  v6 = objc_msgSend_scene(a3, a2, a3, v3);

  MEMORY[0x1EEE66B58](v6, sel_willRemoveAudioAsset_fromWorld_, self, a3);
}

@end