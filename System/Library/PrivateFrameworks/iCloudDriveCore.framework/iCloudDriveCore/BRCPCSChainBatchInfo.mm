@interface BRCPCSChainBatchInfo
- (BOOL)containsRecordInfo:(id)info;
- (BRCPCSChainBatchInfo)initWithAppLibrary:(id)library;
- (void)_chainPreppedRecordToParent:(id)parent;
- (void)addFullyChainedRecordInfo:(id)info;
- (void)chainPreparedRecordBatch:(id)batch;
- (void)prepareFirstPhaseRecordBatch;
@end

@implementation BRCPCSChainBatchInfo

- (BRCPCSChainBatchInfo)initWithAppLibrary:(id)library
{
  libraryCopy = library;
  v20.receiver = self;
  v20.super_class = BRCPCSChainBatchInfo;
  v6 = [(BRCPCSChainBatchInfo *)&v20 init];
  if (v6)
  {
    mangledID = [libraryCopy mangledID];
    v8 = [BRCUserDefaults defaultsForMangledID:mangledID];
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

    objc_storeStrong(&v6->_appLibrary, library);
  }

  return v6;
}

- (BOOL)containsRecordInfo:(id)info
{
  infoCopy = info;
  itemID = [infoCopy itemID];
  itemType = [infoCopy itemType];
  defaultClientZone = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone = [defaultClientZone serverZone];
  aliasTargetZoneIsShared = [infoCopy aliasTargetZoneIsShared];

  v10 = [itemID structureRecordIDForItemType:itemType zone:serverZone aliasTargetZoneIsShared:aliasTargetZoneIsShared];

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
    objectEnumerator = [(NSMutableDictionary *)self->_halfChainedRecordMap objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          recordsForFirstPhase = self->_recordsForFirstPhase;
          record = [*(*(&v11 + 1) + 8 * v7) record];
          [(NSMutableArray *)recordsForFirstPhase addObject:record];

          ++v7;
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addFullyChainedRecordInfo:(id)info
{
  v76 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  defaultClientZone = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone = [defaultClientZone serverZone];
  zoneID = [serverZone zoneID];

  itemType = [infoCopy itemType];
  v9 = 0x277CBC000uLL;
  if (itemType <= 8 && ((1 << itemType) & 0x106) != 0)
  {
    itemID = [infoCopy itemID];
    v11 = [itemID contentsRecordIDInZoneID:zoneID];

    v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"content" recordID:v11];
    contentCKInfo = [infoCopy contentCKInfo];
    [v12 serializeSystemFields:contentCKInfo];

    [(NSMutableArray *)self->_fullyChainRecordBatch addObject:v12];
    [(NSMutableDictionary *)self->_fullyChainRecordInfoMap setObject:infoCopy forKey:v11];
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    itemID2 = [infoCopy itemID];
    debugItemIDString = [itemID2 debugItemIDString];
    structuralCKInfo = [infoCopy structuralCKInfo];
    etag = [structuralCKInfo etag];
    [infoCopy contentCKInfo];
    v43 = v63 = zoneID;
    etag2 = [v43 etag];
    parentID = [infoCopy parentID];
    debugItemIDString2 = [parentID debugItemIDString];
    *buf = 138413570;
    v65 = debugItemIDString;
    v66 = 2112;
    v67 = etag;
    v68 = 2112;
    v69 = etag2;
    v70 = 2112;
    v71 = debugItemIDString2;
    v72 = 2112;
    selfCopy = self;
    v74 = 2112;
    v75 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] PCS chaining %@ (st:%@, ct:%@) to %@ for op %@%@", buf, 0x3Eu);

    zoneID = v63;
    v9 = 0x277CBC000;
  }

  itemID3 = [infoCopy itemID];
  itemType2 = [infoCopy itemType];
  defaultClientZone2 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone2 = [defaultClientZone2 serverZone];
  v20 = [itemID3 structureRecordIDForItemType:itemType2 zone:serverZone2 aliasTargetZoneIsShared:{objc_msgSend(infoCopy, "aliasTargetZoneIsShared")}];

  itemType3 = [infoCopy itemType];
  if (itemType3 > 0xA || ((1 << itemType3) & 0x611) == 0 || (-[NSMutableDictionary objectForKeyedSubscript:](self->_halfChainedRecordMap, "objectForKeyedSubscript:", v20), v22 = objc_claimAutoreleasedReturnValue(), [v22 record], v23 = objc_claimAutoreleasedReturnValue(), v22, !v23))
  {
    v23 = [objc_alloc(*(v9 + 1440)) initWithRecordType:@"structure" recordID:v20];
    structuralCKInfo2 = [infoCopy structuralCKInfo];
    [v23 serializeSystemFields:structuralCKInfo2];

    if ([infoCopy chainState] != 4 && ((v28 = objc_msgSend(infoCopy, "itemType"), v28 <= 0xA) && ((1 << v28) & 0x611) != 0 || (v47 = objc_msgSend(infoCopy, "itemType"), v47 <= 8) && ((1 << v47) & 0x106) != 0))
    {
      [v23 setWantsChainPCS:1];
      itemType4 = [infoCopy itemType];
      if (itemType4 > 8 || ((1 << itemType4) & 0x106) == 0 || !self->_should2PhasePCSChain)
      {
        goto LABEL_23;
      }

      recordsForFirstPhase = self->_recordsForFirstPhase;
      v27 = v23;
    }

    else
    {
      itemType5 = [infoCopy itemType];
      if (itemType5 > 0xA || ((1 << itemType5) & 0x611) == 0)
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
  [(NSMutableDictionary *)self->_fullyChainRecordInfoMap setObject:infoCopy forKey:v20];
  parentID2 = [infoCopy parentID];
  defaultClientZone3 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone3 = [defaultClientZone3 serverZone];
  v33 = [parentID2 structureRecordIDForItemType:0 zone:serverZone3 aliasTargetZoneIsShared:{objc_msgSend(infoCopy, "aliasTargetZoneIsShared")}];

  v34 = [(NSMutableDictionary *)self->_halfChainedRecordMap objectForKeyedSubscript:v33];
  if (v34 || ([v33 brc_isZoneRootRecordID] & 1) != 0)
  {
    goto LABEL_42;
  }

  if (([(NSMutableSet *)self->_alreadyHalfChainedRecords containsObject:v33]& 1) == 0)
  {
    v62 = zoneID;
    v35 = [(NSMutableDictionary *)self->_fullyChainRecordInfoMap objectForKeyedSubscript:v33];

    if (v35)
    {
      [BRCPCSChainBatchInfo addFullyChainedRecordInfo:];
    }

    v34 = [objc_alloc(*(v9 + 1440)) initWithRecordType:@"structure" recordID:v33];
    v60 = [(BRCAppLibrary *)self->_appLibrary db];
    parentID3 = [infoCopy parentID];
    defaultClientZone4 = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
    dbRowID = [defaultClientZone4 dbRowID];
    v39 = [v60 fetch:{@"SELECT pcs_state, item_stat_ckinfo FROM server_items WHERE item_id = %@ AND zone_rowid = %@", parentID3, dbRowID}];

    v40 = v39;
    if ([v39 next])
    {
      if ([v39 intAtIndex:0] < 2)
      {
        v56 = [v39 objectOfClass:objc_opt_class() atIndex:1];
        zoneID = v62;
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

    zoneID = v62;
LABEL_41:

LABEL_42:
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_chainPreppedRecordToParent:(id)parent
{
  parentCopy = parent;
  recordID = [parentCopy recordID];
  v6 = [(NSMutableDictionary *)self->_fullyChainRecordInfoMap objectForKeyedSubscript:recordID];
  recordType = [parentCopy recordType];
  if ([recordType isEqualToString:@"content"])
  {
    itemID = [v6 itemID];
    zoneID = [recordID zoneID];
    v10 = [itemID pcsChainDocumentStructureReferenceInZoneID:zoneID];

    [parentCopy setParent:v10];
  }

  else
  {
    if ([recordType isEqualToString:@"structure"])
    {
      defaultClientZone = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
      serverZone = [defaultClientZone serverZone];

      parentID = [v6 parentID];
      v14 = [parentID pcsChainParentReferenceInZone:serverZone];

      parentID2 = [v6 parentID];
      v16 = [parentID2 validatingDirectoryReferenceInZone:serverZone];

      [parentCopy setParent:v14];
      [parentCopy setObject:v16 forKeyedSubscript:@"parent"];
    }

    else
    {
      serverZone = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(BRCPCSChainBatchInfo *)serverZone _chainPreppedRecordToParent:v17, v18, v19, v20, v21, v22, v23];
      }
    }
  }
}

- (void)chainPreparedRecordBatch:(id)batch
{
  v48 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v5 = batchCopy;
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
      objectEnumerator = [v5 objectAtIndexedSubscript:0];
      v9 = 1;
    }

    else
    {
      objectEnumerator = 0;
      v9 = 0;
    }

    recordID = [objectEnumerator recordID];
    if ([(NSMutableArray *)self->_fullyChainRecordBatch count])
    {
      v24 = 0;
      do
      {
        v25 = [(NSMutableArray *)self->_fullyChainRecordBatch objectAtIndexedSubscript:v24];
        recordID2 = [v25 recordID];
        v27 = recordID2;
        if (recordID && [recordID2 isEqual:recordID])
        {
          [(NSMutableArray *)self->_fullyChainRecordBatch setObject:objectEnumerator atIndexedSubscript:v24];
          v28 = objectEnumerator;

          [v28 sanitizeShortTokenFields];
          protectionData = [v28 protectionData];

          if (!protectionData)
          {
            [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
          }

          if (v9 >= [v5 count])
          {

            recordID3 = 0;
            objectEnumerator = 0;
          }

          else
          {
            objectEnumerator = [v5 objectAtIndexedSubscript:v9];

            recordID3 = [objectEnumerator recordID];
            ++v9;
          }

          recordID = recordID3;
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

    v31 = v9 - (objectEnumerator != 0);
    v32 = [(NSMutableDictionary *)self->_halfChainedRecordMap count]+ v31;
    if (v32 != [v5 count])
    {
      [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
    }

    for (; v31 < [v5 count]; ++v31)
    {
      v33 = [v5 objectAtIndexedSubscript:v31];
      halfChainedRecordMap = self->_halfChainedRecordMap;
      recordID4 = [v33 recordID];
      v36 = [(NSMutableDictionary *)halfChainedRecordMap objectForKeyedSubscript:recordID4];

      if (!v36)
      {
        [BRCPCSChainBatchInfo chainPreparedRecordBatch:];
      }

      [v36 setRecord:v33];
    }
  }

  else
  {
    if ([batchCopy count])
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
    objectEnumerator = [(NSMutableDictionary *)self->_halfChainedRecordMap objectEnumerator];
    v15 = [objectEnumerator countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          fullyChainRecordBatch = self->_fullyChainRecordBatch;
          record = [*(*(&v38 + 1) + 8 * v19) record];
          v17 = v20 + 1;
          [(NSMutableArray *)fullyChainRecordBatch insertObject:record atIndex:v20];

          ++v19;
          ++v20;
        }

        while (v16 != v19);
        v16 = [objectEnumerator countByEnumeratingWithState:&v38 objects:v46 count:16];
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