uint64_t _brc_removefile_error_callback(_removefile_state *a1, uint64_t a2, _DWORD *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  dst = 0;
  removefile_state_get(a1, 5u, &dst);
  if (dst == 66)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = strerror(dst);
      *buf = 136315906;
      v13 = a2;
      v14 = 2080;
      v15 = v7;
      v16 = 1024;
      v17 = dst;
      v18 = 2112;
      v19 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Can't delete %s: %s(%d)%@", buf, 0x26u);
    }
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v10 = strerror(dst);
      *buf = 136315906;
      v13 = a2;
      v14 = 2080;
      v15 = v10;
      v16 = 1024;
      v17 = dst;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] Can't delete %s: %s(%d)%@", buf, 0x26u);
    }
  }

  if (a3 && !*a3)
  {
    *a3 = dst;
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

id BRCCopyFakeQuarantineInfo(int a1, void *a2)
{
  v11 = 0;
  v4 = BRCGetXattrValue(a1, "com.apple.quarantine", 0xFFFFFFFFFFFFFFFFLL, &v11);
  v5 = v11;
  v6 = v5;
  if (v5)
  {
    if (a2)
    {
      v7 = v5;
      v8 = 0;
      *a2 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = BRCGetXattrValue(a1, "com.apple.private.bird.fake-qtn", 0xFFFFFFFFFFFFFFFFLL, a2);
    }

    v8 = v9;
  }

  return v8;
}

id BRCGetXattrValue(int a1, const char *a2, unint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = fgetxattr(a1, a2, 0, 0, 0, 0);
  if (!v8)
  {
    v16 = objc_opt_new();
    goto LABEL_29;
  }

  v9 = v8;
  if ((v8 & 0x8000000000000000) != 0)
  {
    if (*__error() == 93)
    {
LABEL_19:
      v16 = 0;
      goto LABEL_29;
    }

    v12 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (!v12)
    {
LABEL_16:
      if (a4)
      {
        v17 = v12;
        *a4 = v12;
      }

      goto LABEL_19;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (!os_log_type_enabled(v14, 0x90u))
    {
LABEL_15:

      goto LABEL_16;
    }

    v15 = "(passed to caller)";
    v26 = 136315906;
    v27 = "BRCGetXattrValue";
    v28 = 2080;
    if (!a4)
    {
      v15 = "(ignored by caller)";
    }

LABEL_34:
    v29 = v15;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", &v26, 0x2Au);
    goto LABEL_15;
  }

  if (v8 > a3)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136315906;
      v27 = a2;
      v28 = 2048;
      v29 = v9;
      v30 = 2048;
      v31 = a3;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Extended attribute %s size %ld is greater than size limit %ld%@", &v26, 0x2Au);
    }

    v12 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:27];
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (!os_log_type_enabled(v14, 0x90u))
    {
      goto LABEL_15;
    }

    v15 = "(passed to caller)";
    v26 = 136315906;
    v27 = "BRCGetXattrValue";
    v28 = 2080;
    if (!a4)
    {
      v15 = "(ignored by caller)";
    }

    goto LABEL_34;
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v8];
  if (fgetxattr(a1, a2, [v18 mutableBytes], v9, 0, 0) == v9)
  {
    v16 = v18;
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v19)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        v25 = "(passed to caller)";
        v26 = 136315906;
        v27 = "BRCGetXattrValue";
        v28 = 2080;
        if (!a4)
        {
          v25 = "(ignored by caller)";
        }

        v29 = v25;
        v30 = 2112;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] %s: %s error: %@%@", &v26, 0x2Au);
      }
    }

    if (a4)
    {
      v22 = v19;
      *a4 = v19;
    }

    v16 = 0;
  }

LABEL_29:
  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t BRCSetFakeQuarantineInfo(int a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    if (fsetxattr(a1, "com.apple.quarantine", [v5 bytes], objc_msgSend(v5, "length"), 0, 0) < 0)
    {
      v7 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      if (v7)
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, 0x90u))
        {
          v10 = "(passed to caller)";
          v15 = 136315906;
          v16 = "BRCSetFakeQuarantineInfo";
          v17 = 2080;
          if (!a3)
          {
            v10 = "(ignored by caller)";
          }

LABEL_15:
          v18 = v10;
          v19 = 2112;
          v20 = v7;
          v21 = 2112;
          v22 = v8;
          _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", &v15, 0x2Au);
          goto LABEL_16;
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_10:
    fremovexattr(a1, "com.apple.private.bird.fake-qtn", 0);
    v11 = 1;
    goto LABEL_20;
  }

  if ((fremovexattr(a1, "com.apple.quarantine", 0) & 0x80000000) == 0 || *__error() == 93)
  {
    goto LABEL_10;
  }

  v7 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
  if (v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v10 = "(passed to caller)";
      v15 = 136315906;
      v16 = "BRCSetFakeQuarantineInfo";
      v17 = 2080;
      if (!a3)
      {
        v10 = "(ignored by caller)";
      }

      goto LABEL_15;
    }

