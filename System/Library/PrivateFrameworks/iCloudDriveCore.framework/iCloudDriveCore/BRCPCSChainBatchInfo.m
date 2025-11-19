@interface BRCPCSChainBatchInfo
- (BOOL)containsRecordInfo:(id)a3;
- (BRCPCSChainBatchInfo)initWithAppLibrary:(id)a3;
- (void)_chainPreppedRecordToParent:(id)a3;
- (void)addFullyChainedRecordInfo:(id)a3;
- (void)chainPreparedRecordBatch:(id)a3;
- (void)prepareFirstPhaseRecordBatch;
@end

@implementation BRCPCSChainBatchInfo

- (BRCPCSChainBatchInfo)initWithAppLibrary:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = BRCPCSChainBatchInfo;
  v6 = [(BRCPCSChainBatchInfo *)&v20 init];
  if (v6)
  {
    v7 = [v5 mangledID];
    v8 = [BRCUserDefaults defaultsForMangledID:v7];
    v6->_should2PhasePCSChain = [v8 should2PhasePCSChain];

    v9 = objc_opt_new();
    fullyChainRecordBatch = v6->_fullyChainRecordBatch;
    v6->_fullyChainRecordBatch = v9;

    v11 = objc_opt_new();
    fullyChainRecordInfoMap = v6->_fullyChainRecordInfoMap;
    v6->_fullyChainRecordInfoMap = v11;

    v13 = objc_opt_new();
    halfChainedRecordMap = v6->_halfChainedRecordMap;
    v6->_halfChainedRecordMap = v13;

    v15 = objc_opt_new();
    alreadyHalfChainedRecords = v6->_alreadyHalfChainedRecords;
    v6->_alreadyHalfChainedRecords = v15;

    if (v6->_should2PhasePCSChain)
    {
      v17 = objc_opt_new();
      recordsForFirstPhase = v6->_recordsForFirstPhase;
      v6->_recordsForFirstPhase = v17;
    }

    objc_storeStrong(&v6->_appLibrary, a3);
  }

  return v6;
}

- (BOOL)containsRecordInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 itemID];
  v6 = [v4 itemType];
  v7 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  v8 = [v7 serverZone];
  v9 = [v4 aliasTargetZoneIsShared];

  v10 = [v5 structureRecordIDForItemType:v6 zone:v8 aliasTargetZoneIsShared:v9];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_fullyChainRecordInfoMap objectForKeyedSubscript:v10];
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [(NSMutableDictionary *)self->_halfChainedRecordMap objectForKeyedSubscript:v10];
      v12 = v13 != 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)prepareFirstPhaseRecordBatch
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_should2PhasePCSChain)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSMutableDictionary *)self->_halfChainedRecordMap objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          recordsForFirstPhase = self->_recordsForFirstPhase;
          v9 = [*(*(&v11 + 1) + 8 * v7) record];
          [(NSMutableArray *)recordsForFirstPhase addObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addFullyChainedRecordInfo:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  v6 = [v5 serverZone];
  v7 = [v6 zoneID];

  v8 = [v4 itemType];
  v9 = 0x277CBC000uLL;
  if (v8 <= 8 && ((1 << v8) & 0x106) != 0)
  {
    v10 = [v4 itemID];
    v11 = [v10 contentsRecordIDInZoneID:v7];

    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"content" recordID:v11];
    v13 = [v4 contentCKInfo];
    [v12 serializeSystemFields:v13];

    [(NSMutableArray *)self->_fullyChainRecordBatch addObject:v12];
    [(NSMutableDictionary *)self->_fullyChainRecordInfoMap setObject:v4 forKey:v11];
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v61 = [v4 itemID];
    v41 = [v61 debugItemIDString];
    v59 = [v4 structuralCKInfo];
    v42 = [v59 etag];
    [v4 contentCKInfo];
    v43 = v63 = v7;
    v44 = [v43 etag];
    v45 = [v4 parentID];
    v46 = [v45 debugItemIDString];
    *buf = 138413570;
    v65 = v41;
    v66 = 2112;
    v67 = v42;
    v68 = 2112;
    v69 = v44;
    v70 = 2112;
    v71 = v46;
    v72 = 2112;
    v73 = self;
    v74 = 2112;
    v75 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] PCS chaining %@ (st:%@, ct:%@) to %@ for op %@%@", buf, 0x3Eu);

    v7 = v63;
    v9 = 0x277CBC000;
  }

  v16 = [v4 itemID];
  v17 = [v4 itemType];
  v18 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  v19 = [v18 serverZone];
  v20 = [v16 structureRecordIDForItemType:v17 zone:v19 aliasTargetZoneIsShared:{objc_msgSend(v4, "aliasTargetZoneIsShared")}];

  v21 = [v4 itemType];
  if (v21 > 0xA || ((1 << v21) & 0x611) == 0 || (-[NSMutableDictionary objectForKeyedSubscript:](self->_halfChainedRecordMap, "objectForKeyedSubscript:", v20), v22 = objc_claimAutoreleasedReturnValue(), [v22 record], v23 = objc_claimAutoreleasedReturnValue(), v22, !v23))
  {
    v23 = [objc_alloc(*(v9 + 1440)) initWithRecordType:@"structure" recordID:v20];
    v24 = [v4 structuralCKInfo];
    [v23 serializeSystemFields:v24];

    if ([v4 chainState] != 4 && ((v28 = objc_msgSend(v4, "itemType"), v28 <= 0xA) && ((1 << v28) & 0x611) != 0 || (v47 = objc_msgSend(v4, "itemType"), v47 <= 8) && ((1 << v47) & 0x106) != 0))
    {
      [v23 setWantsChainPCS:1];
      v29 = [v4 itemType];
      if (v29 > 8 || ((1 << v29) & 0x106) == 0 || !self->_should2PhasePCSChain)
      {
        goto LABEL_23;
      }

      recordsForFirstPhase = self->_recordsForFirstPhase;
      v27 = v23;
    }

    else
    {
      v25 = [v4 itemType];
      if (v25 > 0xA || ((1 << v25) & 0x611) == 0)
      {
        goto LABEL_23;
      }

      recordsForFirstPhase = self->_alreadyHalfChainedRecords;
      v27 = v20;
    }

    [recordsForFirstPhase addObject:v27];
    goto LABEL_23;
  }

  if (self->_should2PhasePCSChain)
  {
    [(NSMutableArray *)self->_recordsForFirstPhase addObject:v23];
  }

  [(NSMutableDictionary *)self->_halfChainedRecordMap removeObjectForKey:v20];
