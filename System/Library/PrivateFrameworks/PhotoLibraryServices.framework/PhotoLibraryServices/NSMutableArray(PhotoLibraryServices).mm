@interface NSMutableArray(PhotoLibraryServices)
- (uint64_t)_pl_insertObject:()PhotoLibraryServices atBinarySearchingInsertionIndexWithComparator:;
- (void)_pl_addNonNilObject:()PhotoLibraryServices;
@end

@implementation NSMutableArray(PhotoLibraryServices)

- (uint64_t)_pl_insertObject:()PhotoLibraryServices atBinarySearchingInsertionIndexWithComparator:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(a1 usingComparator:{"count"), 1024, v6}];

  [a1 insertObject:v7 atIndex:v8];
  return v8;
}

- (void)_pl_addNonNilObject:()PhotoLibraryServices
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end