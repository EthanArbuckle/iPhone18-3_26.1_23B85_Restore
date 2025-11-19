@interface PLDuplicateDetectorSortKey
+ (id)sortKey:(id)a3 reverse:(BOOL)a4;
@end

@implementation PLDuplicateDetectorSortKey

+ (id)sortKey:(id)a3 reverse:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLDuplicateDetectorPostProcessing.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v8 = objc_alloc_init(PLDuplicateDetectorSortKey);
  [(PLDuplicateDetectorSortKey *)v8 setKey:v7];
  [(PLDuplicateDetectorSortKey *)v8 setReverse:v4];

  return v8;
}

@end