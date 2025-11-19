void __brc_create_section(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (__brc_create_section_once != -1)
  {
    __brc_create_section_cold_1();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ____brc_create_section_block_invoke_2;
  v10[3] = &unk_278507D50;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(__brc_create_section_queue, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

uint64_t ____brc_create_section_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = __brc_create_section_lastSectionID + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  __brc_create_section_lastSectionID = v2;
  return result;
}

void sub_223E7C79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

brc_task_tracker *brc_task_tracker_create(const char *a1)
{
  v2 = objc_alloc_init(brc_task_tracker);
  if (!a1)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      brc_task_tracker_create_cold_1(v3, v4);
    }

    a1 = "unknown";
  }

  v2->label = strdup(a1);
  v5 = dispatch_group_create();
  group = v2->group;
  v2->group = v5;

  return v2;
}

void brc_task_tracker_cancel(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    brc_task_tracker_cancel_cold_1();
  }

  atomic_store(1u, v1 + 24);
}

void __brc_leave_section(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      v5 = brc_bread_crumbs();
      v6 = *(a1 + 20);
      v7 = brc_default_log();
      v8 = v7;
      if (v2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __brc_leave_section_cold_1(v5, v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 134218242;
        v11 = v2;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

__CFString *BRCPrettyPrintEnumWithContext(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!*(a2 + 8))
  {
    v8 = @"<unknown>";
    goto LABEL_18;
  }

  v7 = (a2 + 16);
  v8 = @"<unknown>";
  while (*(v7 - 2) != a1)
  {
    v9 = *(v7 + 2);
    v7 += 6;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  v10 = v5;
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v7 - 1)];
  v12 = *v7;
  if (*v7 == 2)
  {
    v16 = v11;
    v17 = 3;
  }

  else
  {
    if (v12 != 1)
    {
      if (v12)
      {
        v13 = brc_bread_crumbs();
        v14 = brc_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          BRCPrettyPrintEnumWithContext_cold_1(v13, v14);
        }
      }

      v15 = v11;
      goto LABEL_17;
    }

    v16 = v11;
    v17 = 1;
  }

  v15 = [BRCDumpContext highlightedString:v16 type:v17 context:v10];
LABEL_17:
  v8 = v15;

LABEL_18:

  return v8;
}

uint64_t _brc_ipc_check_applibrary_read_access(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (_brc_ipc_check_logged_status(v7, a2, v9))
    {
      v13 = 0;
      v10 = [v7 _hasAccessToAppLibraryID:v8 error:&v13];
      v11 = v13;
      if ((v10 & 1) == 0)
      {
        v9[2](v9, v11);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _brc_ipc_check_logged_status(void *a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _brc_ipc_check_logged_status_cold_7();
    }

    goto LABEL_48;
  }

  if (a2 == 2)
  {
LABEL_48:
    v33 = 1;
    goto LABEL_49;
  }

  v7 = [v5 session];

  if (!v7)
  {
    v68 = +[BRCAccountsManager sharedManager];
    v66 = [v68 accountForCurrentPersona];
    v67 = [v66 identifier];
    if (v67)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] Account %@ is not loaded, waiting for it%@", buf, 0x16u);
      }

      if (![v68 waitForAccountLoadingSynchronouslyIfPossible:v67])
      {
        v69 = 0;
        v70 = 0;
LABEL_17:
        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v70;
          *&buf[12] = 2112;
          *&buf[14] = v69;
          *&buf[22] = 2112;
          v73 = v14;
          _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_INFO, "[INFO] After waiting, the sesion is: %@, handler is: %@%@", buf, 0x20u);
        }

        if (v70)
        {
          v16 = [v70 accountHandler];
          v17 = v16 == 0;

          if (!v17)
          {
            v18 = [v70 accountHandler];
            v19 = v18 == v69;

            if (!v19)
            {
              _brc_ipc_check_logged_status_cold_2();
            }
          }
        }

        if (![v69 doesNotHaveEnoughDiskSpaceToBeFunctional])
        {
          goto LABEL_34;
        }

        if ([v69 checkEnoughDiskSpaceToBeFunctional])
        {
          memset(buf, 0, sizeof(buf));
          __brc_create_section(0, "_brc_ipc_check_logged_status", 598, 0, buf);
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            _brc_ipc_check_logged_status_cold_3(buf);
          }

          if (v66)
          {
            v22 = v69;
            objc_sync_enter(v22);
            if ([v22 doesNotHaveEnoughDiskSpaceToBeFunctional])
            {
              [v22 setDoesNotHaveEnoughDiskSpaceToBeFunctional:0];
              objc_sync_exit(v22);

              __brc_leave_section(buf);
              v23 = brc_bread_crumbs();
              v24 = brc_default_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v23;
                _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[NOTICE] iCloud Drive has now enough disk space to work so loading account%@", buf, 0xCu);
              }

              [v22 startAndLoadAccountSynchronously:v66];
              v25 = brc_bread_crumbs();
              v26 = brc_default_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                _brc_ipc_check_logged_status_cold_4();
              }

              BRPostAccountTokenChangedNotification();
              v27 = [v22 session];

              v70 = v27;
LABEL_34:
              if (v70)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = +[BRCDaemon daemon];
                  [v28 waitOnAccountResumedQueue];
                }

                [v5 setSession:v70];
              }

              goto LABEL_39;
            }

            v46 = brc_bread_crumbs();
            v47 = brc_default_log();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v74) = 138412290;
              *(&v74 + 4) = v46;
              _os_log_impl(&dword_223E7A000, v47, OS_LOG_TYPE_DEFAULT, "[NOTICE] another thread has already tried to load the account%@", &v74, 0xCu);
            }

            objc_sync_exit(v22);
            __brc_leave_section(buf);
          }

          else
          {
            __brc_leave_section(buf);
          }
        }

        v48 = brc_bread_crumbs();
        v49 = brc_default_log();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v48;
          _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[WARNING] Returning error because iCloud Drive doesn't have enough disk space to be functional%@", buf, 0xCu);
        }

        v50 = MEMORY[0x277CCA9B8];
        *&v74 = *MEMORY[0x277CCA450];
        v51 = [MEMORY[0x277CCA8D8] mainBundle];
        v52 = [v51 localizedStringForKey:@"Can't use iCloud Drive." value:&stru_2837504F0 table:0];
        *buf = v52;
        *(&v74 + 1) = *MEMORY[0x277CCA470];
        v53 = [MEMORY[0x277CCA8D8] mainBundle];
        v54 = [v53 localizedStringForKey:@"The disk is full." value:&stru_2837504F0 table:0];
        *&buf[8] = v54;
        v75 = *MEMORY[0x277CCA498];
        v55 = [MEMORY[0x277CCA8D8] mainBundle];
        v56 = [v55 localizedStringForKey:@"Free some space on your disk?" value:&stru_2837504F0 table:0];
        *&buf[16] = v56;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v74 count:3];
        v58 = [v50 errorWithDomain:*MEMORY[0x277CFABD0] code:34 userInfo:v57];

        v6[2](v6, v58);
        goto LABEL_70;
      }

      v69 = [v68 accountHandlerForACAccountID:v67];
      [v69 session];
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _brc_ipc_check_logged_status_cold_1();
      }

      v69 = [v68 accountHandlerForCurrentPersona];
      [v69 session];
    }
    v70 = ;
    goto LABEL_17;
  }

LABEL_39:
  v29 = [v5 session];
  v30 = v29;
  if (v29)
  {
    v31 = 1;
  }

  else
  {
    v31 = -1;
  }

  if (v31 == a2 || a2 == 3 && v30 || !a2)
  {
    goto LABEL_48;
  }

  if (a2 == -1)
  {
    v32 = [MEMORY[0x277CCA9B8] brc_errorDaemonShouldBeLoggedOut];
    v6[2](v6, v32);

LABEL_70:
    v33 = 0;
    goto LABEL_49;
  }

  v71 = 0;
  v36 = [BRCSystemSupportAnalyzer isCloudDocsSupportedWithError:&v71];
  v37 = v71;
  if (!v36)
  {
    v44 = brc_bread_crumbs();
    v45 = brc_default_log();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v44;
      _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] Returning error because iCloud Drive not supported: %@%@", buf, 0x16u);
    }

    v6[2](v6, v37);
    goto LABEL_70;
  }

  v38 = +[BRCAccountsManager sharedManager];
  if (![v38 waitForInitialAccountLoadingSynchronouslyIfPossible])
  {
    v40 = 0;
LABEL_72:
    v59 = MEMORY[0x277CCA9B8];
    v60 = [v40 loggedOutError];
    v43 = [v59 brc_errorLoggedOutWithUnderlyingError:v60];

    goto LABEL_73;
  }

  v39 = [v38 accountForCurrentPersona];
  v40 = [v38 accountHandlerForCurrentPersona];
  v41 = [v40 waitForSessionLoading];
  if (v39)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1;
  }

  if ((v42 & 1) == 0 && [v39 br_isEnabledForCloudDocs] && objc_msgSend(v39, "br_isEligibleiCloudAccount"))
  {
    v62 = brc_bread_crumbs();
    v63 = brc_default_log();
    if (os_log_type_enabled(v63, 0x90u))
    {
      _brc_ipc_check_logged_status_cold_5();
    }

    v64 = brc_bread_crumbs();
    v65 = brc_default_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountHandler _loadOnDiskAccountSessionWithError:];
    }

    exit(0);
  }

  v43 = [v40 loggedOutError];

  if (!v43)
  {
    goto LABEL_72;
  }

LABEL_73:
  if (a2 == 3 && (([v43 br_isCloudDocsErrorCode:22] & 1) != 0 || (objc_msgSend(v43, "br_isCloudDocsErrorCode:", 34) & 1) != 0))
  {
    v61 = 0;
    v33 = 1;
  }

  else
  {
    v6[2](v6, v43);
    v33 = 0;
    v61 = 1;
  }

  if (v61)
  {
    goto LABEL_70;
  }

LABEL_49:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_223E7E848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  __brc_leave_section(&a15);
  _Unwind_Resume(a1);
}

