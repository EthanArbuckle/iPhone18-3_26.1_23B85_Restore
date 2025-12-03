@interface UAPBIRSandboxExtConverter
+ (void)registerConverter;
@end

@implementation UAPBIRSandboxExtConverter

+ (void)registerConverter
{
  v3 = +[UASharedPasteboardIRManager sharedIRManager];
  [v3 registerIRHandlerClass:self forType:@"com.apple.security.sandbox-extension-dict"];
}

@end