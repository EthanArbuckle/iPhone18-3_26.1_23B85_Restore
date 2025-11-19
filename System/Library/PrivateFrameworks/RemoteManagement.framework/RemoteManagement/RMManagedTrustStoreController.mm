@interface RMManagedTrustStoreController
+ (id)newManagedTrustStoreControllerProtocolForScope:(int64_t)a3 personaID:(id)a4;
- (RMManagedTrustStoreController)initWithScope:(int64_t)a3 personaID:(id)a4;
@end

@implementation RMManagedTrustStoreController

+ (id)newManagedTrustStoreControllerProtocolForScope:(int64_t)a3 personaID:(id)a4
{
  v5 = a4;
  v6 = [[RMManagedTrustStoreController alloc] initWithScope:a3 personaID:v5];

  return v6;
}

- (RMManagedTrustStoreController)initWithScope:(int64_t)a3 personaID:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RMManagedTrustStoreController;
  v8 = [(RMManagedTrustStoreController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = a3 == 1;
    objc_storeStrong(&v8->_personaID, a4);
    v10 = +[RMLog managedTrustStoreController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(RMManagedTrustStoreController *)v7 initWithScope:a3 personaID:v10];
    }
  }

  return v9;
}

- (void)initWithScope:(os_log_t)log personaID:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_debug_impl(&dword_1E1168000, log, OS_LOG_TYPE_DEBUG, "Created with scope: %ld personaID: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end