@interface PREXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5;
+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4;
+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 requestHandler:(id)a6 validateConnection:(id)a7 setupClientProxy:(id)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10;
@end

@implementation PREXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)a3 connection:(id)a4 serviceName:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PREXPCServerHelper hasTrueBooleanEntitlement:v7 connection:v8];
  if (!v10)
  {
    __errnum = 0;
    v11 = procNameForPid([v8 processIdentifier], &__errnum);
    if ([v11 length])
    {
      v12 = pre_sv_xpc_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v25 = v11;
        *&v25[8] = 2112;
        *&v25[10] = v9;
        *&v25[18] = 2112;
        *&v25[20] = v7;
        v13 = "Connection from %@ to %@ is missing entitlement: %@";
        v14 = v12;
        v15 = 32;
LABEL_10:
        _os_log_error_impl(&dword_260D12000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
      }
    }

    else
    {
      v16 = __errnum;
      v12 = pre_sv_xpc_handle();
      v17 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v17)
        {
          v18 = [v8 processIdentifier];
          v19 = strerror(__errnum);
          *buf = 67109634;
          *v25 = v18;
          *&v25[4] = 2112;
          *&v25[6] = v9;
          *&v25[14] = 2080;
          *&v25[16] = v19;
          v13 = "Connection from %d to %@ failed entitlement check (proc_name error: %s).";
          v14 = v12;
          v15 = 28;
          goto LABEL_10;
        }
      }

      else if (v17)
      {
        v20 = [v8 processIdentifier];
        *buf = 67109378;
        *v25 = v20;
        *&v25[4] = 2112;
        *&v25[6] = v9;
        v13 = "Connection from %d to %@ failed entitlement check.";
        v14 = v12;
        v15 = 18;
        goto LABEL_10;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)hasTrueBooleanEntitlement:(id)a3 connection:(id)a4
{
  v4 = [a4 valueForEntitlement:a3];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldAcceptConnection:(id)a3 serviceName:(id)a4 whitelistedServerInterface:(id)a5 requestHandler:(id)a6 validateConnection:(id)a7 setupClientProxy:(id)a8 interruptionHandler:(id)a9 invalidationHandler:(id)a10
{
  v56 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v35 = a5;
  v36 = a6;
  v17 = a7;
  v34 = a8;
  v38 = a9;
  v37 = a10;
  v49 = 0;
  v18 = procNameForPid([v15 processIdentifier], &v49);
  if ([v18 length])
  {
    v19 = pre_sv_xpc_handle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v20 = [v15 processIdentifier];
    *buf = 138412802;
    v51 = v16;
    v52 = 2112;
    v53 = v18;
    v54 = 2048;
    v55 = v20;
    v21 = "New connection to %@ from %@ (%lu).";
LABEL_7:
    v26 = v19;
    v27 = 32;
LABEL_8:
    _os_log_impl(&dword_260D12000, v26, OS_LOG_TYPE_DEFAULT, v21, buf, v27);
    goto LABEL_9;
  }

  v22 = v49;
  v19 = pre_sv_xpc_handle();
  v23 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_9;
    }

    v24 = [v15 processIdentifier];
    v25 = strerror(v49);
    *buf = 138412802;
    v51 = v16;
    v52 = 2048;
    v53 = v24;
    v54 = 2080;
    v55 = v25;
    v21 = "New connection to %@ from unknown process (%lu) (proc_name error: %s).";
    goto LABEL_7;
  }

  if (v23)
  {
    v33 = [v15 processIdentifier];
    *buf = 138412546;
    v51 = v16;
    v52 = 2048;
    v53 = v33;
    v21 = "New connection to %@ from unknown process (%lu).";
    v26 = v19;
    v27 = 22;
    goto LABEL_8;
  }

LABEL_9:

  v28 = v17[2](v17, v15, v18);
  if (v28)
  {
    [v15 setExportedInterface:v35];
    [v15 setExportedObject:v36];
    objc_initWeak(buf, v15);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke;
    v44[3] = &unk_279ABC688;
    objc_copyWeak(&v48, buf);
    v29 = v16;
    v45 = v29;
    v30 = v18;
    v46 = v30;
    v47 = v38;
    [v15 setInterruptionHandler:v44];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_11;
    v39[3] = &unk_279ABC688;
    objc_copyWeak(&v43, buf);
    v40 = v29;
    v41 = v30;
    v42 = v37;
    [v15 setInvalidationHandler:v39];
    [v15 resume];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

void __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pre_sv_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2048;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_260D12000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v8, 0x20u);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __175__PREXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler___block_invoke_11(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = pre_sv_xpc_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v8 = 138412802;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      v12 = 2048;
      v13 = [WeakRetained processIdentifier];
      _os_log_impl(&dword_260D12000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v8, 0x20u);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end