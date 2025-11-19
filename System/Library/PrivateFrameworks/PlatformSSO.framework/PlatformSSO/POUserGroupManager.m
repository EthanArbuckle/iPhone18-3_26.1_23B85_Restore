@interface POUserGroupManager
- (BOOL)removeUserWithName:(id)a3 withError:(id *)a4;
- (BOOL)saveUsers_locked:(id)a3 withError:(id *)a4;
- (POUserGroupManager)initWithFilePath:(id)a3;
- (id)_nextAvailableUserId:(id)a3;
- (id)createOrUpdateUser:(id)a3 withError:(id *)a4;
- (id)findUser:(id)a3 withError:(id *)a4;
- (id)getAllUsersWithError:(id *)a3;
- (id)loadUsers_lockedWithError:(id *)a3;
@end

@implementation POUserGroupManager

- (POUserGroupManager)initWithFilePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = POUserGroupManager;
  v6 = [(POUserGroupManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, a3);
  }

  return v7;
}

- (id)getAllUsersWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(POUserGroupManager *)v4 loadUsers_lockedWithError:a3];
  v6 = [v5 copy];

  objc_sync_exit(v4);

  return v6;
}

- (id)findUser:(id)a3 withError:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POUserGroupManager findUser:withError:];
  }

  v8 = self;
  objc_sync_enter(v8);
  [(POUserGroupManager *)v8 loadUsers_lockedWithError:a4];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 loginUserName];
        if ([v14 isEqualToString:v6])
        {

LABEL_15:
          v17 = v13;
          goto LABEL_16;
        }

        v15 = [v13 uniqueIdpIdentifier];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          goto LABEL_15;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v17 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  objc_sync_exit(v8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)createOrUpdateUser:(id)a3 withError:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v6 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(POUserGroupManager *)v51 createOrUpdateUser:v6 withError:?];
  }

  v7 = self;
  objc_sync_enter(v7);
  v44 = v7;
  v8 = [(POUserGroupManager *)v7 loadUsers_lockedWithError:a4];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v13)
  {
    v47 = *v55;
LABEL_8:
    v46 = v13;
    v14 = 0;
    while (1)
    {
      if (*v55 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v54 + 1) + 8 * v14);
      v50 = [v15 loginUserName];
      v49 = [v51 loginUserName];
      if ([v50 isEqualToString:v49])
      {
        break;
      }

      v16 = [v15 generatedUUID];
      v17 = [v51 generatedUUID];
      if ([v16 isEqualToString:v17])
      {
        goto LABEL_22;
      }

      v18 = [v15 uniqueIdpIdentifier];
      v8 = [v51 uniqueIdpIdentifier];
      if ([v18 isEqualToString:v8])
      {

LABEL_22:
        break;
      }

      v19 = [v15 altSecurityIdentity];
      if (v19)
      {
        v20 = [v15 altSecurityIdentity];
        v21 = [v51 altSecurityIdentity];
        v4 = [v20 isEqualToString:v21];

        if (v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      if (v46 == ++v14)
      {
        v13 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

LABEL_24:
    v22 = v15;

    if (!v22)
    {
      goto LABEL_26;
    }

    v23 = [v22 mutableCopy];
    v24 = 0;
  }

  else
  {
LABEL_20:

LABEL_26:
    v23 = objc_alloc_init(POMutableUser);
    v22 = 0;
    v24 = 1;
  }

  v25 = [v51 loginUserName];
  [(POMutableUser *)v23 setLoginUserName:v25];

  v26 = [(POUser *)v23 generatedUUID];
  v27 = v26;
  if (v26)
  {
    v28 = 0;
    v29 = v26;
  }

  else
  {
    v30 = [v51 generatedUUID];
    v8 = v30;
    if (v30)
    {
      v28 = 0;
      v29 = v30;
    }

    else
    {
      v4 = [MEMORY[0x277CCAD78] UUID];
      v29 = [v4 UUIDString];
      v8 = 0;
      v28 = 1;
    }
  }

  [(POMutableUser *)v23 setGeneratedUUID:v29];
  if (v28)
  {
  }

  if (!v27)
  {
  }

  v31 = [v51 uniqueIdpIdentifier];
  [(POMutableUser *)v23 setUniqueIdpIdentifier:v31];

  v32 = [v51 altSecurityIdentity];
  [(POMutableUser *)v23 setAltSecurityIdentity:v32];

  v33 = [v51 uid];
  v34 = v33;
  if (!v33)
  {
    v34 = [(POUserGroupManager *)v44 _nextAvailableUserId:obj];
  }

  [(POMutableUser *)v23 setUid:v34];
  if (!v33)
  {
  }

  if ((v24 & 1) == 0)
  {
    [obj removeObject:v22];
  }

  v35 = [(POUser *)v23 copy];
  [obj addObject:v35];

  if ([(POUserGroupManager *)v44 saveUsers_locked:obj withError:a4])
  {
    v36 = PO_LOG_POUserGroupManager();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [(POUser *)v23 generatedUUID];
      [(POUserGroupManager *)v37 createOrUpdateUser:buf withError:v36];
    }

    v38 = v23;
  }

  else
  {
    if (a4)
    {
      v39 = *a4;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __51__POUserGroupManager_createOrUpdateUser_withError___block_invoke;
      v52[3] = &unk_279A3A088;
      v40 = v39;
      v53 = v40;
      v41 = __51__POUserGroupManager_createOrUpdateUser_withError___block_invoke(v52);
      *a4 = v41;
    }

    v38 = 0;
  }

  objc_sync_exit(v44);
  v42 = *MEMORY[0x277D85DE8];

  return v38;
}

id __51__POUserGroupManager_createOrUpdateUser_withError___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to create new create or update user."];
  v2 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (id)_nextAvailableUserId:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 9999;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 uid];

        if (v10)
        {
          v11 = [v9 uid];
          v12 = [v11 intValue];

          if (v12 > v7)
          {
            v7 = v12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    v13 = (v7 + 1);
  }

  else
  {
    v13 = 10000;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v15 = [v14 stringValue];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)removeUserWithName:(id)a3 withError:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POUserGroupManager removeUserWithName:withError:];
  }

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(POUserGroupManager *)v7 loadUsers_lockedWithError:a4];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v12 copy];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [v17 loginUserName];
        v19 = [v18 isEqualToString:v5];

        if (v19)
        {
          [v12 removeObject:v17];
          goto LABEL_16;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  [(POUserGroupManager *)v7 saveUsers_locked:v12 withError:a4];
  objc_sync_exit(v7);

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)loadUsers_lockedWithError:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v4 = [(POUserGroupManager *)self filePath];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.PlatformSSO.users.txt"];

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  if (v6)
  {
    v27 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v27];
    v8 = v27;
    v9 = v8;
    if (v7)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v20 = v9;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(_POJWTBodyBase *)[POUser alloc] initWithDictionary:*(*(&v21 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v28 count:16];
        }

        while (v13);
        v9 = v20;
      }
    }

    else
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __48__POUserGroupManager_loadUsers_lockedWithError___block_invoke;
      v25[3] = &unk_279A3A088;
      v26 = v8;
      v17 = __48__POUserGroupManager_loadUsers_lockedWithError___block_invoke(v25);
      if (a3)
      {
        v17 = v17;
        *a3 = v17;
      }

      v10 = 0;
      v11 = v26;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