LABEL_23:
  [(NSMutableArray *)self->_fullyChainRecordBatch addObject:v23];
  [(NSMutableDictionary *)self->_fullyChainRecordInfoMap setObject:v4 forKey:v20];
  v30 = [v4 parentID];
  v31 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  v32 = [v31 serverZone];
  v33 = [v30 structureRecordIDForItemType:0 zone:v32 aliasTargetZoneIsShared:{objc_msgSend(v4, "aliasTargetZoneIsShared")}];

  v34 = [(NSMutableDictionary *)self->_halfChainedRecordMap objectForKeyedSubscript:v33];
  if (v34 || ([v33 brc_isZoneRootRecordID] & 1) != 0)
  {
    goto LABEL_42;
  }

  if (([(NSMutableSet *)self->_alreadyHalfChainedRecords containsObject:v33]& 1) == 0)
  {
    v62 = v7;
    v35 = [(NSMutableDictionary *)self->_fullyChainRecordInfoMap objectForKeyedSubscript:v33];

    if (v35)
    {
      [BRCPCSChainBatchInfo addFullyChainedRecordInfo:];
    }

    v34 = [objc_alloc(*(v9 + 1440)) initWithRecordType:@"structure" recordID:v33];
    v60 = [(BRCAppLibrary *)self->_appLibrary db];
    v36 = [v4 parentID];
    v37 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
    v38 = [v37 dbRowID];
    v39 = [v60 fetch:{@"SELECT pcs_state, item_stat_ckinfo FROM server_items WHERE item_id = %@ AND zone_rowid = %@", v36, v38}];

    v40 = v39;
    if ([v39 next])
    {
      if ([v39 intAtIndex:0] < 2)
      {
        v56 = [v39 objectOfClass:objc_opt_class() atIndex:1];
        v7 = v62;
        if (!v56)
        {
          [BRCPCSChainBatchInfo addFullyChainedRecordInfo:];
        }

        [v34 serializeSystemFields:v56];
        [v34 setWantsChainPCS:1];
        v57 = [[BRCHalfChainInfo alloc] initWithRecord:v34 ckInfo:v56];
        [(NSMutableDictionary *)self->_halfChainedRecordMap setObject:v57 forKeyedSubscript:v33];

        goto LABEL_41;
      }

      [(NSMutableSet *)self->_alreadyHalfChainedRecords addObject:v33];
    }

    else
    {
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        [(BRCPCSChainBatchInfo *)v48 addFullyChainedRecordInfo:v49, v50, v51, v52, v53, v54, v55];
      }
    }

    v7 = v62;
LABEL_41:

