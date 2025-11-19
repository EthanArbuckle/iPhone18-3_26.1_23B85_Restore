@interface _VisionCoreE5RTCompiledMLModelSource
+ (BOOL)isModelSourceURL:(id)a3;
- (id)E5ModelFileURL;
@end

@implementation _VisionCoreE5RTCompiledMLModelSource

+ (BOOL)isModelSourceURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 pathExtension];
    v6 = [v5 isEqualToString:@"mlmodelc"];
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