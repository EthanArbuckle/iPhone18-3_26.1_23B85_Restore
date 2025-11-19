@interface UINavigationBarTitleRenamer
@end

@implementation UINavigationBarTitleRenamer

void __44___UINavigationBarTitleRenamer_renameServer__block_invoke(uint64_t a1)
{
  if ((_UIApplicationProcessIsOverlayUI() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"_UINavigationBarTitleRenamer.m" lineNumber:36 description:@"A rename server is not available in this process."];
  }

  v2 = objc_alloc_init(_UINavigationBarTitleRenamer);
  v3 = _MergedGlobals_1253;
  _MergedGlobals_1253 = v2;

  *(_MergedGlobals_1253 + 8) |= 1u;
}

uint64_t __54___UINavigationBarTitleRenamer_sessionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sessionIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end