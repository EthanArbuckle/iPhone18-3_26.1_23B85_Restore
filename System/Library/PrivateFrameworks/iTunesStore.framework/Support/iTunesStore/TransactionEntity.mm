@interface TransactionEntity
- (int64_t)_typeForDownload:(id)a3;
@end

@implementation TransactionEntity

- (int64_t)_typeForDownload:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForProperty:@"kind"];
  if ([v4 isEqualToString:SSDownloadKindSoftwareApplication])
  {
    v5 = [v3 valueForProperty:@"is_automatic"];
    v6 = [v3 valueForProperty:@"is_restore"];
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