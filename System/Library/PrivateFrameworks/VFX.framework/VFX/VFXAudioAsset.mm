@interface VFXAudioAsset
- (void)didDetachFromWorld:(id)world;
@end

@implementation VFXAudioAsset

- (void)didDetachFromWorld:(id)world
{
  v6 = objc_msgSend_scene(world, a2, world, v3);

  MEMORY[0x1EEE66B58](v6, sel_willRemoveAudioAsset_fromWorld_, self, world);
}

@end