@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)l;
+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)l
{
  v8 = 0;
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  path = [lCopy path];

  [defaultManager fileExistsAtPath:path isDirectory:&v8];
  return v8;
}

+ (id)_stripBundlePath:(id)path entryPath:(id)entryPath
{
  entryPathCopy = entryPath;
  path = [path path];
  v7 = [path length];
  v8 = [path hasSuffix:@"/"] ^ 1;
  path2 = [entryPathCopy path];

  v10 = [path2 substringFromIndex:v7 + v8];

  return v10;
}

@end