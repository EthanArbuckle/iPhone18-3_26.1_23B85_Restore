uint64_t indexTypeForValue(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_232D69D10[a1 - 1];
  }
}

void sub_232D62D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D64584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SpotlightReceiverRegister(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __SpotlightReceiverRegister_block_invoke;
  v8[3] = &unk_2789AE278;
  v9 = v4;
  v10 = v3;
  v5 = SpotlightReceiverRegister_onceToken;
  v6 = v3;
  v7 = v4;
  if (v5 != -1)
  {
    dispatch_once(&SpotlightReceiverRegister_onceToken, v8);
  }
}

void __SpotlightReceiverRegister_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [CSReceiverConnection alloc];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [(CSReceiverConnection *)v2 initWithReceiver:*(v3 - 1) forServiceName:v4];
  v6 = SpotlightReceiverRegister_sCSReceiverConnection;
  SpotlightReceiverRegister_sCSReceiverConnection = v5;

  if (SpotlightReceiverRegister_sCSReceiverConnection)
  {
    [SpotlightReceiverRegister_sCSReceiverConnection startListener];
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *v3;
      v10 = 134218242;
      v11 = SpotlightReceiverRegister_sCSReceiverConnection;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_232D5E000, v7, OS_LOG_TYPE_INFO, "CSReceiver %p running for %@", &v10, 0x16u);
    }
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __SpotlightReceiverRegister_block_invoke_cold_1(v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void SpotlightScheduledReceiverRegister(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __SpotlightScheduledReceiverRegister_block_invoke;
  v8[3] = &unk_2789AE278;
  v9 = v4;
  v10 = v3;
  v5 = SpotlightScheduledReceiverRegister_onceToken;
  v6 = v3;
  v7 = v4;
  if (v5 != -1)
  {
    dispatch_once(&SpotlightScheduledReceiverRegister_onceToken, v8);
  }
}

void __SpotlightScheduledReceiverRegister_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [CSReceiverConnection alloc];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [(CSReceiverConnection *)v2 initWithScheduledReceiver:*(v3 - 1) forServiceName:v4];
  v6 = sCSScheduledReceiverConnection;
  sCSScheduledReceiverConnection = v5;

  if (sCSScheduledReceiverConnection)
  {
    [sCSScheduledReceiverConnection startListener];
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *v3;
      v10 = 134218242;
      v11 = sCSScheduledReceiverConnection;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_232D5E000, v7, OS_LOG_TYPE_INFO, "CSReceiver %p running for %@", &v10, 0x16u);
    }
  }

  else
  {
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __SpotlightReceiverRegister_block_invoke_cold_1(v3);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void SpotlightScheduledReceiverRegisterWithConfig(void *a1, void *a2, void *a3)
{
  v5 = a2;
  SpotlightScheduledReceiverRegister(a1, a3);
  [sCSScheduledReceiverConnection addConfiguration:v5];
}

void SpotlightScheduledReceiverRegisterConfigs(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  SpotlightScheduledReceiverRegister(a1, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [sCSScheduledReceiverConnection addConfiguration:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __getScheduledReceiverConfigPathForService_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.plist", @"/System/Library/PrivateFrameworks/TextUnderstandingRuntime.framework", @"com.apple.corespotlight.scheduled.receiver.textunderstandingd"];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 fileExistsAtPath:v4];

  if (v2)
  {
    [v0 setObject:v4 forKey:@"com.apple.corespotlight.scheduled.receiver.textunderstandingd"];
  }

  v3 = getScheduledReceiverConfigPathForService_sReceiverConfigs;
  getScheduledReceiverConfigPathForService_sReceiverConfigs = v0;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void SpotlightDaemonClientRegister(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __SpotlightDaemonClientRegister_block_invoke;
  v8[3] = &unk_2789AE278;
  v9 = v4;
  v10 = v3;
  v5 = SpotlightDaemonClientRegister_onceToken;
  v6 = v3;
  v7 = v4;
  if (v5 != -1)
  {
    dispatch_once(&SpotlightDaemonClientRegister_onceToken, v8);
  }
}

void __SpotlightDaemonClientRegister_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [SpotlightDaemonClientConnection alloc];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [(SpotlightDaemonClientConnection *)v2 initWithClient:*(v3 - 1) forServiceName:v4];
  v6 = SpotlightDaemonClientRegister_sSpotlightDaemonClientConnection;
  SpotlightDaemonClientRegister_sSpotlightDaemonClientConnection = v5;

  if (SpotlightDaemonClientRegister_sSpotlightDaemonClientConnection)
  {
    [SpotlightDaemonClientRegister_sSpotlightDaemonClientConnection startListener];
    v7 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *v3;
      v15 = 134218242;
      v16 = SpotlightDaemonClientRegister_sSpotlightDaemonClientConnection;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_232D5E000, v7, OS_LOG_TYPE_INFO, "spotlight_daemon %p running for %@", &v15, 0x16u);
    }

    v9 = logForCSLogCategoryDaemonClient();
    v10 = os_signpost_id_generate(v9);

    v11 = logForCSLogCategoryDaemonClient();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      if (*v3)
      {
        v13 = [*v3 UTF8String];
      }

      else
      {
        v13 = "";
      }

      v15 = 136315138;
      v16 = v13;
      _os_signpost_emit_with_name_impl(&dword_232D5E000, v12, OS_SIGNPOST_EVENT, v10, "ClientRegister", "%s", &v15, 0xCu);
    }
  }

  else
  {
    v12 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __SpotlightDaemonClientRegister_block_invoke_cold_1(v3, v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t _SpotlightDaemonClientHandleCommand(const char *a1, void *a2, void *a3)
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v75 = a3;
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    _os_log_impl(&dword_232D5E000, v5, OS_LOG_TYPE_DEFAULT, "### [SpotlightClient] _SpotlightDaemonClientHandleCommand daemon client command %s info:%p", buf, 0x16u);
  }

  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = ___SpotlightDaemonClientHandleCommand_block_invoke;
  v103[3] = &unk_2789AE2B0;
  xdict = v4;
  v104 = xdict;
  v6 = MEMORY[0x238394990](v103);
  v7 = v6;
  v8 = *a1;
  if (v8 == 112)
  {
    if (a1[1] == 100 && !a1[2])
    {
      v33 = 1;
    }

    else
    {
      if (a1[1] != 117 || a1[2])
      {
        goto LABEL_17;
      }

      v33 = 0;
    }

    v68 = [MEMORY[0x277CC3510] copyNSStringForKey:"id" fromXPCDictionary:xdict];
    if (v68)
    {
      v74 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:xdict];
      if (v74)
      {
        v73 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:xdict];
        v72 = [MEMORY[0x277CC3510] copyNSStringForKey:"t" fromXPCDictionary:xdict];
        uint64 = xpc_dictionary_get_uint64(xdict, "po");
        if (v33)
        {
          if (objc_opt_respondsToSelector())
          {
            v96[0] = MEMORY[0x277D85DD0];
            v96[1] = 3221225472;
            v96[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_36;
            v96[3] = &unk_2789AE328;
            v97 = v7;
            v41 = MEMORY[0x238394990](v96);
            [v75 provideDataForBundleID:v74 protectionClass:v73 itemIdentifier:v68 typeIdentifier:v72 options:uint64 completionHandler:v41];

            goto LABEL_75;
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v107 = __Block_byref_object_copy__0;
          v108 = __Block_byref_object_dispose__0;
          v109 = 0;
          v42 = xpc_dictionary_get_remote_connection(xdict);
          if (v42)
          {
            v94 = 0u;
            v95 = 0u;
            xpc_connection_get_audit_token();
            v43 = *MEMORY[0x277CBECE8];
            memset(&token, 0, sizeof(token));
            v44 = SecTaskCreateWithAuditToken(v43, &token);
            v45 = v44;
            if (v44)
            {
              v46 = SecTaskCopyValueForEntitlement(v44, *MEMORY[0x277CC3598], 0);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong((*&buf[8] + 40), v46);
              }

              else
              {
                if (xpc_connection_is_extension())
                {
                  pid = xpc_connection_get_pid(v42);
                  v48 = [MEMORY[0x277D3D350] defaultManager];
                  v49 = [v48 containingAppForPlugInWithPid:pid];
                  v50 = *(*&buf[8] + 40);
                  *(*&buf[8] + 40) = v49;

                  if (!*(*&buf[8] + 40))
                  {
                    v51 = [v48 informationForPlugInWithPid:pid];
                    v52 = [v51 objectForKeyedSubscript:*MEMORY[0x277D3D368]];
                    v53 = *(*&buf[8] + 40);
                    *(*&buf[8] + 40) = v52;
                  }
                }

                if (!*(*&buf[8] + 40))
                {
                  v54 = SecTaskCopyValueForEntitlement(v45, @"application-identifier", 0);

                  v46 = v54;
                  if (!v54)
                  {
                    v46 = SecTaskCopySigningIdentifier(v45, 0);
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_storeStrong((*&buf[8] + 40), v46);
                    *token.val = 0;
                    v55 = *(*&buf[8] + 40);
                    if (CPCopyBundleIdentifierAndTeamFromApplicationIdentifier())
                    {
                      if (*token.val)
                      {
                        v56 = objc_alloc(MEMORY[0x277CC1E50]);
                        v57 = [v56 initWithBundleIdentifier:*token.val error:0];
                        v58 = [v57 containingBundleRecord];
                        v59 = [v58 bundleIdentifier];

                        if (v59)
                        {
                          v60 = *&buf[8];
                          v61 = v59;
                          v62 = *(v60 + 40);
                          *(v60 + 40) = v61;
                        }

                        else
                        {
                          v62 = *(*&buf[8] + 40);
                          *(*&buf[8] + 40) = *token.val;
                        }
                      }
                    }
                  }
                }
              }

              CFRelease(v45);
            }
          }

          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_45;
          v90[3] = &unk_2789AE350;
          v91 = v7;
          v92 = buf;
          v63 = MEMORY[0x238394990](v90);
          [v75 provideFileURLForBundleID:v74 protectionClass:v73 itemIdentifier:v68 typeIdentifier:v72 options:uint64 completionHandler:v63];

          _Block_object_dispose(buf, 8);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

LABEL_77:
    }

LABEL_78:

    goto LABEL_79;
  }

  if (v8 == 114)
  {
    if (a1[1] == 105 && !a1[2])
    {
      v68 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:xdict];
      v74 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:xdict];
      v10 = MEMORY[0x277CC3510];
      v11 = xpc_dictionary_get_value(xdict, "idsa");
      v73 = [v10 copyNSStringArrayFromXPCArray:v11];

      v72 = [MEMORY[0x277CC3510] copyNSStringForKey:"rire" fromXPCDictionary:xdict];
      if (v73)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_76;
        }

        v12 = v102;
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_2;
        v102[3] = &unk_2789AE2D8;
        v102[4] = v7;
        v13 = MEMORY[0x238394990](v102);
        [v75 reindexItemsWithIdentifiers:v73 bundleID:v74 protectionClass:v68 acknowledgementHandler:v13];
      }

      else if (objc_opt_respondsToSelector())
      {
        v12 = v101;
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_3;
        v101[3] = &unk_2789AE2D8;
        v101[4] = v7;
        v13 = MEMORY[0x238394990](v101);
        [v75 reindexAllItemsForBundleID:v74 protectionClass:v68 reason:v72 acknowledgementHandler:v13];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_76;
        }

        v12 = v100;
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_4;
        v100[3] = &unk_2789AE2D8;
        v100[4] = v7;
        v13 = MEMORY[0x238394990](v100);
        [v75 reindexAllItemsForBundleID:v74 protectionClass:v68 acknowledgementHandler:v13];
      }

      goto LABEL_75;
    }
  }

  else if (v8 == 115 && !a1[1])
  {
    (*(v6 + 16))(v6, 0, 0, 0, 0);
    v9 = 1;
    goto LABEL_83;
  }