LABEL_16:
  }

LABEL_17:
  if (a3)
  {
    v12 = v7;
    *a3 = v7;
  }

  v11 = 0;
LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t BRCSetupVNodeRapidAging(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *v5 = 0x4400000001;
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  v4 = v1;
  result = sysctl(v5, 2u, 0, 0, &v4, 4uLL);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t BRCRoundedTimestamp(unint64_t a1)
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [v2 timestampRoundingAmount];

  return a1 / v3 * v3;
}

const char *BRCRecursivelySizeDirectoryAtPath(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (![v1 length])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      BRCRecursivelySizeDirectoryAtPath_cold_3();
    }

    goto LABEL_10;
  }

  v2 = [v1 fileSystemRepresentation];
  v3 = v2;
  if (v2)
  {
    v4 = open(v2, 1048832);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      v14 = 0u;
      *&buf[8] = 0u;
      *buf = 1;
      if (ffsctl(v4, 0xC0284A20uLL, buf, 0) < 0)
      {
        if (dirstat_np())
        {
          v6 = brc_bread_crumbs();
          v7 = brc_default_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
          {
            BRCRecursivelySizeDirectoryAtPath_cold_1();
          }

          v3 = 0;
          goto LABEL_20;
        }

        v3 = 0;
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v1;
          *&buf[12] = 2048;
          *&buf[14] = 0;
          *&buf[22] = 2112;
          *&v14 = v6;
          v8 = "[DEBUG] space for %@ is %llu bytes (hfs compat. dirstat)%@";
          goto LABEL_7;
        }
      }

      else
      {
        v3 = v14;
        v6 = brc_bread_crumbs();
        v7 = brc_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v1;
          *&buf[12] = 2048;
          *&buf[14] = v3;
          *&buf[22] = 2112;
          *&v14 = v6;
          v8 = "[DEBUG] space for %@ is %llu bytes (apfs dirstat)%@";
LABEL_7:
          _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, v8, buf, 0x20u);
        }
      }

LABEL_20:

      close(v5);
      goto LABEL_21;
    }

    if (*__error() == 2)
    {
      goto LABEL_11;
    }

    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      BRCRecursivelySizeDirectoryAtPath_cold_2();
    }

LABEL_10:

LABEL_11:
    v3 = 0;
  }

LABEL_21:

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

xattr_flags_t brc_xattr_flags_from_name(char *a1)
{
  if (brc_xattr_flags_from_name_onceToken != -1)
  {
    brc_xattr_flags_from_name_cold_1();
  }

  v2 = xattr_flags_from_name(a1);
  v3 = xattr_name_without_flags(a1);
  v4 = v3;
  if (brc_xattr_flags_from_name_xattr_mods)
  {
    v5 = &brc_xattr_flags_from_name_xattr_mods;
    if (!strcmp(v3, brc_xattr_flags_from_name_xattr_mods))
    {
LABEL_7:
      v2 = (v5[1] | v2) & ~v5[2];
    }

    else
    {
      while (1)
      {
        v6 = v5[3];
        if (!v6)
        {
          break;
        }

        v5 += 3;
        if (!strcmp(v4, v6))
        {
          goto LABEL_7;
        }
      }
    }
  }

  free(v4);
  return v2;
}

const char *__brc_xattr_flags_from_name_block_invoke()
{
  result = brc_xattr_flags_from_name_xattr_mods;
  if (brc_xattr_flags_from_name_xattr_mods)
  {
    v1 = &brc_xattr_flags_from_name_xattr_mods;
    do
    {
      *v1 = xattr_name_without_flags(result);
      v2 = v1[3];
      v1 += 3;
      result = v2;
    }

    while (v2);
  }

  return result;
}