uint64_t _brc_ipc_check_applibrary_write_access(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (_brc_ipc_check_logged_status(v7, a2, v9))
    {
      v13 = 0;
      v10 = [v7 _canCreateAppLibraryWithID:v8 error:&v13];
      v11 = v13;
      if ((v10 & 1) == 0)
      {
        v9[2](v9, v11);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

id BRCExecutableNameForProcessIdentifier()
{
  v0 = MEMORY[0x28223BE20]();
  v6 = *MEMORY[0x277D85DE8];
  if (proc_pidpath(v0, buffer, 0x1000u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v1 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:buffer isDirectory:0 relativeToURL:0];
    v2 = [v1 lastPathComponent];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_15(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, 0x90u, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_5(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

id _BRBlockRememberPersona(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 userPersonaUniqueString];

  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___BRBlockRememberPersona_block_invoke;
    v7[3] = &unk_278500048;
    v8 = v4;
    v9 = v1;
    v5 = [v7 copy];
  }

  else
  {
    v5 = MEMORY[0x22AA4A310](v1);
  }

  return v5;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t *OUTLINED_FUNCTION_21@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_223E7FE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __brc_leave_section_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t _brc_ipc_check_applibrary_proxy(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    if (_brc_ipc_check_logged_status(v5, a2, v6))
    {
      v10 = 0;
      v7 = [v5 _isAppLibraryProxyWithError:&v10];
      v8 = v10;
      if ((v7 & 1) == 0)
      {
        v6[2](v6, v8);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t result, uint64_t a2, double a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

uint64_t brc_mutex_unlock(pthread_mutex_t *a1)
{
  result = pthread_mutex_unlock(a1);
  if (result)
  {
    brc_mutex_unlock_cold_1();
  }

  return result;
}

void __dispatch_async_with_logs_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_1(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_5(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_6(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_7(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_8(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_9(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_10(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_11(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[NOTIF] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_12(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_13(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_14(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_15(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_16(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_17(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_18(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_19(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_20(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_async_with_logs_block_invoke_21(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_223E82650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t brc_mutex_lock(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result)
  {
    if (result == 11)
    {
      brc_mutex_abort("Dead lock");
    }

    brc_mutex_abort("Invalid mutex");
  }

  return result;
}

void __dispatch_group_async_with_logs_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __dispatch_group_async_with_logs_block_invoke_0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v9 = v6;
    v10 = 2080;
    v11 = label;
    v12 = 2112;
    v13 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v6);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __brc_task_tracker_async_with_logs_and_qos_block_invoke_11(uint64_t a1)
{
  is_cancelled = brc_task_tracker_is_cancelled(*(a1 + 32));
  v3 = 40;
  if (is_cancelled)
  {
    v3 = 48;
  }

  v4 = *(*(a1 + v3) + 16);

  return v4();
}

uint64_t brc_task_tracker_is_cancelled(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    brc_task_tracker_is_cancelled_cold_1();
  }

  v2 = atomic_load(v1 + 24);

  return v2 & 1;
}

void brc_task_tracker_async_with_logs_and_qos(void *a1, void *a2, dispatch_block_flags_t a3, dispatch_qos_class_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    brc_task_tracker_async_with_logs_and_qos_cold_1();
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __brc_task_tracker_async_with_logs_and_qos_block_invoke;
  v27[3] = &unk_278500048;
  v15 = v11;
  v28 = v15;
  v29 = v14;
  v16 = MEMORY[0x22AA4A310](v27);
  is_cancelled = brc_task_tracker_is_cancelled(v15);
  v18 = v15[2];
  if (is_cancelled)
  {
    if (a3 != DISPATCH_BLOCK_INHERIT_QOS_CLASS || a4)
    {
      v19 = dispatch_block_create_with_qos_class(a3, a4, 0, v16);
    }

    else
    {
      v19 = MEMORY[0x22AA4A310](v16);
    }

    v21 = v19;
    dispatch_group_async_with_logs(v18, v12, v19);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __brc_task_tracker_async_with_logs_and_qos_block_invoke_11;
    block[3] = &unk_2785066C8;
    v24 = v15;
    v25 = v13;
    v26 = v16;
    if (a3 != DISPATCH_BLOCK_INHERIT_QOS_CLASS || a4)
    {
      v20 = dispatch_block_create_with_qos_class(a3, a4, 0, block);
    }

    else
    {
      v20 = MEMORY[0x22AA4A310](block);
    }

    v22 = v20;
    dispatch_group_async_with_logs(v18, v12, v20);

    v21 = v24;
  }
}

void dispatch_group_async_with_logs(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v21 = 0uLL;
  v22 = 0;
  __brc_create_section(0, "dispatch_group_async_with_logs", 314, 0, &v21);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = v21;
    label = dispatch_queue_get_label(v6);
    *buf = 134218498;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v24 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v22;
  *buf = v21;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __dispatch_group_async_with_logs_block_invoke_0;
  v16[3] = &unk_2784FF568;
  v19 = v21;
  v20 = v22;
  v11 = v6;
  v17 = v11;
  v12 = v7;
  v18 = v12;
  dispatch_group_async(v5, v11, v16);

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

__CFString *BRCPrettyPrintBitmapWithContext(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:255];
  if (*(a2 + 8))
  {
    v7 = (a2 + 16);
    v8 = 0x277CCA000uLL;
    v9 = 0x2784FD000uLL;
    v29 = v5;
    while (1)
    {
      v10 = *(v7 - 2);
      if ((v10 & ~a1) != 0)
      {
        goto LABEL_21;
      }

      if (!v10 && a1 != 0)
      {
        goto LABEL_21;
      }

      v12 = v5;
      v13 = [*(v8 + 3240) stringWithUTF8String:*(v7 - 1)];
      v14 = v13;
      v15 = *v7;
      if (*v7 == 2)
      {
        break;
      }

      if (v15 == 1)
      {
        v17 = *(v9 + 2656);
        v18 = v14;
        v19 = 1;
LABEL_15:
        v16 = [v17 highlightedString:v18 type:v19 context:v12];
        goto LABEL_16;
      }

      if (v15)
      {
        v21 = v9;
        v22 = v8;
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v31 = v23;
          _os_log_fault_impl(&dword_223E7A000, v24, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown color%@", buf, 0xCu);
        }

        v20 = v14;
        v8 = v22;
        v9 = v21;
        v5 = v29;
        goto LABEL_20;
      }

      v16 = v13;
LABEL_16:
      v20 = v16;
LABEL_20:

      [v6 appendFormat:@"%@|", v20];
      a1 ^= v10;
LABEL_21:
      v25 = *(v7 + 2);
      v7 += 6;
      if (!v25)
      {
        goto LABEL_22;
      }
    }

    v17 = *(v9 + 2656);
    v18 = v14;
    v19 = 3;
    goto LABEL_15;
  }

LABEL_22:
  if (a1)
  {
    [v6 appendFormat:@"0x%llx", a1];
LABEL_26:
    v26 = v6;
    goto LABEL_27;
  }

  if ([v6 length])
  {
    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
    goto LABEL_26;
  }

  v26 = &stru_2837504F0;
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void dispatch_async_with_logs(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_0(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_0;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_1(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_notifications_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_2;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_2(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_6;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_3(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_8;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_4(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_9;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_5(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_10;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_6(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_notifications_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[NOTIF] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_11;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_7(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_13;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_8(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_15;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_9(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_16;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_10(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_17;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void dispatch_async_with_logs_11(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v18 = 0uLL;
  v19 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v18);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v18;
    label = dispatch_queue_get_label(v3);
    *buf = 134218498;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = label;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", buf, 0x20u);
  }

  *&buf[16] = v19;
  *buf = v18;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __dispatch_async_with_logs_block_invoke_20;
  v13[3] = &unk_2784FF568;
  v16 = v18;
  v17 = v19;
  v8 = v3;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  dispatch_async(v8, v13);

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t BRFieldCKInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_48;
            }
          }

          v22 = (v26 != 0) & ~[a2 hasError];
LABEL_48:
          v31 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_52;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_50;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_50:
          v31 = 33;
        }

        *(a1 + v31) = v22;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 4:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          case 5:
            v14 = PBReaderReadData();
            v15 = 8;
            break;
          default:
            goto LABEL_45;
        }

        v23 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_52:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_223E89C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *prettyPrintServerChangeToken(void *a1, uint64_t a2)
{
  v2 = [a1 descriptionWithContext:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil-token";
  }

  v5 = v4;

  return v4;
}

void sub_223E8C528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E8C63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E8C750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_9_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

BOOL OUTLINED_FUNCTION_12(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_11_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x20u);
}

void OUTLINED_FUNCTION_11_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_11_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, v4, 0xCu);
}

BOOL BRCQuarantineInfoIsEqual(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 ignoredQuarantineMask];

  v7 = [v4 br_qtnFlags];
  v8 = [v3 br_qtnFlags];

  v9 = (v8 ^ v7) & ~v6;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109890;
      v14[1] = v7;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = v6;
      v19 = 2112;
      v20 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Quarantine info differs in flags %u vs %u ignoring %u%@", v14, 0x1Eu);
    }
  }

  result = v9 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223E91620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BRFieldStructureSignatureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___BRFieldStructureSignature__oldVersionIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___BRFieldStructureSignature__versionIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_223E94688(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t BRFieldContentSignatureReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_36:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_41;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_40;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_40:
      *(a1 + 8) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = PBReaderReadData();
      v15 = 16;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

void sub_223E970C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryStuckStatusReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v151 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v151 & 0x7F) << v5;
        if ((v151 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 156) |= 0x40000u;
          while (1)
          {
            v151 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v151 & 0x7F) << v13;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
LABEL_259:
              v149 = 152;
              goto LABEL_282;
            }
          }

          v19 = (v15 != 0) & ~[a2 hasError];
          goto LABEL_259;
        case 2u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 156) |= 0x80000u;
          while (1)
          {
            v151 = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v151 & 0x7F) << v81;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_261;
            }
          }

          v19 = (v83 != 0) & ~[a2 hasError];
LABEL_261:
          v149 = 153;
          goto LABEL_282;
        case 3u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 156) |= 2u;
          while (1)
          {
            v151 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v151 & 0x7F) << v57;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_245;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v59;
          }

LABEL_245:
          v148 = 16;
          goto LABEL_299;
        case 4u:
          v69 = 0;
          v70 = 0;
          v71 = 0;
          *(a1 + 156) |= 4u;
          while (1)
          {
            v151 = 0;
            v72 = [a2 position] + 1;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
            {
              v74 = [a2 data];
              [v74 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v71 |= (v151 & 0x7F) << v69;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v69 += 7;
            v11 = v70++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_253;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v71;
          }

LABEL_253:
          v148 = 24;
          goto LABEL_299;
        case 5u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 156) |= 1u;
          while (1)
          {
            v151 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v151 & 0x7F) << v39;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_233;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v41;
          }

LABEL_233:
          v148 = 8;
          goto LABEL_299;
        case 6u:
          v99 = 0;
          v100 = 0;
          v101 = 0;
          *(a1 + 156) |= 8u;
          while (1)
          {
            v151 = 0;
            v102 = [a2 position] + 1;
            if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
            {
              v104 = [a2 data];
              [v104 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v101 |= (v151 & 0x7F) << v99;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            v11 = v100++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_271;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v101;
          }

LABEL_271:
          v148 = 32;
          goto LABEL_299;
        case 7u:
          v117 = 0;
          v118 = 0;
          v119 = 0;
          *(a1 + 156) |= 0x100000u;
          while (1)
          {
            v151 = 0;
            v120 = [a2 position] + 1;
            if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
            {
              v122 = [a2 data];
              [v122 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v119 |= (v151 & 0x7F) << v117;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v117 += 7;
            v11 = v118++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_281;
            }
          }

          v19 = (v119 != 0) & ~[a2 hasError];
LABEL_281:
          v149 = 154;
          goto LABEL_282;
        case 8u:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 156) |= 0x20u;
          while (1)
          {
            v151 = 0;
            v78 = [a2 position] + 1;
            if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
            {
              v80 = [a2 data];
              [v80 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v77 |= (v151 & 0x7F) << v75;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v11 = v76++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_257;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v77;
          }

LABEL_257:
          v148 = 48;
          goto LABEL_299;
        case 9u:
          v135 = 0;
          v136 = 0;
          v137 = 0;
          *(a1 + 156) |= 0x10u;
          while (1)
          {
            v151 = 0;
            v138 = [a2 position] + 1;
            if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
            {
              v140 = [a2 data];
              [v140 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v137 |= (v151 & 0x7F) << v135;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v135 += 7;
            v11 = v136++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_294;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v137;
          }

LABEL_294:
          v148 = 40;
          goto LABEL_299;
        case 0xAu:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 156) |= 0x800u;
          while (1)
          {
            v151 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v151 & 0x7F) << v51;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_241;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v53;
          }

LABEL_241:
          v148 = 96;
          goto LABEL_299;
        case 0xBu:
          v129 = 0;
          v130 = 0;
          v131 = 0;
          *(a1 + 156) |= 0x100u;
          while (1)
          {
            v151 = 0;
            v132 = [a2 position] + 1;
            if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
            {
              v134 = [a2 data];
              [v134 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v131 |= (v151 & 0x7F) << v129;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v129 += 7;
            v11 = v130++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_290;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v131;
          }

LABEL_290:
          v148 = 72;
          goto LABEL_299;
        case 0xCu:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 156) |= 0x1000u;
          while (1)
          {
            v151 = 0;
            v36 = [a2 position] + 1;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v35 |= (v151 & 0x7F) << v33;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v11 = v34++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_229;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v35;
          }

LABEL_229:
          v148 = 104;
          goto LABEL_299;
        case 0xDu:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 156) |= 0x400u;
          while (1)
          {
            v151 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v151 & 0x7F) << v45;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_237;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v47;
          }

LABEL_237:
          v148 = 88;
          goto LABEL_299;
        case 0xEu:
          v111 = 0;
          v112 = 0;
          v113 = 0;
          *(a1 + 156) |= 0x200u;
          while (1)
          {
            v151 = 0;
            v114 = [a2 position] + 1;
            if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
            {
              v116 = [a2 data];
              [v116 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v113 |= (v151 & 0x7F) << v111;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v111 += 7;
            v11 = v112++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_279;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v113;
          }

LABEL_279:
          v148 = 80;
          goto LABEL_299;
        case 0xFu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 156) |= 0x80u;
          while (1)
          {
            v151 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v151 & 0x7F) << v27;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_225;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_225:
          v148 = 64;
          goto LABEL_299;
        case 0x10u:
          v63 = 0;
          v64 = 0;
          v65 = 0;
          *(a1 + 156) |= 0x40u;
          while (1)
          {
            v151 = 0;
            v66 = [a2 position] + 1;
            if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
            {
              v68 = [a2 data];
              [v68 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v65 |= (v151 & 0x7F) << v63;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v11 = v64++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_249;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v65;
          }

LABEL_249:
          v148 = 56;
          goto LABEL_299;
        case 0x11u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 156) |= 0x2000u;
          while (1)
          {
            v151 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v151 & 0x7F) << v20;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_221;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_221:
          v148 = 112;
          goto LABEL_299;
        case 0x12u:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *(a1 + 156) |= 0x200000u;
          while (1)
          {
            v151 = 0;
            v90 = [a2 position] + 1;
            if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
            {
              v92 = [a2 data];
              [v92 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v89 |= (v151 & 0x7F) << v87;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v11 = v88++ >= 9;
            if (v11)
            {
              LOBYTE(v19) = 0;
              goto LABEL_263;
            }
          }

          v19 = (v89 != 0) & ~[a2 hasError];
LABEL_263:
          v149 = 155;
LABEL_282:
          *(a1 + v149) = v19;
          goto LABEL_300;
        case 0x13u:
          v123 = 0;
          v124 = 0;
          v125 = 0;
          *(a1 + 156) |= 0x4000u;
          while (1)
          {
            v151 = 0;
            v126 = [a2 position] + 1;
            if (v126 >= [a2 position] && (v127 = objc_msgSend(a2, "position") + 1, v127 <= objc_msgSend(a2, "length")))
            {
              v128 = [a2 data];
              [v128 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v125 |= (v151 & 0x7F) << v123;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v123 += 7;
            v11 = v124++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_286;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v125;
          }

LABEL_286:
          v148 = 120;
          goto LABEL_299;
        case 0x14u:
          v142 = 0;
          v143 = 0;
          v144 = 0;
          *(a1 + 156) |= 0x10000u;
          while (1)
          {
            v151 = 0;
            v145 = [a2 position] + 1;
            if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
            {
              v147 = [a2 data];
              [v147 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v144 |= (v151 & 0x7F) << v142;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v142 += 7;
            v11 = v143++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_298;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v144;
          }

LABEL_298:
          v148 = 136;
          goto LABEL_299;
        case 0x15u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 156) |= 0x8000u;
          while (1)
          {
            v151 = 0;
            v96 = [a2 position] + 1;
            if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
            {
              v98 = [a2 data];
              [v98 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v95 |= (v151 & 0x7F) << v93;
            if ((v151 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v11 = v94++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_267;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v95;
          }

LABEL_267:
          v148 = 128;
          goto LABEL_299;
        case 0x16u:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          *(a1 + 156) |= 0x20000u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_300;
      }

      while (1)
      {
        v151 = 0;
        v108 = [a2 position] + 1;
        if (v108 >= [a2 position] && (v109 = objc_msgSend(a2, "position") + 1, v109 <= objc_msgSend(a2, "length")))
        {
          v110 = [a2 data];
          [v110 getBytes:&v151 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v107 |= (v151 & 0x7F) << v105;
        if ((v151 & 0x80) == 0)
        {
          break;
        }

        v105 += 7;
        v11 = v106++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_275;
        }
      }

      v26 = [a2 hasError] ? 0 : v107;
LABEL_275:
      v148 = 144;
LABEL_299:
      *(a1 + v148) = v26;
LABEL_300:
      v150 = [a2 position];
    }

    while (v150 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AppTelemetryQBSInvestigationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v50 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v38;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthDirCount;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthDirCount;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v49 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthDirFaultCount;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthDirFaultCount;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v28;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__clientTruthDirFaultCount;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__clientTruthDirFaultCount;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              v47 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v33;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__timeSinceLogin;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__timeSinceLogin;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthTotalItemsCount;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AppTelemetryQBSInvestigation__serverTruthTotalItemsCount;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_223EA0498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EA0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EA280C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EA4CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id queryPlanForSQL(const char *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [MEMORY[0x277D82C18] rawInjection:a1 length:strlen(a1)];
  v6 = [v3 fetch:{@"explain query plan %@", v5}];

  [v4 appendFormat:@"plan:\n"];
  if ([v6 next])
  {
    do
    {
      v7 = [v6 stringAtIndex:3];
      [v4 appendFormat:@"    %@\n", v7];
    }

    while (([v6 next] & 1) != 0);
  }

  return v4;
}

void sub_223EA7154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EA9DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v18);
  __brc_leave_section(&a18);
  _Unwind_Resume(a1);
}

void sub_223EAADF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EAB460(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 128));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_223EAC67C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EAC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak((v30 + 40));
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v33 - 136), 8);
  objc_destroyWeak((v33 - 88));
  _Unwind_Resume(a1);
}

void sub_223EACEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EAD5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EB18E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

id _issueReadWriteSandboxExtensionForURL(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *MEMORY[0x277D861C0];
  v9 = 0;
  v3 = [v1 brc_issueSandboxExtensionOfClass:v2 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_notifications_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _issueReadWriteSandboxExtensionForURL_cold_1();
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      *buf = 138412802;
      v11 = v1;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] failed to issue sandbox extension for %@: %@%@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t BRFieldFinderTagsReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTags:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_223EB3360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EB3578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1();
    }

    v3 = _block_invoke___personalPersona;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = [MEMORY[0x277D77BF8] sharedManager];
  v6 = [v5 currentPersona];

  v28 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!voucher_process_can_use_arbitrary_personas())
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_3();
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      if (v15)
      {
        goto LABEL_25;
      }
    }

LABEL_9:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v27 = 0;
  v10 = [v6 copyCurrentPersonaContextWithError:&v27];
  v11 = v27;
  v12 = v28;
  v28 = v10;

  if (v11)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      __br_notify_register_dispatch_block_invoke_cold_4();
    }
  }

  v15 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, 0x90u))
  {
    v26 = *(a1 + 32);
    *buf = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
  }

LABEL_25:
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    v24 = *(a1 + 48);
    v25 = [v15 localizedDescription];
    *buf = 136315650;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v33 = 2112;
    v34 = v20;
    _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to adopt persona for notification %s due to %@%@", buf, 0x20u);
  }

LABEL_10:
  _BRRestorePersona();

  v9 = *MEMORY[0x277D85DE8];
}

void __br_notify_register_dispatch_block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona;
  _block_invoke___personalPersona = v0;
}

void sub_223EB7800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EB8B30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t create_control_file(char *a1, __darwin_ino64_t *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 && unlink(a1) && *__error() != 2)
  {
    v7 = *__error();
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v11 = 136315650;
      v12 = a1;
      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] failed unlinking '%s' %{errno}d%@", &v11, 0x1Cu);
    }

    *__error() = v7;
    v10 = *MEMORY[0x277D85DE8];
    return 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *MEMORY[0x277D85DE8];

    return file_id_from_control_file(a1, a2, 0);
  }
}

uint64_t file_id_from_control_file(const char *a1, __darwin_ino64_t *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(&v18, 0, sizeof(v18));
  if (a3)
  {
    v5 = open(a1, 33028, 384);
  }

  else
  {
    v5 = open(a1, 773, 384);
  }

  if (v5 < 0)
  {
    v11 = *__error();
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      *buf = 136315650;
      v20 = a1;
      v21 = 1024;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] failed opening '%s' %{errno}d%@", buf, 0x1Cu);
    }

    *__error() = v11;
    goto LABEL_12;
  }

  v6 = v5;
  if (fstat(v5, &v18))
  {
    v7 = *__error();
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      *buf = 136315650;
      v20 = a1;
      v21 = 1024;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] failed stating '%s' %{errno}d%@", buf, 0x1Cu);
    }

    *__error() = v7;
    v10 = *__error();
    close(v6);
    *__error() = v10;
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  if (close(v6))
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      file_id_from_control_file_cold_1();
    }
  }

  result = 0;
  *a2 = v18.st_ino;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223EBD078(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_223EBD548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak((v12 + 32));
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EBD884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC1170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EC2060(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_223EC5714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void BRSetupAARequest(void *a1)
{
  v4 = a1;
  v1 = *MEMORY[0x277CBECE8];
  v2 = _CFHTTPCookieStorageCreateWithProperties();
  if (v2)
  {
    v3 = v2;
    [v4 setCookieStorage:v2];
    CFRelease(v3);
  }
}

void sub_223EC5B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC5E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC65D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC7054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC7BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC80DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC8888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EC94C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11, uint64_t a12, char a13)
{
  if (a2 == 2)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      v18 = [v15 reason];
      [(BRCAccountHandler *)v18 _tryToOpenSession:v16 error:&a13];
    }

    v19 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:22 description:@"Disabled - iCloud Drive database is from the future"];
    [v14 setLoggedOutError:v19];

    if (v13)
    {
      *v13 = [v14 loggedOutError];
    }

    objc_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v20 = objc_begin_catch(exception_object);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      [BRCAccountHandler _tryToOpenSession:error:];
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      v25 = [v20 callStackSymbols];
      [(BRCAccountHandler *)v25 _tryToOpenSession:v23 error:&a13];
    }

    if (v13)
    {
      v26 = MEMORY[0x277CCA9B8];
      a11 = @"exception";
      a12 = v20;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
      *v13 = [v26 errorWithDomain:*MEMORY[0x277CFABD0] code:9999 userInfo:v27];
    }

    objc_end_catch();
  }

  JUMPOUT(0x223EC940CLL);
}

void sub_223ECA548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223ECA7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223ECAACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void __brc_dispatch_async_autorelease_with_logs_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v10 = v7;
    v11 = 2080;
    v12 = label;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v7);
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_223ECF990(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_223ED19D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BRDiskCheckerServiceConnection()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.iCloudDriveCore.telemetry-disk-checker"];
  v1 = BRDiskCheckerServiceInterface();
  [v0 setRemoteObjectInterface:v1];

  [v0 resume];

  return v0;
}

void sub_223ED1F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_223ED22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223ED9A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

id BRDiskCheckerServiceInterface()
{
  if (BRDiskCheckerServiceInterface_onceToken != -1)
  {
    BRDiskCheckerServiceInterface_cold_1();
  }

  v1 = BRDiskCheckerServiceInterface_interface;

  return v1;
}

void __BRDiskCheckerServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28380EAB8];
  v1 = BRDiskCheckerServiceInterface_interface;
  BRDiskCheckerServiceInterface_interface = v0;

  v2 = BRDiskCheckerServiceInterface_interface;
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_checkTreeConsistencyWithDatabaseURL_rootURLWrappers_fileChecksumRatePerThousand_packageChecksumRatePerThousand_maxEventsCount_forZoneRowIDs_reply_ argumentIndex:0 ofReply:0];

  v4 = BRDiskCheckerServiceInterface_interface;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v4 setClasses:v7 forSelector:sel_checkTreeConsistencyWithDatabaseURL_rootURLWrappers_fileChecksumRatePerThousand_packageChecksumRatePerThousand_maxEventsCount_forZoneRowIDs_reply_ argumentIndex:1 ofReply:0];

  v8 = BRDiskCheckerServiceInterface_interface;
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v8 setClasses:v11 forSelector:sel_checkTreeConsistencyWithDatabaseURL_rootURLWrappers_fileChecksumRatePerThousand_packageChecksumRatePerThousand_maxEventsCount_forZoneRowIDs_reply_ argumentIndex:0 ofReply:1];

  v12 = BRDiskCheckerServiceInterface_interface;
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:sel_checkTreeConsistencyWithDatabaseURL_rootURLWrappers_fileChecksumRatePerThousand_packageChecksumRatePerThousand_maxEventsCount_forZoneRowIDs_reply_ argumentIndex:1 ofReply:1];
}

uint64_t BRCExtensionErrorPayloadReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 16)
      {
        if (v13 == 17)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_29;
        }

        if (v13 == 18)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addRecordIds:v16];
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_29;
        }

        if (v13 == 16)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_29:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_30:

          goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_223EDEC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v33 + 48));
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak((v31 + 48));
  objc_destroyWeak((v34 - 216));
  _Block_object_dispose((v34 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_223EDF988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRFieldPkgItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v57 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v57 & 0x7F) << v37;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_90;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_90:
            v52 = 8;
LABEL_98:
            *(a1 + v52) = v20;
            goto LABEL_99;
          }

          if (v13 != 4)
          {
            goto LABEL_79;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 64) |= 8u;
          while (1)
          {
            v59 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v59 & 0x7F) << v23;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_82;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_82:
          v51 = 61;
          goto LABEL_93;
        }

        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v55 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v55 & 0x7F) << v30;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

