@interface TransactionEntity
- (int64_t)_typeForDownload:(id)download;
@end

@implementation TransactionEntity

- (int64_t)_typeForDownload:(id)download
{
  downloadCopy = download;
  v4 = [downloadCopy valueForProperty:@"kind"];
  if ([v4 isEqualToString:SSDownloadKindSoftwareApplication])
  {
    v5 = [downloadCopy valueForProperty:@"is_automatic"];
    v6 = [downloadCopy valueForProperty:@"is_restore"];
    if ([v5 integerValue] == 2)
    {
      v7 = 2;
    }

    else if ([v6 BOOLValue])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end