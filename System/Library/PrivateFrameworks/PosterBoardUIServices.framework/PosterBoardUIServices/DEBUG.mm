@interface DEBUG
@end

@implementation DEBUG

void __DEBUG_RENDERING_MODE_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  DEBUG_RENDERING_MODE___debugRenderingMode = [v0 BOOLForKey:@"PRUIS_DebugRenderingMode"];
}

@end