LABEL_86:
          *(a1 + 56) = v36;
          goto LABEL_99;
        }

        if (v13 != 2)
        {
          goto LABEL_79;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v58 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v58 & 0x7F) << v43;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_92;
            }
          }

          v29 = (v45 != 0) & ~[a2 hasError];
LABEL_92:
          v51 = 60;
LABEL_93:
          *(a1 + v51) = v29;
          goto LABEL_99;
        }

        if (v13 != 6)
        {
LABEL_79:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_99;
        }

        v21 = PBReaderReadString();
        v22 = 48;
      }

      else
      {
        switch(v13)
        {
          case 7:
            v21 = PBReaderReadData();
            v22 = 32;
            break;
          case 0xF:
            v21 = PBReaderReadData();
            v22 = 40;
            break;
          case 0x10:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v56 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v56 & 0x7F) << v14;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_97:
            v52 = 16;
            goto LABEL_98;
          default:
            goto LABEL_79;
        }
      }

      v49 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_99:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __brc_pendingPlaceholder_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"\x01?" length:2];
  v1 = brc_pendingPlaceholder_filePlaceHolder;
  brc_pendingPlaceholder_filePlaceHolder = v0;

  brc_pendingPlaceholder_pkgPlaceHolder = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"\x1B?" length:2];

  return MEMORY[0x2821F96F8]();
}

