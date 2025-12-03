@interface POUserGroupManager
- (BOOL)removeUserWithName:(id)name withError:(id *)error;
- (BOOL)saveUsers_locked:(id)users_locked withError:(id *)error;
- (POUserGroupManager)initWithFilePath:(id)path;
- (id)_nextAvailableUserId:(id)id;
- (id)createOrUpdateUser:(id)user withError:(id *)error;
- (id)findUser:(id)user withError:(id *)error;
- (id)getAllUsersWithError:(id *)error;
- (id)loadUsers_lockedWithError:(id *)error;
@end

@implementation POUserGroupManager

- (POUserGroupManager)initWithFilePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = POUserGroupManager;
  v6 = [(POUserGroupManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, path);
  }

  return v7;
}

- (id)getAllUsersWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(POUserGroupManager *)selfCopy loadUsers_lockedWithError:error];
  v6 = [v5 copy];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)findUser:(id)user withError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v7 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [POUserGroupManager findUser:withError:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(POUserGroupManager *)selfCopy loadUsers_lockedWithError:error];
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
        loginUserName = [v13 loginUserName];
        if ([loginUserName isEqualToString:userCopy])
        {

LABEL_15:
          v17 = v13;
          goto LABEL_16;
        }

        uniqueIdpIdentifier = [v13 uniqueIdpIdentifier];
        v16 = [uniqueIdpIdentifier isEqualToString:userCopy];

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

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)createOrUpdateUser:(id)user withError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  userCopy = user;
  v6 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(POUserGroupManager *)userCopy createOrUpdateUser:v6 withError:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v44 = selfCopy;
  uniqueIdpIdentifier2 = [(POUserGroupManager *)selfCopy loadUsers_lockedWithError:error];
  v9 = [uniqueIdpIdentifier2 mutableCopy];
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
      loginUserName = [v15 loginUserName];
      loginUserName2 = [userCopy loginUserName];
      if ([loginUserName isEqualToString:loginUserName2])
      {
        break;
      }

      generatedUUID = [v15 generatedUUID];
      generatedUUID2 = [userCopy generatedUUID];
      if ([generatedUUID isEqualToString:generatedUUID2])
      {
        goto LABEL_22;
      }

      uniqueIdpIdentifier = [v15 uniqueIdpIdentifier];
      uniqueIdpIdentifier2 = [userCopy uniqueIdpIdentifier];
      if ([uniqueIdpIdentifier isEqualToString:uniqueIdpIdentifier2])
      {

LABEL_22:
        break;
      }

      altSecurityIdentity = [v15 altSecurityIdentity];
      if (altSecurityIdentity)
      {
        altSecurityIdentity2 = [v15 altSecurityIdentity];
        altSecurityIdentity3 = [userCopy altSecurityIdentity];
        uUID = [altSecurityIdentity2 isEqualToString:altSecurityIdentity3];

        if (uUID)
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

  loginUserName3 = [userCopy loginUserName];
  [(POMutableUser *)v23 setLoginUserName:loginUserName3];

  generatedUUID3 = [(POUser *)v23 generatedUUID];
  v27 = generatedUUID3;
  if (generatedUUID3)
  {
    v28 = 0;
    uUIDString = generatedUUID3;
  }

  else
  {
    generatedUUID4 = [userCopy generatedUUID];
    uniqueIdpIdentifier2 = generatedUUID4;
    if (generatedUUID4)
    {
      v28 = 0;
      uUIDString = generatedUUID4;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      uniqueIdpIdentifier2 = 0;
      v28 = 1;
    }
  }

  [(POMutableUser *)v23 setGeneratedUUID:uUIDString];
  if (v28)
  {
  }

  if (!v27)
  {
  }

  uniqueIdpIdentifier3 = [userCopy uniqueIdpIdentifier];
  [(POMutableUser *)v23 setUniqueIdpIdentifier:uniqueIdpIdentifier3];

  altSecurityIdentity4 = [userCopy altSecurityIdentity];
  [(POMutableUser *)v23 setAltSecurityIdentity:altSecurityIdentity4];

  v33 = [userCopy uid];
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

  if ([(POUserGroupManager *)v44 saveUsers_locked:obj withError:error])
  {
    v36 = PO_LOG_POUserGroupManager();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      generatedUUID5 = [(POUser *)v23 generatedUUID];
      [(POUserGroupManager *)generatedUUID5 createOrUpdateUser:buf withError:v36];
    }

    v38 = v23;
  }

  else
  {
    if (error)
    {
      v39 = *error;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __51__POUserGroupManager_createOrUpdateUser_withError___block_invoke;
      v52[3] = &unk_279A3A088;
      v40 = v39;
      v53 = v40;
      v41 = __51__POUserGroupManager_createOrUpdateUser_withError___block_invoke(v52);
      *error = v41;
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

- (id)_nextAvailableUserId:(id)id
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [idCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(idCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 uid];

        if (v10)
        {
          v11 = [v9 uid];
          intValue = [v11 intValue];

          if (intValue > v7)
          {
            v7 = intValue;
          }
        }
      }

      v5 = [idCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    v13 = (v7 + 1);
  }

  else
  {
    v13 = 10000;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  stringValue = [v14 stringValue];

  v16 = *MEMORY[0x277D85DE8];

  return stringValue;
}

- (BOOL)removeUserWithName:(id)name withError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = PO_LOG_POUserGroupManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [POUserGroupManager removeUserWithName:withError:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(POUserGroupManager *)selfCopy loadUsers_lockedWithError:error];
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
        loginUserName = [v17 loginUserName];
        v19 = [loginUserName isEqualToString:nameCopy];

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

  [(POUserGroupManager *)selfCopy saveUsers_locked:v12 withError:error];
  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)loadUsers_lockedWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  filePath = [(POUserGroupManager *)self filePath];
  v5 = [filePath URLByAppendingPathComponent:@"com.apple.PlatformSSO.users.txt"];

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
      if (error)
      {
        v17 = v17;
        *error = v17;
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

- (BOOL)saveUsers_locked:(id)users_locked withError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  users_lockedCopy = users_locked;
  if (error)
  {
    *error = 0;
  }

  filePath = [(POUserGroupManager *)self filePath];
  v8 = [filePath URLByAppendingPathComponent:@"com.apple.PlatformSSO.users.txt"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = users_lockedCopy;
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

        allData = [*(*(&v32 + 1) + 8 * i) allData];
        [v9 addObject:allData];
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
    if (!error)
    {
LABEL_15:

      v21 = 0;
      goto LABEL_16;
    }

LABEL_14:
    v23 = v23;
    *error = v23;
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
    if (!error)
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