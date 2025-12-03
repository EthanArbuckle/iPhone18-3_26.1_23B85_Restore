@interface UAFUser
+ (BOOL)isMultiUser;
+ (BOOL)isSystemUser:(id)user error:(id *)error;
+ (BOOL)isSystemUserUsingUID:(unsigned int)d;
+ (BOOL)umEntitlementPresent;
+ (id)currentConsoleUserWithUID:(unsigned int *)d;
+ (id)currentUserWithNode:(id *)node error:(id *)error;
+ (id)nameForUser:(id)user error:(id *)error;
+ (id)nodeForUser:(id)user error:(id *)error;
+ (id)pwdNameForUser:(id)user error:(id *)error;
+ (id)pwdNodeForUser:(id)user error:(id *)error;
+ (id)systemUserWithNode:(id *)node error:(id *)error;
+ (id)umCurrentUMUserWithNode:(id *)node error:(id *)error;
+ (id)umNameForUser:(id)user error:(id *)error;
+ (id)umNodeForUser:(id)user error:(id *)error;
+ (id)validLocalNode;
+ (id)validLocalUsers:(id)users error:(id *)error;
+ (id)validNodesWithError:(id *)error;
+ (unsigned)pwdUserIDToUID:(id)d withError:(id *)error;
@end

@implementation UAFUser

+ (BOOL)isMultiUser
{
  v2 = +[UAFConfiguration sharedIpadSupported];
  if (v2)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

    LOBYTE(v2) = isSharedIPad;
  }

  return v2;
}

+ (BOOL)umEntitlementPresent
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
  loginUser = [mEMORY[0x1E69DF068]2 loginUser];

  if (isSharedIPad)
  {
    alternateDSID = [loginUser alternateDSID];
    LOBYTE(isSharedIPad) = alternateDSID != 0;
  }

  return isSharedIPad;
}

+ (id)umCurrentUMUserWithNode:(id *)node error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];

  alternateDSID = [currentUser alternateDSID];

  if (alternateDSID)
  {
    v9 = 0;
    if (!node)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([objc_opt_class() umEntitlementPresent])
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current user ID is nil in UMUserManager framework", *MEMORY[0x1E696A578]];
    v21 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = v13;
    v17 = 7001;
  }

  else
  {
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "+[UAFUser umCurrentUMUserWithNode:error:]";
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Process is not entitled to UMUserManager framework. Cannot determine current user", buf, 0xCu);
    }

    v19 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled to UMUserManager framework"];
    v23 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = v19;
    v17 = 7000;
  }

  v9 = [v16 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v17 userInfo:v15];

  if (node)
  {
LABEL_3:
    *node = @"UMMultiUserNode";
  }

LABEL_4:
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  v11 = *MEMORY[0x1E69E9840];

  return currentUser;
}

+ (id)umNodeForUser:(id)user error:(id *)error
{
  userCopy = user;
  v6 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];

  if (v6)
  {
    v7 = @"UMMultiUserNode";
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)umNameForUser:(id)user error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  v6 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  username = [v6 username];

  if (username)
  {
    error = [v7 username];
    goto LABEL_7;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No username for %@", userCopy, *MEMORY[0x1E696A578]];
    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v9 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v11];

LABEL_6:
    error = 0;
  }

LABEL_7:

  v12 = *MEMORY[0x1E69E9840];

  return error;
}

+ (unsigned)pwdUserIDToUID:(id)d withError:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  v7 = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    [v6 getUUIDBytes:&v13];
    LODWORD(error) = bswap32(HIDWORD(v14));
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to parse UID from string %@", dCopy];
    v16[0] = dCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7003 userInfo:v10];

    LODWORD(error) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return error;
}

+ (id)pwdNodeForUser:(id)user error:(id *)error
{
  if ([user hasPrefix:{@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA", error}])
  {
    return @"SystemNode";
  }

  else
  {
    return 0;
  }
}

+ (id)pwdNameForUser:(id)user error:(id *)error
{
  *&v29[13] = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (![userCopy hasPrefix:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"])
  {
    v10 = 0;
    goto LABEL_22;
  }

  v23 = 0;
  v6 = [objc_opt_class() pwdUserIDToUID:userCopy withError:&v23];
  v7 = v23;
  if (v7)
  {
    v8 = v7;
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_21;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v22 = 0;
  v12 = [UAFCommonUtilities getPWUID:v11 error:&v22];
  v8 = v22;

  if (!v8)
  {
    if (v12)
    {
      v15 = [v12 objectForKeyedSubscript:@"Username"];

      if (v15)
      {
        v10 = [v12 objectForKeyedSubscript:@"Username"];
        goto LABEL_20;
      }
    }

    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "+[UAFUser pwdNameForUser:error:]";
      v28 = 2114;
      *v29 = 0;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Could not find user: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No user found for uid %d", v6];
      v25 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *error = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v19];
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v13 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "+[UAFUser pwdNameForUser:error:]";
    v28 = 1024;
    *v29 = v6;
    v29[2] = 2114;
    *&v29[3] = v8;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Error finding uid: %d: %{public}@", buf, 0x1Cu);
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v14 = v8;
  v10 = 0;
  *error = v8;
LABEL_20:

LABEL_21:
LABEL_22:

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)currentUserWithNode:(id *)node error:(id *)error
{
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() umCurrentUMUserWithNode:node error:error];
    alternateDSID = [v6 alternateDSID];
  }

  else
  {
    if (node)
    {
      *node = @"system";
    }

    alternateDSID = @"mobile";
  }

  return alternateDSID;
}

+ (id)nodeForUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() pwdNodeForUser:userCopy error:error];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [objc_opt_class() umNodeForUser:userCopy error:error];
    }

    v9 = v8;
  }

  else
  {
    v9 = @"system";
  }

  return v9;
}

