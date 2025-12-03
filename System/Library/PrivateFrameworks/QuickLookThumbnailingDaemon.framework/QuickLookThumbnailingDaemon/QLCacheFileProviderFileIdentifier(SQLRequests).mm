@interface QLCacheFileProviderFileIdentifier(SQLRequests)
+ (uint64_t)removeFromDatabase:()SQLRequests fileWithCacheId:;
- (uint64_t)statementToFindCacheIdInDatabase:()SQLRequests;
- (void)bindInFindCacheIdStatement:()SQLRequests database:startingAtIndex:gettingNextIndex:;
@end

@implementation QLCacheFileProviderFileIdentifier(SQLRequests)

- (uint64_t)statementToFindCacheIdInDatabase:()SQLRequests
{
  v4 = a3;
  v5 = [v4 prepareStatement:{"SELECT rowid, version FROM provider_files WHERE fileProviderId=? AND itemId=?"}];
  if (v5)
  {
    itemID = [self itemID];
    providerDomainID = [itemID providerDomainID];
    [v4 bindObject:providerDomainID atIndex:1 inStatement:v5];

    itemID2 = [self itemID];
    identifier = [itemID2 identifier];
    [v4 bindObject:identifier atIndex:2 inStatement:v5];
  }

  return v5;
}

- (void)bindInFindCacheIdStatement:()SQLRequests database:startingAtIndex:gettingNextIndex:
{
  v10 = a4;
  itemID = [self itemID];
  providerDomainID = [itemID providerDomainID];
  [v10 bindObject:providerDomainID atIndex:a5 inStatement:a3];

  itemID2 = [self itemID];
  identifier = [itemID2 identifier];
  [v10 bindObject:identifier atIndex:(a5 + 1) inStatement:a3];

  if (a6)
  {
    *a6 = a5 + 2;
  }
}

+ (uint64_t)removeFromDatabase:()SQLRequests fileWithCacheId:
{
  v5 = a3;
  v6 = [v5 prepareStatement:"DELETE FROM provider_files WHERE rowid=?"];
  v10 = v6;
  if (v6)
  {
    v7 = v6;
    [v5 bindUnsignedLongLong:a4 atIndex:1 inStatement:v6];
    v8 = [v5 stepStatement:v7];
    [v5 finalizeStatement:&v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end