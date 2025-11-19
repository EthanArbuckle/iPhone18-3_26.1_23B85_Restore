@interface NSError
@end

@implementation NSError

uint64_t __63__NSError_BRCSyncOperationThrottle__brc_syncOperationErrorKind__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 brc_isCloudKitErrorConsideredAsSuccessForZoneThrottle];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = -1;
  }

  return result;
}

uint64_t __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CFABD0]];

  if (v5)
  {
    if ([v3 code] == 18)
    {
      v6 = *(*(a1 + 32) + 8);
      if (*(v6 + 24) <= 1uLL)
      {
        *(v6 + 24) = 2;
        if (*(a1 + 40))
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = "BRErrorNeedsReset";
LABEL_6:
          v9 = [v7 stringWithUTF8String:v8];
          v10 = *(a1 + 40);
          v11 = *v10;
          *v10 = v9;

          goto LABEL_31;
        }
      }
    }

    goto LABEL_31;
  }

  v12 = [v3 domain];
  v13 = [v12 isEqualToString:*MEMORY[0x277CBBF50]];

  if (!v13)
  {
    goto LABEL_31;
  }

  if ([v3 code] == 21)
  {
    v14 = [v3 userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v16 = [v15 domain];
    if ([v16 isEqualToString:*MEMORY[0x277CBC120]])
    {
      v17 = [v15 code];

      if (v17 == 2026)
      {
        v18 = brc_bread_crumbs();
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke_cold_4();
        }

        v20 = *(*(a1 + 32) + 8);
        if (*(v20 + 24) > 1uLL)
        {
          goto LABEL_30;
        }

        *(v20 + 24) = 2;
        v22 = *(a1 + 40);
        v21 = (a1 + 40);
        if (!v22)
        {
          goto LABEL_30;
        }

        v23 = "CKUnderlyingErrorContainerReset";
LABEL_29:
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
        v33 = **v21;
        **v21 = v32;

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke_cold_3();
    }

    v30 = *(*(a1 + 32) + 8);
    if (*(v30 + 24) > 1uLL)
    {
      goto LABEL_30;
    }

    *(v30 + 24) = 2;
    v31 = *(a1 + 40);
    v21 = (a1 + 40);
    if (!v31)
    {
      goto LABEL_30;
    }

    v23 = "CKErrorChangeTokenExpired";
    goto LABEL_29;
  }

  if ([v3 code] == 26)
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke_cold_2();
    }

    v26 = *(*(a1 + 32) + 8);
    v27 = *(v26 + 24);
    if (*(a1 + 48) == 1)
    {
      if (v27 <= 2)
      {
        *(v26 + 24) = 3;
        if (*(a1 + 40))
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = "CKErrorSharedZoneNotFound";
          goto LABEL_6;
        }
      }
    }

    else if (v27 <= 1)
    {
      *(v26 + 24) = 2;
      if (*(a1 + 40))
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = "CKErrorZoneNotFound";
        goto LABEL_6;
      }
    }
  }

  else if ([v3 code] == 28)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      __74__NSError_BRCAdditions__brc_containerResetErrorForSharedZone_resetReason___block_invoke_cold_1();
    }

    v37 = *(*(a1 + 32) + 8);
    if (*(v37 + 24) <= 2uLL)
    {
      *(v37 + 24) = 3;
      if (*(a1 + 40))
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = "CKErrorUserDeletedZone";
        goto LABEL_6;
      }
    }
  }

LABEL_31:

  return 0;
}

uint64_t __40__NSError_BRCAdditions__brc_isRetriable__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CCA050]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CCA738]))
  {
LABEL_3:
    v5 = 1;
    goto LABEL_4;
  }

  if (![v4 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    if (([v4 isEqualToString:*MEMORY[0x277CFABD0]] & 1) == 0)
    {
      if (([v4 isEqualToString:*MEMORY[0x277CFACB0]] & 1) == 0)
      {
        v8 = brc_bread_crumbs();
        v9 = brc_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          __40__NSError_BRCAdditions__brc_isRetriable__block_invoke_cold_1();
        }
      }

      goto LABEL_3;
    }

    goto LABEL_19;
  }

  v7 = [v3 code];
  v5 = 1;
  if (v7 <= 14)
  {
    if (v7 != 1 && v7 != 10)
    {
      if (v7 == 11)
      {
        v5 = [v3 _brc_isCloudKitUnderlyingErrorCode:2003] ^ 1;
      }

      goto LABEL_4;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_4;
  }

  if ((v7 - 16) < 2)
  {
    goto LABEL_19;
  }

  if (v7 != 15)
  {
    if (v7 != 25)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v10 = [*(a1 + 32) userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBC128]];

  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [v11 intValue] == 503;
LABEL_4:

  return v5;
}

BOOL __75__NSError_BRCAdditions__brc_containsCloudKitErrorCode_underlyingErrorCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _brc_isCloudKitErrorCode:*(a1 + 32)])
  {
    v4 = [v3 _brc_cloudKitUnderlyingErrorWithCode:*(a1 + 40)];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __54__NSError_BRCAdditions__brc_isRetriableForPCSChaining__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _brc_isCloudKitErrorCode:11] & 1) != 0 || (objc_msgSend(v2, "_brc_isCloudKitUnderlyingErrorCode:", 2041))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 _brc_isCloudKitUnderlyingErrorCode:2044];
  }

  return v3;
}

uint64_t __46__NSError_BRCAdditions__brc_isOutOfSpaceError__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCA050]];

  if (v4)
  {
    v5 = [v2 code] == 640;
    goto LABEL_3;
  }

  v7 = [v2 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCA5B8]];

  if (!v8)
  {
    if (([v2 isSqliteErrorCode:13] & 1) == 0 && (!objc_msgSend(v2, "isSqliteErrorCode:", 10) || (objc_msgSend(v2, "extendedSqliteCode") & 0xFFFFFFFFFFFFFEFFLL) != 0x120A))
    {
      v6 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ([v2 code] == 28)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_14;
  }

  v5 = [v2 code] == 69;
LABEL_3:
  v6 = v5;
LABEL_14:

  return v6;
}

void __42__NSError_BRCAdditions__brc_strippedError__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 recordName];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 zoneName];

    v6 = v7;
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 brc_isCloudKitAtomicFailure] & 1) == 0)
    {
      v8 = [v5 brc_strippedError];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
    }
  }
}

void __42__NSError_BRCAdditions__brc_strippedError__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 brc_strippedError];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
    }
  }
}

void __35__NSError_BRCAdditions__initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel_description);
  v4 = class_getInstanceMethod(v2, sel_brc_description);

  method_exchangeImplementations(InstanceMethod, v4);
}

void __68__NSError_BRCAdditions__brc_telemetryReportableErrorWithRecordName___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (([v7 brc_isCloudKitAtomicFailure] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v11 recordName];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *a4 = 1;
    }
  }
}

@end