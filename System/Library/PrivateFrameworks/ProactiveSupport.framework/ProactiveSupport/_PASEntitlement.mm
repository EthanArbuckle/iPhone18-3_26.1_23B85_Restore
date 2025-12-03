@interface _PASEntitlement
+ (BOOL)_trueBooleanEntitlementCheckWithSecTask:(__SecTask *)task entitlement:(id)entitlement logHandle:(id)handle;
+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement logHandle:(id)handle;
+ (BOOL)taskWithAuditToken:(id *)token hasTrueBooleanEntitlement:(id)entitlement logHandle:(id)handle;
@end

@implementation _PASEntitlement

+ (BOOL)_trueBooleanEntitlementCheckWithSecTask:(__SecTask *)task entitlement:(id)entitlement logHandle:(id)handle
{
  v28 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  handleCopy = handle;
  if (!entitlementCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASEntitlement.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"entitlementName"}];
  }

  v11 = MEMORY[0x1E69E9C10];
  if (handleCopy)
  {
    v11 = handleCopy;
  }

  v12 = v11;

  error = 0;
  v13 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v14);
      v17 = Value != 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = "NO";
        if (Value)
        {
          v18 = "YES";
        }

        *buf = 138412546;
        v25 = entitlementCopy;
        v26 = 2080;
        v27 = v18;
        _os_log_impl(&dword_1A7F47000, v12, OS_LOG_TYPE_INFO, "_PASEntitlement: Found BOOLean entitlement: %@ --> %s", buf, 0x16u);
      }
    }

    else
    {
      v17 = 0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = entitlementCopy;
        _os_log_impl(&dword_1A7F47000, v12, OS_LOG_TYPE_DEFAULT, "_PASEntitlement: Found entitlement %@ but it is not BOOLean.", buf, 0xCu);
        v17 = 0;
      }
    }

    CFRelease(v14);
  }

  else
  {
    v19 = error;
    if (error)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 0;
LABEL_18:
        CFRelease(v19);
        goto LABEL_19;
      }

      *buf = 138412546;
      v25 = entitlementCopy;
      v26 = 2112;
      v27 = v19;
      _os_log_error_impl(&dword_1A7F47000, v12, OS_LOG_TYPE_ERROR, "_PASEntitlement: SecTaskCopyValueForEntitlement failed for %@, error: %@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        goto LABEL_19;
      }

      *buf = 138412290;
      v25 = entitlementCopy;
      _os_log_impl(&dword_1A7F47000, v12, OS_LOG_TYPE_INFO, "_PASEntitlement: Entitlement %@ is not present.", buf, 0xCu);
    }

    v17 = 0;
  }

  v19 = error;
  if (error)
  {
    goto LABEL_18;
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)taskWithAuditToken:(id *)token hasTrueBooleanEntitlement:(id)entitlement logHandle:(id)handle
{
  entitlementCopy = entitlement;
  handleCopy = MEMORY[0x1E69E9C10];
  if (handle)
  {
    handleCopy = handle;
  }

  v9 = handleCopy;
  v10 = *&token->var0[4];
  *v15.val = *token->var0;
  *&v15.val[4] = v10;
  v11 = SecTaskCreateWithAuditToken(0, &v15);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_class() _trueBooleanEntitlementCheckWithSecTask:v11 entitlement:entitlementCopy logHandle:v9];
    CFRelease(v12);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15.val[0]) = 0;
      _os_log_error_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_ERROR, "_PASEntitlement: SecTaskCreateWithAuditToken() failed.", &v15, 2u);
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement logHandle:(id)handle
{
  entitlementCopy = entitlement;
  handleCopy = MEMORY[0x1E69E9C10];
  if (handle)
  {
    handleCopy = handle;
  }

  v7 = handleCopy;
  v8 = SecTaskCreateFromSelf(0);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_class() _trueBooleanEntitlementCheckWithSecTask:v8 entitlement:entitlementCopy logHandle:v7];
    CFRelease(v9);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1A7F47000, v7, OS_LOG_TYPE_ERROR, "_PASEntitlement: SecTaskCreateFromSelf() failed.", v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end