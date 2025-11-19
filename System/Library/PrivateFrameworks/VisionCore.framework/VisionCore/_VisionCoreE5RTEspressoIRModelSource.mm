@interface _VisionCoreE5RTEspressoIRModelSource
+ (BOOL)isModelSourceURL:(id)a3;
@end

@implementation _VisionCoreE5RTEspressoIRModelSource

+ (BOOL)isModelSourceURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 hasSuffix:@".espresso.net"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end