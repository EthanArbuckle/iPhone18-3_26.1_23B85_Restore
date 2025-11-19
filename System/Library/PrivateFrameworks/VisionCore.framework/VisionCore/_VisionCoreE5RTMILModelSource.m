@interface _VisionCoreE5RTMILModelSource
+ (BOOL)isModelSourceURL:(id)a3;
@end

@implementation _VisionCoreE5RTMILModelSource

+ (BOOL)isModelSourceURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 pathExtension];
    v6 = [v5 isEqualToString:@"mil"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end