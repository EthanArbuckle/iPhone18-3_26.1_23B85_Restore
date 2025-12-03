@interface ACAccountStore(RemoteManagement)
+ (id)rm_defaultStore;
- (id)_rm_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()RemoteManagement;
- (id)_rm_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()RemoteManagement altDSID:;
- (id)rm_RemoteManagementAccounts;
- (id)rm_remoteManagementAccountForAltDSID:()RemoteManagement;
- (id)rm_remoteManagementAccountForDSID:()RemoteManagement;
- (id)rm_remoteManagementAccountForEnrollmentURL:()RemoteManagement;
- (id)rm_remoteManagementAccountForIdentifier:()RemoteManagement;
- (id)rm_remoteManagementAccountForProfileIdentifier:()RemoteManagement;
@end

@implementation ACAccountStore(RemoteManagement)

+ (id)rm_defaultStore
{
  if (objc_opt_respondsToSelector())
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  }

  else
  {
    if (rm_defaultStore_onceToken != -1)
    {
      +[ACAccountStore(RemoteManagement) rm_defaultStore];
    }

    defaultStore = rm_defaultStore_defaultStore;
  }

  return defaultStore;
}

- (id)rm_RemoteManagementAccounts
{
  rm_RemoteManagementAccountType = [self rm_RemoteManagementAccountType];
  v3 = [self accountsWithAccountType:rm_RemoteManagementAccountType];

  return v3;
}

- (id)_rm_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()RemoteManagement
{
  v4 = a3;
  rm_RemoteManagementAccounts = [self rm_RemoteManagementAccounts];
  firstObject = [rm_RemoteManagementAccounts firstObject];

  if (firstObject)
  {
    rm_altDSID = [firstObject rm_altDSID];
    v8 = [self _rm_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:v4 altDSID:rm_altDSID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_rm_AccountAssociatedWithRemoteManagementWithAccountTypeIdentifier:()RemoteManagement altDSID:
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v24 = 0;
  v9 = [self accountsWithAccountTypeIdentifiers:v8 preloadedProperties:0 error:&v24];
  v10 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        aa_altDSID = [v15 aa_altDSID];
        v17 = [aa_altDSID isEqualToString:v7];

        if (v17)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)rm_remoteManagementAccountForAltDSID:()RemoteManagement
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self rm_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        rm_altDSID = [v9 rm_altDSID];
        v11 = [rm_altDSID isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)rm_remoteManagementAccountForDSID:()RemoteManagement
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self rm_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        rm_DSID = [v9 rm_DSID];
        v11 = [rm_DSID isEqualToNumber:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)rm_remoteManagementAccountForIdentifier:()RemoteManagement
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self rm_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)rm_remoteManagementAccountForEnrollmentURL:()RemoteManagement
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self rm_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        rm_enrollmentURL = [v9 rm_enrollmentURL];
        v11 = [rm_enrollmentURL isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)rm_remoteManagementAccountForProfileIdentifier:()RemoteManagement
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [self rm_RemoteManagementAccounts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        rm_enrollmentURL = [v9 rm_enrollmentURL];
        v11 = [rm_enrollmentURL isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

@end