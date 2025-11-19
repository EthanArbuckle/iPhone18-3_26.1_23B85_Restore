@interface WKUserContentController(SafariSharedUIExtras)
+ (id)safari_privateBrowsingUserContentController;
+ (id)safari_readerUserContentController;
+ (id)safari_readingListFetcherUserContentController;
+ (id)safari_userContentController;
+ (id)safari_webExtensionUserContentController;
@end

@implementation WKUserContentController(SafariSharedUIExtras)

+ (id)safari_userContentController
{
  if (+[WKUserContentController(SafariSharedUIExtras) safari_userContentController]::once != -1)
  {
    +[WKUserContentController(SafariSharedUIExtras) safari_userContentController];
  }

  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_userContentController]::controller;

  return v1;
}

+ (id)safari_webExtensionUserContentController
{
  if (+[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController]::once != -1)
  {
    +[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController];
  }

  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_webExtensionUserContentController]::controller;

  return v1;
}

+ (id)safari_readerUserContentController
{
  if (+[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController]::once != -1)
  {
    +[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController];
  }

  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_readerUserContentController]::controller;

  return v1;
}

+ (id)safari_privateBrowsingUserContentController
{
  if (+[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController]::once != -1)
  {
    +[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController];
  }

  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_privateBrowsingUserContentController]::controller;

  return v1;
}

+ (id)safari_readingListFetcherUserContentController
{
  if (+[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController]::once != -1)
  {
    +[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController];
  }

  v1 = +[WKUserContentController(SafariSharedUIExtras) safari_readingListFetcherUserContentController]::controller;

  return v1;
}

@end