BOOL BRCFileMightHaveChangedByFileName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v29 = *MEMORY[0x277D85DE8];
  ProtectionStatus = BRCOpenAtAndGetProtectionStatus(a1, a2, 256, 0, 0);
  if (ProtectionStatus < 0)
  {
    goto LABEL_8;
  }

  v13 = ProtectionStatus;
  v14 = flistxattr(ProtectionStatus, namebuff, 0x100uLL, 0);
  if (v14 < 0)
  {
    goto LABEL_7;
  }

  *&v27[0] = MEMORY[0x277D85DD0];
  *(&v27[0] + 1) = 3221225472;
  *&v27[1] = __countSyncableXattrs_block_invoke;
  *(&v27[1] + 1) = &__block_descriptor_33_e9_B16__0r_8l;
  LOBYTE(v27[2]) = 1;
  if (v14)
  {
    v26 = a7;
    v15 = a6;
    v16 = a5;
    v17 = a4;
    v18 = a3;
    v19 = 0;
    v20 = &namebuff[v14];
    v21 = namebuff;
    do
    {
      v19 += (*&v27[1])(v27, v21);
      v21 += strlen(v21) + 1;
    }

    while (v21 < v20);
    a3 = v18;
    a4 = v17;
    a5 = v16;
    a6 = v15;
    a7 = v26;
    if (v19)
    {
LABEL_7:
      close(v13);
LABEL_8:
      result = 1;
      goto LABEL_9;
    }
  }

  memset(v27, 0, 36);
  v24 = fgetattrlist(v13, &BRCFileMightHaveChangedByFileName_al, v27, 0x24uLL, 0x20u);
  close(v13);
  if (v24 < 0)
  {
    goto LABEL_8;
  }

  if ((a7 - 1) >= 2)
  {
    if (a7 == 3)
    {
LABEL_17:
      v25 = 0;
      a5 = *(v27 + 4);
      goto LABEL_19;
    }

    if (a7 != 8)
    {
LABEL_18:
      v25 = 61632;
      goto LABEL_19;
    }
  }

  if (!_CFURLCStringIsPromiseName())
  {
    if (a7 == 3)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v25 = 61568;
LABEL_19:
  result = 1;
  if (((DWORD1(v27[1]) ^ a6) & v25) == 0 && DWORD2(v27[1]) == a4 && a5 == *(v27 + 4))
  {
    result = *(&v27[1] + 12) != a3;
  }

LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22409761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224097BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22409DA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22409DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __brc_task_tracker_async_with_logs_and_qos_block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __brc_task_tracker_async_with_logs_and_qos_block_invoke_cold_1(a1, v2, v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void brc_task_tracker_sync(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    brc_task_tracker_sync_cold_1();
  }

  dispatch_group_enter(v5[2]);
  if (brc_task_tracker_is_cancelled(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v8[2]();
  dispatch_group_leave(v5[2]);
}

void sub_22409EEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240A1A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240A342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240A3980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240A3B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240A4160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_15_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 16);
  return result;
}

uint64_t BRFieldUserIdentityReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2240A94E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240AA27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240AC1E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240AC740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t AppTelemetryTimeSeriesEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v63[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63[0] & 0x7F) << v5;
        if ((v63[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          [a1 clearOneofValuesForMagnitude];
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 60) |= 8u;
          *(a1 + 40) = 3;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v63[0] & 0x7F) << v45;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_108;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v47;
          }

LABEL_108:
          v57 = 48;
LABEL_109:
          *(a1 + v57) = v21;
          goto LABEL_119;
        }

        if (v13 == 5)
        {
          [a1 clearOneofValuesForMagnitude];
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 60) |= 8u;
          *(a1 + 40) = 4;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v63[0] & 0x7F) << v24;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_99;
            }
          }

          v30 = (v26 != 0) & ~[a2 hasError];
LABEL_99:
          *(a1 + 56) = v30;
          goto LABEL_119;
        }

LABEL_92:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_119;
      }

      if (v13 == 6)
      {
        [a1 clearOneofValuesForMagnitude];
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 60) |= 8u;
        *(a1 + 40) = 5;
        *(a1 + 60) |= 2u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v44 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v40;
        }

LABEL_104:
        v58 = 16;
        goto LABEL_114;
      }

      if (v13 == 10)
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v63[0] & 0x7F) << v51;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v44 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v44 = 0;
        }

        else
        {
          v44 = v53;
        }

LABEL_113:
        v58 = 24;
