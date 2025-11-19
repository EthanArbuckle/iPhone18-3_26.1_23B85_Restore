@interface RMSharedLock
+ (id)newSharedLockWithDescription:(id)a3;
- (RMSharedLock)initWithDescription:(id)a3;
- (void)lock;
- (void)performBlockUnderLock:(id)a3;
- (void)unlock;
@end

@implementation RMSharedLock

- (void)unlock
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 lockTitle];
  OUTLINED_FUNCTION_0_5(&dword_1E1168000, v2, v3, "Shared lock %{public}@ has been released", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)newSharedLockWithDescription:(id)a3
{
  v3 = a3;
  v4 = [[RMSharedLock alloc] initWithDescription:v3];

  return v4;
}

- (RMSharedLock)initWithDescription:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RMSharedLock;
  v6 = [(RMSharedLock *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lockTitle, a3);
    v8 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    lock = v7->_lock;
    v7->_lock = v8;
  }

  return v7;
}

- (void)lock
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 lockTitle];
  OUTLINED_FUNCTION_0_5(&dword_1E1168000, v2, v3, "Shared lock %{public}@ has been taken", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)performBlockUnderLock:(id)a3
{
  v4 = a3;
  [(RMSharedLock *)self lock];
  v4[2](v4);

  [(RMSharedLock *)self unlock];
}

@end