+ (id)nameForUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() pwdNameForUser:userCopy error:error];
    v7 = v6;
    if (v6)
    {
      username = v6;
    }

    else
    {
      v9 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];
      username = [v9 username];
    }
  }

  else
  {
    username = @"mobile";
  }

  return username;
}

+ (id)systemUserWithNode:(id *)node error:(id *)error
{
  isMultiUser = [objc_opt_class() isMultiUser];
  if (node)
  {
    v6 = @"system";
    if (isMultiUser)
    {
      v6 = @"UMMultiUserNode";
    }

    *node = v6;
  }

  if (isMultiUser)
  {
    return @"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000";
  }

  else
  {
    return @"mobile";
  }
}

+ (BOOL)isSystemUserUsingUID:(unsigned int)d
{
  result = [objc_opt_class() isMultiUser];
  if (d >= 0x1F5)
  {
    return 0;
  }

  return result;
}

+ (BOOL)isSystemUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [userCopy hasPrefix:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"];
    v7 = objc_opt_class();
    if (v6)
    {
      v15 = 0;
      v8 = [v7 pwdUserIDToUID:userCopy withError:&v15];
      v9 = v15;
      v10 = v9;
      if (v9)
      {
        if (error)
        {
          v11 = v9;
          v12 = 0;
          *error = v10;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = [objc_opt_class() isSystemUserUsingUID:v8];
      }
    }

    else
    {
      v13 = [v7 umUserWithDSID:userCopy withUid:0 withError:error];
      if (v13)
      {
        v12 = [objc_opt_class() isSystemUserUsingUID:{objc_msgSend(v13, "uid")}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)validLocalUsers:(id)users error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  if ([objc_opt_class() isMultiUser])
  {
    if ([objc_opt_class() umEntitlementPresent])
    {
      mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
      v7 = objc_opt_new();
      loginUser = [mEMORY[0x1E69DF068] loginUser];
      alternateDSID = [loginUser alternateDSID];

      if (alternateDSID)
      {
        loginUser2 = [mEMORY[0x1E69DF068] loginUser];
        alternateDSID2 = [loginUser2 alternateDSID];
        [v7 addObject:alternateDSID2];
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      allUsers = [mEMORY[0x1E69DF068] allUsers];
      v13 = [allUsers countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(allUsers);
            }

            v17 = *(*(&v36 + 1) + 8 * i);
            alternateDSID3 = [v17 alternateDSID];

            if (alternateDSID3)
            {
              alternateDSID4 = [v17 alternateDSID];
              [v7 addObject:alternateDSID4];
            }
          }

          v14 = [allUsers countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v14);
      }

      v20 = objc_opt_new();
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v21 = usersCopy;
      v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v33;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v33 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v32 + 1) + 8 * j);
            if (([v7 containsObject:{v26, v32}] & 1) != 0 || objc_msgSend(v26, "hasPrefix:", @"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"))
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v27 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v45 = "+[UAFUser validLocalUsers:error:]";
        _os_log_error_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_ERROR, "%s Process is not entitled to UMUserManager framework.", buf, 0xCu);
      }

      if (error)
      {
        v28 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A578];
        v43 = @"Process is not entitled to UMUserManager framework";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *error = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7000 userInfo:v29];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = usersCopy;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)validNodesWithError:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isMultiUser])
  {
    v10 = @"UMMultiUserNode";
    v11 = @"SystemNode";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v10;
    v5 = 2;
  }

  else
  {
    v9 = @"system";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v9;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:{v5, v9, v10, v11, v12}];
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validLocalNode
{
  if (+[UAFUser isMultiUser])
  {
    v2 = @"UMMultiUserNode";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)currentConsoleUserWithUID:(unsigned int *)d
{
  v16 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isMultiUser])
  {
    v11 = 0;
    v4 = [objc_opt_class() umCurrentUMUserWithNode:0 error:&v11];
    v5 = v11;
    if (v4 && ([v4 alternateDSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      if (d)
      {
        *d = [v4 uid];
      }

      alternateDSID = [v4 alternateDSID];
    }

    else
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "+[UAFUser currentConsoleUserWithUID:]";
        v14 = 2112;
        v15 = v5;
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Error retrieving current console user: %@", buf, 0x16u);
      }

      alternateDSID = 0;
    }
  }

  else
  {
    if (d)
    {
      *d = 501;
    }

    alternateDSID = @"mobile";
  }

  v9 = *MEMORY[0x1E69E9840];

  return alternateDSID;
}

@end