LABEL_114:
        *(a1 + v58) = v44;
        goto LABEL_119;
      }

      if (v13 != 11)
      {
        goto LABEL_92;
      }

      v14 = objc_alloc_init(AppTelemetryInvestigation);
      objc_storeStrong((a1 + 32), v14);
      v63[0] = 0;
      v63[1] = 0;
      if (!PBReaderPlaceMark() || !AppTelemetryInvestigationReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_119:
      v61 = [a2 position];
      if (v61 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        [a1 clearOneofValuesForMagnitude];
        *(a1 + 60) |= 8u;
        *(a1 + 40) = 1;
        *(a1 + 60) |= 0x10u;
        LODWORD(v63[0]) = 0;
        v36 = [a2 position] + 4;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
        {
          v60 = [a2 data];
          [v60 getBytes:v63 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 44) = v63[0];
        goto LABEL_119;
      }

      if (v13 == 3)
      {
        [a1 clearOneofValuesForMagnitude];
        *(a1 + 60) |= 8u;
        *(a1 + 40) = 2;
        *(a1 + 60) |= 1u;
        v63[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:v63 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v63[0];
        goto LABEL_119;
      }
    }

    else
    {
      if (!v13)
      {
        v31 = 0;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((SLOBYTE(v63[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v31++ > 8)
          {
            goto LABEL_119;
          }
        }

        [a2 hasError];
        goto LABEL_119;
      }

      if (v13 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v63 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v63[0] & 0x7F) << v15;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_97:
        v57 = 52;
        goto LABEL_109;
      }
    }

    goto LABEL_92;
  }

  return [a2 hasError] ^ 1;
}

void sub_2240B43B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240B5948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2240B5F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240BB020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2240BBDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240BEF6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t _brc_ipc_spi(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  if (v7)
  {
    if (_brc_ipc_check_logged_status(v7, a2, v8))
    {
      v12 = 0;
      v9 = [v7 _hasPrivateIPCEntitlementForSelector:a3 error:&v12];
      v10 = v12;
      if ((v9 & 1) == 0)
      {
        v8[2](v8, v10);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _brc_ipc_check_applibraries_access(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_11;
  }

  if (!_brc_ipc_check_logged_status(v5, a2, v6))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (([v5 _isAppLibraryProxyEntitled] & 1) == 0)
  {
    v7 = [v5 entitledAppLibraryIDs];
    v8 = [v7 count];

    if (!v8 && ([v5 isSandboxed] & 1) == 0 && objc_msgSend(v5, "checkTCCAccess"))
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        _brc_ipc_check_applibraries_access_cold_1();
      }

      goto LABEL_11;
    }

    if ([v5 cloudEnabledStatus] != 1)
    {
      v12 = [MEMORY[0x277CCA9B8] brc_daemonAccessDisabledError];
      (*(v6 + 2))(v6, v12);

      goto LABEL_13;
    }
  }

LABEL_11:
  v11 = 1;
LABEL_14:

  return v11;
}

uint64_t _brc_ipc_check_entitlement(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 _entitlementBooleanValueForKey:*MEMORY[0x277CFAC58]] & 1) != 0 || (objc_msgSend(v5, "_entitlementBooleanValueForKey:", v6))
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:{@"%@ entitlement required", v6}];
    v7[2](v7, v9);

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      _brc_ipc_check_entitlement_cold_1();
    }

    v8 = 0;
  }

  return v8;
}

uint64_t _brc_ipc_check_entitlement_and_logged_status(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (_brc_ipc_check_logged_status(v7, a2, v9))
    {
      v10 = _brc_ipc_check_entitlement(v7, v8, v9);
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

uint64_t _brc_ipc_check_client_privilege(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!v9)
  {
    v11 = 1;
    goto LABEL_10;
  }

  if (!_brc_ipc_check_logged_status(v9, a2, v10))
  {
    goto LABEL_8;
  }

  v11 = 1;
  if (([v9 _entitlementBooleanValueForKey:*MEMORY[0x277CFAC58]] & 1) == 0 && (a3 & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:26 description:{@"%s privilege required", a4}];
    (*(v10 + 2))(v10, v12);

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      _brc_ipc_check_client_privilege_cold_1();
    }

LABEL_8:
    v11 = 0;
  }

LABEL_10:

  return v11;
}

uint64_t _brc_ipc_check_account_access(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!_brc_ipc_check_logged_status(v5, a2, v6))
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = *MEMORY[0x277CFAC40];
  if (([v5 _entitlementBooleanValueForKey:*MEMORY[0x277CFAC40]] & 1) == 0 && (objc_msgSend(v5, "_entitlementBooleanValueForKey:", *MEMORY[0x277CFAC48]) & 1) == 0 && (objc_msgSend(v5, "_entitlementBooleanValueForKey:", *MEMORY[0x277CFAC78]) & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:1 description:{@"%@ entitlement required", v7}];
    (*(v6 + 2))(v6, v9);

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      _brc_ipc_check_entitlement_cold_1();
    }

    goto LABEL_10;
  }

LABEL_6:
  v8 = 1;
LABEL_11:

  return v8;
}

uint64_t _brc_ipc_check_tcc_access(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    return _brc_ipc_check_logged_status(a1, 1, a3);
  }

  else
  {
    return 1;
  }
}

id _cocoaDomainPermissionError(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA050];
  if (a1)
  {
    v4 = 257;
  }

  else
  {
    v4 = 513;
  }

  v13 = *MEMORY[0x277CCA450];
  v5 = MEMORY[0x277CCACA8];
  if (a1)
  {
    v6 = "read";
  }

  else
  {
    v6 = "write";
  }

  v7 = [a2 path];
  v8 = [v5 stringWithFormat:@"No permission to %s at %@", v6, v7];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [v2 errorWithDomain:v3 code:v4 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_2240C1A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240C30C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C4358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C478C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C4B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C4FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C54DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C58D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C604C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C72B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  __brc_leave_section(&a63);
  __brc_leave_section(&a66);
  _Unwind_Resume(a1);
}

