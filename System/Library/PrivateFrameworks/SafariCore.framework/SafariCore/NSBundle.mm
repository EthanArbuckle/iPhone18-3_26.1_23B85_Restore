@interface NSBundle
@end

@implementation NSBundle

void __53__NSBundle_SafariCoreExtras__safari_safariCoreBundle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleForClass:objc_opt_class()];
  v2 = safari_safariCoreBundle_bundle;
  safari_safariCoreBundle_bundle = v1;
}

void __60__NSBundle_SafariCoreExtras__safari_safariInjectedBundleURL__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] safari_safariCoreBundle];
  v1 = [v0 bundleURL];
  v9 = [v1 URLByDeletingLastPathComponent];

  v2 = MEMORY[0x1E696AAE8];
  v3 = [v9 URLByAppendingPathComponent:@"MobileSafari.framework" isDirectory:1];
  v4 = [v2 bundleWithURL:v3];

  if (!v4)
  {
    __60__NSBundle_SafariCoreExtras__safari_safariInjectedBundleURL__block_invoke_cold_1();
  }

  v5 = [v4 builtInPlugInsURL];
  v6 = [v5 URLByAppendingPathComponent:@"Safari.wkbundle" isDirectory:1];
  v7 = [v6 absoluteURL];
  v8 = safari_safariInjectedBundleURL_bundleURL;
  safari_safariInjectedBundleURL_bundleURL = v7;
}

void __60__NSBundle_SafariCoreExtras__safari_safariInjectedBundleURL__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F3064D08];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariShared/SafariShared/SafariCore/FoundationExtras/WBSCoreNSBundleExtras.m"];
  v3 = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "containingBundle", "+[NSBundle(SafariCoreExtras) safari_safariInjectedBundleURL]_block_invoke", v3, 372, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "containingBundle", "+[NSBundle(SafariCoreExtras) safari_safariInjectedBundleURL]_block_invoke", v3, 372, &stru_1F3064D08];
  }

  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1F3069F08.isa, v4, v6);

  abort();
}

@end