void sub_223EE5C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EE7140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EE75D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EE7A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryQBSPerformanceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
LABEL_60:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_79;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          v48 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v48 & 0x7F) << v21;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_77:
        v42 = 24;
        goto LABEL_78;
      }

      v39 = PBReaderReadString();
      v40 = *(a1 + 40);
      *(a1 + 40) = v39;

LABEL_79:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v47 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v47 & 0x7F) << v27;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_65:
        v42 = 8;
        break;
      case 4:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v46 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v46 & 0x7F) << v33;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_69:
        v42 = 16;
        break;
      case 5:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v45 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45 & 0x7F) << v14;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_73:
        v42 = 32;
        break;
      default:
        goto LABEL_60;
    }

LABEL_78:
    *(a1 + v42) = v20;
    goto LABEL_79;
  }

  return [a2 hasError] ^ 1;
}

uint64_t brc_mutex_init_recursive(pthread_mutex_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  LODWORD(a1) = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  if (a1)
  {
    brc_mutex_init_recursive_cold_1();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void brc_mutex_abort(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315394;
    v5 = a1;
    v6 = 2112;
    v7 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: mutex error: %s%@", &v4, 0x16u);
  }

  __break(1u);
}

uint64_t brc_mutex_init(pthread_mutex_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 1);
  LODWORD(a1) = pthread_mutex_init(a1, &v4);
  pthread_mutexattr_destroy(&v4);
  if (a1)
  {
    brc_mutex_init_recursive_cold_1();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t brc_mutex_destroy(pthread_mutex_t *a1)
{
  result = pthread_mutex_destroy(a1);
  if (result)
  {
    brc_mutex_destroy_cold_1();
  }

  return result;
}

uint64_t brc_mutex_assert_locked(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result != 11)
  {
    brc_mutex_assert_locked_cold_1();
  }

  return result;
}

uint64_t brc_mutex_assert_unlocked(pthread_mutex_t *a1)
{
  result = pthread_mutex_lock(a1);
  if (result)
  {
    if (result == 11)
    {
      brc_mutex_abort("Mutex should already be locked");
    }
  }

  else
  {

    return pthread_mutex_unlock(a1);
  }

  return result;
}

void sub_223EEB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_223EEBCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EEC088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EEC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223EEC9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EEF840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_223EEFC9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_223EF1044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _buddyHasFinished(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] BYSetupAssistantFinishedDarwinNotification was received%@", &v7, 0xCu);
  }

  result = [a2 _stopObservingBuddyAndExecuteCallbacks];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223EF16F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 128), 8);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_223EF3528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EF3EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryInvestigationReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v89) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v89 & 0x7F) << v6;
      if ((v89 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 0x3E8u:
        v14 = PBReaderReadData();
        v15 = 168;
        goto LABEL_144;
      case 0x3E9u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 184) |= 0x400u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v89 & 0x7F) << v49;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_162;
          }
        }

        v23 = (v51 != 0) & ~[a2 hasError];
LABEL_162:
        v86 = 181;
        goto LABEL_171;
      case 0x3EAu:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_144;
      case 0x3EBu:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 184) |= 2u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v89 & 0x7F) << v43;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_160;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v45;
        }

LABEL_160:
        v87 = 16;
        goto LABEL_180;
      case 0x3ECu:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_144;
      case 0x3EDu:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_144;
      case 0x3EEu:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_144;
      case 0x3EFu:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_144;
      case 0x3F0u:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_144;
      case 0x3F1u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 184) |= 0x200u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v89 & 0x7F) << v24;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_150;
          }
        }

        v23 = (v26 != 0) & ~[a2 hasError];
LABEL_150:
        v86 = 180;
        goto LABEL_171;
      case 0x3F2u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 184) |= 0x20u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v89 & 0x7F) << v67;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_170;
          }
        }

        v23 = (v69 != 0) & ~[a2 hasError];
LABEL_170:
        v86 = 176;
        goto LABEL_171;
      case 0x3F3u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 184) |= 0x100u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v89 & 0x7F) << v17;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v12 = v18++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_148;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_148:
        v86 = 179;
        goto LABEL_171;
      case 0x3F4u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_144;
      case 0x3F5u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_144;
      case 0x3F6u:
        v16 = objc_alloc_init(AppTelemetryQBSInvestigation);
        objc_storeStrong((a1 + 128), v16);
        v89 = 0;
        v90 = 0;
        if (!PBReaderPlaceMark() || !AppTelemetryQBSInvestigationReadFrom(v16, a2))
        {
          goto LABEL_183;
        }

        goto LABEL_133;
      case 0x3F7u:
        v16 = objc_alloc_init(AppTelemetryQBSPerformance);
        objc_storeStrong((a1 + 136), v16);
        v89 = 0;
        v90 = 0;
        if (!PBReaderPlaceMark() || !AppTelemetryQBSPerformanceReadFrom(v16, a2))
        {
          goto LABEL_183;
        }

        goto LABEL_133;
      case 0x3F8u:
        v16 = objc_alloc_init(AppTelemetryFPFSMigrationInvestigation);
        objc_storeStrong((a1 + 80), v16);
        v89 = 0;
        v90 = 0;
        if (!PBReaderPlaceMark() || !AppTelemetryFPFSMigrationInvestigationReadFrom(v16, a2))
        {
          goto LABEL_183;
        }

        goto LABEL_133;
      case 0x3F9u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 184) |= 4u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v89 & 0x7F) << v55;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_166;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v57;
        }

LABEL_166:
        v87 = 24;
        goto LABEL_180;
      case 0x3FAu:
        v16 = objc_alloc_init(AppTelemetryItemStatsInvestigation);
        objc_storeStrong((a1 + 96), v16);
        v89 = 0;
        v90 = 0;
        if (!PBReaderPlaceMark() || !AppTelemetryItemStatsInvestigationReadFrom(v16, a2))
        {
          goto LABEL_183;
        }

        goto LABEL_133;
      case 0x3FBu:
        v16 = objc_alloc_init(AppTelemetryStuckStatus);
        objc_storeStrong((a1 + 152), v16);
        v89 = 0;
        v90 = 0;
        if (PBReaderPlaceMark() && AppTelemetryStuckStatusReadFrom(v16, a2))
        {
LABEL_133:
          PBReaderRecallMark();

LABEL_181:
          v4 = a2;
          continue;
        }

LABEL_183:

        return 0;
      case 0x3FCu:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 184) |= 0x80u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v89 & 0x7F) << v61;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_168;
          }
        }

        v23 = (v63 != 0) & ~[a2 hasError];
LABEL_168:
        v86 = 178;
        goto LABEL_171;
      case 0x3FDu:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_144;
      case 0x3FEu:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 184) |= 0x10u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v89 & 0x7F) << v73;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_175;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v75;
        }

