@interface _VisionCoreE5RTMILModelSource
+ (BOOL)isModelSourceURL:(id)l;
@end

@implementation _VisionCoreE5RTMILModelSource

+ (BOOL)isModelSourceURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    lastPathComponent = [lCopy lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    v6 = [pathExtension isEqualToString:@"mil"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end