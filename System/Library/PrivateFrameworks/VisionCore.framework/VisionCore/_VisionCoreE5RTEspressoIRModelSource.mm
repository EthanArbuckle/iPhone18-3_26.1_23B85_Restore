@interface _VisionCoreE5RTEspressoIRModelSource
+ (BOOL)isModelSourceURL:(id)l;
@end

@implementation _VisionCoreE5RTEspressoIRModelSource

+ (BOOL)isModelSourceURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    lastPathComponent = [lCopy lastPathComponent];
    v5 = [lastPathComponent hasSuffix:@".espresso.net"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end