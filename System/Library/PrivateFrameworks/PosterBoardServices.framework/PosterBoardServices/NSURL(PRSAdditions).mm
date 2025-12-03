@interface NSURL(PRSAdditions)
- (BOOL)prs_isPosterSnapshot;
@end

@implementation NSURL(PRSAdditions)

- (BOOL)prs_isPosterSnapshot
{
  lastPathComponent = [self lastPathComponent];
  if ([lastPathComponent hasPrefix:@"SNAPSHOT"])
  {
    pathExtension = [lastPathComponent pathExtension];
    if ([pathExtension caseInsensitiveCompare:@"atx"])
    {
      v3 = [pathExtension caseInsensitiveCompare:@"png"] == 0;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end