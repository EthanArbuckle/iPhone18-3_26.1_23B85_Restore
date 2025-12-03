@interface BRCClientPrivilegesDescriptor
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BRCClientPrivilegesDescriptor)initWithAuditToken:(id *)token;
- (BRCClientPrivilegesDescriptor)initWithNonSandboxedAppWithAppLibraryIDs:(id)ds bundleID:(id)d auditToken:(id *)token;
- (char)_computeCloudEnabledStatusWithoutLogOutStatus;
- (char)cloudEnabledStatusWithHasSession:(BOOL)session;
- (int)pid;
- (void)_finishSetupWithClientContainerIDs:(id)ds;
- (void)updateCloudEnabledStatus;
@end

@implementation BRCClientPrivilegesDescriptor

- (char)_computeCloudEnabledStatusWithoutLogOutStatus
{
  if ([(BRCClientPrivilegesDescriptor *)self isAutomationEntitled]|| [(BRCClientPrivilegesDescriptor *)self isProxyEntitled])
  {
    return 1;
  }

  if (![(BRCClientPrivilegesDescriptor *)self isAllowedToAccessAnyCloudService])
  {
    return -3;
  }

  if (![(BRCClientPrivilegesDescriptor *)self isNonAppSandboxed])
  {
    v5 = *MEMORY[0x277D6C230];
    [(BRCClientPrivilegesDescriptor *)self auditToken];
    if (!TCCAccessCheckAuditToken())
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientPrivilegesDescriptor _computeCloudEnabledStatusWithoutLogOutStatus];
      }

      v3 = -1;
      goto LABEL_17;
    }
  }

  applicationIdentifier = [(BRCClientPrivilegesDescriptor *)self applicationIdentifier];

  if (applicationIdentifier)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    applicationIdentifier2 = [(BRCClientPrivilegesDescriptor *)self applicationIdentifier];
    v9 = [mEMORY[0x277D262A0] isCloudSyncAllowed:applicationIdentifier2];

    if ((v9 & 1) == 0)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [BRCClientPrivilegesDescriptor _computeCloudEnabledStatusWithoutLogOutStatus];
      }

      v3 = -2;
LABEL_17:

      return v3;
    }
  }

  return 1;
}

- (int)pid
{
  if (![(BRCClientPrivilegesDescriptor *)self hasPid])
  {
    [BRCClientPrivilegesDescriptor pid];
  }

  return self->_auditToken.val[5];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  selfCopy = self;
  if ((self->var0[6] & 0x10000) == 0)
  {
    [BRCClientPrivilegesDescriptor auditToken];
  }

  v5 = *&selfCopy[2].var0[2];
  *retstr->var0 = *&selfCopy[1].var0[6];
  *&retstr->var0[4] = v5;
  return self;
}

- (BRCClientPrivilegesDescriptor)initWithAuditToken:(id *)token
{
  v19.receiver = self;
  v19.super_class = BRCClientPrivilegesDescriptor;
  v4 = [(BRCClientPrivilegesDescriptor *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v6 = *token->var0;
    *(v4 + 72) = *&token->var0[4];
    *(v4 + 56) = v6;
    v4[26] = 1;
    v17 = *token->var0;
    v18 = *&token->var0[4];
    v7 = BRCopyEntitlementsForAuditToken();
    v8 = BREntitledApplicationIdentifier();
    v9 = *(v5 + 4);
    *(v5 + 4) = v8;

    v5[24] = [v7 brc_BOOLeanValueForKey:{*MEMORY[0x277CFAC58], v17, v18}];
    v5[25] = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFAC60]];
    v10 = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFAC68]];
    v5[28] = v10;
    if (v10 && ([*(v5 + 4) isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) == 0 && (objc_msgSend(*(v5 + 4), "isEqualToString:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") & 1) == 0)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(BRCClientPrivilegesDescriptor *)v11 initWithAuditToken:v12];
      }

      v5[28] = 0;
    }

    if (v5[18] == 1)
    {
      v5[17] = 1;
      *(v5 + 19) = 16843009;
      v5[23] = 1;
LABEL_16:
      v15 = BREntitledContainerIdentifiers();
      [v5 _finishSetupWithClientContainerIDs:v15];

      return v5;
    }

    v5[19] = BRIsEntitledForAnyiCloudService();
    v5[17] = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFABA8]];
    if (v5[24] == 1)
    {
      v5[20] = 1;
    }

    else
    {
      v13 = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFABE8]];
      v5[20] = v13;
      if (!v13)
      {
        v5[21] = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFAC98]];
        v5[23] = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFAC90]];
        v14 = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFAC70]];
        goto LABEL_15;
      }
    }

    v14 = 1;
    v5[21] = 1;
    v5[23] = 1;
