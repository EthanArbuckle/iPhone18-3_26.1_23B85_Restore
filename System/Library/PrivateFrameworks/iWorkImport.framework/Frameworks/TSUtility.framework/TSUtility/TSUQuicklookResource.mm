@interface TSUQuicklookResource
+ (id)imagePathForQuicklookResource:(id)resource;
@end

@implementation TSUQuicklookResource

+ (id)imagePathForQuicklookResource:(id)resource
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iwork.iWorkQuickLookGenerator"];
  if (!v4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/iWorkImport.framework"];
    if (!v4)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(@"iWorkQuickLookBundleClass")];
    }
  }

  v5 = v4;
  result = [v4 pathForResource:resource ofType:@"png"];
  if (!result)
  {
    result = [v5 pathForResource:objc_msgSend(resource ofType:{"stringByAppendingString:", @"@2x", @"png"}];
    if (!result)
    {
      v7 = [resource stringByAppendingString:@"@3x"];

      return [v5 pathForResource:v7 ofType:@"png"];
    }
  }

  return result;
}

@end