@interface NSURL(PRSAdditions)
- (BOOL)prs_isPosterSnapshot;
@end

@implementation NSURL(PRSAdditions)

- (BOOL)prs_isPosterSnapshot
{
  v1 = [a1 lastPathComponent];
  if ([v1 hasPrefix:@"SNAPSHOT"])
  {
    v2 = [v1 pathExtension];
    if ([v2 caseInsensitiveCompare:@"atx"])
    {
      v3 = [v2 caseInsensitiveCompare:@"png"] == 0;
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