LABEL_17:
  if (!strcmp(a1, "pus"))
  {
    v21 = MEMORY[0x277CC3510];
    v22 = xpc_dictionary_get_array(xdict, "idsa");
    v68 = [v21 copyNSStringArrayFromXPCArray:v22];

    if (v68)
    {
      v74 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:xdict];
      if (v74)
      {
        v73 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:xdict];
        v72 = [MEMORY[0x277CC3510] copyNSStringForKey:"t" fromXPCDictionary:xdict];
        v23 = xpc_dictionary_get_uint64(xdict, "po");
        if (objc_opt_respondsToSelector())
        {
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_2_55;
          v88[3] = &unk_2789AE378;
          v89 = v7;
          v24 = MEMORY[0x238394990](v88);
          [v75 provideFileURLsForBundleID:v74 protectionClass:v73 itemIdentifiers:v68 typeIdentifier:v72 options:v23 completionHandler:v24];
          v25 = &v89;
LABEL_35:

LABEL_75:
          v7 = 0;
          goto LABEL_76;
        }

        if (objc_opt_respondsToSelector())
        {
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_3_59;
          v86[3] = &unk_2789AE378;
          v87 = v7;
          v67 = MEMORY[0x238394990](v86);
          v24 = dispatch_group_create();
          v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v68, "count")}];
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          obj = v68;
          v27 = [obj countByEnumeratingWithState:&v82 objects:v105 count:16];
          if (v27)
          {
            v28 = *v83;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v83 != v28)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v82 + 1) + 8 * i);
                dispatch_group_enter(v24);
                v79[0] = MEMORY[0x277D85DD0];
                v79[1] = 3221225472;
                v79[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_4_60;
                v79[3] = &unk_2789AE3A0;
                v80 = v26;
                v81 = v24;
                [v75 provideFileURLForBundleID:v74 protectionClass:v73 itemIdentifier:v30 typeIdentifier:v72 options:v23 completionHandler:v79];
              }

              v27 = [obj countByEnumeratingWithState:&v82 objects:v105 count:16];
            }

            while (v27);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_5_62;
          block[3] = &unk_2789AE3C8;
          v77 = v26;
          v78 = v67;
          v31 = v26;
          v32 = v67;
          dispatch_group_notify(v24, MEMORY[0x277D85CD0], block);

          v25 = &v87;
          goto LABEL_35;
        }

