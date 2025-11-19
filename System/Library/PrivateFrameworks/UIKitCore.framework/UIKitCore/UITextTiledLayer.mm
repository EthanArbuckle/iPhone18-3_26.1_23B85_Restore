@interface UITextTiledLayer
@end

@implementation UITextTiledLayer

void __65___UITextTiledLayer__preparedTileForFrame_mask_opacity_deferred___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _UIQOSProcessingBegin("UITextTiledLayerDefer", 0, 0, 0);
  atomic_store(1u, v2 + 56);
  Current = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x1E695E8D0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65___UITextTiledLayer__preparedTileForFrame_mask_opacity_deferred___block_invoke_2;
  v7[3] = &unk_1E70F32F0;
  v8 = v2;
  v9 = v3;
  v6 = v2;
  CFRunLoopPerformBlock(Current, v5, v7);
  CFRunLoopWakeUp(Current);
}

void __65___UITextTiledLayer__preparedTileForFrame_mask_opacity_deferred___block_invoke_2(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if (v1)
  {
    [*(a1 + 32) setNeedsDisplay];
  }

  _UIQOSProcessingEnd();
}

@end