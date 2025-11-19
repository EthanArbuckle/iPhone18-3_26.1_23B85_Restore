@interface SDConnectionConfiguration
- (SDConnectionConfiguration)initWithConnection:(id)a3 isPrivate:(BOOL)a4 isManaged:(BOOL)a5;
@end

@implementation SDConnectionConfiguration

- (SDConnectionConfiguration)initWithConnection:(id)a3 isPrivate:(BOOL)a4 isManaged:(BOOL)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v52.receiver = self;
  v52.super_class = SDConnectionConfiguration;
  v10 = [(SDConnectionConfiguration *)&v52 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_55;
  }

  objc_storeStrong(&v10->_connection, a3);
  v11->_pid = xpc_connection_get_pid(v9);
  v11->_euid = xpc_connection_get_euid(v9);
  v11->_egid = xpc_connection_get_egid(v9);
  v11->_isExtension = xpc_connection_is_extension();
  v11->_isPrivate = a4;
  v11->_isManaged = a5;
  xpc_connection_get_audit_token();
  v12 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v13 = SecTaskCreateWithAuditToken(v12, &token);
  if (v13)
  {
    v14 = v13;
    v11->_internal = checkBooleanEntitlement(v13, *MEMORY[0x277CC3568]);
    v11->_searchInternal = checkBooleanEntitlement(v14, *MEMORY[0x277CC3590]);
    v11->_quotaDisabled = checkBooleanEntitlement(v14, @"com.apple.developer.corespotlight.disablequota");
    v11->_privateIndexNonSandboxAllowed = checkBooleanEntitlement(v14, *MEMORY[0x277CC3578]);
    v11->_managedIndexNonSandboxAllowed = checkBooleanEntitlement(v14, *MEMORY[0x277CC3570]);
    v11->_entitledAttributes = 0;
    if (checkBooleanEntitlement(v14, @"com.apple.spotlight.entitledattributes"))
    {
      v11->_entitledAttributes |= 1u;
    }

    if (checkBooleanEntitlement(v14, @"com.apple.spotlight.photos.entitledattributes"))
    {
      v11->_entitledAttributes |= 2u;
    }

    if (checkBooleanEntitlement(v14, @"com.apple.spotlight.documentunderstanding.entitledattributes"))
    {
      v11->_entitledAttributes |= 4u;
    }

    v11->_allowMail = checkBooleanEntitlement(v14, *MEMORY[0x277CC3580]);
    v11->_allowPhotosLibraryDeletion = checkBooleanEntitlement(v14, *MEMORY[0x277CC3560]);
    v11->_allowOpenJournalFile = checkBooleanEntitlement(v14, *MEMORY[0x277CC3558]);
    v15 = SecTaskCopyValueForEntitlement(v14, *MEMORY[0x277CC3588], 0);
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
        allowedBundleIDs = v11->_allowedBundleIDs;
        v11->_allowedBundleIDs = v16;
      }
    }

    v18 = SecTaskCopyValueForEntitlement(v14, *MEMORY[0x277CC3598], 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v11->_bundleID, v18);
    }

    else
    {
      if (v11->_isExtension)
      {
        v19 = [MEMORY[0x277D3D350] defaultManager];
        v20 = [v19 containingAppForPlugInWithPid:v11->_pid];
        bundleID = v11->_bundleID;
        v11->_bundleID = v20;

        if (!v11->_bundleID)
        {
          v22 = [v19 informationForPlugInWithPid:v11->_pid];
          v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277D3D368]];
          v24 = v11->_bundleID;
          v11->_bundleID = v23;
        }
      }

      p_bundleID = &v11->_bundleID;
      if (!v11->_bundleID)
      {
        v26 = SecTaskCopyValueForEntitlement(v14, @"application-identifier", 0);

        v18 = v26;
        if (!v26)
        {
          v18 = SecTaskCopySigningIdentifier(v14, 0);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v11->_bundleID, v18);
          *token.val = 0;
          v27 = *p_bundleID;
          if (CPCopyBundleIdentifierAndTeamFromApplicationIdentifier())
          {
            if (*token.val)
            {
              v28 = objc_alloc(MEMORY[0x277CC1E50]);
              v51 = [v28 initWithBundleIdentifier:*token.val error:0];
              v29 = [v51 containingBundleRecord];
              v30 = [v29 bundleIdentifier];

              if (v30)
              {
                v31 = v30;
              }

              else
              {
                v31 = *token.val;
              }

              v32 = *p_bundleID;
              *p_bundleID = v31;
            }
          }
        }
      }
    }

    if (v11->_bundleID && [&unk_2846C90F8 containsObject:?])
    {
      v33 = checkBooleanEntitlement(v14, @"com.apple.private.corespotlight.allownotifications");
      v11->_allowNotifications = v33;
      if (v33)
      {
LABEL_37:
        if (v11->_bundleID)
        {
          v36 = [&unk_2846C9110 containsObject:?];
          if (v36)
          {
            LOBYTE(v36) = checkBooleanEntitlement(v14, @"com.apple.private.corespotlight.allowmessagescontent");
          }
        }

        else
        {
          LOBYTE(v36) = 0;
        }

        v11->_allowMessagesContent = v36;
        v37 = SecTaskCopyValueForEntitlement(v14, *MEMORY[0x277CC3550], 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (v38 = SecTaskCopyValueForEntitlement(v14, *MEMORY[0x277CC3548], 0), v37, objc_opt_class(), v39 = 0, v37 = v38, (objc_opt_isKindOfClass()))
        {
          v38 = v37;
          v39 = v38;
        }

        v40 = CSSanitizeProtectionClass();
        protectionClass = v11->_protectionClass;
        v11->_protectionClass = v40;

        CFRelease(v14);
        goto LABEL_45;
      }
    }

    else
    {
      v11->_allowNotifications = 0;
    }

    if ([(NSSet *)v11->_allowedBundleIDs containsObject:@"com.apple.usernotificationsd"])
    {
      v34 = [(NSSet *)v11->_allowedBundleIDs mutableCopy];
      [v34 removeObject:@"com.apple.usernotificationsd"];
      objc_storeStrong(&v11->_allowedBundleIDs, v34);
      v35 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [SDConnectionConfiguration initWithConnection:v35 isPrivate:? isManaged:?];
      }
    }

    goto LABEL_37;
  }

LABEL_45:
  if (!a4 && !a5)
  {
    v42 = [MEMORY[0x277D77BF8] sharedManager];
    v43 = [v42 currentPersona];
    v44 = [v43 userPersonaUniqueString];
    personaID = v11->_personaID;
    v11->_personaID = v44;
  }

  if (v11->_bundleID || v11->_searchInternal)
  {
    v46 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      pid = v11->_pid;
      v48 = v11->_bundleID;
      token.val[0] = 67109378;
      token.val[1] = pid;
      LOWORD(token.val[2]) = 2112;
      *(&token.val[2] + 2) = v48;
      _os_log_impl(&dword_231A35000, v46, OS_LOG_TYPE_DEFAULT, "pid: %d bundleID: %@", &token, 0x12u);
    }
  }

  else
  {
    v46 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [SDConnectionConfiguration initWithConnection:v9 isPrivate:v46 isManaged:?];
    }
  }

LABEL_55:
  v49 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)initWithConnection:(uint64_t *)a1 isPrivate:(NSObject *)a2 isManaged:.cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "Unallowing notifications for bid %@ not in allow list", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithConnection:(uint64_t)a1 isPrivate:(NSObject *)a2 isManaged:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "Could not resolve bundle from %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end