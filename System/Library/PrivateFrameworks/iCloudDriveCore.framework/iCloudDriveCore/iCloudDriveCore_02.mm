void sub_223FE37D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FE3D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FE3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FE4DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

BOOL BRCGenerateAPFSSnapshot(int a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = fs_snapshot_create(a1, [v5 UTF8String], 0);
  if (v6 < 0)
  {
    v7 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to create snapshot %@ - %@%@", &v13, 0x20u);
    }

    if (a3)
    {
      v10 = v7;
      *a3 = v7;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 >= 0;
}

id BRCMountAPFSSnapshot(int a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = BRCMountDirPath(v5);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v21];
  v9 = v21;

  if ((v8 & 1) == 0)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to create directory at %@ - %@%@", buf, 0x20u);
    }
  }

  v12 = [v6 fileSystemRepresentation];
  v13 = [v5 UTF8String];

  if (fs_snapshot_mount(a1, v12, v13, 0x100000u) < 0)
  {
    v15 = [MEMORY[0x277CCA9B8] br_errorFromErrno];

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v23 = v6;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to mount %@ - %@%@", buf, 0x20u);
    }

    if (a3)
    {
      v18 = v15;
      v14 = 0;
      *a3 = v15;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v6;
    v15 = v9;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

id BRCMountDirPath(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 br_currentSupportDir];
  v4 = [v3 stringByAppendingPathComponent:v2];

  return v4;
}

uint64_t BRCUnmountAPFSSnapshot(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = BRCMountDirPath(a1);
  if (unmount([v3 UTF8String], 0x80000) < 0 && *__error() != 2)
  {
    v4 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to unmount %@ - %@%@", &v12, 0x20u);
    }

    if (a2)
    {
      v7 = v4;
      *a2 = v4;
    }
  }

  if (rmdir([v3 fileSystemRepresentation]) < 0 && *__error() != 2)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      BRCUnmountAPFSSnapshot_cold_1(v3, v8, v9);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t BRCDeleteAPFSSnapshot(int a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (fs_snapshot_delete(a1, [v5 UTF8String], 0) < 0 && *__error() != 2)
  {
    v9 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v5;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to delete snapshot %@ - %@%@", &v13, 0x20u);
    }

    if (a3)
    {
      v12 = v9;
      *a3 = v9;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL BRCHasAPFSSnapshot(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = fs_snapshot_list(4096, 0, 0, 0, 0);
  if (v3 < 0)
  {
    v4 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v4)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, 0x90u))
      {
        v10 = "(passed to caller)";
        v11 = 136315906;
        v12 = "BRCHasAPFSSnapshot";
        v13 = 2080;
        if (!a2)
        {
          v10 = "(ignored by caller)";
        }

        v14 = v10;
        v15 = 2112;
        v16 = v4;
        v17 = 2112;
        v18 = v5;
        _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] %s: %s error: %@%@", &v11, 0x2Au);
      }
    }

    if (a2)
    {
      v7 = v4;
      *a2 = v4;
    }
  }

  result = v3 > 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_223FE6410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_223FE8C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223FEE688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_223FF1688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

BOOL OUTLINED_FUNCTION_13_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_223FF65BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryFPFSMigrationInvestigationReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v219) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v219 & 0x7F) << v6;
      if ((v219 & 0x80) == 0)
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
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 256) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v219 & 0x7F) << v14;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
LABEL_371:
            v216 = 250;
            goto LABEL_427;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
        goto LABEL_371;
      case 2u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 256) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v219 & 0x7F) << v109;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_375;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v111;
        }

LABEL_375:
        v215 = 88;
        goto LABEL_436;
      case 3u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 256) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v87 = [a2 position] + 1;
          if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
          {
            v89 = [a2 data];
            [v89 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v86 |= (v219 & 0x7F) << v84;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v12 = v85++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_357;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v86;
        }

LABEL_357:
        v215 = 176;
        goto LABEL_436;
      case 4u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 256) |= 1uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v99 = [a2 position] + 1;
          if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 1, v100 <= objc_msgSend(a2, "length")))
          {
            v101 = [a2 data];
            [v101 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v98 |= (v219 & 0x7F) << v96;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v12 = v97++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_365;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v98;
        }

LABEL_365:
        v215 = 8;
        goto LABEL_436;
      case 5u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 256) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v219 & 0x7F) << v60;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_341;
          }
        }

        v20 = (v62 != 0) & ~[a2 hasError];
LABEL_341:
        v216 = 248;
        goto LABEL_427;
      case 6u:
        *(a1 + 256) |= 0x80uLL;
        v219 = 0;
        v133 = [a2 position] + 8;
        if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 8, v134 <= objc_msgSend(a2, "length")))
        {
          v218 = [a2 data];
          [v218 getBytes:&v219 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 64) = v219;
        continue;
      case 7u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 256) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v219 & 0x7F) << v142;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v108 = 0;
            goto LABEL_393;
          }
        }

        if ([a2 hasError])
        {
          v108 = 0;
        }

        else
        {
          v108 = v144;
        }

LABEL_393:
        v217 = 240;
        goto LABEL_394;
      case 8u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 256) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v219 & 0x7F) << v102;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v108 = 0;
            goto LABEL_369;
          }
        }

        if ([a2 hasError])
        {
          v108 = 0;
        }

        else
        {
          v108 = v104;
        }

LABEL_369:
        v217 = 244;
LABEL_394:
        *(a1 + v217) = v108;
        continue;
      case 9u:
        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 256) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v163 = [a2 position] + 1;
          if (v163 >= [a2 position] && (v164 = objc_msgSend(a2, "position") + 1, v164 <= objc_msgSend(a2, "length")))
          {
            v165 = [a2 data];
            [v165 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v162 |= (v219 & 0x7F) << v160;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v12 = v161++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_406;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v162;
        }

LABEL_406:
        v215 = 80;
        goto LABEL_436;
      case 0xAu:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        *(a1 + 256) |= 2uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v69 = [a2 position] + 1;
          if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
          {
            v71 = [a2 data];
            [v71 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v68 |= (v219 & 0x7F) << v66;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v12 = v67++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v68;
        }

LABEL_345:
        v215 = 16;
        goto LABEL_436;
      case 0xBu:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 256) |= 4uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v219 & 0x7F) << v154;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_402;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v156;
        }

LABEL_402:
        v215 = 24;
        goto LABEL_436;
      case 0xCu:
        v58 = PBReaderReadString();
        v59 = 232;
        goto LABEL_205;
      case 0xDu:
        v58 = PBReaderReadString();
        v59 = 216;
        goto LABEL_205;
      case 0xEu:
        v58 = PBReaderReadString();
        v59 = 224;
LABEL_205:
        v141 = *(a1 + v59);
        *(a1 + v59) = v58;

        continue;
      case 0xFu:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 256) |= 8uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v219 & 0x7F) << v46;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_335;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_335:
        v215 = 32;
        goto LABEL_436;
      case 0x10u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        *(a1 + 256) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v93 = [a2 position] + 1;
          if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
          {
            v95 = [a2 data];
            [v95 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v92 |= (v219 & 0x7F) << v90;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v12 = v91++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_361;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v92;
        }

LABEL_361:
        v215 = 40;
        goto LABEL_436;
      case 0x11u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 256) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v219 & 0x7F) << v40;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_331;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v42;
        }

LABEL_331:
        v215 = 56;
        goto LABEL_436;
      case 0x12u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 256) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v219 & 0x7F) << v121;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_383;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v123;
        }

LABEL_383:
        v215 = 104;
        goto LABEL_436;
      case 0x13u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 256) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v219 & 0x7F) << v148;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_398;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v150;
        }

LABEL_398:
        v215 = 72;
        goto LABEL_436;
      case 0x14u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 256) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v187 = [a2 position] + 1;
          if (v187 >= [a2 position] && (v188 = objc_msgSend(a2, "position") + 1, v188 <= objc_msgSend(a2, "length")))
          {
            v189 = [a2 data];
            [v189 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v186 |= (v219 & 0x7F) << v184;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v12 = v185++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_420;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v186;
        }

LABEL_420:
        v215 = 48;
        goto LABEL_436;
      case 0x15u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 256) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v219 & 0x7F) << v127;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_385;
          }
        }

        v20 = (v129 != 0) & ~[a2 hasError];
LABEL_385:
        v216 = 249;
        goto LABEL_427;
      case 0x16u:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 256) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v219 & 0x7F) << v135;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v12 = v136++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_389;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v137;
        }

LABEL_389:
        v215 = 152;
        goto LABEL_436;
      case 0x17u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        *(a1 + 256) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v181 = [a2 position] + 1;
          if (v181 >= [a2 position] && (v182 = objc_msgSend(a2, "position") + 1, v182 <= objc_msgSend(a2, "length")))
          {
            v183 = [a2 data];
            [v183 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v180 |= (v219 & 0x7F) << v178;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v12 = v179++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v180;
        }

LABEL_416:
        v215 = 168;
        goto LABEL_436;
      case 0x18u:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 256) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v219 & 0x7F) << v190;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_424;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v192;
        }

LABEL_424:
        v215 = 160;
        goto LABEL_436;
      case 0x19u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        *(a1 + 256) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v81 = [a2 position] + 1;
          if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 1, v82 <= objc_msgSend(a2, "length")))
          {
            v83 = [a2 data];
            [v83 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v80 |= (v219 & 0x7F) << v78;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v12 = v79++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_353;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v80;
        }

LABEL_353:
        v215 = 120;
        goto LABEL_436;
      case 0x1Au:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 256) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v219 & 0x7F) << v72;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_349;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v74;
        }

LABEL_349:
        v215 = 144;
        goto LABEL_436;
      case 0x1Bu:
        v208 = 0;
        v209 = 0;
        v210 = 0;
        *(a1 + 256) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v211 = [a2 position] + 1;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
          {
            v213 = [a2 data];
            [v213 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v210 |= (v219 & 0x7F) << v208;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v208 += 7;
          v12 = v209++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_435;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v210;
        }

LABEL_435:
        v215 = 128;
        goto LABEL_436;
      case 0x1Cu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 256) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v219 & 0x7F) << v28;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_323:
        v215 = 136;
        goto LABEL_436;
      case 0x1Du:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 256) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v219 & 0x7F) << v196;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_426;
          }
        }

        v20 = (v198 != 0) & ~[a2 hasError];
LABEL_426:
        v216 = 252;
        goto LABEL_427;
      case 0x1Eu:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        *(a1 + 256) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v219 & 0x7F) << v202;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_431;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v204;
        }

LABEL_431:
        v215 = 208;
        goto LABEL_436;
      case 0x1Fu:
        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 256) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v169 = [a2 position] + 1;
          if (v169 >= [a2 position] && (v170 = objc_msgSend(a2, "position") + 1, v170 <= objc_msgSend(a2, "length")))
          {
            v171 = [a2 data];
            [v171 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v168 |= (v219 & 0x7F) << v166;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v12 = v167++ >= 9;
          if (v12)
          {
            LOBYTE(v20) = 0;
            goto LABEL_408;
          }
        }

        v20 = (v168 != 0) & ~[a2 hasError];
LABEL_408:
        v216 = 251;
LABEL_427:
        *(a1 + v216) = v20;
        continue;
      case 0x20u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 256) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v219 & 0x7F) << v115;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_379;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v117;
        }

LABEL_379:
        v215 = 200;
        goto LABEL_436;
      case 0x21u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 256) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v219 & 0x7F) << v172;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v174;
        }

LABEL_412:
        v215 = 184;
        goto LABEL_436;
      case 0x22u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 256) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v219 & 0x7F) << v52;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_339;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v54;
        }

LABEL_339:
        v215 = 96;
        goto LABEL_436;
      case 0x23u:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 256) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v219) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v219 & 0x7F) << v34;
          if ((v219 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_327;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_327:
        v215 = 112;
        goto LABEL_436;
      case 0x24u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 256) |= 0x800000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v219) = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v219 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v219 & 0x7F) << v21;
      if ((v219 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v12 = v22++ >= 9;
      if (v12)
      {
        v27 = 0;
        goto LABEL_319;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v23;
    }

LABEL_319:
    v215 = 192;
LABEL_436:
    *(a1 + v215) = v27;
  }

  return [a2 hasError] ^ 1;
}

void sub_224000E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224005D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224006BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224008010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22400E260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22400FE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224011854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224013728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224013C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224017630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224017BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t brc_index_for_folder_type(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 != 1)
  {
    brc_index_for_folder_type_cold_1();
  }

  return v1;
}

uint64_t brc_folder_type_name(uint64_t a1)
{
  if (a1 != 1)
  {
    brc_folder_type_name_cold_1();
  }

  return 0;
}

id BRCGetAccountDSIDForMobileDocsRoot(void *a1, char a2)
{
  v3 = [a1 path];
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v5 = BRCGetXattrValueForKeyOnPath(v3, @"com.apple.ubd.prsid");
  v6 = v5;
  if (v5)
  {
    if ([v5 hasSuffix:@".CloudDocs"])
    {
      v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - objc_msgSend(@".CloudDocs", "length")}];
LABEL_11:
      v8 = v7;
      goto LABEL_12;
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      BRCGetAccountDSIDForMobileDocsRoot_cold_1(v6, v9, v10);
    }

    if ((a2 & 1) == 0)
    {
      v7 = v6;
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_12:

LABEL_13:

  return v8;
}