LABEL_15:
    v5[22] = v14;
    v5[27] = [v7 brc_BOOLeanValueForKey:*MEMORY[0x277CFACA8]];
    goto LABEL_16;
  }

  return v5;
}

- (BRCClientPrivilegesDescriptor)initWithNonSandboxedAppWithAppLibraryIDs:(id)ds bundleID:(id)d auditToken:(id *)token
{
  dsCopy = ds;
  dCopy = d;
  v10 = objc_opt_class();
  v11 = *&self->_auditToken.val[4];
  v21 = *self->_auditToken.val;
  v22 = v11;
  if ([v10 _isNonSandboxedForAuditToken:&v21])
  {
    v20.receiver = self;
    v20.super_class = BRCClientPrivilegesDescriptor;
    v12 = [(BRCClientPrivilegesDescriptor *)&v20 init];
    v13 = v12;
    if (v12)
    {
      v12->_isNonAppSandboxed = 1;
      objc_storeStrong(&v12->_applicationIdentifier, d);
      v13->_isAllowedToAccessAnyCloudService = 1;
      v14 = *token->var0;
      *&v13->_auditToken.val[4] = *&token->var0[4];
      *v13->_auditToken.val = v14;
      v13->_hasAuditToken = 1;
      *&v13->_isProxyEntitled = 16843009;
      [*MEMORY[0x277CFAC60] UTF8String];
      v15 = xpc_copy_entitlement_for_token();
      v16 = MEMORY[0x22AA4AB30]() == MEMORY[0x277D86448] && xpc_BOOL_get_value(v15);
      v13->_isBRCTL = v16;
      [(BRCClientPrivilegesDescriptor *)v13 _finishSetupWithClientContainerIDs:dsCopy];
    }
  }

  else
  {
    v17 = *&token->var0[4];
    v21 = *token->var0;
    v22 = v17;
    v13 = [(BRCClientPrivilegesDescriptor *)self initWithAuditToken:&v21];
  }

  v18 = v13;

  return v18;
}

- (void)_finishSetupWithClientContainerIDs:(id)ds
{
  dsCopy = ds;
  v15 = dsCopy;
  if (dsCopy)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    appLibraryIDs = self->_appLibraryIDs;
    self->_appLibraryIDs = v5;

    dsCopy = v15;
  }

  if ([dsCopy count])
  {
    v7 = [v15 objectAtIndexedSubscript:0];
    defaultAppLibraryID = self->_defaultAppLibraryID;
    self->_defaultAppLibraryID = v7;
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    v10 = applicationIdentifier;
  }

  else
  {
    if (![(BRCClientPrivilegesDescriptor *)self hasPid])
    {
      goto LABEL_10;
    }

    [(BRCClientPrivilegesDescriptor *)self pid];
    v10 = BRCExecutableNameForProcessIdentifier();
  }

  debugIdentifier = self->_debugIdentifier;
  self->_debugIdentifier = v10;

LABEL_10:
  if (!self->_debugIdentifier)
  {
    self->_debugIdentifier = @"Client";
  }

  if ([(BRCClientPrivilegesDescriptor *)self hasPid])
  {
    v12 = [(NSString *)self->_debugIdentifier stringByAppendingFormat:@"[%d]", [(BRCClientPrivilegesDescriptor *)self pid]];
    v13 = self->_debugIdentifier;
    self->_debugIdentifier = v12;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_cloudEnabledStatusWithoutLogOutStatus = [(BRCClientPrivilegesDescriptor *)selfCopy _computeCloudEnabledStatusWithoutLogOutStatus];
  objc_sync_exit(selfCopy);
}

- (char)cloudEnabledStatusWithHasSession:(BOOL)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (sessionCopy)
  {
    v5 = 1;
  }

  else
  {
    v5 = -4;
  }

  if (selfCopy->_cloudEnabledStatusWithoutLogOutStatus == 1)
  {
    cloudEnabledStatusWithoutLogOutStatus = v5;
  }

  else
  {
    cloudEnabledStatusWithoutLogOutStatus = selfCopy->_cloudEnabledStatusWithoutLogOutStatus;
  }

  objc_sync_exit(selfCopy);

  return cloudEnabledStatusWithoutLogOutStatus;
}

- (void)updateCloudEnabledStatus
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cloudEnabledStatusWithoutLogOutStatus = [(BRCClientPrivilegesDescriptor *)obj _computeCloudEnabledStatusWithoutLogOutStatus];
  objc_sync_exit(obj);
}

@end