@interface UNNotificationAttachment(Staging)
+ (id)_systemDirectoryURL;
+ (uint64_t)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:;
@end

@implementation UNNotificationAttachment(Staging)

+ (id)_systemDirectoryURL
{
  if (_systemDirectoryURL_onceToken != -1)
  {
    +[UNNotificationAttachment(Staging) _systemDirectoryURL];
  }

  v1 = _systemDirectoryURL___systemDirectoryURL;

  return v1;
}

+ (uint64_t)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 unc_secureFileURL];
  if (v12 | v13)
  {
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    if (v12)
    {
      v19 = [v12 uns_clientBundleProxy];
    }

    else
    {
      v19 = v13;
    }

    v20 = v19;
    v21 = [v19 bundleURL];
    if (v15)
    {
      v63 = 2;
      [v18 getRelationship:&v63 ofDirectoryAtURL:v21 toItemAtURL:v15 error:0];
      if (!v63)
      {
        goto LABEL_35;
      }

      v22 = [v20 dataContainerURL];
      if (v22)
      {
        v23 = v22;
        *buf = 2;
        [v18 getRelationship:buf ofDirectoryAtURL:v22 toItemAtURL:v15 error:0];
        if (*buf)
        {
          v49 = a7;
          v50 = v23;
          log = v14;
          v54 = v21;
          v24 = [v20 groupContainerURLs];
          v25 = [v24 allValues];

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v57 objects:v64 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v58;
            while (2)
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v58 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v57 + 1) + 8 * i);
                *&v61 = 2;
                [v18 getRelationship:&v61 ofDirectoryAtURL:v31 toItemAtURL:v15 error:0];
                if (!v61)
                {

                  v17 = 1;
                  v14 = log;
                  v21 = v54;
                  goto LABEL_43;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v57 objects:v64 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          v21 = v54;
          if (v49)
          {
            *v49 = [MEMORY[0x277CCA9B8] un_errorWithUNErrorCode:100 userInfo:0];
          }

          v17 = 0;
          v14 = log;
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v61 = 0u;
      v62 = 0u;
      v32 = [v12 uns_clientAuditToken];
      v33 = v32;
      if (v32)
      {
        [v32 realToken];
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      if (v12)
      {
        [v11 fileDescriptor];
        *buf = v61;
        *&buf[16] = v62;
        if (!sandbox_check_by_audit_token())
        {
LABEL_35:
          v17 = 1;
LABEL_43:

          goto LABEL_44;
        }
      }

      if (v13)
      {
        [v12 processIdentifier];
        v34 = BSBundlePathForPID();
        v35 = v34;
        v36 = @"<unknown executable>";
        if (v34)
        {
          v36 = v34;
        }

        v37 = v36;

        v38 = *MEMORY[0x277CE2068];
        if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
        {
          v39 = v38;
          [v15 absoluteString];
          v40 = v55 = v21;
          *buf = 138543874;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v55;
          *&buf[22] = 2114;
          *&buf[24] = v40;
          _os_log_fault_impl(&dword_270AA8000, v39, OS_LOG_TYPE_FAULT, "[System Notification Source] Copying not moving attachment to prevent notification service extension from effectively deleting this file it doesn't have access to. Connection process '%{public}@', Posting of behalf of notification source: '%{public}@', Attachment: '%{public}@'", buf, 0x20u);

          v21 = v55;
        }
      }

      else
      {
        v56 = v21;
        v41 = [MEMORY[0x277CCAE80] currentConnection];
        [v41 processIdentifier];
        v42 = BSBundlePathForPID();
        v43 = v42;
        v44 = @"<unknown executable>";
        if (v42)
        {
          v44 = v42;
        }

        v37 = v44;

        v45 = *MEMORY[0x277CE2068];
        if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
        {
          loga = v45;
          v51 = [v20 bundleIdentifier];
          v48 = [v15 absoluteString];
          *buf = 138544130;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v51;
          *&buf[22] = 2114;
          *&buf[24] = v48;
          v66 = 2114;
          v67 = v14;
          _os_log_fault_impl(&dword_270AA8000, loga, OS_LOG_TYPE_FAULT, "[Notification Service Extension] Copying not moving attachment to prevent system process from effectively deleting this file it doesn't have access to. Push notification service connection '%{public}@'. Notification service extension for bundle: '%{public}@', Attachment: '%{public}@', Effective Notifications Bundle ID: '%{public}@'", buf, 0x2Au);
        }

        v21 = v56;
      }
    }

    v17 = 0;
    goto LABEL_43;
  }

  v16 = *MEMORY[0x277CE2068];
  if (os_log_type_enabled(*MEMORY[0x277CE2068], OS_LOG_TYPE_FAULT))
  {
    [UNNotificationAttachment(Staging) stagingActionForFileHandle:v16 fromLocalClientConnection:v15 orFromServiceExtensionOfBundleProxy:? servicingBundleIdentifier:? error:?];
  }

  v17 = 0;
LABEL_44:

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (void)stagingActionForFileHandle:()Staging fromLocalClientConnection:orFromServiceExtensionOfBundleProxy:servicingBundleIdentifier:error:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 absoluteString];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_270AA8000, v3, OS_LOG_TYPE_FAULT, "Cannot stage attachment. Must provide either a connection or proxy, and not both. Attachment: '%{public}@'", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end