void sub_2240C78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C87EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C8D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240C9768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  __brc_leave_section(&a25);
  __brc_leave_section(&a34);
  _Unwind_Resume(a1);
}

void sub_2240C9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CA148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CA594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CAB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CB04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CB828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CC080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CC7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CCF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CDAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CE4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240CE904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D02C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D1600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  __brc_leave_section(&a19);
  __brc_leave_section(&a28);
  __brc_leave_section(&a37);
  _Unwind_Resume(a1);
}

void sub_2240D20C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __brc_leave_section(&a10);
  __brc_leave_section(&a19);
  __brc_leave_section(&a28);
  _Unwind_Resume(a1);
}

void sub_2240D28F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  __brc_leave_section(va);
  __brc_leave_section(va1);
  _Unwind_Resume(a1);
}

void sub_2240D3174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_sync_exit(v33);
  __brc_leave_section(&a9);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose(&a33, 8);
  __brc_leave_section(v34 - 216);
  _Unwind_Resume(a1);
}

void sub_2240D3608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  objc_sync_exit(v9);
  __brc_leave_section(&a9);
  _Unwind_Resume(a1);
}

void sub_2240D4010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_sync_exit(v71);
  __brc_leave_section(&a13);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose((v72 - 192), 8);
  __brc_leave_section(&a64);
  _Unwind_Resume(a1);
}

void sub_2240D4770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  objc_sync_exit(v9);
  __brc_leave_section(&a9);
  _Unwind_Resume(a1);
}

void sub_2240D54C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __brc_leave_section(&a58);
  __brc_leave_section(&a66);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

void sub_2240D5C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  __brc_leave_section(va);
  __brc_leave_section(va1);
  _Unwind_Resume(a1);
}

void sub_2240D6128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D65D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D6B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D6F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D7CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D86B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D8F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D93C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D9B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240D9F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DA53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DABC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DB03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DB478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DC864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DE494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_2240DF018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240DF890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E0124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E06D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E0CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E1084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E24C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  __brc_leave_section(&a25);
  __brc_leave_section(&a34);
  _Unwind_Resume(a1);
}

void sub_2240E5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E64E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E6AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E734C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240E7A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  __brc_leave_section(&a21);
  __brc_leave_section(&a30);
  _Unwind_Resume(a1);
}

void sub_2240E972C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EA3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EBE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EDB34(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  __brc_leave_section(v1 - 200);
  _Unwind_Resume(a1);
}

void sub_2240EE29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EEEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240EF8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240F0808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F19DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak((v33 - 176));
  __brc_leave_section(&a23);
  __brc_leave_section(&a32);
  _Unwind_Resume(a1);
}

void sub_2240F2B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F32E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __brc_leave_section(&a23);
  __brc_leave_section(&a32);
  _Unwind_Resume(a1);
}

void sub_2240F3E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F4448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  __brc_leave_section(&a16);
  __brc_leave_section(&a26);
  _Unwind_Resume(a1);
}

void sub_2240F4B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240F5258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2240F5830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F6358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose((v34 - 176), 8);
  __brc_leave_section(&a34);
  _Unwind_Resume(a1);
}

void sub_2240F7680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F7A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F8328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose((v42 - 176), 8);
  __brc_leave_section(&a42);
  _Unwind_Resume(a1);
}

void sub_2240F8AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F8EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F92E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F9734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F9B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240F9F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240FA3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240FAEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v70 - 176), 8);
  __brc_leave_section(&a61);
  __brc_leave_section(&a70);
  _Unwind_Resume(a1);
}

void sub_2240FBCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240FC480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240FC7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2240FCC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240FCFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240FE430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2240FF8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak(&a30);
  objc_destroyWeak(&a37);
  objc_destroyWeak((v37 - 200));
  _Unwind_Resume(a1);
}

void sub_2240FFAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2240FFCFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224100D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      LODWORD(a9) = 138412802;
      *(&a9 + 4) = v16;
      WORD6(a9) = 2112;
      a13 = 2112;
      a14 = v17;
      _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Exception %@ was raised while trying to add CKOperation %@%@", &a9, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x224100C88);
  }

  _Unwind_Resume(exception_object);
}

