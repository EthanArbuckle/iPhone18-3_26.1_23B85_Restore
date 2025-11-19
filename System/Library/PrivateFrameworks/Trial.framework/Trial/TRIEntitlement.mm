@interface TRIEntitlement
+ (BOOL)_isValidFormatForTeamId:(id)a3;
+ (id)_teamIdFromSecTaskWithAuditToken:(id *)a3;
+ (id)applicationBundleIdentifierFromSelf;
+ (id)applicationBundleIdentifierWithAuditToken:(id *)a3;
+ (id)codeSignIdentifierWithAuditToken:(id *)a3;
+ (id)objectForCurrentProcessEntitlement:(id)a3;
+ (id)objectForEntitlement:(id)a3 withAuditToken:(id *)a4;
+ (id)stringForCurrentProcessEntitlement:(id)a3;
+ (id)stringForEntitlement:(id)a3 fromSecTask:(__SecTask *)a4;
+ (id)stringForEntitlement:(id)a3 withAuditToken:(id *)a4;
+ (id)teamIdWithAuditToken:(id *)a3;
+ (id)valueForEntitlement:(id)a3 fromSecTask:(__SecTask *)a4 ofType:(unint64_t *)a5;
@end

@implementation TRIEntitlement

+ (id)applicationBundleIdentifierFromSelf
{
  v2 = [a1 entitlementKeyForApplicationBundleIdentifier];
  v3 = [TRIEntitlement stringForCurrentProcessEntitlement:v2];

  return v3;
}

+ (id)applicationBundleIdentifierWithAuditToken:(id *)a3
{
  v4 = [a1 entitlementKeyForApplicationBundleIdentifier];
  v5 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v5;
  v6 = [TRIEntitlement stringForEntitlement:v4 withAuditToken:v8];

  return v6;
}

+ (id)codeSignIdentifierWithAuditToken:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  error = 0;
  v3 = *MEMORY[0x277CBECE8];
  v4 = *&a3->var0[4];
  *token.val = *a3->var0;
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

+ (id)teamIdWithAuditToken:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *&a3->var0[4];
  v16 = *a3->var0;
  v17 = v4;
  v5 = [TRIEntitlement _teamIdFromSecTaskWithAuditToken:&v16];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = *&a3->var0[4];
    v16 = *a3->var0;
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

+ (id)_teamIdFromSecTaskWithAuditToken:(id *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBECE8];
  v4 = *&a3->var0[4];
  *token.val = *a3->var0;
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

+ (id)stringForCurrentProcessEntitlement:(id)a3
{
  v4 = a3;
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 stringForEntitlement:v4 fromSecTask:v5];
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

+ (id)stringForEntitlement:(id)a3 withAuditToken:(id *)a4
{
  v6 = a3;
  v7 = *&a4->var0[4];
  *v13.val = *a4->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 stringForEntitlement:v6 fromSecTask:v8];
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

+ (id)objectForEntitlement:(id)a3 withAuditToken:(id *)a4
{
  v6 = a3;
  v7 = *&a4->var0[4];
  *v13.val = *a4->var0;
  *&v13.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = [a1 valueForEntitlement:v6 fromSecTask:v8 ofType:0];
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

+ (id)objectForCurrentProcessEntitlement:(id)a3
{
  v4 = a3;
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 valueForEntitlement:v4 fromSecTask:v5 ofType:0];
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

+ (id)valueForEntitlement:(id)a3 fromSecTask:(__SecTask *)a4 ofType:(unint64_t *)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  error = 0;
  if (a5)
  {
    v10 = *a5;
    if (v10 == CFStringGetTypeID() || v10 == CFArrayGetTypeID() || v10 == CFNumberGetTypeID())
    {
      v11 = objc_opt_class();
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"TRIEntitlement.m" lineNumber:179 description:{@"cannot validate entitlement with unsupported typeId %ld", *a5}];
  }

  v11 = 0;
LABEL_8:
  v13 = SecTaskCopyValueForEntitlement(a4, v9, &error);
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
        v24 = v9;
        v25 = 2112;
        v26 = error;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement failed for %@, error: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v9;
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
      v26 = v9;
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
    v24 = v9;
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

+ (id)stringForEntitlement:(id)a3 fromSecTask:(__SecTask *)a4
{
  v5 = a3;
  TypeID = CFStringGetTypeID();
  v6 = [objc_opt_class() valueForEntitlement:v5 fromSecTask:a4 ofType:&TypeID];

  return v6;
}

+ (BOOL)_isValidFormatForTeamId:(id)a3
{
  v3 = a3;
  if ([v3 length] != 10)
  {
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    v5 = [v3 characterAtIndex:v4];
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