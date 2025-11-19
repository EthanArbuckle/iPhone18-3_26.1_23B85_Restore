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
    v6 = [a1 itemID];
    v7 = [v6 providerDomainID];
    [v4 bindObject:v7 atIndex:1 inStatement:v5];

    v8 = [a1 itemID];
    v9 = [v8 identifier];
    [v4 bindObject:v9 atIndex:2 inStatement:v5];
  }

  return v5;
}

- (void)bindInFindCacheIdStatement:()SQLRequests database:startingAtIndex:gettingNextIndex:
{
  v10 = a4;
  v11 = [a1 itemID];
  v12 = [v11 providerDomainID];
  [v10 bindObject:v12 atIndex:a5 inStatement:a3];

  v13 = [a1 itemID];
  v14 = [v13 identifier];
  [v10 bindObject:v14 atIndex:(a5 + 1) inStatement:a3];

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