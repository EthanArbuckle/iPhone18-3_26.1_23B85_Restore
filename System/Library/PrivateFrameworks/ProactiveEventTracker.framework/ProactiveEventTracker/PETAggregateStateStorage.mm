@interface PETAggregateStateStorage
+ (id)storageInMemory;
+ (id)storageOnDisk:(id)disk;
- (void)runWithLock:(id)lock;
@end

@implementation PETAggregateStateStorage

- (void)runWithLock:(id)lock
{
  lockCopy = lock;
  if (!lockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PETAggregateStateStorage_runWithLock___block_invoke;
  v8[3] = &unk_1E86C2820;
  v9 = lockCopy;
  v6 = lockCopy;
  [(PETAggregateStateStorage *)self expand:0 andRunWithLock:v8];
}

+ (id)storageOnDisk:(id)disk
{
  diskCopy = disk;
  if (!diskCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v6 = [[PETAggregateStateStorageOnDisk alloc] initWithPath:diskCopy];

  return v6;
}

+ (id)storageInMemory
{
  v2 = objc_opt_new();

  return v2;
}

@end