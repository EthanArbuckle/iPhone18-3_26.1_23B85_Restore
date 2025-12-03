@interface _VisionCoreE5RTCompiledMLModelSource
+ (BOOL)isModelSourceURL:(id)l;
- (id)E5ModelFileURL;
@end

@implementation _VisionCoreE5RTCompiledMLModelSource

+ (BOOL)isModelSourceURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    lastPathComponent = [lCopy lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    v6 = [pathExtension isEqualToString:@"mlmodelc"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)E5ModelFileURL
{
  v2 = [(VisionCoreE5RTModelSource *)self URL];
  v3 = [v2 URLByAppendingPathComponent:@"model.mil"];

  return v3;
}

@end