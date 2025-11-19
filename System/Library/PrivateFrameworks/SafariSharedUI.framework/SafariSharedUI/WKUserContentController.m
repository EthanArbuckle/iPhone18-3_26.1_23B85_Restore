@interface WKUserContentController
@end

@implementation WKUserContentController

void __77__WKUserContentController_SafariSharedUIExtras__safari_userContentController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);
  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_userContentController]::controller;
  +[WKUserContentController(SafariSharedUIExtras) safari_userContentController]::controller = v0;

  v2 = +[WKUserContentController(SafariSharedUIExtras) safari_userContentController]::controller;

  setUpScriptInjectionIfNecessary(v2);
}

void __89__WKUserContentController_SafariSharedUIExtras__safari_webExtensionUserContentController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);
  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController]::controller;
  +[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController]::controller = v0;

  v2 = +[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController]::controller;

  setUpScriptInjectionIfNecessary(v2);
}

void __92__WKUserContentController_SafariSharedUIExtras__safari_privateBrowsingUserContentController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);
  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController]::controller;
  +[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController]::controller = v0;

  v2 = +[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController]::controller;

  setUpScriptInjectionIfNecessary(v2);
}

void __83__WKUserContentController_SafariSharedUIExtras__safari_readerUserContentController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);
  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController]::controller;
  +[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController]::controller = v0;

  v2 = +[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController]::controller;

  setUpScriptInjectionIfNecessary(v2);
}

void __95__WKUserContentController_SafariSharedUIExtras__safari_readingListFetcherUserContentController__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6985350]);
  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController]::controller;
  +[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController]::controller = v0;

  v2 = +[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController]::controller;

  setUpScriptInjectionIfNecessary(v2);
}

@end