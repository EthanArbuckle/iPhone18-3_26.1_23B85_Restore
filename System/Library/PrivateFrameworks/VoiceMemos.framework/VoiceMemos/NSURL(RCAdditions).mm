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
  lastPathComponent = [self lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v6];

  v11 = [stringByDeletingPathExtension stringByAppendingString:v10];

  uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
  v13 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v11];

  return v13;
}

- (id)rc_URLByAppendingStringToLastComponentBasename:()RCAdditions
{
  v4 = a3;
  lastPathComponent = [self lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v7 = [stringByDeletingPathExtension stringByAppendingString:v4];

  pathExtension = [self pathExtension];
  v9 = [v7 stringByAppendingPathExtension:pathExtension];

  uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
  v11 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];

  return v11;
}

- (id)rc_URLByReplacingPathExtensionWithExtension:()RCAdditions
{
  v4 = a3;
  uRLByDeletingPathExtension = [self URLByDeletingPathExtension];
  v6 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v4];

  return v6;
}

- (id)rc_URLByStandardizingResolvedPath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v4 = [defaultManager fileExistsAtPath:path isDirectory:0];

  if (v4)
  {
    uRLByResolvingSymlinksInPath = [self URLByResolvingSymlinksInPath];
    uRLByStandardizingPath = [uRLByResolvingSymlinksInPath URLByStandardizingPath];
  }

  else
  {
    uRLByResolvingSymlinksInPath = [self lastPathComponent];
    uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
    uRLByResolvingSymlinksInPath2 = [uRLByDeletingLastPathComponent URLByResolvingSymlinksInPath];
    uRLByStandardizingPath2 = [uRLByResolvingSymlinksInPath2 URLByStandardizingPath];
    uRLByStandardizingPath = [uRLByStandardizingPath2 URLByAppendingPathComponent:uRLByResolvingSymlinksInPath];
  }

  return uRLByStandardizingPath;
}

@end