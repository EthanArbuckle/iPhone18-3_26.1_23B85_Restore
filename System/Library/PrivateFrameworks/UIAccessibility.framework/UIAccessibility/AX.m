@interface AX
@end

@implementation AX

void __AX_USING_LEGACY_LOADER_block_invoke()
{
  v0 = [MEMORY[0x1E6989890] sharedInstance];
  AX_USING_LEGACY_LOADER__UsesLegacyLoader = [v0 useNewAXBundleLoader] ^ 1;
}

@end