void sub_224100FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_2241019D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25, id a26, char a27)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a26);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_224104164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_224105FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2241060F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22410958C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22410B554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22410C024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22410C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22410CF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t validateUserBool(void *a1, _BYTE *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    validateUserBool_cold_1(v3, a2, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _stringSetFromDefaultValue(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            if ([v11 length])
            {
              if (a2 && [v11 characterAtIndex:0] == 46 && objc_msgSend(v11, "length") >= 2)
              {
                v12 = [v11 substringFromIndex:1];
                [v4 addObject:v12];
              }

              else
              {
                [v4 addObject:v11];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

id _validateThrottleDefaults(void *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v34 = v4;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_29;
  }

  v39 = v3;
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v50[0] = @"start-after";
  v50[1] = @"give-up-after";
  v50[2] = @"wait-at-least";
  v50[3] = @"wait-at-most";
  v50[4] = @"forget-after";
  v50[5] = @"max-elemnt-count";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:6];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  v10 = *v41;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v41 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v40 + 1) + 8 * i);
      v13 = [v5 objectForKeyedSubscript:v12];

      if (!v13)
      {
        _validateThrottleDefaults_cold_1();
      }

      v14 = [v6 objectForKeyedSubscript:v12];

      if (!v14)
      {
        v15 = [v5 objectForKeyedSubscript:v12];
        [v6 setObject:v15 forKeyedSubscript:v12];
LABEL_15:

        continue;
      }

      v15 = [v6 objectForKeyedSubscript:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_15;
      }

      v16 = [v6 objectForKeyedSubscript:v12];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
  }

  while (v9);
LABEL_18:

  v7 = [v6 objectForKeyedSubscript:@"start-after"];
  v18 = [v7 intValue];
  v19 = [v6 objectForKeyedSubscript:@"give-up-after"];
  if (v18 < [v19 intValue])
  {
    v20 = [v6 objectForKeyedSubscript:@"wait-at-least"];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v6 objectForKeyedSubscript:@"wait-at-most"];
    [v23 doubleValue];
    if (v22 <= v24)
    {
      v25 = [v6 objectForKeyedSubscript:@"wait-at-most"];
      [v25 doubleValue];
      if (v26 > 0.0)
      {
        v27 = [v6 objectForKeyedSubscript:@"wait-at-most"];
        [v27 doubleValue];
        v29 = v28;
        v30 = [v6 objectForKeyedSubscript:@"forget-after"];
        [v30 doubleValue];
        v32 = v31;

        v33 = v6;
        v3 = v39;
        if (v29 <= v32)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_28:
  v3 = v39;
LABEL_29:
  v35 = brc_bread_crumbs();
  v36 = brc_default_log();
  if (os_log_type_enabled(v36, 0x90u))
  {
    *buf = 138412802;
    v45 = v3;
    v46 = 2112;
    v47 = v5;
    v48 = 2112;
    v49 = v35;
    _os_log_error_impl(&dword_223E7A000, v36, 0x90u, "[ERROR] invalid user default %@; using:%@%@", buf, 0x20u);
  }

  v33 = v5;
LABEL_32:
  v34 = v33;

LABEL_33:
  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

id _numberSetFromDefaultValue(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:{v8, v11}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

id _validateNamedThrottleDefaults(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v7 = [&unk_2837B0DC0 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v22 = v5;
        v9 = *v24;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(&unk_2837B0DC0);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            v12 = [v6 objectForKeyedSubscript:v11];
            if (v12)
            {
              v13 = v12;
              v14 = [v6 objectForKeyedSubscript:v11];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                v5 = v22;
                goto LABEL_16;
              }
            }
          }

          v8 = [&unk_2837B0DC0 countByEnumeratingWithState:&v23 objects:v33 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v16 = v6;
        v5 = v22;
      }

      else
      {
        v16 = v6;
      }
    }

    else
    {
      v6 = 0;
LABEL_16:
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        *buf = 138412802;
        v28 = v3;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        v32 = v18;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] invalid user default %@; using:%@%@", buf, 0x20u);
      }

      v16 = v5;
    }

    v17 = v16;
  }

  else
  {
    v17 = v4;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t OUTLINED_FUNCTION_14()
{

  return objc_opt_isKindOfClass();
}

void ____brc_create_section_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("create-log-section", v0);

  v2 = __brc_create_section_queue;
  __brc_create_section_queue = v1;
}

void sub_224117500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2241176D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2241179E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22411886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id a62)
{
  objc_destroyWeak((v63 + 88));
  objc_destroyWeak((v62 + 56));
  objc_destroyWeak(&a52);
  _Block_object_dispose((v64 - 192), 8);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x258]);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose((v64 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_224119748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2241199F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22411A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_22411A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Block_object_dispose((v19 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22411AD00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

uint64_t BRFieldPkgHeaderReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22412131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224121F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v60 - 160), 8);
  __brc_leave_section(&a60);
  _Unwind_Resume(a1);
}

void sub_224122150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_2241222F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224122658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224122940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224122B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  __brc_leave_section(v8 - 56);
  _Unwind_Resume(a1);
}

void sub_224122FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void register_error_in_dictionary(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 brc_telemetryReportableErrorWithRecordName:0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 domain];
    v11 = [v9 stringWithFormat:@"%@.%ld", v10, objc_msgSend(v8, "code")];
    [v14 setObject:v11 forKey:@"error"];

    v12 = [v8 brc_cloudKitErrorMessage];

    if (v12)
    {
      v13 = [v8 brc_cloudKitErrorMessage];
      [v14 setObject:v13 forKey:@"errorMessage"];
    }
  }

  else
  {
    v8 = 0;
  }
}

