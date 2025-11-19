@interface PETAggregateStateStorage
+ (id)storageInMemory;
+ (id)storageOnDisk:(id)a3;
- (void)runWithLock:(id)a3;
@end

@implementation PETAggregateStateStorage

- (void)runWithLock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PETAggregateStateStorage_runWithLock___block_invoke;
  v8[3] = &unk_1E86C2820;
  v9 = v5;
  v6 = v5;
  [(PETAggregateStateStorage *)self expand:0 andRunWithLock:v8];
}

+ (id)storageOnDisk:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PETAggregateStateStorage.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = [[PETAggregateStateStorageOnDisk alloc] initWithPath:v5];

  return v6;
}

+ (id)storageInMemory
{
  v2 = objc_opt_new();

  return v2;
}

@end