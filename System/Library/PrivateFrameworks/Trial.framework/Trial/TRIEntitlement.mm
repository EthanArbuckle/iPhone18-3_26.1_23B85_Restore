@interface TRIEntitlement
+ (BOOL)_isValidFormatForTeamId:(id)id;
+ (id)_teamIdFromSecTaskWithAuditToken:(id *)token;
+ (id)applicationBundleIdentifierFromSelf;
+ (id)applicationBundleIdentifierWithAuditToken:(id *)token;
+ (id)codeSignIdentifierWithAuditToken:(id *)token;
+ (id)objectForCurrentProcessEntitlement:(id)entitlement;
+ (id)objectForEntitlement:(id)entitlement withAuditToken:(id *)token;
+ (id)stringForCurrentProcessEntitlement:(id)entitlement;
+ (id)stringForEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
+ (id)stringForEntitlement:(id)entitlement withAuditToken:(id *)token;
+ (id)teamIdWithAuditToken:(id *)token;
+ (id)valueForEntitlement:(id)entitlement fromSecTask:(__SecTask *)task ofType:(unint64_t *)type;
@end

@implementation TRIEntitlement

+ (id)applicationBundleIdentifierFromSelf
{
  entitlementKeyForApplicationBundleIdentifier = [self entitlementKeyForApplicationBundleIdentifier];
  v3 = [TRIEntitlement stringForCurrentProcessEntitlement:entitlementKeyForApplicationBundleIdentifier];

  return v3;
}

+ (id)applicationBundleIdentifierWithAuditToken:(id *)token
{
  entitlementKeyForApplicationBundleIdentifier = [self entitlementKeyForApplicationBundleIdentifier];
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [TRIEntitlement stringForEntitlement:entitlementKeyForApplicationBundleIdentifier withAuditToken:v8];

  return v6;
}

+ (id)codeSignIdentifierWithAuditToken:(id *)token
{
  v15 = *MEMORY[0x277D85DE8];
  error = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(v3, &token);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopySigningIdentifier(v5, &error);
    if (error)
    {
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412290;
        *&token.val[1] = error;
        _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "SecTaskCopySigningIdentifier failed, error: %@", &token, 0xCu);
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    CFRelease(v6);
  }

  else
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed.", &token, 2u);
    }

    v7 = 0;
  }

  v10 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    token.val[0] = 138412290;
    *&token.val[1] = v7;
    _os_log_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_INFO, "code sign identifier from signature --> %@", &token, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)teamIdWithAuditToken:(id *)token
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *&token->var0[4];
  v16 = *token->var0;
  v17 = v4;
  v5 = [TRIEntitlement _teamIdFromSecTaskWithAuditToken:&v16];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = *&token->var0[4];
    v16 = *token->var0;
    v17 = v8;
    v7 = [TRIEntitlement stringForEntitlement:@"com.apple.developer.team-identifier" withAuditToken:&v16];
  }

  v9 = v7;

  v10 = [TRIEntitlement _isValidFormatForTeamId:v9];
  v11 = TRILogCategory_ClientFramework();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = v9;
      _os_log_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_INFO, "valid team id: %@", &v16, 0xCu);
    }

    v13 = v9;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v16) = 138412290;
      *(&v16 + 4) = v9;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "invalid teamId: %@", &v16, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_teamIdFromSecTaskWithAuditToken:(id *)token
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(v3, &token);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopyTeamIdentifier();
    CFRelease(v6);
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed.", &token, 2u);
    }

    v7 = 0;
  }

  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    token.val[0] = 138412290;
    *&token.val[1] = v7;
    _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_INFO, "team id from signature --> %@", &token, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)stringForCurrentProcessEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = [self stringForEntitlement:entitlementCopy fromSecTask:v5];
    CFRelease(v6);
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "SecTaskCreateFromSelf() failed.", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)stringForEntitlement:(id)entitlement withAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  v7 = *&token->var0[4];
  *v13.val = *token->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [self stringForEntitlement:entitlementCopy fromSecTask:v8];
    CFRelease(v9);
  }

  else
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13.val[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed.", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)objectForEntitlement:(id)entitlement withAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  v7 = *&token->var0[4];
  *v13.val = *token->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [self valueForEntitlement:entitlementCopy fromSecTask:v8 ofType:0];
    CFRelease(v9);
  }

  else
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13.val[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed.", &v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (id)objectForCurrentProcessEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = [self valueForEntitlement:entitlementCopy fromSecTask:v5 ofType:0];
    CFRelease(v6);
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken() failed.", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)valueForEntitlement:(id)entitlement fromSecTask:(__SecTask *)task ofType:(unint64_t *)type
{
  v27 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  error = 0;
  if (type)
  {
    v10 = *type;
    if (v10 == CFStringGetTypeID() || v10 == CFArrayGetTypeID() || v10 == CFNumberGetTypeID())
    {
      v11 = objc_opt_class();
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIEntitlement.m" lineNumber:179 description:{@"cannot validate entitlement with unsupported typeId %ld", *type}];
  }

  v11 = 0;
LABEL_8:
  v13 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  if (!v13)
  {
    v16 = error;
    v17 = TRILogCategory_ClientFramework();
    v15 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v24 = entitlementCopy;
        v25 = 2112;
        v26 = error;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement failed for %@, error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = entitlementCopy;
      _os_log_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_INFO, "Entitlement %@ is not present.", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v14 = v13;
  if (v11 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromClass(v11);
      *buf = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = entitlementCopy;
      _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "Unexpected entitlement class %@ for entitlement %@", buf, 0x16u);
    }

    v15 = v14;
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v15 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = entitlementCopy;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_INFO, "Found entitlement: %@ --> %@", buf, 0x16u);
  }

LABEL_22:

  if (error)
  {
    CFRelease(error);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)stringForEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  entitlementCopy = entitlement;
  TypeID = CFStringGetTypeID();
  v6 = [objc_opt_class() valueForEntitlement:entitlementCopy fromSecTask:task ofType:&TypeID];

  return v6;
}

+ (BOOL)_isValidFormatForTeamId:(id)id
{
  idCopy = id;
  if ([idCopy length] != 10)
  {
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    v5 = [idCopy characterAtIndex:v4];
    v7 = (v5 - 65) < 0x1A || (v5 - 48) < 0xA;
    if (v4 > 8)
    {
      break;
    }

    ++v4;
  }

  while (v7);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
LABEL_13:
    v8 = 0;
  }

  return v8;
}

@end