void sub_224125B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak((v27 - 128));
  _Unwind_Resume(a1);
}

void sub_224125CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224125E18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void sub_224128CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_22412D090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22412DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose((v28 - 160), 8);
  __brc_leave_section(&a28);
  _Unwind_Resume(a1);
}

void sub_22412E3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22412E538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22412EB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

BOOL brc_power_is_ok()
{
  v3 = 1;
  brc_notify_get_state();
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    brc_power_is_ok_cold_1(&v3);
  }

  return v3 != 1;
}

BOOL brc_device_has_enough_space(uint64_t a1)
{
  v1 = a1;
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = [MEMORY[0x277CCACA8] br_pathWithDeviceID:a1 fileID:2];
  v3 = [v2 fileSystemRepresentation];

  if (fsctl(v3, 0x40046818uLL, &v9, 0) < 0)
  {
    v5 = *__error();
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      *buf = 67109634;
      v11 = v1;
      v12 = 1024;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] fsctl(dev=%d) failed %{errno}d%@", buf, 0x18u);
    }

    *__error() = v5;
    result = 1;
  }

  else
  {
    result = (v9 & 0x1204) == 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __br_notify_register_dispatch_block_invoke_1(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (_block_invoke___personaOnceToken_5 != -1)
    {
      __br_notify_register_dispatch_block_invoke_cold_1_1();
    }

    v3 = _block_invoke___personalPersona_5;
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
      __br_notify_register_dispatch_block_invoke_cold_4_0();
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

void __br_notify_register_dispatch_block_invoke_2_1()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_5;
  _block_invoke___personalPersona_5 = v0;
}

void sub_224135504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224137BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2241398A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22413BA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __brc_leave_section(va);
  _Unwind_Resume(a1);
}

void _issueReadWriteSandboxExtensionForURL_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEBUG, "[NOTIF] issued sandbox extension for %@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __br_notify_register_dispatch_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __br_notify_register_dispatch_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __br_notify_register_dispatch_block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] won't restore persona: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void file_id_from_control_file_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void _notificationCallback_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 136315394;
  *(&v4 + 4) = brc_user_notification_responses[2 * a1 + 1];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] User picked %s response%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void _notificationCallback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void BRCPrettyPrintEnumWithContext_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown color%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Failed to remove mobile documents directory not belonging to us%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] We own both the root and had an old one renamed away\nWe have purged the old one, and will now reset%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_4(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Failed removing root folder from the wrong account%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void BRCMigrateLegacyUbiquityRoot_cold_6(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void BRCRootIsOwnedByUbd_cold_1(int *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = aPcDBLSW[*(a1 + 2) >> 12];
  v3 = *(a1 + 1);
  v4 = *(a1 + 3);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 4);
  v8 = *(a1 + 6);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = a1[29];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v12, v13, v14, v15, v16, 0x98u);
  v17 = *MEMORY[0x277D85DE8];
}

void BRCRootIsOwnedByUbd_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void ubiquitousSharedItemOwnerNameComponents_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: ownerIdentity%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void initUIDevice_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    dlerror();
    OUTLINED_FUNCTION_1();
    v3 = 2112;
    v4 = v0;
    _os_log_impl(&dword_223E7A000, v1, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't open UIKit : %s%@", v2, 0x16u);
  }

  __assert_rtn("UIKitLibrary", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/containers/BRCContainerScheduler.m", 70, "Can't open UIKit");
}

void br_create_tables_initial_cold_1()
{
  OUTLINED_FUNCTION_18();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: migration should work: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void br_update_tables_2_000_cold_1()
{
  OUTLINED_FUNCTION_17_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: migration should work: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void br_update_tables_2_000_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_15_0(&dword_223E7A000, v6, v4, "[CRIT] UNREACHABLE: migration should work: %@%@", v5);
}

void br_update_tables_2_000_cold_4()
{
  OUTLINED_FUNCTION_17_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: migration should work: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void br_update_tables_2_000_cold_5()
{
  OUTLINED_FUNCTION_17_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: migration should work: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void br_update_tables_2_000_cold_6()
{
  OUTLINED_FUNCTION_17_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = [v0 lastError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_223E7A000, v2, v3, "[CRIT] UNREACHABLE: migration should work: %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void br_update_tables_4_004_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Not need to remove %@ as it was not created yet%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_5_000_cold_2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: plist != nil%@");
  }
}

void br_update_tables_5_011_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] found duplicate app library, resetting%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void br_update_tables_5_011_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] invalid owner in rowid_reservations, resetting%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void br_update_tables_6_004_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: incomplete migration for client_uploads%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_6_004_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: incomplete migration for client_downloads%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_6_013_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Corrupt DB state: some items belong to non-existing zones!%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Updated %llu items from server truth%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleted %llu items from client truth which haven't been synced to the server%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleted %llu br aliases from client truth%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_4()
{
  OUTLINED_FUNCTION_17_1();
  v7 = *MEMORY[0x277D85DE8];
  v3 = [v2 lastError];
  OUTLINED_FUNCTION_1_0();
  v6 = v1;
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed determining if we have items - %@%@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We don't have items to migrate to fpfs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We have items to migrate to fpfs%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_000_cold_7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Updated client state to %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_005_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We are not currently migrating to fpfs, not adding missing migration index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_30_005_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We have started to migrate to fpfs, add missing migration index%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void br_update_tables_31_103_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Scheduling %lld upload jobs that where in request rejected state%@");
  v2 = *MEMORY[0x277D85DE8];
}

