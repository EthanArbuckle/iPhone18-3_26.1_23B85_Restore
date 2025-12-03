@interface RMSharedLock
+ (id)newSharedLockWithDescription:(id)description;
- (RMSharedLock)initWithDescription:(id)description;
- (void)lock;
- (void)performBlockUnderLock:(id)lock;
- (void)unlock;
@end

@implementation RMSharedLock

- (void)unlock
{
  v9 = *MEMORY[0x1E69E9840];
  lockTitle = [self lockTitle];
  OUTLINED_FUNCTION_0_5(&dword_1E1168000, v2, v3, "Shared lock %{public}@ has been released", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)newSharedLockWithDescription:(id)description
{
  descriptionCopy = description;
  v4 = [[RMSharedLock alloc] initWithDescription:descriptionCopy];

  return v4;
}

- (RMSharedLock)initWithDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = RMSharedLock;
  v6 = [(RMSharedLock *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockTitle, description);
    v8 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    lock = v7->_lock;
    v7->_lock = v8;
  }

  return v7;
}

- (void)lock
{
  v9 = *MEMORY[0x1E69E9840];
  lockTitle = [self lockTitle];
  OUTLINED_FUNCTION_0_5(&dword_1E1168000, v2, v3, "Shared lock %{public}@ has been taken", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)performBlockUnderLock:(id)lock
{
  lockCopy = lock;
  [(RMSharedLock *)self lock];
  lockCopy[2](lockCopy);

  [(RMSharedLock *)self unlock];
}

@end