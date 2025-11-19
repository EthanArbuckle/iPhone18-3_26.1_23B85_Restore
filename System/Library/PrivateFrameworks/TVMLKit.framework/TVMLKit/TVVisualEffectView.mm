@interface TVVisualEffectView
@end

@implementation TVVisualEffectView

uint64_t __43___TVVisualEffectView_hostViewDisablements__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = hostViewDisablements_hostViewDisablements;
  hostViewDisablements_hostViewDisablements = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end