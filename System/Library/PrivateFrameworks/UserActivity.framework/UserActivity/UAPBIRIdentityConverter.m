@interface UAPBIRIdentityConverter
+ (void)registerConverter;
@end

@implementation UAPBIRIdentityConverter

+ (void)registerConverter
{
  v3 = +[UASharedPasteboardIRManager sharedIRManager];
  [v3 registerIRHandlerClass:a1 forType:@"public.data"];
}

@end