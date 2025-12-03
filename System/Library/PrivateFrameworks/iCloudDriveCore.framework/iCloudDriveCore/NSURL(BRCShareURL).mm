@interface NSURL(BRCShareURL)
- (id)brc_applicationBundleID;
- (id)brc_applicationContainerID;
- (id)brc_applicationName;
- (void)brc_iWorkPathExtensions;
@end

@implementation NSURL(BRCShareURL)

- (id)brc_applicationName
{
  path = [self path];
  pathComponents = [path pathComponents];

  if ([pathComponents count] >= 2)
  {
    v4 = [pathComponents objectAtIndexedSubscript:1];
    stringByRemovingPercentEncoding = [v4 stringByRemovingPercentEncoding];
    lowercaseString = [stringByRemovingPercentEncoding lowercaseString];

    if (([lowercaseString isEqualToString:@"pages"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"keynote") & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"numbers"))
    {
      capitalizedString = [lowercaseString capitalizedString];
    }

    else
    {
      capitalizedString = 0;
    }
  }

  else
  {
    capitalizedString = 0;
  }

  return capitalizedString;
}

- (id)brc_applicationBundleID
{
  v1 = MEMORY[0x277CCACA8];
  brc_applicationName = [self brc_applicationName];
  v3 = [v1 brc_applicationBundleIDForExtension:brc_applicationName];

  return v3;
}

- (id)brc_applicationContainerID
{
  v1 = MEMORY[0x277CCACA8];
  brc_applicationName = [self brc_applicationName];
  v3 = [v1 brc_applicationContainerIDForExtension:brc_applicationName];

  return v3;
}

- (void)brc_iWorkPathExtensions
{
  brc_applicationName = [self brc_applicationName];
  lowercaseString = [brc_applicationName lowercaseString];
  v3 = [lowercaseString isEqualToString:@"pages"];

  if (v3)
  {
    v4 = &unk_2837B0C88;
  }

  else
  {
    lowercaseString2 = [brc_applicationName lowercaseString];
    v6 = [lowercaseString2 isEqualToString:@"keynote"];

    if (v6)
    {
      v4 = &unk_2837B0CA0;
    }

    else
    {
      lowercaseString3 = [brc_applicationName lowercaseString];
      v8 = [lowercaseString3 isEqualToString:@"numbers"];

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