void br_update_tables_32_000_cold_1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: appLibrary%@");
  }
}

void br_db_fixup_4_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Recovered %lld items in a stuck CZM state%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_7_000_block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_7_000_block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __br_update_tables_14_000_block_invoke_cold_1(uint64_t *a1, sqlite3_context *a2, uint64_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_fault_impl(&dword_223E7A000, v7, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: physicalBounceNo && physicalBounceNo >= 2%@", &v11, 0xCu);
  }

  v8 = *a1;
  *a3 = *a1;
  if (v8)
  {
    result = 1;
  }

  else
  {
    sqlite3_result_null(a2);
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL __br_update_tables_14_000_block_invoke_1171_cold_1(uint64_t *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: physicalBounceNo && physicalBounceNo >= 2%@", &v9, 0xCu);
  }

  v6 = *a1;
  *a2 = *a1;
  result = v6 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __recursive_table_recreate_schema_block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __recursive_table_recreate_schema_block_invoke_1656_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 3%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_21_000_block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 3%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Handling unuploaded trash item: %llu%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_1801_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 3%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_1801_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Item with rowid %llu doesn't have file id. Not marking as needs migrating%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_2_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: argc == 2%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __br_update_tables_30_000_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __br_resolve_fp_cannot_synchronize_error_block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Signaled FP to resolve NSFileProviderErrorCannotSynchronize errors - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __br_optimize_storage_settings_fixup_block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __br_optimize_storage_settings_fixup_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Done Force Ingestion root container to update the contentPolicy%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __br_fixup_contentPolicy_block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Finished fixing content policy after upgrade with %llu problems%@");
  v2 = *MEMORY[0x277D85DE8];
}

void BRCUnmountAPFSSnapshot_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Can't rmdir %@ - %@%@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void brc_index_for_folder_type_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: folderType >= BRCSyncedFolderTypeMin && folderType <= BRCSyncedFolderTypeMax%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void brc_folder_type_name_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: folderType >= BRCSyncedFolderTypeMin && folderType <= BRCSyncedFolderTypeMax%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void BRCGetAccountDSIDForMobileDocsRoot_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "com.apple.ubd.prsid";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %s xattr value '%@' has the wrong format%@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

void setTypeFieldFromDBType_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Unexpected type!%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void BRCBundleServiceConnection_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![BRCAccountsManager sharedManager].isInSyncBubble%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void BRCSymlinkAt_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void BRCSymlinkAt_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void BRCMkContainerComponent_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] created '%@'%@");
  v2 = *MEMORY[0x277D85DE8];
}

void BRCMkContainerComponent_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: errno != 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void BRCMkContainerComponent_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] unlinked unexpected file at '%@'%@");
  v2 = *MEMORY[0x277D85DE8];
}

void BRCMkContainerComponent_cold_4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: errno != 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void BRCCloneAt_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void brc_copyfileat_status_cb_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_223E7A000, a2, 0x90u, "[ERROR] Couldn't clone package%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void brc_copyfileat_status_cb_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] skipping compressed / unreadable object in package%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void brc_copyfileat_status_cb_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] skipping unsupported object in package%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void BRCFSetAttrList_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = __error();
  strerror(*v4);
  OUTLINED_FUNCTION_1_0();
  v7 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fsetattrlist failed: %s%@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void BRCIsFileIDLocked_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: fileID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void BRCSetMtime_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void BRCRemoveFolder_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "BRCRemoveFolder";
  OUTLINED_FUNCTION_8_3();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Invalid call to %s with empty path%@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void BRCRecursivelySizeDirectoryAtPath_cold_1()
{
  OUTLINED_FUNCTION_9_3();
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void BRCRecursivelySizeDirectoryAtPath_cold_2()
{
  OUTLINED_FUNCTION_9_3();
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_13();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void BRCRecursivelySizeDirectoryAtPath_cold_3()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "BRCRecursivelySizeDirectoryAtPath";
  OUTLINED_FUNCTION_8_3();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: calling %s with empty path%@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}