id BRCGetAccountDSIDForiCloudDesktopRoot(void *a1)
{
  v1 = [a1 path];
  v2 = v1;
  if (v1)
  {
    v3 = BRCGetXattrValueForKeyOnPath(v1, *MEMORY[0x277CFADD8]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2240194F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224019D00(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_22401A4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRFieldXattrBlobReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(BRFieldXattr);
        [a1 addXattrs:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BRFieldXattrReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22401C970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22401CBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22401CE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22401D0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22401D334(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240208FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _fstatItem(int a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = xmmword_2241AC028;
  v18 = 0;
  if (!a5)
  {
    DWORD1(v17) = 101187584;
  }

  memset(v25, 0, 512);
  if (fgetattrlist(a1, &v17, v25, 0x420uLL, 0x20u) < 0)
  {
    v13 = *__error();
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      *buf = 67109634;
      v20 = a1;
      v21 = 1024;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] fgetattrlist(%d) failed %{errno}d%@", buf, 0x18u);
    }

    *__error() = v13;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    if (a3)
    {
      *a3 = DWORD1(v25[0]);
    }

    if (a2)
    {
      *a2 = *(&v25[0] + 1);
    }

    if (a4)
    {
      *a4 = *&v25[1];
    }

    if (a5)
    {
      v10 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:{&v25[1] + SDWORD2(v25[1]) + 8, v17, v18}];
      v11 = v10;
      result = 0;
      *a5 = v10;
    }

    else
    {
      result = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_224022D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22402467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240249C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224024D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224024FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224025170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224025530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240258FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240262D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240265B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224026854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_224026CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224027618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void setTypeFieldFromDBType(int a1, int a2, __int16 *a3)
{
  if (a1 > 4)
  {
    if (a1 > 7)
    {
      if (a1 != 8 && a1 != 9 && a1 != 10)
      {
        return;
      }

      v4 = *a3 | 0x100;
    }

    else if (a1 == 5)
    {
      v4 = *a3 | 4;
    }

    else if (a1 == 6)
    {
      v4 = *a3 | 0x40;
    }

    else
    {
      v4 = *a3 | 0x80;
    }

LABEL_28:
    *a3 = v4;
    return;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = *a3 | 0x10;
    }

    else if (a1 == 3)
    {
      v4 = *a3 | 2;
    }

    else
    {
      v4 = *a3 | 0x20;
    }

    goto LABEL_28;
  }

  if (a1 != -1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return;
      }

      v3 = *a3;
      if (a2)
      {
        v4 = v3 | 0x200;
      }

      else
      {
        v4 = v3 | 1;
      }
    }

    else
    {
      v4 = *a3 | 8;
    }

    goto LABEL_28;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, 0x90u))
  {
    setTypeFieldFromDBType_cold_1(v5, v6);
  }
}

void sub_22402AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22402B4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryItemStatsInvestigationReadFrom(uint64_t a1, void *a2)
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
        v474 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v474 & 0x7F) << v5;
        if ((v474 & 0x80) == 0)
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
          *(a1 + 452) |= 0x2000000uLL;
          while (1)
          {
            v474 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v474 & 0x7F) << v13;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_826:
              v470 = 208;
              goto LABEL_947;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_826;
        case 2u:
          v246 = 0;
          v247 = 0;
          v248 = 0;
          *(a1 + 452) |= 0x80000000000uLL;
          while (1)
          {
            v474 = 0;
            v249 = [a2 position] + 1;
            if (v249 >= [a2 position] && (v250 = objc_msgSend(a2, "position") + 1, v250 <= objc_msgSend(a2, "length")))
            {
              v251 = [a2 data];
              [v251 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v248 |= (v474 & 0x7F) << v246;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v246 += 7;
            v11 = v247++ >= 9;
            if (v11)
            {
              v203 = 0;
              goto LABEL_830;
            }
          }

          if ([a2 hasError])
          {
            v203 = 0;
          }

          else
          {
            v203 = v248;
          }

LABEL_830:
          v472 = 384;
          goto LABEL_851;
        case 3u:
          v216 = 0;
          v217 = 0;
          v218 = 0;
          *(a1 + 452) |= 0x40000000000uLL;
          while (1)
          {
            v474 = 0;
            v219 = [a2 position] + 1;
            if (v219 >= [a2 position] && (v220 = objc_msgSend(a2, "position") + 1, v220 <= objc_msgSend(a2, "length")))
            {
              v221 = [a2 data];
              [v221 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v218 |= (v474 & 0x7F) << v216;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v216 += 7;
            v11 = v217++ >= 9;
            if (v11)
            {
              v203 = 0;
              goto LABEL_810;
            }
          }

          if ([a2 hasError])
          {
            v203 = 0;
          }

          else
          {
            v203 = v218;
          }

LABEL_810:
          v472 = 340;
          goto LABEL_851;
        case 4u:
          v234 = 0;
          v235 = 0;
          v236 = 0;
          *(a1 + 452) |= 0x800000000000000uLL;
          while (1)
          {
            v474 = 0;
            v237 = [a2 position] + 1;
            if (v237 >= [a2 position] && (v238 = objc_msgSend(a2, "position") + 1, v238 <= objc_msgSend(a2, "length")))
            {
              v239 = [a2 data];
              [v239 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v236 |= (v474 & 0x7F) << v234;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v234 += 7;
            v11 = v235++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_820;
            }
          }

          v38 = (v236 != 0) & ~[a2 hasError];
LABEL_820:
          v471 = 433;
          goto LABEL_922;
        case 5u:
          v179 = 0;
          v180 = 0;
          v181 = 0;
          *(a1 + 452) |= 0x1000000000000000uLL;
          while (1)
          {
            v474 = 0;
            v182 = [a2 position] + 1;
            if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
            {
              v184 = [a2 data];
              [v184 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v181 |= (v474 & 0x7F) << v179;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v179 += 7;
            v11 = v180++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_792;
            }
          }

          v38 = (v181 != 0) & ~[a2 hasError];
LABEL_792:
          v471 = 434;
          goto LABEL_922;
        case 6u:
          v288 = 0;
          v289 = 0;
          v290 = 0;
          *(a1 + 452) |= 0x200000000000uLL;
          while (1)
          {
            v474 = 0;
            v291 = [a2 position] + 1;
            if (v291 >= [a2 position] && (v292 = objc_msgSend(a2, "position") + 1, v292 <= objc_msgSend(a2, "length")))
            {
              v293 = [a2 data];
              [v293 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v290 |= (v474 & 0x7F) << v288;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v288 += 7;
            v11 = v289++ >= 9;
            if (v11)
            {
              v203 = 0;
              goto LABEL_850;
            }
          }

          if ([a2 hasError])
          {
            v203 = 0;
          }

          else
          {
            v203 = v290;
          }

LABEL_850:
          v472 = 416;
          goto LABEL_851;
        case 7u:
          v318 = 0;
          v319 = 0;
          v320 = 0;
          *(a1 + 452) |= 0x100000000000000uLL;
          while (1)
          {
            v474 = 0;
            v321 = [a2 position] + 1;
            if (v321 >= [a2 position] && (v322 = objc_msgSend(a2, "position") + 1, v322 <= objc_msgSend(a2, "length")))
            {
              v323 = [a2 data];
              [v323 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v320 |= (v474 & 0x7F) << v318;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v318 += 7;
            v11 = v319++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_867;
            }
          }

          v38 = (v320 != 0) & ~[a2 hasError];
LABEL_867:
          v471 = 430;
          goto LABEL_922;
        case 8u:
          v240 = 0;
          v241 = 0;
          v242 = 0;
          *(a1 + 452) |= 0x8000000000000000;
          while (1)
          {
            v474 = 0;
            v243 = [a2 position] + 1;
            if (v243 >= [a2 position] && (v244 = objc_msgSend(a2, "position") + 1, v244 <= objc_msgSend(a2, "length")))
            {
              v245 = [a2 data];
              [v245 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v242 |= (v474 & 0x7F) << v240;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v240 += 7;
            v11 = v241++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_822;
            }
          }

          v38 = (v242 != 0) & ~[a2 hasError];
LABEL_822:
          v471 = 437;
          goto LABEL_922;
        case 9u:
          v336 = 0;
          v337 = 0;
          v338 = 0;
          *(a1 + 452) |= 0x4000000000000000uLL;
          while (1)
          {
            v474 = 0;
            v339 = [a2 position] + 1;
            if (v339 >= [a2 position] && (v340 = objc_msgSend(a2, "position") + 1, v340 <= objc_msgSend(a2, "length")))
            {
              v341 = [a2 data];
              [v341 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v338 |= (v474 & 0x7F) << v336;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v336 += 7;
            v11 = v337++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_875;
            }
          }

          v38 = (v338 != 0) & ~[a2 hasError];
LABEL_875:
          v471 = 436;
          goto LABEL_922;
        case 0xAu:
          v63 = PBReaderReadString();
          v64 = 408;
          goto LABEL_628;
        case 0xBu:
          v330 = 0;
          v331 = 0;
          v332 = 0;
          *(a1 + 452) |= 0x200000000000000uLL;
          while (1)
          {
            v474 = 0;
            v333 = [a2 position] + 1;
            if (v333 >= [a2 position] && (v334 = objc_msgSend(a2, "position") + 1, v334 <= objc_msgSend(a2, "length")))
            {
              v335 = [a2 data];
              [v335 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v332 |= (v474 & 0x7F) << v330;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v330 += 7;
            v11 = v331++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_873;
            }
          }

          v38 = (v332 != 0) & ~[a2 hasError];
LABEL_873:
          v471 = 431;
          goto LABEL_922;
        case 0xCu:
          v161 = 0;
          v162 = 0;
          v163 = 0;
          *(a1 + 460) |= 1u;
          while (1)
          {
            v474 = 0;
            v164 = [a2 position] + 1;
            if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
            {
              v166 = [a2 data];
              [v166 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v163 |= (v474 & 0x7F) << v161;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v161 += 7;
            v11 = v162++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_782;
            }
          }

          v38 = (v163 != 0) & ~[a2 hasError];
LABEL_782:
          v471 = 438;
          goto LABEL_922;
        case 0xDu:
          v197 = 0;
          v198 = 0;
          v199 = 0;
          *(a1 + 452) |= 0x20000000000uLL;
          while (1)
          {
            v474 = 0;
            v200 = [a2 position] + 1;
            if (v200 >= [a2 position] && (v201 = objc_msgSend(a2, "position") + 1, v201 <= objc_msgSend(a2, "length")))
            {
              v202 = [a2 data];
              [v202 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v199 |= (v474 & 0x7F) << v197;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v197 += 7;
            v11 = v198++ >= 9;
            if (v11)
            {
              v203 = 0;
              goto LABEL_802;
            }
          }

          if ([a2 hasError])
          {
            v203 = 0;
          }

          else
          {
            v203 = v199;
          }

LABEL_802:
          v472 = 336;
          goto LABEL_851;
        case 0xEu:
          v312 = 0;
          v313 = 0;
          v314 = 0;
          *(a1 + 452) |= 0x100000000uLL;
          while (1)
          {
            v474 = 0;
            v315 = [a2 position] + 1;
            if (v315 >= [a2 position] && (v316 = objc_msgSend(a2, "position") + 1, v316 <= objc_msgSend(a2, "length")))
            {
              v317 = [a2 data];
              [v317 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v314 |= (v474 & 0x7F) << v312;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v312 += 7;
            v11 = v313++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_865;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v314;
          }

LABEL_865:
          v470 = 264;
          goto LABEL_947;
        case 0xFu:
          v137 = 0;
          v138 = 0;
          v139 = 0;
          *(a1 + 452) |= 0x20uLL;
          while (1)
          {
            v474 = 0;
            v140 = [a2 position] + 1;
            if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
            {
              v142 = [a2 data];
              [v142 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v139 |= (v474 & 0x7F) << v137;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v137 += 7;
            v11 = v138++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_770;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v139;
          }

LABEL_770:
          v470 = 48;
          goto LABEL_947;
        case 0x10u:
          v222 = 0;
          v223 = 0;
          v224 = 0;
          *(a1 + 452) |= 0x100000000000uLL;
          while (1)
          {
            v474 = 0;
            v225 = [a2 position] + 1;
            if (v225 >= [a2 position] && (v226 = objc_msgSend(a2, "position") + 1, v226 <= objc_msgSend(a2, "length")))
            {
              v227 = [a2 data];
              [v227 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v224 |= (v474 & 0x7F) << v222;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v222 += 7;
            v11 = v223++ >= 9;
            if (v11)
            {
              v203 = 0;
              goto LABEL_814;
            }
          }

          if ([a2 hasError])
          {
            v203 = 0;
          }

          else
          {
            v203 = v224;
          }

LABEL_814:
          v472 = 400;
LABEL_851:
          *(a1 + v472) = v203;
          goto LABEL_948;
        case 0x11u:
          v119 = 0;
          v120 = 0;
          v121 = 0;
          *(a1 + 452) |= 0x10000000uLL;
          while (1)
          {
            v474 = 0;
            v122 = [a2 position] + 1;
            if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
            {
              v124 = [a2 data];
              [v124 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v121 |= (v474 & 0x7F) << v119;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v119 += 7;
            v11 = v120++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_758;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v121;
          }

LABEL_758:
          v470 = 232;
          goto LABEL_947;
        case 0x12u:
          v258 = 0;
          v259 = 0;
          v260 = 0;
          *(a1 + 452) |= 0x200000uLL;
          while (1)
          {
            v474 = 0;
            v261 = [a2 position] + 1;
            if (v261 >= [a2 position] && (v262 = objc_msgSend(a2, "position") + 1, v262 <= objc_msgSend(a2, "length")))
            {
              v263 = [a2 data];
              [v263 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v260 |= (v474 & 0x7F) << v258;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v258 += 7;
            v11 = v259++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_836;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v260;
          }

LABEL_836:
          v470 = 176;
          goto LABEL_947;
        case 0x13u:
          v324 = 0;
          v325 = 0;
          v326 = 0;
          *(a1 + 452) |= 0x400000000uLL;
          while (1)
          {
            v474 = 0;
            v327 = [a2 position] + 1;
            if (v327 >= [a2 position] && (v328 = objc_msgSend(a2, "position") + 1, v328 <= objc_msgSend(a2, "length")))
            {
              v329 = [a2 data];
              [v329 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v326 |= (v474 & 0x7F) << v324;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v324 += 7;
            v11 = v325++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_871;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v326;
          }

LABEL_871:
          v470 = 280;
          goto LABEL_947;
        case 0x14u:
          v366 = 0;
          v367 = 0;
          v368 = 0;
          *(a1 + 452) |= 0x200000000uLL;
          while (1)
          {
            v474 = 0;
            v369 = [a2 position] + 1;
            if (v369 >= [a2 position] && (v370 = objc_msgSend(a2, "position") + 1, v370 <= objc_msgSend(a2, "length")))
            {
              v371 = [a2 data];
              [v371 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v368 |= (v474 & 0x7F) << v366;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v366 += 7;
            v11 = v367++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_891;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v368;
          }

LABEL_891:
          v470 = 272;
          goto LABEL_947;
        case 0x15u:
          v276 = 0;
          v277 = 0;
          v278 = 0;
          *(a1 + 452) |= 0x40000000000000uLL;
          while (1)
          {
            v474 = 0;
            v279 = [a2 position] + 1;
            if (v279 >= [a2 position] && (v280 = objc_msgSend(a2, "position") + 1, v280 <= objc_msgSend(a2, "length")))
            {
              v281 = [a2 data];
              [v281 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v278 |= (v474 & 0x7F) << v276;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v276 += 7;
            v11 = v277++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_844;
            }
          }

          v38 = (v278 != 0) & ~[a2 hasError];
LABEL_844:
          v471 = 428;
          goto LABEL_922;
        case 0x16u:
          v306 = 0;
          v307 = 0;
          v308 = 0;
          *(a1 + 460) |= 0x20u;
          while (1)
          {
            v474 = 0;
            v309 = [a2 position] + 1;
            if (v309 >= [a2 position] && (v310 = objc_msgSend(a2, "position") + 1, v310 <= objc_msgSend(a2, "length")))
            {
              v311 = [a2 data];
              [v311 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v308 |= (v474 & 0x7F) << v306;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v306 += 7;
            v11 = v307++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_861;
            }
          }

          v38 = (v308 != 0) & ~[a2 hasError];
LABEL_861:
          v471 = 443;
          goto LABEL_922;
        case 0x17u:
          v354 = 0;
          v355 = 0;
          v356 = 0;
          *(a1 + 452) |= 0x2000000000000000uLL;
          while (1)
          {
            v474 = 0;
            v357 = [a2 position] + 1;
            if (v357 >= [a2 position] && (v358 = objc_msgSend(a2, "position") + 1, v358 <= objc_msgSend(a2, "length")))
            {
              v359 = [a2 data];
              [v359 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v356 |= (v474 & 0x7F) << v354;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v354 += 7;
            v11 = v355++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_883;
            }
          }

          v38 = (v356 != 0) & ~[a2 hasError];
LABEL_883:
          v471 = 435;
          goto LABEL_922;
        case 0x18u:
          v390 = 0;
          v391 = 0;
          v392 = 0;
          *(a1 + 460) |= 4u;
          while (1)
          {
            v474 = 0;
            v393 = [a2 position] + 1;
            if (v393 >= [a2 position] && (v394 = objc_msgSend(a2, "position") + 1, v394 <= objc_msgSend(a2, "length")))
            {
              v395 = [a2 data];
              [v395 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v392 |= (v474 & 0x7F) << v390;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v390 += 7;
            v11 = v391++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_903;
            }
          }

          v38 = (v392 != 0) & ~[a2 hasError];
LABEL_903:
          v471 = 440;
          goto LABEL_922;
        case 0x19u:
          v210 = 0;
          v211 = 0;
          v212 = 0;
          *(a1 + 460) |= 2u;
          while (1)
          {
            v474 = 0;
            v213 = [a2 position] + 1;
            if (v213 >= [a2 position] && (v214 = objc_msgSend(a2, "position") + 1, v214 <= objc_msgSend(a2, "length")))
            {
              v215 = [a2 data];
              [v215 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v212 |= (v474 & 0x7F) << v210;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v210 += 7;
            v11 = v211++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_806;
            }
          }

          v38 = (v212 != 0) & ~[a2 hasError];
LABEL_806:
          v471 = 439;
          goto LABEL_922;
        case 0x1Au:
          v204 = 0;
          v205 = 0;
          v206 = 0;
          *(a1 + 452) |= 0x400000000000000uLL;
          while (1)
          {
            v474 = 0;
            v207 = [a2 position] + 1;
            if (v207 >= [a2 position] && (v208 = objc_msgSend(a2, "position") + 1, v208 <= objc_msgSend(a2, "length")))
            {
              v209 = [a2 data];
              [v209 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v206 |= (v474 & 0x7F) << v204;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v204 += 7;
            v11 = v205++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_804;
            }
          }

          v38 = (v206 != 0) & ~[a2 hasError];
LABEL_804:
          v471 = 432;
          goto LABEL_922;
        case 0x1Bu:
          v63 = PBReaderReadString();
          v64 = 376;
          goto LABEL_628;
        case 0x1Cu:
          v107 = 0;
          v108 = 0;
          v109 = 0;
          *(a1 + 452) |= 0x1000000uLL;
          while (1)
          {
            v474 = 0;
            v110 = [a2 position] + 1;
            if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
            {
              v112 = [a2 data];
              [v112 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v109 |= (v474 & 0x7F) << v107;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v107 += 7;
            v11 = v108++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_752;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v109;
          }

LABEL_752:
          v470 = 200;
          goto LABEL_947;
        case 0x1Du:
          v396 = 0;
          v397 = 0;
          v398 = 0;
          *(a1 + 452) |= 0x400000uLL;
          while (1)
          {
            v474 = 0;
            v399 = [a2 position] + 1;
            if (v399 >= [a2 position] && (v400 = objc_msgSend(a2, "position") + 1, v400 <= objc_msgSend(a2, "length")))
            {
              v401 = [a2 data];
              [v401 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v398 |= (v474 & 0x7F) << v396;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v396 += 7;
            v11 = v397++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_907;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v398;
          }

LABEL_907:
          v470 = 184;
          goto LABEL_947;
        case 0x1Eu:
          v402 = 0;
          v403 = 0;
          v404 = 0;
          *(a1 + 452) |= 0x8000uLL;
          while (1)
          {
            v474 = 0;
            v405 = [a2 position] + 1;
            if (v405 >= [a2 position] && (v406 = objc_msgSend(a2, "position") + 1, v406 <= objc_msgSend(a2, "length")))
            {
              v407 = [a2 data];
              [v407 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v404 |= (v474 & 0x7F) << v402;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v402 += 7;
            v11 = v403++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_911;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v404;
          }

LABEL_911:
          v470 = 128;
          goto LABEL_947;
        case 0x1Fu:
          v342 = 0;
          v343 = 0;
          v344 = 0;
          *(a1 + 452) |= 0x80000000000000uLL;
          while (1)
          {
            v474 = 0;
            v345 = [a2 position] + 1;
            if (v345 >= [a2 position] && (v346 = objc_msgSend(a2, "position") + 1, v346 <= objc_msgSend(a2, "length")))
            {
              v347 = [a2 data];
              [v347 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v344 |= (v474 & 0x7F) << v342;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v342 += 7;
            v11 = v343++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_877;
            }
          }

          v38 = (v344 != 0) & ~[a2 hasError];
LABEL_877:
          v471 = 429;
          goto LABEL_922;
        case 0x20u:
          v252 = 0;
          v253 = 0;
          v254 = 0;
          *(a1 + 452) |= 0x10000000000000uLL;
          while (1)
          {
            v474 = 0;
            v255 = [a2 position] + 1;
            if (v255 >= [a2 position] && (v256 = objc_msgSend(a2, "position") + 1, v256 <= objc_msgSend(a2, "length")))
            {
              v257 = [a2 data];
              [v257 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v254 |= (v474 & 0x7F) << v252;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v252 += 7;
            v11 = v253++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_832;
            }
          }

          v38 = (v254 != 0) & ~[a2 hasError];
LABEL_832:
          v471 = 426;
          goto LABEL_922;
        case 0x21u:
          v63 = PBReaderReadString();
          v64 = 368;
          goto LABEL_628;
        case 0x22u:
          v143 = 0;
          v144 = 0;
          v145 = 0;
          *(a1 + 452) |= 0x8000000uLL;
          while (1)
          {
            v474 = 0;
            v146 = [a2 position] + 1;
            if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
            {
              v148 = [a2 data];
              [v148 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v145 |= (v474 & 0x7F) << v143;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v143 += 7;
            v11 = v144++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_774;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v145;
          }

LABEL_774:
          v470 = 224;
          goto LABEL_947;
        case 0x23u:
          v113 = 0;
          v114 = 0;
          v115 = 0;
          *(a1 + 460) |= 0x200u;
          while (1)
          {
            v474 = 0;
            v116 = [a2 position] + 1;
            if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
            {
              v118 = [a2 data];
              [v118 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v115 |= (v474 & 0x7F) << v113;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v113 += 7;
            v11 = v114++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_754;
            }
          }

          v38 = (v115 != 0) & ~[a2 hasError];
LABEL_754:
          v471 = 447;
          goto LABEL_922;
        case 0x24u:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 460) |= 0x400u;
          while (1)
          {
            v474 = 0;
            v98 = [a2 position] + 1;
            if (v98 >= [a2 position] && (v99 = objc_msgSend(a2, "position") + 1, v99 <= objc_msgSend(a2, "length")))
            {
              v100 = [a2 data];
              [v100 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v97 |= (v474 & 0x7F) << v95;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v11 = v96++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_744;
            }
          }

          v38 = (v97 != 0) & ~[a2 hasError];
LABEL_744:
          v471 = 448;
          goto LABEL_922;
        case 0x25u:
          v63 = PBReaderReadString();
          v64 = 344;
          goto LABEL_628;
        case 0x26u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 452) |= 0x100uLL;
          while (1)
          {
            v474 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v474 & 0x7F) << v65;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_728;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v67;
          }

LABEL_728:
          v470 = 72;
          goto LABEL_947;
        case 0x27u:
          v408 = 0;
          v409 = 0;
          v410 = 0;
          *(a1 + 452) |= 0x40uLL;
          while (1)
          {
            v474 = 0;
            v411 = [a2 position] + 1;
            if (v411 >= [a2 position] && (v412 = objc_msgSend(a2, "position") + 1, v412 <= objc_msgSend(a2, "length")))
            {
              v413 = [a2 data];
              [v413 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v410 |= (v474 & 0x7F) << v408;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v408 += 7;
            v11 = v409++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_915;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v410;
          }

LABEL_915:
          v470 = 56;
          goto LABEL_947;
        case 0x28u:
          v360 = 0;
          v361 = 0;
          v362 = 0;
          *(a1 + 452) |= 0x20000uLL;
          while (1)
          {
            v474 = 0;
            v363 = [a2 position] + 1;
            if (v363 >= [a2 position] && (v364 = objc_msgSend(a2, "position") + 1, v364 <= objc_msgSend(a2, "length")))
            {
              v365 = [a2 data];
              [v365 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v362 |= (v474 & 0x7F) << v360;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v360 += 7;
            v11 = v361++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_887;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v362;
          }

LABEL_887:
          v470 = 144;
          goto LABEL_947;
        case 0x29u:
          v185 = 0;
          v186 = 0;
          v187 = 0;
          *(a1 + 452) |= 0x10000uLL;
          while (1)
          {
            v474 = 0;
            v188 = [a2 position] + 1;
            if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
            {
              v190 = [a2 data];
              [v190 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v187 |= (v474 & 0x7F) << v185;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v185 += 7;
            v11 = v186++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_796;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v187;
          }

LABEL_796:
          v470 = 136;
          goto LABEL_947;
        case 0x2Au:
          v264 = 0;
          v265 = 0;
          v266 = 0;
          *(a1 + 452) |= 0x2000000000000uLL;
          while (1)
          {
            v474 = 0;
            v267 = [a2 position] + 1;
            if (v267 >= [a2 position] && (v268 = objc_msgSend(a2, "position") + 1, v268 <= objc_msgSend(a2, "length")))
            {
              v269 = [a2 data];
              [v269 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v266 |= (v474 & 0x7F) << v264;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v264 += 7;
            v11 = v265++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_838;
            }
          }

          v38 = (v266 != 0) & ~[a2 hasError];
LABEL_838:
          v471 = 423;
          goto LABEL_922;
        case 0x2Bu:
          v378 = 0;
          v379 = 0;
          v380 = 0;
          *(a1 + 452) |= 0x80uLL;
          while (1)
          {
            v474 = 0;
            v381 = [a2 position] + 1;
            if (v381 >= [a2 position] && (v382 = objc_msgSend(a2, "position") + 1, v382 <= objc_msgSend(a2, "length")))
            {
              v383 = [a2 data];
              [v383 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v380 |= (v474 & 0x7F) << v378;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v378 += 7;
            v11 = v379++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_899;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v380;
          }

LABEL_899:
          v470 = 64;
          goto LABEL_947;
        case 0x2Cu:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 452) |= 0x4000000000000uLL;
          while (1)
          {
            v474 = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v474 & 0x7F) << v45;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_716;
            }
          }

          v38 = (v47 != 0) & ~[a2 hasError];
LABEL_716:
          v471 = 424;
          goto LABEL_922;
        case 0x2Du:
          v131 = 0;
          v132 = 0;
          v133 = 0;
          *(a1 + 452) |= 0x1000uLL;
          while (1)
          {
            v474 = 0;
            v134 = [a2 position] + 1;
            if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
            {
              v136 = [a2 data];
              [v136 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v133 |= (v474 & 0x7F) << v131;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v131 += 7;
            v11 = v132++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_766;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v133;
          }

LABEL_766:
          v470 = 104;
          goto LABEL_947;
        case 0x2Eu:
          v348 = 0;
          v349 = 0;
          v350 = 0;
          *(a1 + 452) |= 0x200uLL;
          while (1)
          {
            v474 = 0;
            v351 = [a2 position] + 1;
            if (v351 >= [a2 position] && (v352 = objc_msgSend(a2, "position") + 1, v352 <= objc_msgSend(a2, "length")))
            {
              v353 = [a2 data];
              [v353 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v350 |= (v474 & 0x7F) << v348;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v348 += 7;
            v11 = v349++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_881;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v350;
          }

LABEL_881:
          v470 = 80;
          goto LABEL_947;
        case 0x2Fu:
          v433 = 0;
          v434 = 0;
          v435 = 0;
          *(a1 + 452) |= 0x2000uLL;
          while (1)
          {
            v474 = 0;
            v436 = [a2 position] + 1;
            if (v436 >= [a2 position] && (v437 = objc_msgSend(a2, "position") + 1, v437 <= objc_msgSend(a2, "length")))
            {
              v438 = [a2 data];
              [v438 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v435 |= (v474 & 0x7F) << v433;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v433 += 7;
            v11 = v434++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_926;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v435;
          }

LABEL_926:
          v470 = 112;
          goto LABEL_947;
        case 0x30u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 452) |= 0x400uLL;
          while (1)
          {
            v474 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v474 & 0x7F) << v77;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_734;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v79;
          }

LABEL_734:
          v470 = 88;
          goto LABEL_947;
        case 0x31u:
          v149 = 0;
          v150 = 0;
          v151 = 0;
          *(a1 + 452) |= 0x4000uLL;
          while (1)
          {
            v474 = 0;
            v152 = [a2 position] + 1;
            if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
            {
              v154 = [a2 data];
              [v154 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v151 |= (v474 & 0x7F) << v149;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v149 += 7;
            v11 = v150++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_778;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v151;
          }

LABEL_778:
          v470 = 120;
          goto LABEL_947;
        case 0x32u:
          v173 = 0;
          v174 = 0;
          v175 = 0;
          *(a1 + 452) |= 0x800uLL;
          while (1)
          {
            v474 = 0;
            v176 = [a2 position] + 1;
            if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
            {
              v178 = [a2 data];
              [v178 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v175 |= (v474 & 0x7F) << v173;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v173 += 7;
            v11 = v174++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_790;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v175;
          }

LABEL_790:
          v470 = 96;
          goto LABEL_947;
        case 0x33u:
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 452) |= 0x8000000000000uLL;
          while (1)
          {
            v474 = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v474 & 0x7F) << v39;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_714;
            }
          }

          v38 = (v41 != 0) & ~[a2 hasError];
LABEL_714:
          v471 = 425;
          goto LABEL_922;
        case 0x34u:
          v451 = 0;
          v452 = 0;
          v453 = 0;
          *(a1 + 452) |= 0x800000uLL;
          while (1)
          {
            v474 = 0;
            v454 = [a2 position] + 1;
            if (v454 >= [a2 position] && (v455 = objc_msgSend(a2, "position") + 1, v455 <= objc_msgSend(a2, "length")))
            {
              v456 = [a2 data];
              [v456 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v453 |= (v474 & 0x7F) << v451;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v451 += 7;
            v11 = v452++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_938;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v453;
          }

LABEL_938:
          v470 = 192;
          goto LABEL_947;
        case 0x35u:
          v427 = 0;
          v428 = 0;
          v429 = 0;
          *(a1 + 460) |= 0x40u;
          while (1)
          {
            v474 = 0;
            v430 = [a2 position] + 1;
            if (v430 >= [a2 position] && (v431 = objc_msgSend(a2, "position") + 1, v431 <= objc_msgSend(a2, "length")))
            {
              v432 = [a2 data];
              [v432 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v429 |= (v474 & 0x7F) << v427;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v427 += 7;
            v11 = v428++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_921;
            }
          }

          v38 = (v429 != 0) & ~[a2 hasError];
LABEL_921:
          v471 = 444;
          goto LABEL_922;
        case 0x36u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 452) |= 0x800000000000uLL;
          while (1)
          {
            v474 = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              v76 = [a2 data];
              [v76 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v474 & 0x7F) << v71;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v11 = v72++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_730;
            }
          }

          v38 = (v73 != 0) & ~[a2 hasError];
LABEL_730:
          v471 = 421;
          goto LABEL_922;
        case 0x37u:
          v414 = 0;
          v415 = 0;
          v416 = 0;
          *(a1 + 460) |= 8u;
          while (1)
          {
            v474 = 0;
            v417 = [a2 position] + 1;
            if (v417 >= [a2 position] && (v418 = objc_msgSend(a2, "position") + 1, v418 <= objc_msgSend(a2, "length")))
            {
              v419 = [a2 data];
              [v419 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v416 |= (v474 & 0x7F) << v414;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v414 += 7;
            v11 = v415++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_917;
            }
          }

          v38 = (v416 != 0) & ~[a2 hasError];
LABEL_917:
          v471 = 441;
          goto LABEL_922;
        case 0x38u:
          v421 = 0;
          v422 = 0;
          v423 = 0;
          *(a1 + 452) |= 0x20000000000000uLL;
          while (1)
          {
            v474 = 0;
            v424 = [a2 position] + 1;
            if (v424 >= [a2 position] && (v425 = objc_msgSend(a2, "position") + 1, v425 <= objc_msgSend(a2, "length")))
            {
              v426 = [a2 data];
              [v426 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v423 |= (v474 & 0x7F) << v421;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v421 += 7;
            v11 = v422++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_919;
            }
          }

          v38 = (v423 != 0) & ~[a2 hasError];
LABEL_919:
          v471 = 427;
          goto LABEL_922;
        case 0x39u:
          v83 = 0;
          v84 = 0;
          v85 = 0;
          *(a1 + 452) |= 0x4000000uLL;
          while (1)
          {
            v474 = 0;
            v86 = [a2 position] + 1;
            if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
            {
              v88 = [a2 data];
              [v88 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v85 |= (v474 & 0x7F) << v83;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v83 += 7;
            v11 = v84++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_738;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v85;
          }

LABEL_738:
          v470 = 216;
          goto LABEL_947;
        case 0x3Au:
          v372 = 0;
          v373 = 0;
          v374 = 0;
          *(a1 + 452) |= 0x10uLL;
          while (1)
          {
            v474 = 0;
            v375 = [a2 position] + 1;
            if (v375 >= [a2 position] && (v376 = objc_msgSend(a2, "position") + 1, v376 <= objc_msgSend(a2, "length")))
            {
              v377 = [a2 data];
              [v377 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v374 |= (v474 & 0x7F) << v372;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v372 += 7;
            v11 = v373++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_895;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v374;
          }

LABEL_895:
          v470 = 40;
          goto LABEL_947;
        case 0x3Bu:
          v155 = 0;
          v156 = 0;
          v157 = 0;
          *(a1 + 452) |= 0x1000000000000uLL;
          while (1)
          {
            v474 = 0;
            v158 = [a2 position] + 1;
            if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
            {
              v160 = [a2 data];
              [v160 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v157 |= (v474 & 0x7F) << v155;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v155 += 7;
            v11 = v156++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_780;
            }
          }

          v38 = (v157 != 0) & ~[a2 hasError];
LABEL_780:
          v471 = 422;
          goto LABEL_922;
        case 0x3Cu:
          v384 = 0;
          v385 = 0;
          v386 = 0;
          *(a1 + 460) |= 0x100u;
          while (1)
          {
            v474 = 0;
            v387 = [a2 position] + 1;
            if (v387 >= [a2 position] && (v388 = objc_msgSend(a2, "position") + 1, v388 <= objc_msgSend(a2, "length")))
            {
              v389 = [a2 data];
              [v389 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v386 |= (v474 & 0x7F) << v384;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v384 += 7;
            v11 = v385++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_901;
            }
          }

          v38 = (v386 != 0) & ~[a2 hasError];
LABEL_901:
          v471 = 446;
          goto LABEL_922;
        case 0x3Du:
          v63 = PBReaderReadString();
          v64 = 392;
          goto LABEL_628;
        case 0x3Eu:
          v282 = 0;
          v283 = 0;
          v284 = 0;
          *(a1 + 460) |= 0x10u;
          while (1)
          {
            v474 = 0;
            v285 = [a2 position] + 1;
            if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
            {
              v287 = [a2 data];
              [v287 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v284 |= (v474 & 0x7F) << v282;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v282 += 7;
            v11 = v283++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_846;
            }
          }

          v38 = (v284 != 0) & ~[a2 hasError];
LABEL_846:
          v471 = 442;
          goto LABEL_922;
        case 0x3Fu:
          v300 = 0;
          v301 = 0;
          v302 = 0;
          *(a1 + 452) |= 0x8000000000uLL;
          while (1)
          {
            v474 = 0;
            v303 = [a2 position] + 1;
            if (v303 >= [a2 position] && (v304 = objc_msgSend(a2, "position") + 1, v304 <= objc_msgSend(a2, "length")))
            {
              v305 = [a2 data];
              [v305 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v302 |= (v474 & 0x7F) << v300;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v300 += 7;
            v11 = v301++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_859;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v302;
          }

LABEL_859:
          v470 = 320;
          goto LABEL_947;
        case 0x40u:
          v228 = 0;
          v229 = 0;
          v230 = 0;
          *(a1 + 452) |= 0x10000000000uLL;
          while (1)
          {
            v474 = 0;
            v231 = [a2 position] + 1;
            if (v231 >= [a2 position] && (v232 = objc_msgSend(a2, "position") + 1, v232 <= objc_msgSend(a2, "length")))
            {
              v233 = [a2 data];
              [v233 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v230 |= (v474 & 0x7F) << v228;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v228 += 7;
            v11 = v229++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_818;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v230;
          }

LABEL_818:
          v470 = 328;
          goto LABEL_947;
        case 0x41u:
          v191 = 0;
          v192 = 0;
          v193 = 0;
          *(a1 + 460) |= 0x80u;
          while (1)
          {
            v474 = 0;
            v194 = [a2 position] + 1;
            if (v194 >= [a2 position] && (v195 = objc_msgSend(a2, "position") + 1, v195 <= objc_msgSend(a2, "length")))
            {
              v196 = [a2 data];
              [v196 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v193 |= (v474 & 0x7F) << v191;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v191 += 7;
            v11 = v192++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_798;
            }
          }

          v38 = (v193 != 0) & ~[a2 hasError];
LABEL_798:
          v471 = 445;
          goto LABEL_922;
        case 0x42u:
          v294 = 0;
          v295 = 0;
          v296 = 0;
          *(a1 + 452) |= 0x40000000uLL;
          while (1)
          {
            v474 = 0;
            v297 = [a2 position] + 1;
            if (v297 >= [a2 position] && (v298 = objc_msgSend(a2, "position") + 1, v298 <= objc_msgSend(a2, "length")))
            {
              v299 = [a2 data];
              [v299 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v296 |= (v474 & 0x7F) << v294;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v294 += 7;
            v11 = v295++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_855;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v296;
          }

LABEL_855:
          v470 = 248;
          goto LABEL_947;
        case 0x43u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          *(a1 + 452) |= 0x20000000uLL;
          while (1)
          {
            v474 = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v474 & 0x7F) << v51;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v11 = v52++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_720;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v53;
          }

LABEL_720:
          v470 = 240;
          goto LABEL_947;
        case 0x44u:
          v125 = 0;
          v126 = 0;
          v127 = 0;
          *(a1 + 452) |= 0x80000000uLL;
          while (1)
          {
            v474 = 0;
            v128 = [a2 position] + 1;
            if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
            {
              v130 = [a2 data];
              [v130 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v127 |= (v474 & 0x7F) << v125;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v125 += 7;
            v11 = v126++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_762;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v127;
          }

LABEL_762:
          v470 = 256;
          goto LABEL_947;
        case 0x45u:
          v463 = 0;
          v464 = 0;
          v465 = 0;
          *(a1 + 452) |= 0x80000uLL;
          while (1)
          {
            v474 = 0;
            v466 = [a2 position] + 1;
            if (v466 >= [a2 position] && (v467 = objc_msgSend(a2, "position") + 1, v467 <= objc_msgSend(a2, "length")))
            {
              v468 = [a2 data];
              [v468 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v465 |= (v474 & 0x7F) << v463;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v463 += 7;
            v11 = v464++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_946;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v465;
          }

LABEL_946:
          v470 = 160;
          goto LABEL_947;
        case 0x46u:
          v101 = 0;
          v102 = 0;
          v103 = 0;
          *(a1 + 452) |= 0x40000uLL;
          while (1)
          {
            v474 = 0;
            v104 = [a2 position] + 1;
            if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v103 |= (v474 & 0x7F) << v101;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v101 += 7;
            v11 = v102++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_748;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v103;
          }

LABEL_748:
          v470 = 152;
          goto LABEL_947;
        case 0x47u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 452) |= 0x100000uLL;
          while (1)
          {
            v474 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v474 & 0x7F) << v26;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_710;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v28;
          }

LABEL_710:
          v470 = 168;
          goto LABEL_947;
        case 0x48u:
          v63 = PBReaderReadString();
          v64 = 352;
          goto LABEL_628;
        case 0x49u:
          v63 = PBReaderReadString();
          v64 = 360;
LABEL_628:
          v420 = *(a1 + v64);
          *(a1 + v64) = v63;

          goto LABEL_948;
        case 0x4Au:
          v439 = 0;
          v440 = 0;
          v441 = 0;
          *(a1 + 452) |= 1uLL;
          while (1)
          {
            v474 = 0;
            v442 = [a2 position] + 1;
            if (v442 >= [a2 position] && (v443 = objc_msgSend(a2, "position") + 1, v443 <= objc_msgSend(a2, "length")))
            {
              v444 = [a2 data];
              [v444 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v441 |= (v474 & 0x7F) << v439;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v439 += 7;
            v11 = v440++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_930;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v441;
          }

LABEL_930:
          v470 = 8;
          goto LABEL_947;
        case 0x4Bu:
          v445 = 0;
          v446 = 0;
          v447 = 0;
          *(a1 + 452) |= 4uLL;
          while (1)
          {
            v474 = 0;
            v448 = [a2 position] + 1;
            if (v448 >= [a2 position] && (v449 = objc_msgSend(a2, "position") + 1, v449 <= objc_msgSend(a2, "length")))
            {
              v450 = [a2 data];
              [v450 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v447 |= (v474 & 0x7F) << v445;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v445 += 7;
            v11 = v446++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_934;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v447;
          }

LABEL_934:
          v470 = 24;
          goto LABEL_947;
        case 0x4Cu:
          v89 = 0;
          v90 = 0;
          v91 = 0;
          *(a1 + 452) |= 2uLL;
          while (1)
          {
            v474 = 0;
            v92 = [a2 position] + 1;
            if (v92 >= [a2 position] && (v93 = objc_msgSend(a2, "position") + 1, v93 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v91 |= (v474 & 0x7F) << v89;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v11 = v90++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_742;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v91;
          }

LABEL_742:
          v470 = 16;
          goto LABEL_947;
        case 0x4Du:
          v270 = 0;
          v271 = 0;
          v272 = 0;
          *(a1 + 452) |= 8uLL;
          while (1)
          {
            v474 = 0;
            v273 = [a2 position] + 1;
            if (v273 >= [a2 position] && (v274 = objc_msgSend(a2, "position") + 1, v274 <= objc_msgSend(a2, "length")))
            {
              v275 = [a2 data];
              [v275 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v272 |= (v474 & 0x7F) << v270;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v270 += 7;
            v11 = v271++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_842;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v272;
          }

LABEL_842:
          v470 = 32;
          goto LABEL_947;
        case 0x4Eu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 452) |= 0x400000000000uLL;
          while (1)
          {
            v474 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v474 & 0x7F) << v32;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              LOBYTE(v38) = 0;
              goto LABEL_712;
            }
          }

          v38 = (v34 != 0) & ~[a2 hasError];
LABEL_712:
          v471 = 420;
LABEL_922:
          *(a1 + v471) = v38;
          goto LABEL_948;
        case 0x4Fu:
          v457 = 0;
          v458 = 0;
          v459 = 0;
          *(a1 + 452) |= 0x1000000000uLL;
          while (1)
          {
            v474 = 0;
            v460 = [a2 position] + 1;
            if (v460 >= [a2 position] && (v461 = objc_msgSend(a2, "position") + 1, v461 <= objc_msgSend(a2, "length")))
            {
              v462 = [a2 data];
              [v462 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v459 |= (v474 & 0x7F) << v457;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v457 += 7;
            v11 = v458++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_942;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v459;
          }

LABEL_942:
          v470 = 296;
          goto LABEL_947;
        case 0x50u:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 452) |= 0x2000000000uLL;
          while (1)
          {
            v474 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v474 & 0x7F) << v20;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_706;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v22;
          }

LABEL_706:
          v470 = 304;
          goto LABEL_947;
        case 0x51u:
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 452) |= 0x4000000000uLL;
          while (1)
          {
            v474 = 0;
            v60 = [a2 position] + 1;
            if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v59 |= (v474 & 0x7F) << v57;
            if ((v474 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v11 = v58++ >= 9;
            if (v11)
            {
              v19 = 0;
              goto LABEL_724;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v59;
          }

LABEL_724:
          v470 = 312;
          goto LABEL_947;
        case 0x52u:
          v167 = 0;
          v168 = 0;
          v169 = 0;
          *(a1 + 452) |= 0x800000000uLL;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_948;
      }

      while (1)
      {
        v474 = 0;
        v170 = [a2 position] + 1;
        if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v474 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v169 |= (v474 & 0x7F) << v167;
        if ((v474 & 0x80) == 0)
        {
          break;
        }

        v167 += 7;
        v11 = v168++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_786;
        }
      }

      v19 = [a2 hasError] ? 0 : v169;
LABEL_786:
      v470 = 288;
LABEL_947:
      *(a1 + v470) = v19;
LABEL_948:
      v473 = [a2 position];
    }

    while (v473 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _BRCWritePackageExtensions()
{
  if (_BRCWritePackageExtensions_onceToken != -1)
  {
    _BRCWritePackageExtensions_cold_1();
  }

  return br_pacer_signal();
}

id extension_array_path()
{
  v0 = [MEMORY[0x277CFAEF0] applicationSupportDirForCurrentPersona];
  v1 = [v0 stringByAppendingPathComponent:@"pkg_extensions.plist"];

  return v1;
}

id __old_extension_manager_bundle_path()
{
  v0 = [MEMORY[0x277CCACA8] br_currentSupportDir];
  v1 = [v0 stringByAppendingPathComponent:@"SharedPackageExtensions.app"];

  return v1;
}

id __very_old_extension_manager_bundle_path()
{
  v0 = [MEMORY[0x277CCACA8] br_currentSupportDir];
  v1 = [v0 stringByAppendingPathComponent:*MEMORY[0x277CFACE8]];
  v2 = [v1 stringByAppendingPathComponent:@"SharedPackageExtensions.app"];

  return v2;
}

void sub_22403DF94(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Unwind_Resume(a1);
}

void sub_22403ED7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22403F9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_224040FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240436EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224048A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224049B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v41 - 136));
  objc_destroyWeak((v41 - 128));
  _Unwind_Resume(a1);
}

void sub_224049EAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404B85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404BB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404F0A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22404F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224053BB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_224054364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240544D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240548D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224054BA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224056820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 200), 8);
  _Block_object_dispose((v63 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t ___allowedClassesForErrors_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  _allowedClassesForErrors_allowedClasses = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_22405CEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_22405E350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = [v17 debugDescription];
      [(BRCLocalVersion(BRCFPFSAdditions) *)v20 initFromResultSet:v18 pos:&buf, v19];
    }

    v21 = [*(v16 + 1440) brc_fakeRecordWithErrorMarkerFor20716676];
    v22 = *(v15 + 136);
    *(v15 + 136) = v21;

    objc_end_catch();
    JUMPOUT(0x22405E158);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___allowedClassesForEtags_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  _allowedClassesForEtags_allowedClasses = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t ___allowedClassesForErrors_block_invoke_0()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  _allowedClassesForErrors_allowedClasses_0 = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_22405ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22405F538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224062734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

void sub_224063240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_224063684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __br_notify_register_dispatch_block_invoke_0(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke_2___personaOnceToken != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_0();
    }

    v3 = _block_invoke_2___personalPersona;
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

void __br_notify_register_dispatch_block_invoke_2_0()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_2___personalPersona;
  _block_invoke_2___personalPersona = v0;
}

uint64_t BRFieldPkgLocalItemReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v40[0] & 0x7F) << v16;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_67;
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

LABEL_67:
          v37 = 8;
          goto LABEL_68;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_69;
      }

      v36 = objc_alloc_init(BRFieldPkgItem);
      objc_storeStrong((a1 + 32), v36);
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !BRFieldPkgItemReadFrom(v36, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_69:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v40[0] & 0x7F) << v23;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_59:
        *(a1 + 24) = v29;
        goto LABEL_69;
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v40[0] & 0x7F) << v30;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v32;
        }

LABEL_63:
        v37 = 16;
LABEL_68:
        *(a1 + v37) = v22;
        goto LABEL_69;
      case 5:
        v14 = PBReaderReadData();
        v15 = *(a1 + 40);
        *(a1 + 40) = v14;

        goto LABEL_69;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

void sub_224067C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_224067FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BRCBundleServiceConnection()
{
  v0 = +[BRCAccountsManager sharedManager];
  v1 = [v0 isInSyncBubble];

  if (v1)
  {
    BRCBundleServiceConnection_cold_1();
  }

  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.CloudDocsDaemon.container-metadata-extractor"];
  if (BRCBundleServiceInterface_onceToken != -1)
  {
    BRCBundleServiceConnection_cold_2();
  }

  [v2 setRemoteObjectInterface:BRCBundleServiceInterface_interface];
  [v2 resume];

  return v2;
}

void sub_224069E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_sync_exit(v25);
  __brc_leave_section(&a25);
  _Unwind_Resume(a1);
}

void sub_22406A7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22406B218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_22406CD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22406E4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22406E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22406EB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22406F164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22406F3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22406F790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224070CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224072078(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_224073904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  __brc_leave_section(v61 - 256);
  _Unwind_Resume(a1);
}

void sub_224073F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224074E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240771F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  __brc_leave_section(&a49);
  __brc_leave_section(&a46);
  _Unwind_Resume(a1);
}

void sub_2240777D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22407898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22407B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22407DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  __brc_leave_section(&a30);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_22407E9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22407EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  __brc_leave_section(va);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22407F5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22407FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408052C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __BRCBundleServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28380EB18];
  v1 = BRCBundleServiceInterface_interface;
  BRCBundleServiceInterface_interface = v0;

  v2 = BRCBundleServiceInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_extractMetadataForContainerID_bundleID_minimumBundleVersion_reply_ argumentIndex:0 ofReply:1];

  v9 = BRCBundleServiceInterface_interface;
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v9 setClasses:v12 forSelector:sel_extractMetadataForContainerID_bundleID_minimumBundleVersion_reply_ argumentIndex:1 ofReply:1];
}

void sub_224083A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240847DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224084CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408516C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240853C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224085650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224086290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240867CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224086DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224087658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224087B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224088EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240892C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408A64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408AA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408B1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408CC28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22408DBE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22408E954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22408F3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

__CFString *zoneHealthStateDescriptionForCode(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2785064E0[a1];
  }
}

uint64_t shouldReportProblemToHealthZone(uint64_t a1)
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [v2 healthErrorsToReport];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t BRCSetAllShareAttributesAtURL(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = *__error();
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, 0x90u))
  {
    v7 = [v1 path];
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = v2;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_223E7A000, v4, 0x90u, "[ERROR] could not set Spotlight attribute for share at path: %@ %{errno}d%@", &v8, 0x1Cu);
  }

  *__error() = v2;
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t BRCReadlinkAt(int a1, const char *a2, char *a3, uint64_t a4)
{
  v5 = readlinkat(a1, a2, a3, a4 - 1);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  result = 0;
  a3[v6] = 0;
  return result;
}

uint64_t BRCUnlinkAt(int a1, void *a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = unlinkat(a1, [v5 fileSystemRepresentation], a3);
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13[0] = 67110146;
      v13[1] = a1;
      v14 = 2112;
      v15 = v5;
      v16 = 1024;
      v17 = a3;
      v18 = 2080;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] unlinkat(%d, '%@', %d) failed: %s%@", v13, 0x2Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t BRCMkdirAt(int a1, void *a2, int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = mkdirat(a1, [v5 fileSystemRepresentation], a3);
  v7 = v6;
  if (v6 && v6 != 17)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14[0] = 67110146;
      v14[1] = a1;
      v15 = 2112;
      v16 = v5;
      v17 = 1024;
      v18 = a3;
      v19 = 2080;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] mkdirat(%d, '%@', 0%3o) failed: %s%@", v14, 0x2Cu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t BRCSymlinkAt(void *a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  if (![v5 length])
  {
    v10 = *__error();
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      BRCSymlinkAt_cold_2();
    }

    goto LABEL_11;
  }

  if (![v6 length])
  {
    v10 = *__error();
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      BRCSymlinkAt_cold_1();
    }

LABEL_11:

    *__error() = v10;
    *__error() = 22;
    v7 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v7 = symlinkat([v5 fileSystemRepresentation], a2, objc_msgSend(v6, "fileSystemRepresentation"));
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v17[0] = 67110146;
      v17[1] = a2;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      v22 = 2080;
      v23 = v16;
      v24 = 2112;
      v25 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] symlinkat(%d, '%@', '%@') failed: %s%@", v17, 0x30u);
    }
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t BRCMkContainerComponent(int a1, void *a2, _BYTE *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v23 = xmmword_2241AC110;
  v24 = 0;
  v22 = 0;
  if (!getattrlistat(a1, [v5 fileSystemRepresentation], &v23, &v22, 8uLL, 0x21uLL) && (WORD2(v22) & 0xF1D2) == 0x41C0)
  {
    goto LABEL_15;
  }

  if ((BRCMkdirAt(a1, v5, 493) & 0x80000000) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      BRCMkContainerComponent_cold_1();
    }

    goto LABEL_7;
  }

  if (*__error() != 17)
  {
    v12 = *__error();
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      *buf = 67109890;
      v26 = a1;
      v27 = 2112;
      v28 = v5;
      v29 = 1024;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] mkdirat(%d, '%@') failed %{errno}d%@", buf, 0x22u);
    }

    *__error() = v12;
    if (!*__error())
    {
      BRCMkContainerComponent_cold_2();
    }

    goto LABEL_22;
  }

  if (unlinkat(a1, [v5 fileSystemRepresentation], 0))
  {
    if (fchmodat(a1, [v5 br_fileSystemRepresentation], 0x1EDu, 32) < 0)
    {
      v9 = *__error();
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        *buf = 67109890;
        v26 = a1;
        v27 = 2112;
        v28 = v5;
        v29 = 1024;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] fchmodat(%d, '%@') failed %{errno}d%@", buf, 0x22u);
      }

      *__error() = v9;
    }

LABEL_15:
    if (a3)
    {
      v8 = 0;
      *a3 = 0;
      goto LABEL_23;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_23;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    BRCMkContainerComponent_cold_3();
  }

  if ((BRCMkdirAt(a1, v5, 511) & 0x80000000) != 0)
  {
    v19 = *__error();
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, 0x90u))
    {
      *buf = 67109890;
      v26 = a1;
      v27 = 2112;
      v28 = v5;
      v29 = 1024;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] mkdirat(%d, '%@') failed %{errno}d%@", buf, 0x22u);
    }

    *__error() = v19;
    if (!*__error())
    {
      BRCMkContainerComponent_cold_4();
    }

LABEL_22:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_17;
  }

  v8 = 0;
  *a3 = 1;
LABEL_23:

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t BRCRenameAt(int a1, void *a2, int a3, void *a4, unsigned int a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = renameatx_np(a1, [v9 fileSystemRepresentation], a3, objc_msgSend(v10, "fileSystemRepresentation"), a5);
  if (v11)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v18[0] = 67110658;
      v18[1] = a1;
      v19 = 2112;
      v20 = v9;
      v21 = 1024;
      v22 = a3;
      v23 = 2112;
      v24 = v10;
      v25 = 1024;
      v26 = a5;
      v27 = 2080;
      v28 = v17;
      v29 = 2112;
      v30 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] renameatx_np(%d, '%@', %d, '%@', %u) failed: %s%@", v18, 0x3Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t BRCCloneAt(int a1, void *a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  memset(&v24, 0, sizeof(v24));
  if (fstatat(a1, [v7 fileSystemRepresentation], &v24, 32) < 0)
  {
    v16 = *__error();
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      BRCCloneAt_cold_1();
    }

    *__error() = v16;
    v14 = 0xFFFFFFFFLL;
  }

  else if ((v24.st_mode & 0xF000) == 0x4000)
  {
    src = 0;
    v9 = copyfile_state_alloc();
    copyfile_state_set(v9, 6u, brc_copyfileat_status_cb);
    copyfile_state_set(v9, 7u, &src);
    v10 = BRCPathAt(a1, v7);
    v11 = BRCPathAt(a3, v8);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v10 fp_prettyPath];
      v22 = [v11 fp_prettyPath];
      *buf = 138412802;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = v12;
      _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Cloning %@ to %@%@", buf, 0x20u);
    }

    v14 = copyfile([v10 fileSystemRepresentation], objc_msgSend(v11, "fileSystemRepresentation"), v9, 0x10C8000u);
    copyfile_state_free(v9);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = src;
      if (src)
      {
        *__error() = v15;
      }
    }
  }

  else
  {
    v14 = clonefileat(a1, [v7 fileSystemRepresentation], a3, objc_msgSend(v8, "fileSystemRepresentation"), 1u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t brc_copyfileat_status_cb(int a1, int a2, uint64_t a3, const char *a4, uint64_t a5, int *a6)
{
  result = 0;
  if (a1 == 1 && a2 == 3)
  {
    v19 = v6;
    v20 = v7;
    v12 = *__error();
    memset(&v18, 0, sizeof(v18));
    if ((lstat(a4, &v18) & 0x80000000) == 0)
    {
      v13 = v18.st_mode & 0xF000;
      if (v13 != 0x4000)
      {
        if (v13 == 0x8000)
        {
          if ((v18.st_flags & 0x20) != 0 && v12 == 9)
          {
            v14 = brc_bread_crumbs();
            v15 = brc_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              brc_copyfileat_status_cb_cold_2(v14, v15);
            }

            goto LABEL_13;
          }
        }

        else if (v13 != 40960)
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            brc_copyfileat_status_cb_cold_3(v14, v15);
          }

LABEL_13:

          return 1;
        }
      }
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      brc_copyfileat_status_cb_cold_1(v16, v17);
    }

    *a6 = *__error();
    return 2;
  }

  return result;
}

id BRCPathAt(int a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 == -1)
  {
    v6 = v3;
  }

  else if (fcntl(a1, 50, v9) < 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:v9];
    v6 = [v5 stringByAppendingPathComponent:v4];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t BRCFSetAttrList(int a1, void *a2, void *a3, size_t a4)
{
  v4 = fsetattrlist(a1, a2, a3, a4, 1u);
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      BRCFSetAttrList_cold_1(v5, v6);
    }
  }

  return v4;
}

BOOL BRCSetXattrValueForKeyOnPath(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = open([v5 fileSystemRepresentation], 33028);
  if (v8 < 0)
  {
    if (*__error() == 2)
    {
      v10 = 0;
    }

    else
    {
      v11 = *__error();
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v16 = 138412802;
        v17 = v5;
        v18 = 1024;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] can't open '%@' %{errno}d%@", &v16, 0x1Cu);
      }

      v10 = 0;
      *__error() = v11;
    }
  }

  else
  {
    v9 = v8;
    v10 = BRCSetXattrValueForKeyOnFD(v8, v5, v6, v7);
    close(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL BRCSetXattrValueForKeyOnFD(int a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a3 UTF8String];
  v11 = [v9 UTF8String];
  v12 = [v9 length];

  v13 = fsetxattr(a1, v10, v11, v12, 0, 0);
  if (v13 < 0)
  {
    v14 = *__error();
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      v19 = 136316162;
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      v23 = 2112;
      v24 = v7;
      v25 = 1024;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] can't set xattr %s to %s at '%@' %{errno}d%@", &v19, 0x30u);
    }

    *__error() = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 >= 0;
}

id BRCGetXattrValueForKeyOnPath(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = open([v3 fileSystemRepresentation], 33028);
  if (v5 < 0)
  {
    if (*__error() == 2)
    {
      v7 = 0;
    }

    else
    {
      v8 = *__error();
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        v13 = 138412802;
        v14 = v3;
        v15 = 1024;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] can't open '%@' %{errno}d%@", &v13, 0x1Cu);
      }

      v7 = 0;
      *__error() = v8;
    }
  }

  else
  {
    v6 = v5;
    v7 = BRCGetXattrValueForKeyOnFD(v5, v3, v4);
    close(v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

id BRCGetXattrValueForKeyOnFD(int a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 < 0)
  {
    goto LABEL_32;
  }

  v8 = fgetxattr(a1, [v6 UTF8String], 0, 0, 0, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8)
    {
      v10 = malloc_type_calloc(1uLL, v8 + 1, 0x100004077774924uLL);
      if (fgetxattr(a1, [v7 UTF8String], v10, v9, 0, 0) < 0)
      {
        v22 = *__error();
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, 0x90u))
        {
          v27 = 134219010;
          v28 = v9;
          v29 = 2112;
          v30 = v7;
          v31 = 2112;
          *v32 = v5;
          *&v32[8] = 1024;
          *&v32[10] = v22;
          *&v32[14] = 2112;
          *&v32[16] = v23;
          _os_log_error_impl(&dword_223E7A000, v24, 0x90u, "[ERROR] can't read %lu-byte xattr %@ at '%@' %{errno}d%@", &v27, 0x30u);
        }

        *__error() = v22;
      }

      else
      {
        v11 = *v10;
        if (!*v10)
        {
LABEL_27:
          v19 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:4];
          free(v10);
          goto LABEL_33;
        }

        v12 = 1;
        while (1)
        {
          v13 = (v11 - 48) >= 0xAu && ((v11 & 0xDF) - 65) >= 0x1Au;
          if (v13 && (v11 - 32 > 0x3F || ((1 << (v11 - 32)) & 0x800000000400E001) == 0) && v11 != 10)
          {
            break;
          }

          v11 = v10[v12++];
          if (!v11)
          {
            goto LABEL_27;
          }
        }

        v14 = brc_bread_crumbs();
        v15 = brc_default_log();
        if (os_log_type_enabled(v15, 0x90u))
        {
          v27 = 138413058;
          v28 = v7;
          v29 = 2112;
          v30 = v5;
          v31 = 2080;
          *v32 = v10;
          *&v32[8] = 2112;
          *&v32[10] = v14;
          _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] invalid xattr %@ at '%@': %s%@", &v27, 0x2Au);
        }
      }

      free(v10);
    }

    else
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        v27 = 138412802;
        v28 = v7;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        *v32 = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] empty xattr %@ at '%@'%@", &v27, 0x20u);
      }
    }

    goto LABEL_32;
  }

  if (*__error() == 93)
  {
LABEL_32:
    v19 = 0;
    goto LABEL_33;
  }

  v16 = *__error();
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, 0x90u))
  {
    v27 = 138413058;
    v28 = v7;
    v29 = 2112;
    v30 = v5;
    v31 = 1024;
    *v32 = v16;
    *&v32[4] = 2112;
    *&v32[6] = v17;
    _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] can't read the size of xattr %@ at '%@' %{errno}d%@", &v27, 0x26u);
  }

  v19 = 0;
  *__error() = v16;
LABEL_33:

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t BRCOpenAt(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return BRCOpenAtAndGetProtectionStatus(a1, a2, a3, v9, 0);
}

uint64_t BRCOpenAtAndGetProtectionStatus(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  v191 = *MEMORY[0x277D85DE8];
  memset(&v146, 0, sizeof(v146));
  v10 = openat(a1, a2, a3, a4);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_2:
    if (!fstat(v10, &v146) && (v146.st_mode & 0xF040) == 0x4000)
    {
      if (fchmod(v10, v146.st_mode | 0x1C0) < 0)
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, 0x90u))
        {
          if ((v146.st_mode & 0xF000) == 0x4000)
          {
            v75 = 0;
          }

          else
          {
            v75 = 64;
          }

          if (((v75 | LOBYTE(v146.st_mode)) & 0x40) != 0)
          {
            v76 = 45;
          }

          else
          {
            v76 = 120;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v77 = 45;
          }

          else
          {
            v77 = 114;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v78 = 114;
          }

          else
          {
            v78 = 45;
          }

          v145 = v78;
          if ((v146.st_mode & 0x80) != 0)
          {
            v79 = 45;
          }

          else
          {
            v79 = 119;
          }

          st_dev = v146.st_dev;
          v110 = aPcDBLSW[v146.st_mode >> 12];
          st_ino = v146.st_ino;
          if ((v146.st_mode & 0x80) != 0)
          {
            v80 = 119;
          }

          else
          {
            v80 = 45;
          }

          if ((v146.st_mode & 0x40) != 0)
          {
            v81 = 120;
          }

          else
          {
            v81 = 45;
          }

          v124 = v81;
          v126 = v80;
          if ((v146.st_mode & 0x20) != 0)
          {
            v82 = 114;
          }

          else
          {
            v82 = 45;
          }

          if ((v146.st_mode & 0x10) != 0)
          {
            v83 = 119;
          }

          else
          {
            v83 = 45;
          }

          v120 = v83;
          v122 = v82;
          if ((v146.st_mode & 8) != 0)
          {
            v84 = 120;
          }

          else
          {
            v84 = 45;
          }

          if ((v146.st_mode & 4) != 0)
          {
            v85 = 114;
          }

          else
          {
            v85 = 45;
          }

          v116 = v85;
          v118 = v84;
          if ((v146.st_mode & 2) != 0)
          {
            v86 = 119;
          }

          else
          {
            v86 = 45;
          }

          if (v146.st_mode)
          {
            v87 = 120;
          }

          else
          {
            v87 = 45;
          }

          v112 = v87;
          v114 = v86;
          st_nlink = v146.st_nlink;
          st_uid = v146.st_uid;
          st_gid = v146.st_gid;
          tv_sec = v146.st_atimespec.tv_sec;
          v136 = v146.st_mtimespec.tv_sec;
          v138 = v146.st_ctimespec.tv_sec;
          st_size = v146.st_size;
          st_flags = v146.st_flags;
          v88 = *__error();
          *buf = 67117570;
          v148 = a1;
          v149 = 2080;
          v150 = a2;
          v151 = 1024;
          v152 = 35;
          v153 = 1024;
          *v154 = v77;
          *&v154[4] = 1024;
          *&v154[6] = v79;
          *v155 = 1024;
          *&v155[2] = v76;
          *v156 = 1024;
          *&v156[2] = 45;
          *v157 = 1024;
          *&v157[2] = 45;
          *v158 = 1024;
          *&v158[2] = 45;
          *v159 = 1024;
          *&v159[2] = 45;
          *v160 = 1024;
          *&v160[2] = 45;
          *v161 = 1024;
          *&v161[2] = 45;
          *v162 = 1024;
          *&v162[2] = st_dev;
          *v163 = 2048;
          *&v163[2] = st_ino;
          v164 = 1024;
          v165 = v110;
          v166 = 1024;
          v167 = v145;
          v168 = 1024;
          v169 = v126;
          v170 = 1024;
          *v171 = v124;
          *&v171[4] = 1024;
          *&v171[6] = v122;
          LOWORD(v172) = 1024;
          *(&v172 + 2) = v120;
          HIWORD(v172) = 1024;
          *v173 = v118;
          *&v173[4] = 1024;
          *&v173[6] = v116;
          v174 = 1024;
          *v175 = v114;
          *&v175[4] = 1024;
          *&v175[6] = v112;
          *v176 = 1024;
          *&v176[2] = st_nlink;
          LOWORD(v177) = 1024;
          *(&v177 + 2) = st_uid;
          HIWORD(v177) = 1024;
          v178 = st_gid;
          v179 = 2048;
          v180 = tv_sec;
          v181 = 2048;
          v182 = v136;
          v183 = 2048;
          v184 = v138;
          v185 = 2048;
          v186 = st_size;
          v187 = 1024;
          v188 = st_flags;
          v189 = 1024;
          *v190 = v88;
          *&v190[4] = 2112;
          *&v190[6] = v11;
          _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] failed fchmodat(%d, '%s', %c%c%c%c%c%c%c%c%c%c) deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x %{errno}d%@", buf, 0xEAu);
        }
      }

      else
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = aPcDBLSW[v146.st_mode >> 12];
          if ((v146.st_mode & 0xF000) == 0x4000)
          {
            v14 = 0;
          }

          else
          {
            v14 = 64;
          }

          if (((v14 | LOBYTE(v146.st_mode)) & 0x40) != 0)
          {
            v15 = 45;
          }

          else
          {
            v15 = 120;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v16 = 45;
          }

          else
          {
            v16 = 114;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v17 = 114;
          }

          else
          {
            v17 = 45;
          }

          if ((v146.st_mode & 0x80) != 0)
          {
            v18 = 45;
          }

          else
          {
            v18 = 119;
          }

          if ((v146.st_mode & 0x80) != 0)
          {
            v19 = 119;
          }

          else
          {
            v19 = 45;
          }

          if ((v146.st_mode & 0x40) != 0)
          {
            v20 = 120;
          }

          else
          {
            v20 = 45;
          }

          if ((v146.st_mode & 0x20) != 0)
          {
            v21 = 114;
          }

          else
          {
            v21 = 45;
          }

          *buf = 67117314;
          if ((v146.st_mode & 0x10) != 0)
          {
            v22 = 119;
          }

          else
          {
            v22 = 45;
          }

          v148 = a1;
          if ((v146.st_mode & 8) != 0)
          {
            v23 = 120;
          }

          else
          {
            v23 = 45;
          }

          v149 = 2080;
          if ((v146.st_mode & 4) != 0)
          {
            v24 = 114;
          }

          else
          {
            v24 = 45;
          }

          v150 = a2;
          v151 = 1024;
          if ((v146.st_mode & 2) != 0)
          {
            v25 = 119;
          }

          else
          {
            v25 = 45;
          }

          v152 = 35;
          if (v146.st_mode)
          {
            v26 = 120;
          }

          else
          {
            v26 = 45;
          }

          v153 = 1024;
          *v154 = v16;
          *&v154[4] = 1024;
          *&v154[6] = v18;
          *v155 = 1024;
          *&v155[2] = v15;
          *v156 = 1024;
          *&v156[2] = 45;
          *v157 = 1024;
          *&v157[2] = 45;
          *v158 = 1024;
          *&v158[2] = 45;
          *v159 = 1024;
          *&v159[2] = 45;
          *v160 = 1024;
          *&v160[2] = 45;
          *v161 = 1024;
          *&v161[2] = 45;
          *v162 = 1024;
          *&v162[2] = v146.st_dev;
          *v163 = 2048;
          *&v163[2] = v146.st_ino;
          v164 = 1024;
          v165 = v13;
          v166 = 1024;
          v167 = v17;
          v168 = 1024;
          v169 = v19;
          v170 = 1024;
          *v171 = v20;
          *&v171[4] = 1024;
          *&v171[6] = v21;
          LOWORD(v172) = 1024;
          *(&v172 + 2) = v22;
          HIWORD(v172) = 1024;
          *v173 = v23;
          *&v173[4] = 1024;
          *&v173[6] = v24;
          v174 = 1024;
          *v175 = v25;
          *&v175[4] = 1024;
          *&v175[6] = v26;
          *v176 = 1024;
          *&v176[2] = v146.st_nlink;
          LOWORD(v177) = 1024;
          *(&v177 + 2) = v146.st_uid;
          HIWORD(v177) = 1024;
          v178 = v146.st_gid;
          v179 = 2048;
          v180 = v146.st_atimespec.tv_sec;
          v181 = 2048;
          v182 = v146.st_mtimespec.tv_sec;
          v183 = 2048;
          v184 = v146.st_ctimespec.tv_sec;
          v185 = 2048;
          v186 = v146.st_size;
          v187 = 1024;
          v188 = v146.st_flags;
          v189 = 2112;
          *v190 = v11;
          _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] openat(%d, '%s'): added %c%c%c%c%c%c%c%c%c%c to deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xE4u);
        }
      }
    }

    goto LABEL_154;
  }

  if (*__error() == 13)
  {
    if (*a2 == 46 && !*(a2 + 1))
    {
      v27 = fstat(a1, &v146);
      if (!(v27 | v146.st_uid))
      {
        v28 = [MEMORY[0x277CBEBC0] brc_fileURLWithFileDescriptor:a1];
        v10 = open([v28 fileSystemRepresentation], a3, a4);
        if ((v10 & 0x80000000) != 0)
        {
          v73 = brc_bread_crumbs();
          v74 = brc_default_log();
          if (os_log_type_enabled(v74, 0x90u))
          {
            v102 = *__error();
            *buf = 67109890;
            v148 = a1;
            v149 = 2112;
            v150 = v28;
            v151 = 1024;
            v152 = v102;
            v153 = 2112;
            *v154 = v73;
            _os_log_error_impl(&dword_223E7A000, v74, 0x90u, "[ERROR] Failed to open fd %d by relpath %@ %{errno}d%@", buf, 0x22u);
          }

          *__error() = 13;
        }

        else
        {
          v29 = brc_bread_crumbs();
          v30 = brc_default_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            v148 = a1;
            v149 = 2112;
            v150 = v29;
            _os_log_impl(&dword_223E7A000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] Fixed up openat(%d, '.') for inaccessible folder%@", buf, 0x12u);
          }
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_139;
      }
    }

    if (fstatat(a1, a2, &v146, 32) < 0)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, 0x90u))
      {
        v36 = *__error();
        *buf = 67109890;
        v148 = a1;
        v149 = 2080;
        v150 = a2;
        v151 = 1024;
        v152 = v36;
        v153 = 2112;
        *v154 = v34;
        v37 = "[ERROR] failed openat with EACCES and fstatat(%d, '%s') %{errno}d%@";
        v38 = v35;
        v39 = 34;
LABEL_137:
        _os_log_error_impl(&dword_223E7A000, v38, 0x90u, v37, buf, v39);
      }
    }

    else if ((v146.st_mode & 0x100) != 0)
    {
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, 0x90u))
      {
        v40 = aPcDBLSW[v146.st_mode >> 12];
        if ((v146.st_mode & 0x100) != 0)
        {
          v41 = 114;
        }

        else
        {
          v41 = 45;
        }

        if ((v146.st_mode & 0x80) != 0)
        {
          v42 = 119;
        }

        else
        {
          v42 = 45;
        }

        if ((v146.st_mode & 0x40) != 0)
        {
          v43 = 120;
        }

        else
        {
          v43 = 45;
        }

        if ((v146.st_mode & 0x20) != 0)
        {
          v44 = 114;
        }

        else
        {
          v44 = 45;
        }

        if ((v146.st_mode & 0x10) != 0)
        {
          v45 = 119;
        }

        else
        {
          v45 = 45;
        }

        if ((v146.st_mode & 8) != 0)
        {
          v46 = 120;
        }

        else
        {
          v46 = 45;
        }

        if ((v146.st_mode & 4) != 0)
        {
          v47 = 114;
        }

        else
        {
          v47 = 45;
        }

        if ((v146.st_mode & 2) != 0)
        {
          v48 = 119;
        }

        else
        {
          v48 = 45;
        }

        if (v146.st_mode)
        {
          v49 = 120;
        }

        else
        {
          v49 = 45;
        }

        *buf = 67114754;
        v148 = a1;
        v149 = 2080;
        v150 = a2;
        v151 = 1024;
        v152 = v146.st_dev;
        v153 = 2048;
        *v154 = v146.st_ino;
        *&v154[8] = 1024;
        *v155 = v40;
        *&v155[4] = 1024;
        *v156 = v41;
        *&v156[4] = 1024;
        *v157 = v42;
        *&v157[4] = 1024;
        *v158 = v43;
        *&v158[4] = 1024;
        *v159 = v44;
        *&v159[4] = 1024;
        *v160 = v45;
        *&v160[4] = 1024;
        *v161 = v46;
        *&v161[4] = 1024;
        *v162 = v47;
        *&v162[4] = 1024;
        *v163 = v48;
        *&v163[4] = 1024;
        *&v163[6] = v49;
        v164 = 1024;
        v165 = v146.st_nlink;
        v166 = 1024;
        v167 = v146.st_uid;
        v168 = 1024;
        v169 = v146.st_gid;
        v170 = 2048;
        *v171 = v146.st_atimespec.tv_sec;
        *&v171[8] = 2048;
        v172 = v146.st_mtimespec.tv_sec;
        *v173 = 2048;
        *&v173[2] = v146.st_ctimespec.tv_sec;
        v174 = 2048;
        *v175 = v146.st_size;
        *&v175[8] = 1024;
        *v176 = v146.st_flags;
        *&v176[4] = 2112;
        v177 = v34;
        v37 = "[ERROR] failed openat(%d, '%s') with EACCES, but the item is readable: deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@";
        v38 = v35;
        v39 = 168;
        goto LABEL_137;
      }
    }

    else
    {
      if ((v146.st_mode & 0xF000) == 0x4000)
      {
        v31 = 448;
      }

      else
      {
        v31 = 384;
      }

      if ((fchmodat(a1, a2, v31 | v146.st_mode, 32) & 0x80000000) == 0)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v141 = aPcDBLSW[v146.st_mode >> 12];
          if ((v146.st_mode & 0xF000) == 0x4000)
          {
            v89 = 0;
          }

          else
          {
            v89 = 64;
          }

          if (((v89 | LOBYTE(v146.st_mode)) & 0x40) != 0)
          {
            v90 = 45;
          }

          else
          {
            v90 = 120;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v91 = 45;
          }

          else
          {
            v91 = 114;
          }

          if ((v146.st_mode & 0x100) != 0)
          {
            v92 = 114;
          }

          else
          {
            v92 = 45;
          }

          if ((v146.st_mode & 0x80) != 0)
          {
            v93 = 45;
          }

          else
          {
            v93 = 119;
          }

          if ((v146.st_mode & 0x80) != 0)
          {
            v94 = 119;
          }

          else
          {
            v94 = 45;
          }

          if ((v146.st_mode & 0x40) != 0)
          {
            v95 = 120;
          }

          else
          {
            v95 = 45;
          }

          if ((v146.st_mode & 0x20) != 0)
          {
            v96 = 114;
          }

          else
          {
            v96 = 45;
          }

          *buf = 67117314;
          if ((v146.st_mode & 0x10) != 0)
          {
            v97 = 119;
          }

          else
          {
            v97 = 45;
          }

          v148 = a1;
          if ((v146.st_mode & 8) != 0)
          {
            v98 = 120;
          }

          else
          {
            v98 = 45;
          }

          v149 = 2080;
          if ((v146.st_mode & 4) != 0)
          {
            v99 = 114;
          }

          else
          {
            v99 = 45;
          }

          v150 = a2;
          v152 = 35;
          if ((v146.st_mode & 2) != 0)
          {
            v100 = 119;
          }

          else
          {
            v100 = 45;
          }

          v151 = 1024;
          if (v146.st_mode)
          {
            v101 = 120;
          }

          else
          {
            v101 = 45;
          }

          v153 = 1024;
          *v154 = v91;
          *&v154[4] = 1024;
          *&v154[6] = v93;
          *v155 = 1024;
          *&v155[2] = v90;
          *v156 = 1024;
          *&v156[2] = 45;
          *v157 = 1024;
          *&v157[2] = 45;
          *v158 = 1024;
          *&v158[2] = 45;
          *v159 = 1024;
          *&v159[2] = 45;
          *v160 = 1024;
          *&v160[2] = 45;
          *v161 = 1024;
          *&v161[2] = 45;
          *v162 = 1024;
          *&v162[2] = v146.st_dev;
          *v163 = 2048;
          *&v163[2] = v146.st_ino;
          v164 = 1024;
          v165 = v141;
          v166 = 1024;
          v167 = v92;
          v168 = 1024;
          v169 = v94;
          v170 = 1024;
          *v171 = v95;
          *&v171[4] = 1024;
          *&v171[6] = v96;
          LOWORD(v172) = 1024;
          *(&v172 + 2) = v97;
          HIWORD(v172) = 1024;
          *v173 = v98;
          *&v173[4] = 1024;
          *&v173[6] = v99;
          v174 = 1024;
          *v175 = v100;
          *&v175[4] = 1024;
          *&v175[6] = v101;
          *v176 = 1024;
          *&v176[2] = v146.st_nlink;
          LOWORD(v177) = 1024;
          *(&v177 + 2) = v146.st_uid;
          HIWORD(v177) = 1024;
          v178 = v146.st_gid;
          v179 = 2048;
          v180 = v146.st_atimespec.tv_sec;
          v181 = 2048;
          v182 = v146.st_mtimespec.tv_sec;
          v183 = 2048;
          v184 = v146.st_ctimespec.tv_sec;
          v185 = 2048;
          v186 = v146.st_size;
          v187 = 1024;
          v188 = v146.st_flags;
          v189 = 2112;
          *v190 = v32;
          _os_log_debug_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] failed openat(%d, '%s') with EACCES: added %c%c%c%c%c%c%c%c%c%c to deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x%@", buf, 0xE4u);
        }

        v10 = openat(a1, a2, a3, a4);
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_139;
      }

      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, 0x90u))
      {
        if ((v146.st_mode & 0xF000) == 0x4000)
        {
          v50 = 0;
        }

        else
        {
          v50 = 64;
        }

        if (((v50 | LOBYTE(v146.st_mode)) & 0x40) != 0)
        {
          v51 = 45;
        }

        else
        {
          v51 = 120;
        }

        v104 = v51;
        if ((v146.st_mode & 0x100) != 0)
        {
          v52 = 45;
        }

        else
        {
          v52 = 114;
        }

        v103 = v52;
        if ((v146.st_mode & 0x100) != 0)
        {
          v53 = 114;
        }

        else
        {
          v53 = 45;
        }

        v144 = v53;
        if ((v146.st_mode & 0x80) != 0)
        {
          v54 = 45;
        }

        else
        {
          v54 = 119;
        }

        v107 = v146.st_dev;
        v109 = aPcDBLSW[v146.st_mode >> 12];
        v105 = v146.st_ino;
        if ((v146.st_mode & 0x80) != 0)
        {
          v55 = 119;
        }

        else
        {
          v55 = 45;
        }

        if ((v146.st_mode & 0x40) != 0)
        {
          v56 = 120;
        }

        else
        {
          v56 = 45;
        }

        v123 = v56;
        v125 = v55;
        if ((v146.st_mode & 0x20) != 0)
        {
          v57 = 114;
        }

        else
        {
          v57 = 45;
        }

        if ((v146.st_mode & 0x10) != 0)
        {
          v58 = 119;
        }

        else
        {
          v58 = 45;
        }

        v119 = v58;
        v121 = v57;
        if ((v146.st_mode & 8) != 0)
        {
          v59 = 120;
        }

        else
        {
          v59 = 45;
        }

        if ((v146.st_mode & 4) != 0)
        {
          v60 = 114;
        }

        else
        {
          v60 = 45;
        }

        v115 = v60;
        v117 = v59;
        if ((v146.st_mode & 2) != 0)
        {
          v61 = 119;
        }

        else
        {
          v61 = 45;
        }

        if (v146.st_mode)
        {
          v62 = 120;
        }

        else
        {
          v62 = 45;
        }

        v111 = v62;
        v113 = v61;
        v127 = v146.st_nlink;
        v129 = v146.st_uid;
        v131 = v146.st_gid;
        v133 = v146.st_atimespec.tv_sec;
        v135 = v146.st_mtimespec.tv_sec;
        v137 = v146.st_ctimespec.tv_sec;
        v139 = v146.st_size;
        v142 = v146.st_flags;
        v63 = *__error();
        *buf = 67117570;
        v148 = a1;
        v149 = 2080;
        v150 = a2;
        v151 = 1024;
        v152 = 35;
        v153 = 1024;
        *v154 = v103;
        *&v154[4] = 1024;
        *&v154[6] = v54;
        *v155 = 1024;
        *&v155[2] = v104;
        *v156 = 1024;
        *&v156[2] = 45;
        *v157 = 1024;
        *&v157[2] = 45;
        *v158 = 1024;
        *&v158[2] = 45;
        *v159 = 1024;
        *&v159[2] = 45;
        *v160 = 1024;
        *&v160[2] = 45;
        *v161 = 1024;
        *&v161[2] = 45;
        *v162 = 1024;
        *&v162[2] = v107;
        *v163 = 2048;
        *&v163[2] = v105;
        v164 = 1024;
        v165 = v109;
        v166 = 1024;
        v167 = v144;
        v168 = 1024;
        v169 = v125;
        v170 = 1024;
        *v171 = v123;
        *&v171[4] = 1024;
        *&v171[6] = v121;
        LOWORD(v172) = 1024;
        *(&v172 + 2) = v119;
        HIWORD(v172) = 1024;
        *v173 = v117;
        *&v173[4] = 1024;
        *&v173[6] = v115;
        v174 = 1024;
        *v175 = v113;
        *&v175[4] = 1024;
        *&v175[6] = v111;
        *v176 = 1024;
        *&v176[2] = v127;
        LOWORD(v177) = 1024;
        *(&v177 + 2) = v129;
        HIWORD(v177) = 1024;
        v178 = v131;
        v179 = 2048;
        v180 = v133;
        v181 = 2048;
        v182 = v135;
        v183 = 2048;
        v184 = v137;
        v185 = 2048;
        v186 = v139;
        v187 = 1024;
        v188 = v142;
        v189 = 1024;
        *v190 = v63;
        *&v190[4] = 2112;
        *&v190[6] = v34;
        v37 = "[ERROR] failed openat with EACCES and fchmodat(%d, '%s', %c%c%c%c%c%c%c%c%c%c) deviceID:%u fileID:%llu mode:%c%c%c%c%c%c%c%c%c%c nlink:%u uid:%u gid:%u atime:%lu mtime:%lu ctime:%lu size:%llu flags:0x%x %{errno}d%@";
        v38 = v35;
        v39 = 234;
        goto LABEL_137;
      }
    }

    *__error() = 13;
  }

LABEL_139:
  v64 = __error();
  if ((a3 & 3) != 0 || *v64 != 1)
  {
    goto LABEL_154;
  }

  v65 = -1;
  if ((a1 & 0x80000000) == 0 && *a2 != 47)
  {
    v65 = open(".", 33028);
    if (__pthread_fchdir() != -1 || v65 < 0)
    {
      if ((__pthread_fchdir() & 0x80000000) != 0)
      {
        if ((v65 & 0x80000000) == 0)
        {
          v71 = *__error();
          __pthread_fchdir();
          *__error() = v71;
          v72 = *__error();
          close(v65);
          *__error() = v72;
        }

        goto LABEL_154;
      }
    }

    else
    {
      close(v65);
      if ((__pthread_fchdir() & 0x80000000) != 0)
      {
        goto LABEL_154;
      }

      v65 = -1;
    }
  }

  v66 = open_dprotected_np(a2, a3, 0, 1);
  v10 = v66;
  if (a5 && (v66 & 0x80000000) == 0)
  {
    *a5 = 1;
  }

  if ((v65 & 0x80000000) == 0)
  {
    v67 = *__error();
    __pthread_fchdir();
    *__error() = v67;
    v68 = *__error();
    close(v65);
    *__error() = v68;
  }

  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

LABEL_154:
  v69 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t BRCOpenByID(int32_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14.val[0] = a1;
  v14.val[1] = 0;
  if (fsgetpath(v18, 0x400uLL, &v14, a2) < 0 || __sandbox_allowed())
  {
    *&v16 = a2;
    v5 = openbyid_np();
    if ((v5 & 0x80000000) != 0)
    {
      v6 = __error();
      if ((a3 & 3) == 0 && *v6 == 1)
      {
        v7 = -5;
        while ((fsgetpath(v18, 0x400uLL, &v14, a2) & 0x8000000000000000) == 0)
        {
          if (!__sandbox_allowed())
          {
            goto LABEL_17;
          }

          v8 = open_dprotected_np(v18, a3, 0, 1);
          v5 = v8;
          if ((v8 & 0x80000000) == 0)
          {
            v17 = 0;
            v16 = xmmword_2241AC128;
            memset(v15, 0, 12);
            v9 = fgetattrlist(v8, &v16, v15, 0xCuLL, 0x20u);
            v10 = *(v15 + 4);
            if (v9 < 0)
            {
              v10 = 0;
            }

            if (v10 == a2)
            {
              break;
            }

            close(v5);
            *__error() = 2;
            v5 = 0xFFFFFFFFLL;
          }

          if (__CFADD__(v7++, 1))
          {
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_17:
    v5 = 0xFFFFFFFFLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL __sandbox_allowed()
{
  v0 = *MEMORY[0x277D861D8];
  v1 = *MEMORY[0x277D861C8];
  v2 = *MEMORY[0x277D861D0];
  getpid();
  v3 = sandbox_check();
  if (v3)
  {
    *__error() = 1;
  }

  return v3 == 0;
}

uint64_t BRCUnlinkFileID(int32_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5.val[0] = a1;
  v5.val[1] = 0;
  if (fsgetpath(&__p, 0x400uLL, &v5, a2) < 0 || !__sandbox_allowed())
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = remove(&__p, v2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BRCIsFileIDLocked(int32_t a1, uint64_t a2)
{
  if (!a2)
  {
    BRCIsFileIDLocked_cold_1();
  }

  v4 = BRCOpenByID(a1, a2, 33028);
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  v6 = flock(v4, 6);
  close(v5);
  return v6 >> 31;
}

uint64_t BRCSetMtime(int a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(&v10, 0, sizeof(v10));
  if (fstat(a1, &v10) < 0)
  {
    v6 = *__error();
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      BRCCloneAt_cold_1();
    }

    goto LABEL_7;
  }

  v11.tv_sec = v10.st_atimespec.tv_sec;
  v11.tv_usec = v10.st_atimespec.tv_nsec;
  v12 = a2;
  v13 = 0;
  v4 = futimes(a1, &v11);
  result = 0;
  if (v4 < 0)
  {
    v6 = *__error();
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      BRCSetMtime_cold_1();
    }

LABEL_7:

    *__error() = v6;
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BRCRemoveFolderInAutoreleasepool(void *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __BRCRemoveFolderInAutoreleasepool_block_invoke;
  v11[3] = &unk_278506500;
  v12 = v7;
  v8 = v7;
  v9 = BRCRemoveFolder(a1, v11, a3, a4);

  return v9;
}

uint64_t BRCRemoveFolder(void *a1, void *a2, int a3, int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  if ([v7 length])
  {
    if (a3)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    if (a4)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = removefile_state_alloc();
    value = 0;
    removefile_state_set(v11, 1u, _brc_removefile_confirm_callback);
    removefile_state_set(v11, 2u, v8);
    removefile_state_set(v11, 3u, _brc_removefile_error_callback);
    removefile_state_set(v11, 4u, &value);
    removefile([v7 fileSystemRepresentation], v11, v10 | v9);
    removefile_state_free(v11);
    LODWORD(v11) = value;
    *__error() = v11;
    if (value)
    {
      v12 = *__error();
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v20 = [v7 fp_obfuscatedPath];
        *buf = 138412802;
        v23 = v20;
        v24 = 1024;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] Failed to remove folder at path %@ %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v12;
      if (value)
      {
        v15 = 0xFFFFFFFFLL;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      BRCRemoveFolder_cold_1();
    }

    *__error() = 22;
    v15 = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __BRCRemoveFolderInAutoreleasepool_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  return v3;
}

_acl *_brc_removefile_confirm_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  ProtectionStatus = BRCOpenAtAndGetProtectionStatus(0xFFFFFFFFLL, a2, 2129924, 0, 0);
  memset(&v28, 0, sizeof(v28));
  v6 = MEMORY[0x22AA4A310](a3);
  if ((ProtectionStatus & 0x80000000) == 0)
  {
    if (fstat(ProtectionStatus, &v28))
    {
      v7 = *__error();
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        *buf = 136315650;
        v30 = a2;
        v31 = 1024;
        v32 = v7;
        v33 = 2112;
        v34 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] Couldn't stat %s %{errno}d%@", buf, 0x1Cu);
      }

      *__error() = v7;
      if (!v6 || (v10 = v6[2](v6, a2, 0), !v10))
      {
LABEL_29:
        fd_np = acl_get_fd_np(ProtectionStatus, ACL_TYPE_EXTENDED);
        if (!fd_np)
        {
LABEL_36:
          v11 = 0;
          goto LABEL_37;
        }

        acl_free(fd_np);
        v11 = acl_init(0);
        if (v11)
        {
          if (acl_set_fd_np(ProtectionStatus, v11, ACL_TYPE_EXTENDED))
          {
            v23 = *__error();
            v24 = brc_bread_crumbs();
            v25 = brc_default_log();
            if (os_log_type_enabled(v25, 0x90u))
            {
              *buf = 136315650;
              v30 = a2;
              v31 = 1024;
              v32 = v23;
              v33 = 2112;
              v34 = v24;
              _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] Failed stripping acls of %s %{errno}d%@", buf, 0x1Cu);
            }

            *__error() = v23;
          }

          acl_free(v11);
          goto LABEL_36;
        }

LABEL_37:
        close(ProtectionStatus);
        goto LABEL_38;
      }
    }

    else if (!v6 || (v10 = (v6)[2](v6, a2, &v28), !v10))
    {
      if ((v28.st_flags & 6) != 0 && fchflags(ProtectionStatus, v28.st_flags & 0xFFF9))
      {
        v15 = *__error();
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, 0x90u))
        {
          *buf = 136315650;
          v30 = a2;
          v31 = 1024;
          v32 = v15;
          v33 = 2112;
          v34 = v16;
          _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] Unable to strip UF_IMMUTABLE and UF_APPEND to %s %{errno}d%@", buf, 0x1Cu);
        }

        *__error() = v15;
      }

      if ((v28.st_mode & 0xF000) == 0x4000)
      {
        v18 = 448;
      }

      else
      {
        v18 = 384;
      }

      if ((v18 & ~v28.st_mode) != 0 && fchmod(ProtectionStatus, v28.st_mode | v18))
      {
        v19 = *__error();
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, 0x90u))
        {
          *buf = 136315650;
          v30 = a2;
          v31 = 1024;
          v32 = v19;
          v33 = 2112;
          v34 = v20;
          _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] Failed setting permissions of %s %{errno}d%@", buf, 0x1Cu);
        }

        *__error() = v19;
      }

      goto LABEL_29;
    }

    v11 = v10;
    goto LABEL_37;
  }

  if (*__error() == 2)
  {
    v11 = 0;
  }

  else
  {
    v12 = *__error();
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      *buf = 136315650;
      v30 = a2;
      v31 = 1024;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] Failed opening %s %{errno}d%@", buf, 0x1Cu);
    }

    v11 = 0;
    *__error() = v12;
  }

LABEL_38:

  v26 = *MEMORY[0x277D85DE8];
  return v11;
}