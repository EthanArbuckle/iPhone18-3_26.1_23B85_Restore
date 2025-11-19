@interface TrimUnregisteredClients
@end

@implementation TrimUnregisteredClients

void ___TrimUnregisteredClients_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = _RegisteredClients();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___TrimUnregisteredClients_block_invoke_2;
  v4[3] = &unk_1E79CDF78;
  v2 = v0;
  v5 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];

  if ([v2 count])
  {
    v3 = _RegisteredClients();
    [v3 removeObjectsForKeys:v2];

    _ArchiveRegisteredClients();
  }
}

void ___TrimUnregisteredClients_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v6 isValid] & 1) == 0)
  {
    v7 = [v6 activityRegistrations];
    v8 = [v7 allKeys];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = _XPCActivityIdentifier(v5, *(*(&v17 + 1) + 8 * v13));
          v15 = v14;
          xpc_activity_unregister([v15 UTF8String]);

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Activity Client: %@ is no longer valid and will be removed.", buf, 0xCu);
    }

    [*(a1 + 32) addObject:v5];
  }
}

@end