LABEL_175:
        v87 = 40;
        goto LABEL_180;
      case 0x3FFu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 184) |= 8u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v89 & 0x7F) << v79;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_179;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v81;
        }

LABEL_179:
        v87 = 32;
        goto LABEL_180;
      case 0x400u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 184) |= 0x40u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v89 & 0x7F) << v37;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            LOBYTE(v23) = 0;
            goto LABEL_156;
          }
        }

        v23 = (v39 != 0) & ~[a2 hasError];
LABEL_156:
        v86 = 177;
LABEL_171:
        *(a1 + v86) = v23;
        goto LABEL_181;
      case 0x401u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 184) |= 1u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v89 & 0x7F) << v30;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_154;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_154:
        v87 = 8;
LABEL_180:
        *(a1 + v87) = v36;
        goto LABEL_181;
      case 0x402u:
        v14 = PBReaderReadString();
        v15 = 64;
LABEL_144:
        v85 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_181;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_181;
    }
  }
}

void sub_223EF8D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EF8F14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_223EF9AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223EF9CC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EFCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 152));
  _Unwind_Resume(a1);
}

void sub_223EFE3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223EFFBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose((v30 - 160), 8);
  __brc_leave_section(&a30);
  _Unwind_Resume(a1);
}

void sub_223F004E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F00FA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_223F0225C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_223F02638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_223F033A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 232));
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_223F04260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F045C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F049BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F04D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F05708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __brc_leave_section(&a9);
  __brc_leave_section(&a12);
  _Unwind_Resume(a1);
}

void __brc_dispatch_async_autorelease_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __brc_dispatch_async_autorelease_with_logs_block_invoke_0(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v3 = brc_bread_crumbs();
  v4 = brc_notifications_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    label = dispatch_queue_get_label(*(a1 + 32));
    *buf = 134218498;
    v10 = v7;
    v11 = 2080;
    v12 = label;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[NOTIF] ┳%llx continuing on %s%@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  __brc_leave_section(&v7);
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_223F05CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id userNotificationRefToCompletionBlock()
{
  if (userNotificationRefToCompletionBlock_onceToken != -1)
  {
    userNotificationRefToCompletionBlock_cold_1();
  }

  v1 = userNotificationRefToCompletionBlock_userNotificationRefToCompletion;

  return v1;
}

void _notificationCallback(void *a1, char a2)
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = userNotificationRefToCompletionBlock();
  v5 = a1;
  v6 = [v4 objectForKey:v5];
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      _notificationCallback_cold_1(a2 & 3);
    }

    v6[2](v6, a2 & 3);
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      _notificationCallback_cold_2();
    }
  }

  [v4 removeObjectForKey:v5];
}

uint64_t __userNotificationRefToCompletionBlock_block_invoke()
{
  userNotificationRefToCompletionBlock_userNotificationRefToCompletion = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];

  return MEMORY[0x2821F96F8]();
}

void sub_223F0A9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223F0C840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0CBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0CDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F0D000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0D330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  __brc_leave_section(v6 - 56);
  _Unwind_Resume(a1);
}

void sub_223F0DBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0DF90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0F6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0F948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F0FB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F13504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F14498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, os_activity_scope_state_s state)
{
  __brc_leave_section(&a24);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_223F15198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

BOOL BRCRecursivelyChangeOwnerAndGroupToMobile(void *a1, void *a2)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v26 = a1;
  v2 = *MEMORY[0x277CCA120];
  v48[0] = *MEMORY[0x277CCA160];
  v48[1] = v2;
  v49[0] = @"mobile";
  v49[1] = @"mobile";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__12;
  v39 = __Block_byref_object_dispose__12;
  v40 = 0;
  obj = 0;
  v4 = [v26 setResourceValues:v3 error:&obj];
  objc_storeStrong(&v40, obj);
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __BRCRecursivelyChangeOwnerAndGroupToMobile_block_invoke;
    v33[3] = &unk_278500E40;
    v33[4] = &v35;
    v6 = [v5 enumeratorAtURL:v26 includingPropertiesForKeys:0 options:0 errorHandler:v33];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v8)
    {
      v9 = *v30;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = (v36 + 5);
          v28 = v36[5];
          v14 = [v11 setResourceValues:v3 error:&v28];
          objc_storeStrong(v13, v28);
          if ((v14 & 1) == 0)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, 0x90u))
            {
              v17 = [v11 path];
              v18 = v36[5];
              *buf = 138412802;
              v43 = v17;
              v44 = 2112;
              v45 = v18;
              v46 = 2112;
              v47 = v15;
              _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] Failed to make %@ owned by mobile: %@%@", buf, 0x20u);
            }

            if (a2)
            {
              *a2 = v36[5];
            }
          }

          objc_autoreleasePoolPop(v12);
          if (!v14)
          {

            v19 = 0;
            goto LABEL_21;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v19 = v36[5] == 0;
LABEL_21:
  }

  else
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      v24 = [v26 path];
      v25 = v36[5];
      *buf = 138412802;
      v43 = v24;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] Failed to make %@ owned by mobile: %@%@", buf, 0x20u);
    }

    v19 = 0;
    if (a2)
    {
      *a2 = v36[5];
    }
  }

  _Block_object_dispose(&v35, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __BRCRecursivelyChangeOwnerAndGroupToMobile_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, 0x90u))
  {
    v13 = [v5 path];
    v14 = 138412802;
    v15 = v13;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] Error enumerating %@: %@%@", &v14, 0x20u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_223F1C81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F1E17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_223F25810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223F25D7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F2A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F2ADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_223F2B278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223F2EB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BRCIsLegacyUbiquityFault(int a1, char a2, __int16 a3, _DWORD *a4)
{
  if ((a2 & 0x20) != 0)
  {
    value[0] = 0;
    value[1] = 0;
    v10 = 0;
    if (fgetxattr(a1, "com.apple.decmpfs", value, 0x14uLL, 0, 32) == 20)
    {
      v6 = LODWORD(value[0]) == 1668116582 && HIDWORD(value[0]) == -2147483647;
      if (v6 && v10 == 1)
      {
        return 1;
      }
    }
  }

  if ((a3 & 0xF000) == 0x4000 && *a4 == 1802465890)
  {
    return 2;
  }

  return 0;
}

uint64_t BRCTouchRootMergeWitness(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCAA00];
  v5 = a1;
  v6 = [v4 defaultManager];
  v7 = [v5 stringByAppendingPathComponent:*MEMORY[0x277CFAD70]];

  v26 = 0;
  v8 = [v6 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v26];
  v9 = v26;
  if ((v8 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v31 = v7;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] Unable to create directory %@: %@%@", buf, 0x20u);
    }
  }

  v12 = MEMORY[0x277CBEBC0];
  v29[0] = v7;
  v29[1] = @".icloud-drive.do-not-delete";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v14 = [v12 fileURLWithPathComponents:v13];

  v15 = [MEMORY[0x277CBEA90] data];
  [v15 writeToURL:v14 atomically:0];

  v16 = *MEMORY[0x277CBE888];
  v27[0] = *MEMORY[0x277CBE7C0];
  v27[1] = v16;
  v28[0] = v3;
  v28[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v25 = v9;
  v18 = [v14 setResourceValues:v17 error:&v25];
  v19 = v25;

  if ((v18 & 1) == 0)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      v24 = [v14 path];
      *buf = 138412802;
      v31 = v24;
      v32 = 2112;
      v33 = v19;
      v34 = 2112;
      v35 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] Unable to set mtime & hidden on %@: %@%@", buf, 0x20u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t BRCMigrateLegacyUbiquityRoot(void *a1, void *a2, void *a3)
{
  v226 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v201 = a3;
  memset(v209, 0, sizeof(v209));
  __brc_create_section(0, "BRCMigrateLegacyUbiquityRoot", 183, 0, v209);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    BRCMigrateLegacyUbiquityRoot_cold_1(v209);
  }

  v9 = v6;
  v10 = [v6 fileSystemRepresentation];
  v16 = BRCOpenAt(0xFFFFFFFFLL, v10, 33028, v11, v12, v13, v14, v15, v196);
  if (v16 < 0)
  {
    if (*__error() == 2)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v18 = *__error();
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      *&buf[18] = 2112;
      *&buf[20] = v19;
      _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] can't open root '%@' %{errno}d%@", buf, 0x1Cu);
    }

    *__error() = v18;
  }

  v17 = 1;