LABEL_42:
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_chainPreppedRecordToParent:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [(NSMutableDictionary *)self->_fullyChainRecordInfoMap objectForKeyedSubscript:v5];
  v7 = [v4 recordType];
  if ([v7 isEqualToString:@"content"])
  {
    v8 = [v6 itemID];
    v9 = [v5 zoneID];
    v10 = [v8 pcsChainDocumentStructureReferenceInZoneID:v9];

    [v4 setParent:v10];
  }

  else
  {
    if ([v7 isEqualToString:@"structure"])
    {
      v11 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
      v12 = [v11 serverZone];

      v13 = [v6 parentID];
      v14 = [v13 pcsChainParentReferenceInZone:v12];

      v15 = [v6 parentID];
      v16 = [v15 validatingDirectoryReferenceInZone:v12];

      [v4 setParent:v14];
      [v4 setObject:v16 forKeyedSubscript:@"parent"];
    }

    else
    {
      v12 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(BRCPCSChainBatchInfo *)v12 _chainPreppedRecordToParent:v17, v18, v19, v20, v21, v22, v23];
      }
    }
  }
}

- (void)chainPreparedRecordBatch:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_should2PhasePCSChain)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
    }

    if ([v5 count])
    {
      v8 = [v5 objectAtIndexedSubscript:0];
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v23 = [v8 recordID];
    if ([(NSMutableArray *)self->_fullyChainRecordBatch count])
    {
      v24 = 0;
      do
      {
        v25 = [(NSMutableArray *)self->_fullyChainRecordBatch objectAtIndexedSubscript:v24];
        v26 = [v25 recordID];
        v27 = v26;
        if (v23 && [v26 isEqual:v23])
        {
          [(NSMutableArray *)self->_fullyChainRecordBatch setObject:v8 atIndexedSubscript:v24];
          v28 = v8;

          [v28 sanitizeShortTokenFields];
          v29 = [v28 protectionData];

          if (!v29)
          {
            [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
          }

          if (v9 >= [v5 count])
          {

            v30 = 0;
            v8 = 0;
          }

          else
          {
            v8 = [v5 objectAtIndexedSubscript:v9];

            v30 = [v8 recordID];
            ++v9;
          }

          v23 = v30;
        }

        else
        {
          v28 = v25;
        }

        [(BRCPCSChainBatchInfo *)self _chainPreppedRecordToParent:v28];

        ++v24;
      }

      while (v24 < [(NSMutableArray *)self->_fullyChainRecordBatch count]);
    }

    v31 = v9 - (v8 != 0);
    v32 = [(NSMutableDictionary *)self->_halfChainedRecordMap count]+ v31;
    if (v32 != [v5 count])
    {
      [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
    }

    for (; v31 < [v5 count]; ++v31)
    {
      v33 = [v5 objectAtIndexedSubscript:v31];
      halfChainedRecordMap = self->_halfChainedRecordMap;
      v35 = [v33 recordID];
      v36 = [(NSMutableDictionary *)halfChainedRecordMap objectForKeyedSubscript:v35];

      if (!v36)
      {
        [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
      }

      [v36 setRecord:v33];
    }
  }

  else
  {
    if ([v4 count])
    {
      [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = self->_fullyChainRecordBatch;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(BRCPCSChainBatchInfo *)self _chainPreppedRecordToParent:*(*(&v42 + 1) + 8 * i)];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v12);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = [(NSMutableDictionary *)self->_halfChainedRecordMap objectEnumerator];
    v15 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v39;
      do
      {
        v19 = 0;
        v20 = v17;
        do
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v8);
          }

          fullyChainRecordBatch = self->_fullyChainRecordBatch;
          v22 = [*(*(&v38 + 1) + 8 * v19) record];
          v17 = v20 + 1;
          [(NSMutableArray *)fullyChainRecordBatch insertObject:v22 atIndex:v20];

          ++v19;
          ++v20;
        }

        while (v16 != v19);
        v16 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v16);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)addFullyChainedRecordInfo:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_fullyChainRecordInfoMap[parentRecordID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addFullyChainedRecordInfo:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: No parent item?!?!%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addFullyChainedRecordInfo:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parentCKInfo%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_chainPreppedRecordToParent:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: unkown record type%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)chainPreparedRecordBatch:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: preppedRecords.count == 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)chainPreparedRecordBatch:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)chainPreparedRecordBatch:.cold.3()
{
  OUTLINED_FUNCTION_10();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_11(5.7779e-34);
    OUTLINED_FUNCTION_22(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: preppedRecord.protectionData%@");
  }
}

- (void)chainPreparedRecordBatch:.cold.4()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: j + _halfChainedRecordMap.count == preppedRecords.count%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)chainPreparedRecordBatch:.cold.5()
{
  OUTLINED_FUNCTION_10();
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_11(5.7779e-34);
    OUTLINED_FUNCTION_22(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: halfChainInfo != nil%@");
  }
}

@end