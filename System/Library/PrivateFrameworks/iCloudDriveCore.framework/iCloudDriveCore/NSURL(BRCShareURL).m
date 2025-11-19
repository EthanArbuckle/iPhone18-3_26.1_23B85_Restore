@interface NSURL(BRCShareURL)
- (id)brc_applicationBundleID;
- (id)brc_applicationContainerID;
- (id)brc_applicationName;
- (void)brc_iWorkPathExtensions;
@end

@implementation NSURL(BRCShareURL)

- (id)brc_applicationName
{
  v1 = [a1 path];
  v2 = [v1 pathComponents];

  if ([v2 count] >= 2)
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    v5 = [v4 stringByRemovingPercentEncoding];
    v6 = [v5 lowercaseString];

    if (([v6 isEqualToString:@"pages"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"keynote") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"numbers"))
    {
      v3 = [v6 capitalizedString];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)brc_applicationBundleID
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 brc_applicationName];
  v3 = [v1 brc_applicationBundleIDForExtension:v2];

  return v3;
}

- (id)brc_applicationContainerID
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 brc_applicationName];
  v3 = [v1 brc_applicationContainerIDForExtension:v2];

  return v3;
}

- (void)brc_iWorkPathExtensions
{
  v1 = [a1 brc_applicationName];
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"pages"];

  if (v3)
  {
    v4 = &unk_2837B0C88;
  }

  else
  {
    v5 = [v1 lowercaseString];
    v6 = [v5 isEqualToString:@"keynote"];

    if (v6)
    {
      v4 = &unk_2837B0CA0;
    }

    else
    {
      v7 = [v1 lowercaseString];
      v8 = [v7 isEqualToString:@"numbers"];

      if (v8)
      {
        v4 = &unk_2837B0CB8;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

@end