@interface PPXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5;
+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4;
+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 allowedServerInterface:(id)a5 allowedClientInterface:(id)a6 requestHandler:(id)a7 validateConnection:(id)a8 setupClientProxy:(id)a9 interruptionHandler:(id)a10 invalidationHandler:(id)a11;
@end

@implementation PPXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PPXPCServerHelper hasTrueBooleanEntitlement:v7 connection:v8];
  if (!v10)
  {
    __errnum = 0;
    v11 = procNameForPid([v8 processIdentifier], &__errnum);
    if ([v11 length] && (objc_msgSend(v11, "isEqualToString:", @"xctest") & 1) == 0)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        *v25 = v11;
        *&v25[8] = 2112;
        *&v25[10] = v9;
        *&v25[18] = 2112;
        *&v25[20] = v7;
        _os_log_fault_impl(&dword_23224A000, v13, OS_LOG_TYPE_FAULT, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
      }

      goto LABEL_10;
    }

    v12 = __errnum;
    v13 = pp_xpc_server_log_handle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        v15 = [v8 processIdentifier];
        v16 = strerror(__errnum);
        *buf = 67109634;
        *v25 = v15;
        *&v25[4] = 2112;
        *&v25[6] = v9;
        *&v25[14] = 2080;
        *&v25[16] = v16;
        v17 = "Connection from %d to %@ failed entitlement check (proc_name error: %s).";
        v18 = v13;
        v19 = 28;
LABEL_13:
        _os_log_error_impl(&dword_23224A000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      }
    }

    else if (v14)
    {
      v22 = [v8 processIdentifier];
      *buf = 67109378;
      *v25 = v22;
      *&v25[4] = 2112;
      *&v25[6] = v9;
      v17 = "Connection from %d to %@ failed entitlement check.";
      v18 = v13;
      v19 = 18;
      goto LABEL_13;
    }

LABEL_10:
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D425B0];
  if (a4)
  {
    [a4 auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v7 = pp_xpc_server_log_handle();
  v8 = [v6 taskWithAuditToken:v10 hasTrueBooleanEntitlement:v5 logHandle:v7];

  return v8;
}

+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 allowedServerInterface:(id)a5 allowedClientInterface:(id)a6 requestHandler:(id)a7 validateConnection:(id)a8 setupClientProxy:(id)a9 interruptionHandler:(id)a10 invalidationHandler:(id)a11
{
  v61 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v43 = a4;
  v39 = a5;
  v38 = a6;
  v40 = a7;
  v17 = a8;
  v18 = a9;
  v42 = a10;
  v41 = a11;
  v54 = 0;
  v19 = procNameForPid([v16 processIdentifier], &v54);
  if ([v19 length])
  {
    v20 = pp_xpc_server_log_handle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v21 = [v16 processIdentifier];
    *buf = 138412802;
    v56 = v43;
    v57 = 2112;
    v58 = v19;
    v59 = 2048;
    v60 = v21;
    v22 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v27 = v20;
    v28 = 32;
LABEL_8:
    _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, v22, buf, v28);
    goto LABEL_9;
  }

  v23 = v54 == 0;
  v20 = pp_xpc_server_log_handle();
  v24 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_9;
    }

    v25 = [v16 processIdentifier];
    v26 = strerror(v54);
    *buf = 138412802;
    v56 = v43;
    v57 = 2048;
    v58 = v25;
    v59 = 2080;
    v60 = v26;
    v22 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v24)
  {
    v35 = [v16 processIdentifier];
    *buf = 138412546;
    v56 = v43;
    v57 = 2048;
    v58 = v35;
    v22 = "New connection to %@ from unknown process (%lu).";
    v27 = v20;
    v28 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v29 = v17[2](v17, v16, v19);
  if (v29)
  {
    [v16 setExportedInterface:v39];
    [v16 setExportedObject:v40];
    if (v38)
    {
      [v16 setRemoteObjectInterface:?];
      if (!v18)
      {
LABEL_15:
        objc_initWeak(buf, v16);
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke;
        v49[3] = &unk_2789755A0;
        objc_copyWeak(&v53, buf);
        v31 = v43;
        v50 = v31;
        v32 = v19;
        v51 = v32;
        v52 = v42;
        [v16 setInterruptionHandler:v49];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_17;
        v44[3] = &unk_2789755A0;
        objc_copyWeak(&v48, buf);
        v45 = v31;
        v46 = v32;
        v47 = v41;
        [v16 setInvalidationHandler:v44];
        [v16 resume];

        objc_destroyWeak(&v48);
        objc_destroyWeak(&v53);
        objc_destroyWeak(buf);
        goto LABEL_16;
      }

      v30 = [v16 remoteObjectProxy];
      v18[2](v18, v30);
    }

    else
    {
      if (!v18)
      {
        goto LABEL_15;
      }

      v30 = [MEMORY[0x277CCA890] currentHandler];
      [v30 handleFailureInMethod:a2 object:a1 file:@"PPXPCServerSupport.m" lineNumber:74 description:@"setupClientProxy shall be nil if allowedClientInterface is nil"];
    }

    goto LABEL_15;
  }

LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

void __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v7, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

void __193__PPXPCServerHelper_shouldAcceptConnection_serviceName_allowedServerInterface_allowedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_17(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pp_xpc_server_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2048;
      v12 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v7, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

@end