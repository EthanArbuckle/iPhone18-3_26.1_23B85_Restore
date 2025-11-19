@interface MTLHudIsSideLoadedApp
@end

@implementation MTLHudIsSideLoadedApp

void __MTLHudIsSideLoadedApp_block_invoke(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 appStoreReceiptURL];
  v4 = [v2 path];

  if ([v4 containsString:@"sandboxReceipt"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4 containsString:@"CoreSimulator"];
  }

  MTLHudIsSideLoadedApp___isSideloaded = v3;
}

@end