LABEL_76:

        goto LABEL_77;
      }

      goto LABEL_77;
    }

    goto LABEL_78;
  }

  if (!strcmp(a1, "siu"))
  {
    v14 = MEMORY[0x277CC3510];
    v15 = xpc_dictionary_get_value(xdict, "si");
    v16 = [v14 copyNSArrayFromXPCArray:v15];

    v17 = xpc_dictionary_get_uint64(xdict, "iam");
    v18 = [MEMORY[0x277CBEB18] array];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = ___SpotlightDaemonClientHandleCommand_block_invoke_5;
    v98[3] = &unk_2789AE300;
    v19 = v18;
    v99 = v19;
    [v16 enumerateObjectsUsingBlock:v98];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v19 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1 | (v19 == 0))
      {

        goto LABEL_38;
      }

      v34 = [v19 count] == 0;

      if (v34)
      {
LABEL_38:
        v35 = logForCSLogCategoryDaemonClient();
        v36 = os_signpost_id_generate(v35);

        v37 = logForCSLogCategoryDaemonClient();
        v38 = v37;
        if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
        {
          v39 = [v19 count];
          *buf = 134218240;
          *&buf[4] = v39;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          _os_signpost_emit_with_name_impl(&dword_232D5E000, v38, OS_SIGNPOST_EVENT, v36, "ClientNotified", "count:%ld, mask:0x%lx", buf, 0x16u);
        }

        [v75 searchableItemsDidUpdate:v19 mask:v17];
      }
    }

    v7[2](v7, 0, 0, 0, 0);

    v9 = 1;
    v7 = v16;
    goto LABEL_83;
  }

LABEL_79:
  if (!v7)
  {
    v9 = 1;
    goto LABEL_85;
  }

  v64 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = xdict;
    _os_log_impl(&dword_232D5E000, v64, OS_LOG_TYPE_DEFAULT, "command not handled: %s info:%p", buf, 0x16u);
  }

  v9 = 0;
LABEL_83:

LABEL_85:
  v65 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SpotlightReceiverRegister_block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __SpotlightDaemonClientRegister_block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_232D5E000, a2, OS_LOG_TYPE_ERROR, "Error setting up reciever for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}