LABEL_10:
  v203 = BRCGetXattrValueForKeyOnFD(v16, v6, @"com.apple.ubd.prsid");
  v202 = [v5 stringByAppendingString:@".CloudDocs"];
  v21 = [BRCFileUnlinker alloc];
  v22 = [v201 stringByAppendingPathComponent:@"Caches/com.apple.bird"];
  v204 = [(BRCFileUnlinker *)v21 initWithCacheDirPath:v22];

  [(BRCFileUnlinker *)v204 resume];
  v23 = [v203 isEqualToString:v202];
  memset(&v208, 0, sizeof(v208));
  v205 = [v6 stringByAppendingPathExtension:v202];
  v24 = v205;
  v25 = lstat([v205 fileSystemRepresentation], &v208);
  if (v25 < 0)
  {
    if (*__error() != 2)
    {
      v45 = *__error();
      v46 = brc_bread_crumbs();
      v47 = brc_default_log();
      if (os_log_type_enabled(v47, 0x90u))
      {
        *buf = 138412802;
        *&buf[4] = v205;
        *&buf[12] = 1024;
        *&buf[14] = v45;
        *&buf[18] = 2112;
        *&buf[20] = v46;
        _os_log_error_impl(&dword_223E7A000, v47, 0x90u, "[ERROR] can't lstat '%@' %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v45;
    }

    if (v23)
    {
      close(v16);
      goto LABEL_95;
    }
  }

  else
  {
    v26 = brc_bread_crumbs();
    v27 = brc_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v199 = aPcDBLSW[v208.st_mode >> 12];
      if ((v208.st_mode & 0x100) != 0)
      {
        v28 = 114;
      }

      else
      {
        v28 = 45;
      }

      if ((v208.st_mode & 0x80) != 0)
      {
        v29 = 119;
      }

      else
      {
        v29 = 45;
      }

      if ((v208.st_mode & 0x40) != 0)
      {
        v30 = 120;
      }

      else
      {
        v30 = 45;
      }

      if ((v208.st_mode & 0x20) != 0)
      {
        v31 = 114;
      }

      else
      {
        v31 = 45;
      }

      if ((v208.st_mode & 0x10) != 0)
      {
        v32 = 119;
      }

      else
      {
        v32 = 45;
      }

      if ((v208.st_mode & 8) != 0)
      {
        v33 = 120;
      }

      else
      {
        v33 = 45;
      }

      if ((v208.st_mode & 4) != 0)
      {
        v34 = 114;
      }

      else
      {
        v34 = 45;
      }

      if ((v208.st_mode & 2) != 0)
      {
        v35 = 119;
      }

      else
      {
        v35 = 45;
      }

      if (v208.st_mode)
      {
        v36 = 120;
      }

      else
      {
        v36 = 45;
      }

      *buf = 138417666;
      *&buf[4] = v205;
      *&buf[12] = 1024;
      *&buf[14] = v208.st_dev;
      *&buf[18] = 2048;
      *&buf[20] = v208.st_ino;
      *&buf[28] = 1024;
      *&buf[30] = v199;
      *&buf[34] = 1024;
      *&buf[36] = v28;
      *&buf[40] = 1024;
      *&buf[42] = v29;
      *v215 = 1024;
      *&v215[2] = v30;
      *v216 = 1024;
      *&v216[2] = v31;
      *v217 = 1024;
      *&v217[2] = v32;
      *v218 = 1024;
      *&v218[2] = v33;
      *v219 = 1024;
      *&v219[2] = v34;
      *v220 = 1024;
      *&v220[2] = v35;
      *v221 = 1024;
      *&v221[2] = v36;
      *v222 = 1024;
      *&v222[2] = v208.st_nlink;
      *v223 = 1024;
      *&v223[2] = v208.st_uid;
      *v224 = 1024;
      *&v224[2] = v208.st_gid;
      *v225 = 2048;
      *&v225[2] = v208.st_atimespec.tv_sec;
      *&v225[10] = 2048;
      *&v225[12] = v208.st_mtimespec.tv_sec;
      *&v225[20] = 2048;
      *&v225[22] = v208.st_ctimespec.tv_sec;
      *&v225[30] = 2048;
      *&v225[32] = v208.st_size;
      *&v225[40] = 1024;
      *&v225[42] = v208.st_flags;
      *&v225[46] = 2112;
      *&v225[48] = v26;
      _os_log_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEFAULT, "[NOTICE] found our root at '%@' deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA2u);
    }

    if (v23)
    {
      if (![(BRCFileUnlinker *)v204 renameAndUnlinkInBackgroundItemAtPath:v205])
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          BRCMigrateLegacyUbiquityRoot_cold_2();
        }
      }

      v39 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
      v207 = 0;
      [v39 getResourceValue:&v207 forKey:*MEMORY[0x277CBE7C0] error:0];
      v40 = v207;

      if (v40)
      {
        BRCTouchRootMergeWitness(v6, v40);
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        BRCMigrateLegacyUbiquityRoot_cold_3();
      }

      v43 = 0;
      v44 = 0;
LABEL_148:

      goto LABEL_149;
    }
  }

  if ((v16 & 0x80000000) == 0)
  {
    close(v16);
    if (v203)
    {
      v48 = [v203 hasPrefix:v5];
      if (v25 < 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      if (v49)
      {
        v50 = brc_bread_crumbs();
        v51 = brc_default_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v203;
          *&buf[12] = 2112;
          *&buf[14] = v202;
          *&buf[22] = 2112;
          *&buf[24] = v50;
          v52 = "[NOTICE] migrating root from accountString %@ to %@%@";
          v53 = v51;
          v54 = 32;
LABEL_84:
          _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
          goto LABEL_85;
        }

        goto LABEL_85;
      }
    }

    else if (v25 < 0)
    {
      v50 = brc_bread_crumbs();
      v51 = brc_default_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v202;
        *&buf[12] = 2112;
        *&buf[14] = v50;
        v52 = "[NOTICE] tagging root with accountString %@%@";
        v53 = v51;
        v54 = 22;
        goto LABEL_84;
      }

LABEL_85:

      v65 = v6;
      v66 = v201;
      memset(v210, 0, sizeof(v210));
      __brc_create_section(0, "_unlinkUbiquitySupportFiles", 58, 0, v210);
      v67 = brc_bread_crumbs();
      v68 = brc_default_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        BRCMigrateLegacyUbiquityRoot_cold_6(v210);
      }

      v69 = [BRCFileUnlinker alloc];
      v70 = [v66 stringByAppendingPathComponent:@"Caches/com.apple.bird"];
      v71 = [(BRCFileUnlinker *)v69 initWithCacheDirPath:v70];

      [(BRCFileUnlinker *)v71 resume];
      memset(&v211, 0, 64);
      v72 = [&unk_2837B0C28 countByEnumeratingWithState:&v211 objects:buf count:16];
      if (v72)
      {
        v73 = **&v211.st_uid;
        do
        {
          for (i = 0; i != v72; ++i)
          {
            if (**&v211.st_uid != v73)
            {
              objc_enumerationMutation(&unk_2837B0C28);
            }

            v75 = [v65 stringByAppendingPathComponent:*(v211.st_ino + 8 * i)];
            [(BRCFileUnlinker *)v71 renameAndUnlinkInBackgroundItemAtPath:v75];
          }

          v72 = [&unk_2837B0C28 countByEnumeratingWithState:&v211 objects:buf count:16];
        }

        while (v72);
      }

      v76 = [v66 stringByAppendingPathComponent:@"Application Support/Ubiquity"];
      [(BRCFileUnlinker *)v71 renameAndUnlinkInBackgroundItemAtPath:v76];

      v77 = [v66 stringByAppendingPathComponent:@"Caches/com.apple.ubd"];
      [(BRCFileUnlinker *)v71 renameAndUnlinkInBackgroundItemAtPath:v77];

      v78 = [v66 stringByAppendingPathComponent:@"Logs/CrashReporter/DiagnosticLogs/Ubiquity"];
      [(BRCFileUnlinker *)v71 renameAndUnlinkInBackgroundItemAtPath:v78];

      __brc_leave_section(v210);
      goto LABEL_95;
    }
  }

  if (v17)
  {
    memset(buf, 0, 24);
    __brc_create_section(0, "BRCMigrateLegacyUbiquityRoot", 325, 0, buf);
    v55 = brc_bread_crumbs();
    v56 = brc_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      BRCMigrateLegacyUbiquityRoot_cold_4(buf);
    }

    v57 = [(BRCFileUnlinker *)v204 renameAndUnlinkInBackgroundItemAtPath:v6];
    if (!v57)
    {
      v58 = brc_bread_crumbs();
      v59 = brc_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
      {
        BRCMigrateLegacyUbiquityRoot_cold_5();
      }
    }

    __brc_leave_section(buf);
    if (!v57)
    {
      v43 = 0;
      v44 = 0;
      goto LABEL_149;
    }
  }

  if ((v25 & 0x80000000) == 0)
  {
    if ((BRCRenameAt(-1, v205, -1, v6, 0) & 0x80000000) != 0)
    {
      v62 = *__error();
      v63 = brc_bread_crumbs();
      v64 = brc_default_log();
      if (os_log_type_enabled(v64, 0x90u))
      {
        *buf = 138413058;
        *&buf[4] = v205;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 1024;
        *&buf[24] = v62;
        *&buf[28] = 2112;
        *&buf[30] = v63;
        _os_log_error_impl(&dword_223E7A000, v64, 0x90u, "[ERROR] failed renaming root back from '%@' to '%@' %{errno}d%@", buf, 0x26u);
      }

      *__error() = v62;
    }

    else
    {
      v60 = brc_bread_crumbs();
      v61 = brc_default_log();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v205;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        *&buf[24] = v60;
        _os_log_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEFAULT, "[NOTICE] moved '%@' back to '%@'%@", buf, 0x20u);
      }
    }
  }