id __48__POUserGroupManager_loadUsers_lockedWithError___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to load users"];
  v2 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)saveUsers_locked:(id)a3 withError:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(POUserGroupManager *)self filePath];
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.PlatformSSO.users.txt"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v32 + 1) + 8 * i) allData];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v31 = 0;
  v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:3 error:&v31];
  v17 = v31;
  v18 = v17;
  if (!v16)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __49__POUserGroupManager_saveUsers_locked_withError___block_invoke;
    v29[3] = &unk_279A3A088;
    v22 = &v30;
    v20 = v17;
    v30 = v20;
    v23 = __49__POUserGroupManager_saveUsers_locked_withError___block_invoke(v29);
    if (!a4)
    {
LABEL_15:

      v21 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v23 = v23;
    *a4 = v23;
    goto LABEL_15;
  }

  v28 = v17;
  v19 = [v16 writeToURL:v8 options:268435457 error:&v28];
  v20 = v28;

  if ((v19 & 1) == 0)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__POUserGroupManager_saveUsers_locked_withError___block_invoke_21;
    v26[3] = &unk_279A3A088;
    v22 = &v27;
    v20 = v20;
    v27 = v20;
    v23 = __49__POUserGroupManager_saveUsers_locked_withError___block_invoke_21(v26);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v21 = 1;
LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

id __49__POUserGroupManager_saveUsers_locked_withError___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to serialize users"];
  v2 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

id __49__POUserGroupManager_saveUsers_locked_withError___block_invoke_21(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"failed to write users to disk"];
  v2 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)findUser:withError:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25E831000, v0, v1, "%s name=%{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createOrUpdateUser:(NSObject *)a3 withError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 allData];
  v7 = [a1 uniqueIdpIdentifier];
  v9 = 136315906;
  v10 = "[POUserGroupManager createOrUpdateUser:withError:]";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 2112;
  v16 = a2;
  _os_log_debug_impl(&dword_25E831000, a3, OS_LOG_TYPE_DEBUG, "%s user=%{public}@, uniqueIdentifier=%{public}@, on %@", &v9, 0x2Au);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)createOrUpdateUser:(os_log_t)log withError:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25E831000, log, OS_LOG_TYPE_DEBUG, "New user created: %{public}@", buf, 0xCu);
}

- (void)removeUserWithName:withError:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_25E831000, v0, v1, "%s name=%{public}@ on %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end