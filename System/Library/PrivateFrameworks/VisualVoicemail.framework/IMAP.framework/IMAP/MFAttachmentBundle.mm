@interface MFAttachmentBundle
+ (BOOL)isFileBundleURL:(id)a3;
+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4;
@end

@implementation MFAttachmentBundle

+ (BOOL)isFileBundleURL:(id)a3
{
  v8 = 0;
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v4 path];

  [v5 fileExistsAtPath:v6 isDirectory:&v8];
  return v8;
}

+ (id)_stripBundlePath:(id)a3 entryPath:(id)a4
{
  v5 = a4;
  v6 = [a3 path];
  v7 = [v6 length];
  v8 = [v6 hasSuffix:@"/"] ^ 1;
  v9 = [v5 path];

  v10 = [v9 substringFromIndex:v7 + v8];

  return v10;
}

@end