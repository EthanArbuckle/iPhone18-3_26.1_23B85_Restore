@interface _PASEntitlement
+ (BOOL)_trueBooleanEntitlementCheckWithSecTask:(__SecTask *)a3 entitlement:(id)a4 logHandle:(id)a5;
+ (BOOL)hasTrueBooleanEntitlement:(id)a3 logHandle:(id)a4;
+ (BOOL)taskWithAuditToken:(id *)a3 hasTrueBooleanEntitlement:(id)a4 logHandle:(id)a5;
@end

@implementation _PASEntitlement

+ (BOOL)_trueBooleanEntitlementCheckWithSecTask:(__SecTask *)a3 entitlement:(id)a4 logHandle:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"_PASEntitlement.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"entitlementName"}];
  }

  v11 = MEMORY[0x1E69E9C10];
  if (v10)
  {
    v11 = v10;
  }

  v12 = v11;

  error = 0;
  v13 = SecTaskCopyValueForEntitlement(a3, v9, &error);
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
        v25 = v9;
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
        v25 = v9;
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
      v25 = v9;
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
      v25 = v9;
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

+ (BOOL)taskWithAuditToken:(id *)a3 hasTrueBooleanEntitlement:(id)a4 logHandle:(id)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E69E9C10];
  if (a5)
  {
    v8 = a5;
  }

  v9 = v8;
  v10 = *&a3->var0[4];
  *v15.val = *a3->var0;
  *&v15.val[4] = v10;
  v11 = SecTaskCreateWithAuditToken(0, &v15);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_class() _trueBooleanEntitlementCheckWithSecTask:v11 entitlement:v7 logHandle:v9];
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

+ (BOOL)hasTrueBooleanEntitlement:(id)a3 logHandle:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69E9C10];
  if (a4)
  {
    v6 = a4;
  }

  v7 = v6;
  v8 = SecTaskCreateFromSelf(0);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_class() _trueBooleanEntitlementCheckWithSecTask:v8 entitlement:v5 logHandle:v7];
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