@interface CKRecord
@end

@implementation CKRecord

void __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientZone];
  v3 = [v2 isPrivateZone];

  if (v3)
  {
    v4 = [*(a1 + 32) clientZone];
    v5 = [v4 asPrivateClientZone];
    v11 = [v5 defaultAppLibrary];

    if ([*(a1 + 40) hasChainPCS])
    {
      v6 = 134217730;
    }

    else
    {
      [v11 clearStateBits:0x8000000];
      v6 = 2;
    }

    [v11 setStateBits:v6];
    [*(a1 + 40) _processSaltingOnAppLibrary:v11];
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"countMetrics"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v11 rootQuotaUsage];
        if (!v9 || (v10 = *(a1 + 48), v9, v10 == 1))
        {
          [v11 setRootQuotaUsage:v8];
        }
      }
    }

    [*(a1 + 40) _saveAppLibraryIfNecessary:v11];
  }
}

void __102__CKRecord_BRCSerializationAdditions__processAppLibraryDataWithMovedZoneNames_serverZone_isDeltaSync___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasChainPCS])
  {
    v2 = 134217730;
  }

  else
  {
    [*(a1 + 40) clearStateBits:0x8000000];
    v2 = 2;
  }

  [*(a1 + 40) setStateBits:v2];
  [*(a1 + 32) _processSaltingOnAppLibrary:*(a1 + 40)];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"countMetrics"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    v3 = [v6 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [*(a1 + 40) rootQuotaUsage];
      if (!v4 || (v5 = *(a1 + 48), v4, v5 == 1))
      {
        [*(a1 + 40) setRootQuotaUsage:v3];
      }
    }
  }

  [*(a1 + 32) _saveAppLibraryIfNecessary:*(a1 + 40)];
}

void __84__CKRecord_BRCContainerMetadataAdditions__brc_containerMetadataRecordWithContainer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ([v6 isFileURL]& 1) != 0)
  {
    v14 = 0;
    v7 = [v6 checkResourceIsReachableAndReturnError:&v14];
    v8 = v14;
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v6];
      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = BRContainerIconCKAssetKeyForName();
        [v10 setObject:v9 forKeyedSubscript:v11];
      }
    }

    else
    {
      v9 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v16 = v6;
        v17 = 2112;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_fault_impl(&dword_223E7A000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: icon doesn't exist anymore at %@ - %@%@", buf, 0x20u);
      }
    }
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_fault_impl(&dword_223E7A000, v9, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid key %@ and obj %@%@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end