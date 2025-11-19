@interface VUIPlistMediaItemEntityTypesOperation
- (VUIPlistMediaItemEntityTypesOperation)init;
- (VUIPlistMediaItemEntityTypesOperation)initWithDatabase:(id)a3;
- (void)executionDidBegin;
@end

@implementation VUIPlistMediaItemEntityTypesOperation

- (VUIPlistMediaItemEntityTypesOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIPlistMediaItemEntityTypesOperation)initWithDatabase:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"database"}];
  }

  v9.receiver = self;
  v9.super_class = VUIPlistMediaItemEntityTypesOperation;
  v6 = [(VUIPlistMediaItemEntityTypesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
  }

  return v7;
}

- (void)executionDidBegin
{
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v4 = [(VUIPlistMediaItemEntityTypesOperation *)self database];
  v5 = [v4 episodes];
  if ([v5 count])
  {
    v6 = +[VUIMediaEntityType episode];
    [v3 addObject:v6];

    [v19 addObjectsFromArray:v5];
  }

  v7 = [v4 homeVideos];
  if ([v7 count])
  {
    v8 = +[VUIMediaEntityType homeVideo];
    [v3 addObject:v8];

    [v19 addObjectsFromArray:v7];
  }

  v9 = [v4 movies];
  if ([v9 count])
  {
    v10 = +[VUIMediaEntityType movie];
    [v3 addObject:v10];

    [v19 addObjectsFromArray:v9];
  }

  v11 = [v4 movieRentals];
  if ([v11 count])
  {
    v12 = +[VUIMediaEntityType movieRental];
    [v3 addObject:v12];

    [v19 addObjectsFromArray:v11];
  }

  v13 = +[VUIMediaLibraryUtilities mediaItemEntityTypesSortComparator];
  [v3 sortUsingComparator:v13];

  v14 = [MEMORY[0x1E696AE18] vui_equalPredicateWithKeyPath:@"isLocal" value:MEMORY[0x1E695E118]];
  v15 = [v19 filteredArrayUsingPredicate:v14];
  v16 = [v15 count] != 0;
  v17 = objc_alloc_init(VUIMediaItemEntityTypesFetchResponse);
  [(VUIMediaItemEntityTypesFetchResponse *)v17 setMediaItemEntityTypes:v3];
  [(VUIMediaItemEntityTypesFetchResponse *)v17 setLocalMediaItemsAvailable:v16];
  [(VUIPlistMediaItemEntityTypesOperation *)self setResponse:v17];
  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

@end