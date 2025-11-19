@interface FBSDisplayMonitor
@end

@implementation FBSDisplayMonitor

uint64_t __65__FBSDisplayMonitor_PosterUIFoundation__pui_sharedDisplayMonitor__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699FB10]);
  v1 = pui_sharedDisplayMonitor_displayMonitor;
  pui_sharedDisplayMonitor_displayMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end