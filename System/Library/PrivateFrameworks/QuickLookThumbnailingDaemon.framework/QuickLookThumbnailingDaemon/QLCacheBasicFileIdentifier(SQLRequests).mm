@interface QLCacheBasicFileIdentifier(SQLRequests)
+ (uint64_t)removeFromDatabase:()SQLRequests fileWithCacheId:;
- (uint64_t)statementToFindCacheIdInDatabase:()SQLRequests;
- (void)bindInFindCacheIdStatement:()SQLRequests database:startingAtIndex:gettingNextIndex:;
@end

@implementation QLCacheBasicFileIdentifier(SQLRequests)

- (void)bindInFindCacheIdStatement:()SQLRequests database:startingAtIndex:gettingNextIndex:
{
  v10 = a4;
  [v10 bindUnsignedLongLong:objc_msgSend(self atIndex:"fileId") inStatement:{a5, a3}];

  if (a6)
  {
    *a6 = a5 + 1;
  }
}

- (uint64_t)statementToFindCacheIdInDatabase:()SQLRequests
{
  v4 = a3;
  v5 = [v4 prepareStatement:{"SELECT rowid, version FROM basic_files WHERE fileId=?"}];
  if (v5)
  {
    [v4 bindUnsignedLongLong:objc_msgSend(self atIndex:"fileId") inStatement:{1, v5}];
  }

  return v5;
}

+ (uint64_t)removeFromDatabase:()SQLRequests fileWithCacheId:
{
  v5 = a3;
  v6 = [v5 prepareStatement:"DELETE FROM basic_files WHERE rowid=?"];
  v10 = v6;
  if (v6)
  {
    v7 = v6;
    [v5 bindUnsignedLongLong:a4 & 0x7FFFFFFFFFFFFFFFLL atIndex:1 inStatement:v6];
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