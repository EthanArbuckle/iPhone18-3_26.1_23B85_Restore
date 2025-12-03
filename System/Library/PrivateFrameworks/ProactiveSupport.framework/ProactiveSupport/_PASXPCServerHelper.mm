@interface _PASXPCServerHelper
+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name logHandle:(id)handle shouldGenerateCrashReport:(BOOL)report;
+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection logHandle:(id)handle;
+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface whitelistedClientInterface:(id)clientInterface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)self0 invalidationHandler:(id)self1 logHandle:(id)self2;
@end

@implementation _PASXPCServerHelper

+ (BOOL)checkForAndLogTrueBooleanEntitlement:(id)entitlement connection:(id)connection serviceName:(id)name logHandle:(id)handle shouldGenerateCrashReport:(BOOL)report
{
  reportCopy = report;
  v32 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  connectionCopy = connection;
  nameCopy = name;
  handleCopy = handle;
  v15 = [_PASXPCServerHelper hasTrueBooleanEntitlement:entitlementCopy connection:connectionCopy logHandle:handleCopy];
  if (!v15)
  {
    __errnum = 0;
    v16 = procNameForPid([connectionCopy processIdentifier], &__errnum);
    if ([v16 length] && (objc_msgSend(v16, "isEqualToString:", @"xctest") & 1) == 0)
    {
      if (reportCopy)
      {
        if (handleCopy)
        {
          if (os_log_type_enabled(handleCopy, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *v29 = v16;
            *&v29[8] = 2112;
            *&v29[10] = nameCopy;
            *&v29[18] = 2112;
            *&v29[20] = entitlementCopy;
            _os_log_fault_impl(&dword_1A7F47000, handleCopy, OS_LOG_TYPE_FAULT, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            abort();
          }
        }
      }

      else if (handleCopy && os_log_type_enabled(handleCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v29 = v16;
        *&v29[8] = 2112;
        *&v29[10] = nameCopy;
        *&v29[18] = 2112;
        *&v29[20] = entitlementCopy;
        _os_log_error_impl(&dword_1A7F47000, handleCopy, OS_LOG_TYPE_ERROR, "Connection from %@ to %@ is missing entitlement: %@", buf, 0x20u);
      }

      goto LABEL_17;
    }

    if (__errnum)
    {
      if (handleCopy)
      {
        v17 = handleCopy;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          processIdentifier = [connectionCopy processIdentifier];
          v19 = __errnum;
          v20 = strerror(__errnum);
          *buf = 67110146;
          *v29 = processIdentifier;
          *&v29[4] = 2112;
          *&v29[6] = nameCopy;
          *&v29[14] = 2112;
          *&v29[16] = entitlementCopy;
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

    else if (handleCopy)
    {
      v17 = handleCopy;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        processIdentifier2 = [connectionCopy processIdentifier];
        *buf = 67109634;
        *v29 = processIdentifier2;
        *&v29[4] = 2112;
        *&v29[6] = nameCopy;
        *&v29[14] = 2112;
        *&v29[16] = entitlementCopy;
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

+ (BOOL)hasTrueBooleanEntitlement:(id)entitlement connection:(id)connection logHandle:(id)handle
{
  entitlementCopy = entitlement;
  handleCopy = handle;
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  v9 = [_PASEntitlement taskWithAuditToken:v11 hasTrueBooleanEntitlement:entitlementCopy logHandle:handleCopy];

  return v9;
}

+ (BOOL)shouldAcceptConnection:(id)connection serviceName:(id)name whitelistedServerInterface:(id)interface whitelistedClientInterface:(id)clientInterface requestHandler:(id)handler validateConnection:(id)validateConnection setupClientProxy:(id)proxy interruptionHandler:(id)self0 invalidationHandler:(id)self1 logHandle:(id)self2
{
  v69[2] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  nameCopy = name;
  interfaceCopy = interface;
  clientInterfaceCopy = clientInterface;
  handlerCopy = handler;
  validateConnectionCopy = validateConnection;
  proxyCopy = proxy;
  interruptionHandlerCopy = interruptionHandler;
  invalidationHandlerCopy = invalidationHandler;
  handleCopy = handle;
  processIdentifier = [connectionCopy processIdentifier];
  v63 = 0;
  v25 = procNameForPid(processIdentifier, &v63);
  if ([v25 length])
  {
    if (handleCopy && os_log_type_enabled(handleCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v65 = nameCopy;
      v66 = 2112;
      v67 = v25;
      v68 = 2048;
      v69[0] = processIdentifier;
      v26 = "New connection to %@ from %@ (%lu).";
      v27 = handleCopy;
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
      if (handleCopy)
      {
        v46 = processIdentifier;
        v30 = handleCopy;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = strerror(v29);
          *buf = 138413058;
          v65 = nameCopy;
          v66 = 2048;
          v67 = v46;
          v68 = 1024;
          LODWORD(v69[0]) = v29;
          WORD2(v69[0]) = 2080;
          *(v69 + 6) = v31;
          _os_log_impl(&dword_1A7F47000, v30, OS_LOG_TYPE_DEFAULT, "New connection to %@ from unknown process (%lu) (proc_name error: [%i] %s).", buf, 0x26u);
        }

        processIdentifier = v46;
      }
    }

    else if (handleCopy && os_log_type_enabled(handleCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v65 = nameCopy;
      v66 = 2048;
      v67 = processIdentifier;
      v26 = "New connection to %@ from unknown process (%lu).";
      v27 = handleCopy;
      v28 = 22;
      goto LABEL_5;
    }
  }

  LODWORD(v32) = validateConnectionCopy[2](validateConnectionCopy, connectionCopy, v25);
  if (v32)
  {
    [connectionCopy setExportedInterface:interfaceCopy];
    [connectionCopy setExportedObject:handlerCopy];
    v43 = handlerCopy;
    v47 = processIdentifier;
    v42 = v32;
    if (clientInterfaceCopy)
    {
      [connectionCopy setRemoteObjectInterface:clientInterfaceCopy];
      if (!proxyCopy)
      {
LABEL_20:
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke;
        v57[3] = &unk_1E77F1A50;
        v32 = handleCopy;
        v58 = v32;
        v34 = handleCopy;
        v35 = nameCopy;
        v59 = v35;
        v36 = clientInterfaceCopy;
        v37 = v25;
        v60 = v37;
        v62 = v47;
        v61 = interruptionHandlerCopy;
        [connectionCopy setInterruptionHandler:v57];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke_11;
        v51[3] = &unk_1E77F1A50;
        v52 = v32;
        v38 = v35;
        handleCopy = v34;
        v53 = v38;
        v39 = v37;
        clientInterfaceCopy = v36;
        v54 = v39;
        v56 = v47;
        v55 = invalidationHandlerCopy;
        [connectionCopy setInvalidationHandler:v51];
        [connectionCopy resume];

        handlerCopy = v43;
        LOBYTE(v32) = v42;
        goto LABEL_21;
      }

      remoteObjectProxy = [connectionCopy remoteObjectProxy];
      proxyCopy[2](proxyCopy, remoteObjectProxy);
    }

    else
    {
      if (!proxyCopy)
      {
        goto LABEL_20;
      }

      remoteObjectProxy = [MEMORY[0x1E696AAA8] currentHandler];
      [remoteObjectProxy handleFailureInMethod:a2 object:self file:@"_PASXPCServerHelper.m" lineNumber:87 description:@"setupClientProxy shall be nil if whitelistedClientInterface is nil"];
    }

    goto LABEL_20;
  }

LABEL_21:

  v40 = *MEMORY[0x1E69E9840];
  return v32;
}

@end