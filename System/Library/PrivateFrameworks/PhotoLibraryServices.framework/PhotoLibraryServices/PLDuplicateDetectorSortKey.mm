@interface PLDuplicateDetectorSortKey
+ (id)sortKey:(id)key reverse:(BOOL)reverse;
@end

@implementation PLDuplicateDetectorSortKey

+ (id)sortKey:(id)key reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  keyCopy = key;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateDetectorPostProcessing.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v8 = objc_alloc_init(PLDuplicateDetectorSortKey);
  [(PLDuplicateDetectorSortKey *)v8 setKey:keyCopy];
  [(PLDuplicateDetectorSortKey *)v8 setReverse:reverseCopy];

  return v8;
}

@end