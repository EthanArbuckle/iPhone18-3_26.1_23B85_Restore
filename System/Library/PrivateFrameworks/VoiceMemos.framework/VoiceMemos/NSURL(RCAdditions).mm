@interface NSURL(RCAdditions)
- (id)rc_URLByAppendingStringToLastComponentBasename:()RCAdditions;
- (id)rc_URLByAppendingStringToLastComponentBasename:()RCAdditions replacingPathExtension:;
- (id)rc_URLByReplacingPathExtensionWithExtension:()RCAdditions;
- (id)rc_URLByStandardizingResolvedPath;
@end

@implementation NSURL(RCAdditions)

- (id)rc_URLByAppendingStringToLastComponentBasename:()RCAdditions replacingPathExtension:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v6];

  v11 = [v9 stringByAppendingString:v10];

  v12 = [a1 URLByDeletingLastPathComponent];
  v13 = [v12 URLByAppendingPathComponent:v11];

  return v13;
}

- (id)rc_URLByAppendingStringToLastComponentBasename:()RCAdditions
{
  v4 = a3;
  v5 = [a1 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];
  v7 = [v6 stringByAppendingString:v4];

  v8 = [a1 pathExtension];
  v9 = [v7 stringByAppendingPathExtension:v8];

  v10 = [a1 URLByDeletingLastPathComponent];
  v11 = [v10 URLByAppendingPathComponent:v9];

  return v11;
}

- (id)rc_URLByReplacingPathExtensionWithExtension:()RCAdditions
{
  v4 = a3;
  v5 = [a1 URLByDeletingPathExtension];
  v6 = [v5 URLByAppendingPathExtension:v4];

  return v6;
}

- (id)rc_URLByStandardizingResolvedPath
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  v4 = [v2 fileExistsAtPath:v3 isDirectory:0];

  if (v4)
  {
    v5 = [a1 URLByResolvingSymlinksInPath];
    v6 = [v5 URLByStandardizingPath];
  }

  else
  {
    v5 = [a1 lastPathComponent];
    v7 = [a1 URLByDeletingLastPathComponent];
    v8 = [v7 URLByResolvingSymlinksInPath];
    v9 = [v8 URLByStandardizingPath];
    v6 = [v9 URLByAppendingPathComponent:v5];
  }

  return v6;
}

@end