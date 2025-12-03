@interface NSString(MFDirectoryPathUtils)
- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils;
- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils;
@end

@implementation NSString(MFDirectoryPathUtils)

- (uint64_t)mf_makeDirectoryWithMode:()MFDirectoryPathUtils
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager mf_makeCompletePath:self mode:a3];

  return v6;
}

- (uint64_t)mf_isSubdirectoryOfPath:()MFDirectoryPathUtils
{
  v4 = a3;
  if (([v4 hasSuffix:@"/"] & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"/"];

    v4 = v5;
  }

  v6 = [self hasPrefix:v4];

  return v6;
}

@end