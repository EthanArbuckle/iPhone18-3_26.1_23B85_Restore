@interface _PASXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5 logHandle:(id)a6 shouldGenerateCrashReport:(BOOL)a7;
+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4 logHandle:(id)a5;
+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 whitelistedClientInterface:(id)a6 requestHandler:(id)a7 validateConnection:(id)a8 setupClientProxy:(id)a9 interruptionHandler:(id)a10 invalidationHandler:(id)a11 logHandle:(id)a12;
@end

@implementation _PASXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5 logHandle:(id)a6 shouldGenerateCrashReport:(BOOL)a7
{
  v7 = a7;
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [_PASXPCServerHelper hasTrueBooleanEntitlement:v11 connection:v12 logHandle:v14];
  if (!v15)
  {
    __errnum = 0;
    v16 = procNameForPid([v12 processIdentifier], &__errnum);
    if ([v16 length] && (objc_msgSend(v16, "isEqualToString:", @"xctest") & 1) == 0)
    {
      if (v7)
      {
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *v29 = v16;
            *&v29[8] = 2112;
            *&v29[10] = v13;
            *&v29[18] = 2112;
            *&v29[20] = v11;
            _os_log_fault_impl(&dword_1A7F47000, v14, OS_LOG_TYPE_FAULT, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            abort();
          }
        }
      }

      else if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v29 = v16;
        *&v29[8] = 2112;
        *&v29[10] = v13;
        *&v29[18] = 2112;
        *&v29[20] = v11;
        _os_log_error_impl(&dword_1A7F47000, v14, OS_LOG_TYPE_ERROR, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
      }

      goto LABEL_17;
    }

    if (__errnum)
    {
      if (v14)
      {
        v17 = v14;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v12 processIdentifier];
          v19 = __errnum;
          v20 = strerror(__errnum);
          *buf = 67110146;
          *v29 = v18;
          *&v29[4] = 2112;
          *&v29[6] = v13;
          *&v29[14] = 2112;
          *&v29[16] = v11;
          *&v29[24] = 1024;
          *&v29[26] = v19;
          v30 = 2080;
          v31 = v20;
          v21 = "Connection from %d to %@ is missing entitlement: %@ (proc_name error: [%i] %s).";
          v22 = v17;
          v23 = 44;
LABEL_23:
          _os_log_error_impl(&dword_1A7F47000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (v14)
    {
      v17 = v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v26 = [v12 processIdentifier];
        *buf = 67109634;
        *v29 = v26;
        *&v29[4] = 2112;
        *&v29[6] = v13;
        *&v29[14] = 2112;
        *&v29[16] = v11;
        v21 = "Connection from %d to %@ is missing entitlement: %@";
        v22 = v17;
        v23 = 28;
        goto LABEL_23;
      }

LABEL_16:
    }

LABEL_17:
  }

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4 logHandle:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (a4)
  {
    [a4 auditToken];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = [_PASEntitlement taskWithAuditToken:v11 hasTrueBooleanEntitlement:v7 logHandle:v8];

  return v9;
}

+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 whitelistedClientInterface:(id)a6 requestHandler:(id)a7 validateConnection:(id)a8 setupClientProxy:(id)a9 interruptionHandler:(id)a10 invalidationHandler:(id)a11 logHandle:(id)a12
{
  v69[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v49 = a4;
  v48 = a5;
  v18 = a6;
  v19 = a7;
  v50 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = [v17 processIdentifier];
  v63 = 0;
  v25 = procNameForPid(v24, &v63);
  if ([v25 length])
  {
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v65 = v49;
      v66 = 2112;
      v67 = v25;
      v68 = 2048;
      v69[0] = v24;
      v26 = "New connection to %@ from %@ (%lu).";
      v27 = v23;
      v28 = 32;
LABEL_5:
      _os_log_impl(&dword_1A7F47000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else
  {
    v29 = v63;
    if (v63)
    {
      if (v23)
      {
        v46 = v24;
        v30 = v23;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = strerror(v29);
          *buf = 138413058;
          v65 = v49;
          v66 = 2048;
          v67 = v46;
          v68 = 1024;
          LODWORD(v69[0]) = v29;
          WORD2(v69[0]) = 2080;
          *(v69 + 6) = v31;
          _os_log_impl(&dword_1A7F47000, v30, OS_LOG_TYPE_DEFAULT, "New connection to %@ from unknown process (%lu) (proc_name error: [%i] %s).", buf, 0x26u);
        }

        v24 = v46;
      }
    }

    else if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v65 = v49;
      v66 = 2048;
      v67 = v24;
      v26 = "New connection to %@ from unknown process (%lu).";
      v27 = v23;
      v28 = 22;
      goto LABEL_5;
    }
  }

  LODWORD(v32) = v50[2](v50, v17, v25);
  if (v32)
  {
    [v17 setExportedInterface:v48];
    [v17 setExportedObject:v19];
    v43 = v19;
    v47 = v24;
    v42 = v32;
    if (v18)
    {
      [v17 setRemoteObjectInterface:v18];
      if (!v20)
      {
LABEL_20:
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke;
        v57[3] = &unk_1E77F1A50;
        v32 = v23;
        v58 = v32;
        v34 = v23;
        v35 = v49;
        v59 = v35;
        v36 = v18;
        v37 = v25;
        v60 = v37;
        v62 = v47;
        v61 = v21;
        [v17 setInterruptionHandler:v57];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke_11;
        v51[3] = &unk_1E77F1A50;
        v52 = v32;
        v38 = v35;
        v23 = v34;
        v53 = v38;
        v39 = v37;
        v18 = v36;
        v54 = v39;
        v56 = v47;
        v55 = v22;
        [v17 setInvalidationHandler:v51];
        [v17 resume];

        v19 = v43;
        LOBYTE(v32) = v42;
        goto LABEL_21;
      }

      v33 = [v17 remoteObjectProxy];
      v20[2](v20, v33);
    }

    else
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:a1 file:@"_PASXPCServerHelper.m" lineNumber:87 description:@"setupClientProxy shall be nil if whitelistedClientInterface is nil"];
    }

    goto LABEL_20;
  }

LABEL_21:

  v40 = *MEMORY[0x1E69E9840];
  return v32;
}

@end