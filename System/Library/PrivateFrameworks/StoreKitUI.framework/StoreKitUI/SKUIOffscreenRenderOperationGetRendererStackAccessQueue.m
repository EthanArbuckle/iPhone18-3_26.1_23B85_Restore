@interface SKUIOffscreenRenderOperationGetRendererStackAccessQueue
@end

@implementation SKUIOffscreenRenderOperationGetRendererStackAccessQueue

uint64_t ___SKUIOffscreenRenderOperationGetRendererStackAccessQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.StoreKitUI.SKUIOffscreenRenderOperation.RendererStackAccessQueue", MEMORY[0x277D85CD8]);
  v1 = _SKUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue;
  _SKUIOffscreenRenderOperationGetRendererStackAccessQueue_sRendererStacAccessQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end