LABEL_95:
  v79 = v6;
  memset(&v211, 0, sizeof(v211));
  v80 = v79;
  v81 = [v79 fileSystemRepresentation];
  v87 = BRCOpenAt(0xFFFFFFFFLL, v81, 33028, v82, v83, v84, v85, v86, v197);
  v88 = v87;
  if (v87 < 0)
  {
    if (*__error() != 2)
    {
      v90 = *__error();
      v91 = brc_bread_crumbs();
      v92 = brc_default_log();
      if (os_log_type_enabled(v92, 0x90u))
      {
        *buf = 67109890;
        *&buf[4] = -1;
        *&buf[8] = 2112;
        *&buf[10] = v79;
        *&buf[18] = 1024;
        *&buf[20] = v90;
        *&buf[24] = 2112;
        *&buf[26] = v91;
        _os_log_error_impl(&dword_223E7A000, v92, 0x90u, "[ERROR] can't open (%d, '%@') %{errno}d%@", buf, 0x22u);
      }

      *__error() = v90;
    }
  }

  else
  {
    if (fstat(v87, &v211) < 0)
    {
      v93 = *__error();
      v94 = brc_bread_crumbs();
      v95 = brc_default_log();
      if (os_log_type_enabled(v95, 0x90u))
      {
        *buf = 67109890;
        *&buf[4] = -1;
        *&buf[8] = 2112;
        *&buf[10] = v79;
        *&buf[18] = 1024;
        *&buf[20] = v93;
        *&buf[24] = 2112;
        *&buf[26] = v94;
        _os_log_error_impl(&dword_223E7A000, v95, 0x90u, "[ERROR] can't fstat (%d, '%@') %{errno}d%@", buf, 0x22u);
      }

      goto LABEL_138;
    }

    if ((v211.st_mode & 0xF000) == 0x4000)
    {
      v89 = 0;
      goto LABEL_114;
    }

    v96 = brc_bread_crumbs();
    v97 = brc_default_log();
    if (os_log_type_enabled(v97, 0x90u))
    {
      v147 = aPcDBLSW[v211.st_mode >> 12];
      if ((v211.st_mode & 0x100) != 0)
      {
        v148 = 114;
      }

      else
      {
        v148 = 45;
      }

      if ((v211.st_mode & 0x80) != 0)
      {
        v149 = 119;
      }

      else
      {
        v149 = 45;
      }

      if ((v211.st_mode & 0x40) != 0)
      {
        v150 = 120;
      }

      else
      {
        v150 = 45;
      }

      if ((v211.st_mode & 0x20) != 0)
      {
        v151 = 114;
      }

      else
      {
        v151 = 45;
      }

      if ((v211.st_mode & 0x10) != 0)
      {
        v152 = 119;
      }

      else
      {
        v152 = 45;
      }

      if ((v211.st_mode & 8) != 0)
      {
        v153 = 120;
      }

      else
      {
        v153 = 45;
      }

      if ((v211.st_mode & 4) != 0)
      {
        v154 = 114;
      }

      else
      {
        v154 = 45;
      }

      if ((v211.st_mode & 2) != 0)
      {
        v155 = 119;
      }

      else
      {
        v155 = 45;
      }

      if (v211.st_mode)
      {
        v156 = 120;
      }

      else
      {
        v156 = 45;
      }

      *buf = 67114754;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v211.st_dev;
      *&buf[24] = 2048;
      *&buf[26] = v211.st_ino;
      *&buf[34] = 1024;
      *&buf[36] = v147;
      *&buf[40] = 1024;
      *&buf[42] = v148;
      *v215 = 1024;
      *&v215[2] = v149;
      *v216 = 1024;
      *&v216[2] = v150;
      *v217 = 1024;
      *&v217[2] = v151;
      *v218 = 1024;
      *&v218[2] = v152;
      *v219 = 1024;
      *&v219[2] = v153;
      *v220 = 1024;
      *&v220[2] = v154;
      *v221 = 1024;
      *&v221[2] = v155;
      *v222 = 1024;
      *&v222[2] = v156;
      *v223 = 1024;
      *&v223[2] = v211.st_nlink;
      *v224 = 1024;
      *&v224[2] = v211.st_uid;
      *v225 = 1024;
      *&v225[2] = v211.st_gid;
      *&v225[6] = 2048;
      *&v225[8] = v211.st_atimespec.tv_sec;
      *&v225[16] = 2048;
      *&v225[18] = v211.st_mtimespec.tv_sec;
      *&v225[26] = 2048;
      *&v225[28] = v211.st_ctimespec.tv_sec;
      *&v225[36] = 2048;
      *&v225[38] = v211.st_size;
      *&v225[46] = 1024;
      *&v225[48] = v211.st_flags;
      *&v225[52] = 2112;
      *&v225[54] = v96;
      _os_log_error_impl(&dword_223E7A000, v97, 0x90u, "[ERROR] not a directory at (%d, '%@') deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA8u);
    }

    close(v88);
    BRCUnlinkAt(-1, v79, 0);
  }

  v98 = BRCMkdirAt(-1, v79, 493);
  if (v98 < 0 && *__error() != 17)
  {
    v114 = *__error();
    v115 = brc_bread_crumbs();
    v116 = brc_default_log();
    if (os_log_type_enabled(v116, 0x90u))
    {
      *buf = 67109890;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v114;
      *&buf[24] = 2112;
      *&buf[26] = v115;
      _os_log_error_impl(&dword_223E7A000, v116, 0x90u, "[ERROR] mkdirat(%d, '%@') %{errno}d%@", buf, 0x22u);
    }

    goto LABEL_131;
  }

  v99 = v79;
  v100 = [v79 fileSystemRepresentation];
  v106 = BRCOpenAt(0xFFFFFFFFLL, v100, 33028, v101, v102, v103, v104, v105, v198);
  v88 = v106;
  if (v106 < 0)
  {
    v114 = *__error();
    v115 = brc_bread_crumbs();
    v116 = brc_default_log();
    if (os_log_type_enabled(v116, 0x90u))
    {
      *buf = 67109890;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v114;
      *&buf[24] = 2112;
      *&buf[26] = v115;
      _os_log_error_impl(&dword_223E7A000, v116, 0x90u, "[ERROR] can't open (%d, '%@') after mkdir %{errno}d%@", buf, 0x22u);
    }

LABEL_131:

    *__error() = v114;
    goto LABEL_141;
  }

  if (fstat(v106, &v211) < 0)
  {
    v93 = *__error();
    v94 = brc_bread_crumbs();
    v95 = brc_default_log();
    if (os_log_type_enabled(v95, 0x90u))
    {
      *buf = 67109890;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v93;
      *&buf[24] = 2112;
      *&buf[26] = v94;
      _os_log_error_impl(&dword_223E7A000, v95, 0x90u, "[ERROR] can't fstat (%d, '%@') after mkdir %{errno}d%@", buf, 0x22u);
    }

    goto LABEL_138;
  }

  if ((v211.st_mode & 0xF000) != 0x4000)
  {
    v117 = brc_bread_crumbs();
    v118 = brc_default_log();
    if (os_log_type_enabled(v118, 0x90u))
    {
      v176 = aPcDBLSW[v211.st_mode >> 12];
      if ((v211.st_mode & 0x100) != 0)
      {
        v177 = 114;
      }

      else
      {
        v177 = 45;
      }

      if ((v211.st_mode & 0x80) != 0)
      {
        v178 = 119;
      }

      else
      {
        v178 = 45;
      }

      if ((v211.st_mode & 0x40) != 0)
      {
        v179 = 120;
      }

      else
      {
        v179 = 45;
      }

      if ((v211.st_mode & 0x20) != 0)
      {
        v180 = 114;
      }

      else
      {
        v180 = 45;
      }

      if ((v211.st_mode & 0x10) != 0)
      {
        v181 = 119;
      }

      else
      {
        v181 = 45;
      }

      if ((v211.st_mode & 8) != 0)
      {
        v182 = 120;
      }

      else
      {
        v182 = 45;
      }

      if ((v211.st_mode & 4) != 0)
      {
        v183 = 114;
      }

      else
      {
        v183 = 45;
      }

      if ((v211.st_mode & 2) != 0)
      {
        v184 = 119;
      }

      else
      {
        v184 = 45;
      }

      if (v211.st_mode)
      {
        v185 = 120;
      }

      else
      {
        v185 = 45;
      }

      *buf = 67114754;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v211.st_dev;
      *&buf[24] = 2048;
      *&buf[26] = v211.st_ino;
      *&buf[34] = 1024;
      *&buf[36] = v176;
      *&buf[40] = 1024;
      *&buf[42] = v177;
      *v215 = 1024;
      *&v215[2] = v178;
      *v216 = 1024;
      *&v216[2] = v179;
      *v217 = 1024;
      *&v217[2] = v180;
      *v218 = 1024;
      *&v218[2] = v181;
      *v219 = 1024;
      *&v219[2] = v182;
      *v220 = 1024;
      *&v220[2] = v183;
      *v221 = 1024;
      *&v221[2] = v184;
      *v222 = 1024;
      *&v222[2] = v185;
      *v223 = 1024;
      *&v223[2] = v211.st_nlink;
      *v224 = 1024;
      *&v224[2] = v211.st_uid;
      *v225 = 1024;
      *&v225[2] = v211.st_gid;
      *&v225[6] = 2048;
      *&v225[8] = v211.st_atimespec.tv_sec;
      *&v225[16] = 2048;
      *&v225[18] = v211.st_mtimespec.tv_sec;
      *&v225[26] = 2048;
      *&v225[28] = v211.st_ctimespec.tv_sec;
      *&v225[36] = 2048;
      *&v225[38] = v211.st_size;
      *&v225[46] = 1024;
      *&v225[48] = v211.st_flags;
      *&v225[52] = 2112;
      *&v225[54] = v117;
      _os_log_error_impl(&dword_223E7A000, v118, 0x90u, "[ERROR] not a directory at (%d, '%@') after mkdir deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA8u);
    }

    goto LABEL_140;
  }

  v89 = v98 >= 0;
LABEL_114:
  v107 = getuid();
  if (v211.st_uid != v107)
  {
    v108 = brc_bread_crumbs();
    v109 = brc_default_log();
    if (os_log_type_enabled(v109, 0x90u))
    {
      v200 = aPcDBLSW[v211.st_mode >> 12];
      if ((v211.st_mode & 0x100) != 0)
      {
        v157 = 114;
      }

      else
      {
        v157 = 45;
      }

      if ((v211.st_mode & 0x80) != 0)
      {
        v158 = 119;
      }

      else
      {
        v158 = 45;
      }

      if ((v211.st_mode & 0x40) != 0)
      {
        v159 = 120;
      }

      else
      {
        v159 = 45;
      }

      if ((v211.st_mode & 0x20) != 0)
      {
        v160 = 114;
      }

      else
      {
        v160 = 45;
      }

      if ((v211.st_mode & 0x10) != 0)
      {
        v161 = 119;
      }

      else
      {
        v161 = 45;
      }

      if ((v211.st_mode & 8) != 0)
      {
        v162 = 120;
      }

      else
      {
        v162 = 45;
      }

      if ((v211.st_mode & 4) != 0)
      {
        v163 = 114;
      }

      else
      {
        v163 = 45;
      }

      if ((v211.st_mode & 2) != 0)
      {
        v164 = 119;
      }

      else
      {
        v164 = 45;
      }

      if (v211.st_mode)
      {
        v165 = 120;
      }

      else
      {
        v165 = 45;
      }

      *buf = 67115010;
      *&buf[4] = v107;
      *&buf[8] = 1024;
      *&buf[10] = -1;
      *&buf[14] = 2112;
      *&buf[16] = v79;
      *&buf[24] = 1024;
      *&buf[26] = v211.st_dev;
      *&buf[30] = 2048;
      *&buf[32] = v211.st_ino;
      *&buf[40] = 1024;
      *&buf[42] = v200;
      *v215 = 1024;
      *&v215[2] = v157;
      *v216 = 1024;
      *&v216[2] = v158;
      *v217 = 1024;
      *&v217[2] = v159;
      *v218 = 1024;
      *&v218[2] = v160;
      *v219 = 1024;
      *&v219[2] = v161;
      *v220 = 1024;
      *&v220[2] = v162;
      *v221 = 1024;
      *&v221[2] = v163;
      *v222 = 1024;
      *&v222[2] = v164;
      *v223 = 1024;
      *&v223[2] = v165;
      *v224 = 1024;
      *&v224[2] = v211.st_nlink;
      *v225 = 1024;
      *&v225[2] = v211.st_uid;
      *&v225[6] = 1024;
      *&v225[8] = v211.st_gid;
      *&v225[12] = 2048;
      *&v225[14] = v211.st_atimespec.tv_sec;
      *&v225[22] = 2048;
      *&v225[24] = v211.st_mtimespec.tv_sec;
      *&v225[32] = 2048;
      *&v225[34] = v211.st_ctimespec.tv_sec;
      *&v225[42] = 2048;
      *&v225[44] = v211.st_size;
      *&v225[52] = 1024;
      *&v225[54] = v211.st_flags;
      *&v225[58] = 2112;
      *&v225[60] = v108;
      _os_log_error_impl(&dword_223E7A000, v109, 0x90u, "[ERROR] unexpected uid != %u at (%d, '%@')deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xAEu);
    }
  }

  if ((~v211.st_mode & 0x1ED) == 0)
  {
    goto LABEL_121;
  }

  v110 = brc_bread_crumbs();
  v111 = brc_default_log();
  if (os_log_type_enabled(v111, 0x90u))
  {
    v166 = aPcDBLSW[v211.st_mode >> 12];
    if ((v211.st_mode & 0x100) != 0)
    {
      v167 = 114;
    }

    else
    {
      v167 = 45;
    }

    if ((v211.st_mode & 0x80) != 0)
    {
      v168 = 119;
    }

    else
    {
      v168 = 45;
    }

    if ((v211.st_mode & 0x40) != 0)
    {
      v169 = 120;
    }

    else
    {
      v169 = 45;
    }

    if ((v211.st_mode & 0x20) != 0)
    {
      v170 = 114;
    }

    else
    {
      v170 = 45;
    }

    if ((v211.st_mode & 0x10) != 0)
    {
      v171 = 119;
    }

    else
    {
      v171 = 45;
    }

    if ((v211.st_mode & 8) != 0)
    {
      v172 = 120;
    }

    else
    {
      v172 = 45;
    }

    if ((v211.st_mode & 4) != 0)
    {
      v173 = 114;
    }

    else
    {
      v173 = 45;
    }

    if ((v211.st_mode & 2) != 0)
    {
      v174 = 119;
    }

    else
    {
      v174 = 45;
    }

    if (v211.st_mode)
    {
      v175 = 120;
    }

    else
    {
      v175 = 45;
    }

    *buf = 67114754;
    *&buf[4] = -1;
    *&buf[8] = 2112;
    *&buf[10] = v79;
    *&buf[18] = 1024;
    *&buf[20] = v211.st_dev;
    *&buf[24] = 2048;
    *&buf[26] = v211.st_ino;
    *&buf[34] = 1024;
    *&buf[36] = v166;
    *&buf[40] = 1024;
    *&buf[42] = v167;
    *v215 = 1024;
    *&v215[2] = v168;
    *v216 = 1024;
    *&v216[2] = v169;
    *v217 = 1024;
    *&v217[2] = v170;
    *v218 = 1024;
    *&v218[2] = v171;
    *v219 = 1024;
    *&v219[2] = v172;
    *v220 = 1024;
    *&v220[2] = v173;
    *v221 = 1024;
    *&v221[2] = v174;
    *v222 = 1024;
    *&v222[2] = v175;
    *v223 = 1024;
    *&v223[2] = v211.st_nlink;
    *v224 = 1024;
    *&v224[2] = v211.st_uid;
    *v225 = 1024;
    *&v225[2] = v211.st_gid;
    *&v225[6] = 2048;
    *&v225[8] = v211.st_atimespec.tv_sec;
    *&v225[16] = 2048;
    *&v225[18] = v211.st_mtimespec.tv_sec;
    *&v225[26] = 2048;
    *&v225[28] = v211.st_ctimespec.tv_sec;
    *&v225[36] = 2048;
    *&v225[38] = v211.st_size;
    *&v225[46] = 1024;
    *&v225[48] = v211.st_flags;
    *&v225[52] = 2112;
    *&v225[54] = v110;
    _os_log_error_impl(&dword_223E7A000, v111, 0x90u, "[ERROR] unexpected permissions at (%d, '%@') deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xA8u);
  }

  if (fchmod(v88, v211.st_mode | 0x1ED) < 0)
  {
    v93 = *__error();
    v119 = brc_bread_crumbs();
    v120 = brc_default_log();
    if (os_log_type_enabled(v120, 0x90u))
    {
      v186 = aPcDBLSW[v211.st_mode >> 12];
      if ((v211.st_mode & 0x100) != 0)
      {
        v187 = 114;
      }

      else
      {
        v187 = 45;
      }

      if ((v211.st_mode & 0x80) != 0)
      {
        v188 = 119;
      }

      else
      {
        v188 = 45;
      }

      if ((v211.st_mode & 0x40) != 0)
      {
        v189 = 120;
      }

      else
      {
        v189 = 45;
      }

      if ((v211.st_mode & 0x20) != 0)
      {
        v190 = 114;
      }

      else
      {
        v190 = 45;
      }

      if ((v211.st_mode & 0x10) != 0)
      {
        v191 = 119;
      }

      else
      {
        v191 = 45;
      }

      if ((v211.st_mode & 8) != 0)
      {
        v192 = 120;
      }

      else
      {
        v192 = 45;
      }

      if ((v211.st_mode & 4) != 0)
      {
        v193 = 114;
      }

      else
      {
        v193 = 45;
      }

      if ((v211.st_mode & 2) != 0)
      {
        v194 = 119;
      }

      else
      {
        v194 = 45;
      }

      if (v211.st_mode)
      {
        v195 = 120;
      }

      else
      {
        v195 = 45;
      }

      *buf = 67115010;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v211.st_dev;
      *&buf[24] = 2048;
      *&buf[26] = v211.st_ino;
      *&buf[34] = 1024;
      *&buf[36] = v186;
      *&buf[40] = 1024;
      *&buf[42] = v187;
      *v215 = 1024;
      *&v215[2] = v188;
      *v216 = 1024;
      *&v216[2] = v189;
      *v217 = 1024;
      *&v217[2] = v190;
      *v218 = 1024;
      *&v218[2] = v191;
      *v219 = 1024;
      *&v219[2] = v192;
      *v220 = 1024;
      *&v220[2] = v193;
      *v221 = 1024;
      *&v221[2] = v194;
      *v222 = 1024;
      *&v222[2] = v195;
      *v223 = 1024;
      *&v223[2] = v211.st_nlink;
      *v224 = 1024;
      *&v224[2] = v211.st_uid;
      *v225 = 1024;
      *&v225[2] = v211.st_gid;
      *&v225[6] = 2048;
      *&v225[8] = v211.st_atimespec.tv_sec;
      *&v225[16] = 2048;
      *&v225[18] = v211.st_mtimespec.tv_sec;
      *&v225[26] = 2048;
      *&v225[28] = v211.st_ctimespec.tv_sec;
      *&v225[36] = 2048;
      *&v225[38] = v211.st_size;
      *&v225[46] = 1024;
      *&v225[48] = v211.st_flags;
      *&v225[52] = 1024;
      *&v225[54] = v93;
      *&v225[58] = 2112;
      *&v225[60] = v119;
      _os_log_error_impl(&dword_223E7A000, v120, 0x90u, "[ERROR] failed chmod at (%d, '%@') deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x %{errno}d%@", buf, 0xAEu);
    }

    v121 = __error();
    goto LABEL_139;
  }

  if (fstat(v88, &v211) < 0)
  {
    v93 = *__error();
    v94 = brc_bread_crumbs();
    v95 = brc_default_log();
    if (os_log_type_enabled(v95, 0x90u))
    {
      *buf = 67109890;
      *&buf[4] = -1;
      *&buf[8] = 2112;
      *&buf[10] = v79;
      *&buf[18] = 1024;
      *&buf[20] = v93;
      *&buf[24] = 2112;
      *&buf[26] = v94;
      _os_log_error_impl(&dword_223E7A000, v95, 0x90u, "[ERROR] can't fstat (%d, '%@') after mkdir %{errno}d%@", buf, 0x22u);
    }

LABEL_138:

    v121 = __error();
LABEL_139:
    *v121 = v93;
LABEL_140:
    close(v88);
LABEL_141:

    v122 = [MEMORY[0x277CCAA00] defaultManager];
    v212 = *MEMORY[0x277CCA180];
    v213 = &unk_2837B0130;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
    v206 = 0;
    v124 = [v122 createDirectoryAtPath:v79 withIntermediateDirectories:1 attributes:v123 error:&v206];
    v43 = v206;

    if (!v124)
    {
      v40 = brc_bread_crumbs();
      v41 = brc_default_log();
      if (os_log_type_enabled(v41, 0x90u))
      {
        *buf = 138412802;
        *&buf[4] = v79;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        *&buf[22] = 2112;
        *&buf[24] = v40;
        _os_log_error_impl(&dword_223E7A000, v41, 0x90u, "[ERROR] Failed to create root at %@ - %@%@", buf, 0x20u);
      }

      v44 = 1;
      goto LABEL_148;
    }

    goto LABEL_142;
  }

LABEL_121:
  close(v88);
  v112 = brc_bread_crumbs();
  v113 = brc_default_log();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
  {
    v136 = aPcDBLSW[v211.st_mode >> 12];
    if (v89)
    {
      v137 = "created";
    }

    else
    {
      v137 = "found";
    }

    if ((v211.st_mode & 0x100) != 0)
    {
      v138 = 114;
    }

    else
    {
      v138 = 45;
    }

    if ((v211.st_mode & 0x80) != 0)
    {
      v139 = 119;
    }

    else
    {
      v139 = 45;
    }

    if ((v211.st_mode & 0x40) != 0)
    {
      v140 = 120;
    }

    else
    {
      v140 = 45;
    }

    if ((v211.st_mode & 0x20) != 0)
    {
      v141 = 114;
    }

    else
    {
      v141 = 45;
    }

    if ((v211.st_mode & 0x10) != 0)
    {
      v142 = 119;
    }

    else
    {
      v142 = 45;
    }

    *&buf[4] = v137;
    *&buf[14] = -1;
    if ((v211.st_mode & 8) != 0)
    {
      v143 = 120;
    }

    else
    {
      v143 = 45;
    }

    if ((v211.st_mode & 4) != 0)
    {
      v144 = 114;
    }

    else
    {
      v144 = 45;
    }

    *buf = 136321026;
    if ((v211.st_mode & 2) != 0)
    {
      v145 = 119;
    }

    else
    {
      v145 = 45;
    }

    *&buf[12] = 1024;
    if (v211.st_mode)
    {
      v146 = 120;
    }

    else
    {
      v146 = 45;
    }

    *&buf[18] = 2112;
    *&buf[20] = v79;
    *&buf[28] = 1024;
    *&buf[30] = v211.st_dev;
    *&buf[34] = 2048;
    *&buf[36] = v211.st_ino;
    *&buf[44] = 1024;
    *v215 = v136;
    *&v215[4] = 1024;
    *v216 = v138;
    *&v216[4] = 1024;
    *v217 = v139;
    *&v217[4] = 1024;
    *v218 = v140;
    *&v218[4] = 1024;
    *v219 = v141;
    *&v219[4] = 1024;
    *v220 = v142;
    *&v220[4] = 1024;
    *v221 = v143;
    *&v221[4] = 1024;
    *v222 = v144;
    *&v222[4] = 1024;
    *v223 = v145;
    *&v223[4] = 1024;
    *v224 = v146;
    *&v224[4] = 1024;
    *v225 = v211.st_nlink;
    *&v225[4] = 1024;
    *&v225[6] = v211.st_uid;
    *&v225[10] = 1024;
    *&v225[12] = v211.st_gid;
    *&v225[16] = 2048;
    *&v225[18] = v211.st_atimespec.tv_sec;
    *&v225[26] = 2048;
    *&v225[28] = v211.st_mtimespec.tv_sec;
    *&v225[36] = 2048;
    *&v225[38] = v211.st_ctimespec.tv_sec;
    *&v225[46] = 2048;
    *&v225[48] = v211.st_size;
    *&v225[56] = 1024;
    *&v225[58] = v211.st_flags;
    *&v225[62] = 2112;
    *&v225[64] = v112;
    _os_log_debug_impl(&dword_223E7A000, v113, OS_LOG_TYPE_DEBUG, "[DEBUG] %s dir at (%d, '%@') deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xB2u);
  }

  v43 = 0;
LABEL_142:
  v125 = v79;
  v126 = [v79 fileSystemRepresentation];
  v132 = BRCOpenAt(0xFFFFFFFFLL, v126, 33028, v127, v128, v129, v130, v131, v198);
  v133 = v132;
  if ((v132 & 0x80000000) == 0)
  {
    BRCSetXattrValueForKeyOnFD(v132, v79, @"com.apple.ubd.prsid", v202);
    close(v133);
  }

  v44 = 1;
LABEL_149:

  __brc_leave_section(v209);
  v134 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t BRCRootIsOwnedByUbd(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 fileSystemRepresentation];
  v8 = BRCOpenAt(0xFFFFFFFFLL, v2, 33028, v3, v4, v5, v6, v7, v23.st_dev);
  if (v8 < 0)
  {
    if (*__error() == 2)
    {
      v11 = 0;
    }

    else
    {
      v18 = *__error();
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        v23.st_dev = 138412802;
        *&v23.st_mode = v1;
        WORD2(v23.st_ino) = 1024;
        *(&v23.st_ino + 6) = v18;
        HIWORD(v23.st_uid) = 2112;
        *&v23.st_gid = v19;
        _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] can't open root '%@' %{errno}d%@", &v23, 0x1Cu);
      }

      v11 = 0;
      *__error() = v18;
    }
  }

  else
  {
    v9 = v8;
    memset(&v23, 0, sizeof(v23));
    v10 = fstatat(v8, ".ubd", &v23, 32);
    v11 = v10 == 0;
    if (!v10)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        BRCRootIsOwnedByUbd_cold_1(&v23.st_dev);
      }
    }

    v14 = BRCGetXattrValueForKeyOnFD(v9, v1, @"com.apple.ubd.prsid");
    if (v14)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        BRCRootIsOwnedByUbd_cold_2();
      }

      v17 = [v14 hasSuffix:@".CloudDocs"] ^ 1;
      if (v10)
      {
        v11 = v17;
      }

      else
      {
        v11 = 1;
      }
    }

    close(v9);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t BRCConvertDownloadOptionsToInternal(unint64_t a1)
{
  v1 = (4 * a1) & 0x10;
  if (a1)
  {
    v1 = 1;
  }

  return (2 * a1) & 4 | (32 * ((a1 >> 3) & 1)) | v1;
}

void sub_223F34854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}