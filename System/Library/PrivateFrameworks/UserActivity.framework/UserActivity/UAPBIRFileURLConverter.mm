@interface UAPBIRFileURLConverter
+ (void)registerConverter;
@end

@implementation UAPBIRFileURLConverter

+ (void)registerConverter
{
  v3 = +[UASharedPasteboardIRManager sharedIRManager];
  [v3 registerIRHandlerClass:self forType:@"public.file-url"];
}

@end