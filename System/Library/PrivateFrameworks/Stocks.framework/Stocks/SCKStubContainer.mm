@interface SCKStubContainer
- (SCKStubContainer)init;
- (id)_errorForErrorMode:(int64_t)mode;
- (id)_errorForErrorMode:(int64_t)mode itemIDs:(id)ds;
- (id)contentsOfZone:(id)zone;
- (id)contentsOfZone:(id)zone withType:(id)type;
- (id)recordWithName:(id)name inZone:(id)zone;
- (int64_t)_ckErrorCodeForErrorMode:(int64_t)mode;
- (void)accountInfoWithCompletionHandler:(id)handler;
- (void)addDatabaseOperation:(id)operation;
- (void)setContentsOfZone:(id)zone toRecords:(id)records;
@end

@implementation SCKStubContainer

- (SCKStubContainer)init
{
  v12.receiver = self;
  v12.super_class = SCKStubContainer;
  v2 = [(SCKStubContainer *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modifyZonesSavedZones = v2->_modifyZonesSavedZones;
    v2->_modifyZonesSavedZones = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modifyRecordsSavedRecords = v2->_modifyRecordsSavedRecords;
    v2->_modifyRecordsSavedRecords = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modifySubscriptionsSavedSubscriptions = v2->_modifySubscriptionsSavedSubscriptions;
    v2->_modifySubscriptionsSavedSubscriptions = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    zoneContentsByZoneID = v2->_zoneContentsByZoneID;
    v2->_zoneContentsByZoneID = v9;

    v2->_accountInfoSupportsDeviceToDeviceEncryption = 1;
  }

  return v2;
}

- (void)setContentsOfZone:(id)zone toRecords:(id)records
{
  v24 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  recordsCopy = records;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        recordID = [v14 recordID];
        [dictionary setObject:v14 forKeyedSubscript:recordID];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc(MEMORY[0x277CBC5F8]);
  v17 = [v16 initWithZoneName:zoneCopy ownerName:*MEMORY[0x277CBBF28]];
  zoneContentsByZoneID = [(SCKStubContainer *)self zoneContentsByZoneID];
  [zoneContentsByZoneID setObject:dictionary forKeyedSubscript:v17];
}

- (id)contentsOfZone:(id)zone
{
  v4 = MEMORY[0x277CBC5F8];
  zoneCopy = zone;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:zoneCopy ownerName:*MEMORY[0x277CBBF28]];

  zoneContentsByZoneID = [(SCKStubContainer *)self zoneContentsByZoneID];
  v9 = [zoneContentsByZoneID objectForKeyedSubscript:v7];
  allValues = [v9 allValues];

  return allValues;
}

- (id)contentsOfZone:(id)zone withType:(id)type
{
  typeCopy = type;
  v7 = [(SCKStubContainer *)self contentsOfZone:zone];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SCKStubContainer_contentsOfZone_withType___block_invoke;
  v12[3] = &unk_279D15C78;
  v13 = typeCopy;
  v8 = typeCopy;
  v9 = [v7 indexesOfObjectsPassingTest:v12];
  v10 = [v7 objectsAtIndexes:v9];

  return v10;
}

uint64_t __44__SCKStubContainer_contentsOfZone_withType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recordWithName:(id)name inZone:(id)zone
{
  v6 = MEMORY[0x277CBC5F8];
  zoneCopy = zone;
  nameCopy = name;
  v9 = [v6 alloc];
  v10 = [v9 initWithZoneName:zoneCopy ownerName:*MEMORY[0x277CBBF28]];

  v11 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:nameCopy zoneID:v10];
  zoneContentsByZoneID = [(SCKStubContainer *)self zoneContentsByZoneID];
  v13 = [zoneContentsByZoneID objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:v11];

  return v14;
}

- (void)addDatabaseOperation:(id)operation
{
  v221 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  v6 = objc_opt_class();
  selfCopy = self;
  if (v6 == objc_opt_class())
  {
    v157 = operationCopy;
    v14 = operationCopy;
    ++self->_modifyZonesOperationCount;
    if ([(SCKStubContainer *)self modifyZonesErrorMode])
    {
      modifyRecordZonesCompletionBlock4 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self modifyZonesErrorMode]];
      modifyRecordZonesCompletionBlock = [v14 modifyRecordZonesCompletionBlock];

      if (!modifyRecordZonesCompletionBlock)
      {
LABEL_44:

LABEL_45:
LABEL_133:
        operationCopy = v157;
        goto LABEL_134;
      }

      modifyRecordZonesCompletionBlock2 = [v14 modifyRecordZonesCompletionBlock];
      modifyRecordZonesCompletionBlock2[2](modifyRecordZonesCompletionBlock2, 0, 0, modifyRecordZonesCompletionBlock4);
    }

    else
    {
      modifyZonesSavedZones = [(SCKStubContainer *)self modifyZonesSavedZones];
      recordZonesToSave = [v14 recordZonesToSave];
      v43 = [modifyZonesSavedZones arrayByAddingObjectsFromArray:recordZonesToSave];
      modifyZonesSavedZones = self->_modifyZonesSavedZones;
      self->_modifyZonesSavedZones = v43;

      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      recordZonesToSave2 = [v14 recordZonesToSave];
      v46 = [recordZonesToSave2 countByEnumeratingWithState:&v206 objects:v220 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v207;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v207 != v48)
            {
              objc_enumerationMutation(recordZonesToSave2);
            }

            v50 = *(*(&v206 + 1) + 8 * i);
            zoneContentsByZoneID = [(SCKStubContainer *)self zoneContentsByZoneID];
            zoneID = [v50 zoneID];
            v53 = [zoneContentsByZoneID objectForKeyedSubscript:zoneID];

            if (!v53)
            {
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              zoneContentsByZoneID2 = [(SCKStubContainer *)self zoneContentsByZoneID];
              zoneID2 = [v50 zoneID];
              [zoneContentsByZoneID2 setObject:dictionary forKeyedSubscript:zoneID2];
            }
          }

          v47 = [recordZonesToSave2 countByEnumeratingWithState:&v206 objects:v220 count:16];
        }

        while (v47);
      }

      modifyRecordZonesCompletionBlock3 = [v14 modifyRecordZonesCompletionBlock];

      if (!modifyRecordZonesCompletionBlock3)
      {
        goto LABEL_45;
      }

      modifyRecordZonesCompletionBlock4 = [v14 modifyRecordZonesCompletionBlock];
      modifyRecordZonesCompletionBlock2 = [v14 recordZonesToSave];
      recordZoneIDsToDelete = [v14 recordZoneIDsToDelete];
      (modifyRecordZonesCompletionBlock4)[2](modifyRecordZonesCompletionBlock4, modifyRecordZonesCompletionBlock2, recordZoneIDsToDelete, 0);
    }

    goto LABEL_44;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v18 = operationCopy;
    ++self->_zoneChangesOperationCount;
    if ([(SCKStubContainer *)self zoneChangesErrorMode])
    {
      zoneChangesErrorMode = [(SCKStubContainer *)self zoneChangesErrorMode];
      recordZoneIDs = [v18 recordZoneIDs];
      array = [(SCKStubContainer *)self _errorForErrorMode:zoneChangesErrorMode itemIDs:recordZoneIDs];

      if ([array code] == 2)
      {
        v22 = operationCopy;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        recordZoneIDs2 = [v18 recordZoneIDs];
        v24 = [recordZoneIDs2 countByEnumeratingWithState:&v202 objects:v219 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v203;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v203 != v26)
              {
                objc_enumerationMutation(recordZoneIDs2);
              }

              v28 = *(*(&v202 + 1) + 8 * j);
              recordZoneFetchCompletionBlock = [v18 recordZoneFetchCompletionBlock];

              if (recordZoneFetchCompletionBlock)
              {
                recordZoneFetchCompletionBlock2 = [v18 recordZoneFetchCompletionBlock];
                (recordZoneFetchCompletionBlock2)[2](recordZoneFetchCompletionBlock2, v28, 0, 0, 0, array);
              }
            }

            v25 = [recordZoneIDs2 countByEnumeratingWithState:&v202 objects:v219 count:16];
          }

          while (v25);
        }

        operationCopy = v22;
      }

      willFinishZoneChanges = [(SCKStubContainer *)self willFinishZoneChanges];

      if (willFinishZoneChanges)
      {
        willFinishZoneChanges2 = [(SCKStubContainer *)self willFinishZoneChanges];
        willFinishZoneChanges2[2]();
      }

      fetchRecordZoneChangesCompletionBlock = [v18 fetchRecordZoneChangesCompletionBlock];

      if (fetchRecordZoneChangesCompletionBlock)
      {
        fetchRecordZoneChangesCompletionBlock2 = [v18 fetchRecordZoneChangesCompletionBlock];
        (fetchRecordZoneChangesCompletionBlock2)[2](fetchRecordZoneChangesCompletionBlock2, array);
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    v158 = operationCopy;
    array = [MEMORY[0x277CBEB18] array];
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    obj = [v18 recordZoneIDs];
    v164 = [obj countByEnumeratingWithState:&v198 objects:v218 count:16];
    if (!v164)
    {
      goto LABEL_73;
    }

    v160 = array;
    v162 = *v199;
    while (1)
    {
      for (k = 0; k != v164; ++k)
      {
        if (*v199 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v198 + 1) + 8 * k);
        zoneContentsByZoneID3 = [(SCKStubContainer *)self zoneContentsByZoneID];
        v71 = [zoneContentsByZoneID3 objectForKeyedSubscript:v69];

        if (!v71)
        {
          [array addObject:v69];
          v83 = [(SCKStubContainer *)self _errorForErrorMode:2];
          recordZoneFetchCompletionBlock3 = [v18 recordZoneFetchCompletionBlock];

          if (!recordZoneFetchCompletionBlock3)
          {
            goto LABEL_71;
          }

          recordZoneFetchCompletionBlock4 = [v18 recordZoneFetchCompletionBlock];
          (recordZoneFetchCompletionBlock4)[2](recordZoneFetchCompletionBlock4, v69, 0, 0, 0, v83);
          goto LABEL_69;
        }

        v72 = objc_alloc(MEMORY[0x277CBC670]);
        data = [MEMORY[0x277CBEA90] data];
        v166 = [v72 initWithData:data];

        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        allValues = [v71 allValues];
        v75 = [allValues countByEnumeratingWithState:&v194 objects:v217 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v195;
          do
          {
            for (m = 0; m != v76; ++m)
            {
              if (*v195 != v77)
              {
                objc_enumerationMutation(allValues);
              }

              v79 = *(*(&v194 + 1) + 8 * m);
              recordChangedBlock = [v18 recordChangedBlock];

              if (recordChangedBlock)
              {
                recordChangedBlock2 = [v18 recordChangedBlock];
                recordChangedBlock2[2](recordChangedBlock2, v79);
              }
            }

            v76 = [allValues countByEnumeratingWithState:&v194 objects:v217 count:16];
          }

          while (v76);
        }

        recordZoneChangeTokensUpdatedBlock = [v18 recordZoneChangeTokensUpdatedBlock];

        v83 = v166;
        if (recordZoneChangeTokensUpdatedBlock)
        {
          recordZoneChangeTokensUpdatedBlock2 = [v18 recordZoneChangeTokensUpdatedBlock];
          recordZoneChangeTokensUpdatedBlock2[2](recordZoneChangeTokensUpdatedBlock2, v69, v166, 0);
        }

        recordZoneFetchCompletionBlock5 = [v18 recordZoneFetchCompletionBlock];

        array = v160;
        if (recordZoneFetchCompletionBlock5)
        {
          recordZoneFetchCompletionBlock4 = [v18 recordZoneFetchCompletionBlock];
          recordZoneFetchCompletionBlock4[2](recordZoneFetchCompletionBlock4, v69, v166, 0, 0, 0);
          self = selfCopy;
LABEL_69:

          goto LABEL_71;
        }

        self = selfCopy;
LABEL_71:
      }

      v164 = [obj countByEnumeratingWithState:&v198 objects:v218 count:16];
      if (!v164)
      {
LABEL_73:

        if ([array count])
        {
          fetchRecordZoneChangesCompletionBlock2 = [(SCKStubContainer *)self _errorForErrorMode:2 itemIDs:array];
        }

        else
        {
          fetchRecordZoneChangesCompletionBlock2 = 0;
        }

        willFinishZoneChanges3 = [(SCKStubContainer *)self willFinishZoneChanges];

        if (willFinishZoneChanges3)
        {
          willFinishZoneChanges4 = [(SCKStubContainer *)self willFinishZoneChanges];
          willFinishZoneChanges4[2]();
        }

        fetchRecordZoneChangesCompletionBlock3 = [v18 fetchRecordZoneChangesCompletionBlock];

        operationCopy = v158;
        if (fetchRecordZoneChangesCompletionBlock3)
        {
          fetchRecordZoneChangesCompletionBlock4 = [v18 fetchRecordZoneChangesCompletionBlock];
          fetchRecordZoneChangesCompletionBlock4[2](fetchRecordZoneChangesCompletionBlock4, fetchRecordZoneChangesCompletionBlock2);
        }

LABEL_116:

LABEL_117:
LABEL_118:

        goto LABEL_134;
      }
    }
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    willModifyRecords = [(SCKStubContainer *)self willModifyRecords];

    if (willModifyRecords)
    {
      willModifyRecords2 = [(SCKStubContainer *)self willModifyRecords];
      willModifyRecords2[2]();
    }

    v157 = operationCopy;
    v37 = operationCopy;
    ++self->_modifyRecordsOperationCount;
    if ([(SCKStubContainer *)self modifyRecordsErrorMode])
    {
      v38 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self modifyRecordsErrorMode]];
      modifyRecordsCompletionBlock = [v37 modifyRecordsCompletionBlock];

      if (modifyRecordsCompletionBlock)
      {
        modifyRecordsCompletionBlock2 = [v37 modifyRecordsCompletionBlock];
        (modifyRecordsCompletionBlock2)[2](modifyRecordsCompletionBlock2, 0, 0, v38);
      }
    }

    else
    {
      v165 = [MEMORY[0x277CBEB58] set];
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v161 = v37;
      recordsToSave = [v37 recordsToSave];
      v103 = [recordsToSave countByEnumeratingWithState:&v190 objects:v216 count:16];
      if (v103)
      {
        v104 = v103;
        v105 = *v191;
        do
        {
          for (n = 0; n != v104; ++n)
          {
            if (*v191 != v105)
            {
              objc_enumerationMutation(recordsToSave);
            }

            v107 = *(*(&v190 + 1) + 8 * n);
            recordID = [v107 recordID];
            zoneID3 = [recordID zoneID];
            v110 = [dictionary2 objectForKeyedSubscript:zoneID3];

            if (v110)
            {
              v111 = [v110 arrayByAddingObject:v107];
            }

            else
            {
              v215 = v107;
              v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
            }

            recordID2 = [v107 recordID];
            zoneID4 = [recordID2 zoneID];
            [dictionary2 setObject:v111 forKeyedSubscript:zoneID4];

            zoneContentsByZoneID4 = [(SCKStubContainer *)selfCopy zoneContentsByZoneID];
            recordID3 = [v107 recordID];
            zoneID5 = [recordID3 zoneID];
            v117 = [zoneContentsByZoneID4 objectForKeyedSubscript:zoneID5];

            if (!v117)
            {
              recordID4 = [v107 recordID];
              zoneID6 = [recordID4 zoneID];
              [v165 addObject:zoneID6];
            }
          }

          v104 = [recordsToSave countByEnumeratingWithState:&v190 objects:v216 count:16];
        }

        while (v104);
      }

      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      recordIDsToDelete = [v161 recordIDsToDelete];
      v121 = [recordIDsToDelete countByEnumeratingWithState:&v186 objects:v214 count:16];
      if (v121)
      {
        v122 = v121;
        v123 = *v187;
        do
        {
          for (ii = 0; ii != v122; ++ii)
          {
            if (*v187 != v123)
            {
              objc_enumerationMutation(recordIDsToDelete);
            }

            v125 = *(*(&v186 + 1) + 8 * ii);
            zoneID7 = [v125 zoneID];
            v127 = [dictionary3 objectForKeyedSubscript:zoneID7];

            if (v127)
            {
              v128 = [v127 arrayByAddingObject:v125];
            }

            else
            {
              v213 = v125;
              v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
            }

            zoneID8 = [v125 zoneID];
            [dictionary3 setObject:v128 forKeyedSubscript:zoneID8];

            zoneContentsByZoneID5 = [(SCKStubContainer *)selfCopy zoneContentsByZoneID];
            zoneID9 = [v125 zoneID];
            v132 = [zoneContentsByZoneID5 objectForKeyedSubscript:zoneID9];

            if (!v132)
            {
              zoneID10 = [v125 zoneID];
              [v165 addObject:zoneID10];
            }
          }

          v122 = [recordIDsToDelete countByEnumeratingWithState:&v186 objects:v214 count:16];
        }

        while (v122);
      }

      if ([v165 count])
      {
        allObjects = [v165 allObjects];
        v135 = selfCopy;
        v136 = [(SCKStubContainer *)selfCopy _errorForErrorMode:2 itemIDs:allObjects];
      }

      else
      {
        v136 = 0;
        v135 = selfCopy;
      }

      dictionary4 = [MEMORY[0x277CBEB38] dictionary];
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke;
      v182[3] = &unk_279D170D8;
      v142 = v165;
      v183 = v142;
      v184 = v135;
      v143 = dictionary4;
      v185 = v143;
      [dictionary2 enumerateKeysAndObjectsUsingBlock:v182];
      v37 = v161;
      if (!v136)
      {
        if ([v143 count])
        {
          v144 = MEMORY[0x277CCA9B8];
          v145 = *MEMORY[0x277CBBF50];
          v211 = *MEMORY[0x277CBBFB0];
          v212 = v143;
          v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v212 forKeys:&v211 count:1];
          v136 = [v144 errorWithDomain:v145 code:2 userInfo:v146];

          v135 = selfCopy;
        }

        else
        {
          v136 = 0;
        }
      }

      if ([v143 count] && objc_msgSend(v161, "atomic"))
      {
        modifyRecordsCompletionBlock3 = [v161 modifyRecordsCompletionBlock];

        if (modifyRecordsCompletionBlock3)
        {
          modifyRecordsCompletionBlock4 = [v161 modifyRecordsCompletionBlock];
          (modifyRecordsCompletionBlock4)[2](modifyRecordsCompletionBlock4, 0, 0, v136);
        }
      }

      else
      {
        array2 = [MEMORY[0x277CBEB18] array];
        v177[0] = MEMORY[0x277D85DD0];
        v177[1] = 3221225472;
        v177[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke_2;
        v177[3] = &unk_279D17100;
        v150 = v142;
        v178 = v150;
        v179 = v135;
        v180 = v143;
        v151 = v135;
        v152 = array2;
        v181 = v152;
        [dictionary2 enumerateKeysAndObjectsUsingBlock:v177];
        v37 = v161;
        array3 = [MEMORY[0x277CBEB18] array];
        v173[0] = MEMORY[0x277D85DD0];
        v173[1] = 3221225472;
        v173[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke_3;
        v173[3] = &unk_279D170D8;
        v174 = v150;
        v175 = v151;
        v154 = array3;
        v176 = v154;
        [dictionary3 enumerateKeysAndObjectsUsingBlock:v173];
        modifyRecordsCompletionBlock5 = [v161 modifyRecordsCompletionBlock];

        if (modifyRecordsCompletionBlock5)
        {
          modifyRecordsCompletionBlock6 = [v161 modifyRecordsCompletionBlock];
          (modifyRecordsCompletionBlock6)[2](modifyRecordsCompletionBlock6, v152, v154, v136);
        }
      }
    }

    goto LABEL_133;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v18 = operationCopy;
    ++self->_modifySubscriptionsOperationCount;
    modifySubscriptionsSavedSubscriptions = [(SCKStubContainer *)self modifySubscriptionsSavedSubscriptions];
    subscriptionsToSave = [v18 subscriptionsToSave];
    v61 = [modifySubscriptionsSavedSubscriptions arrayByAddingObjectsFromArray:subscriptionsToSave];
    modifySubscriptionsSavedSubscriptions = self->_modifySubscriptionsSavedSubscriptions;
    self->_modifySubscriptionsSavedSubscriptions = v61;

    modifySubscriptionsCompletionBlock = [v18 modifySubscriptionsCompletionBlock];

    if (modifySubscriptionsCompletionBlock)
    {
      modifySubscriptionsCompletionBlock2 = [v18 modifySubscriptionsCompletionBlock];
      [v18 subscriptionsToSave];
      v66 = v65 = operationCopy;
      subscriptionIDsToDelete = [v18 subscriptionIDsToDelete];
      (modifySubscriptionsCompletionBlock2)[2](modifySubscriptionsCompletionBlock2, v66, subscriptionIDsToDelete, 0);

      operationCopy = v65;
    }

    goto LABEL_118;
  }

  v10 = objc_opt_class();
  if (v10 == objc_opt_class())
  {
    v88 = operationCopy;
    v89 = operationCopy;
    ++self->_databaseChangesOperationCount;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    databaseChangesOperationChangedZoneIDs = [(SCKStubContainer *)self databaseChangesOperationChangedZoneIDs];
    v91 = [databaseChangesOperationChangedZoneIDs countByEnumeratingWithState:&v169 objects:v210 count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v170;
      do
      {
        for (jj = 0; jj != v92; ++jj)
        {
          if (*v170 != v93)
          {
            objc_enumerationMutation(databaseChangesOperationChangedZoneIDs);
          }

          v95 = *(*(&v169 + 1) + 8 * jj);
          recordZoneWithIDChangedBlock = [v89 recordZoneWithIDChangedBlock];
          recordZoneWithIDChangedBlock[2](recordZoneWithIDChangedBlock, v95);
        }

        v92 = [databaseChangesOperationChangedZoneIDs countByEnumeratingWithState:&v169 objects:v210 count:16];
      }

      while (v92);
    }

    v97 = objc_alloc(MEMORY[0x277CBC670]);
    data2 = [MEMORY[0x277CBEA90] data];
    v99 = [v97 initWithData:data2];

    fetchDatabaseChangesCompletionBlock = [v89 fetchDatabaseChangesCompletionBlock];

    if (fetchDatabaseChangesCompletionBlock)
    {
      fetchDatabaseChangesCompletionBlock2 = [v89 fetchDatabaseChangesCompletionBlock];
      (fetchDatabaseChangesCompletionBlock2)[2](fetchDatabaseChangesCompletionBlock2, v99, 0, 0);
    }

    operationCopy = v88;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"SCKStubContainer.m" lineNumber:312 description:{@"unknown operation class %@", v13}];
  }

LABEL_134:
}

void __41__SCKStubContainer_addDatabaseOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v27 = a1;
    v7 = [*(a1 + 40) zoneContentsByZoneID];
    v23 = v5;
    v29 = [v7 objectForKeyedSubscript:v5];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v31;
    v26 = *MEMORY[0x277CBBFE0];
    v25 = *MEMORY[0x277CBBFE8];
    v24 = *MEMORY[0x277CBBF50];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 recordID];
        v14 = [v29 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v12 recordChangeTag];
          v16 = [v14 recordChangeTag];
          if (v15 != v16)
          {
            v17 = [v12 recordChangeTag];
            v18 = [v14 recordChangeTag];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              goto LABEL_12;
            }

            v34[0] = v26;
            v34[1] = v25;
            v35[0] = v12;
            v35[1] = v14;
            v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
            v16 = [MEMORY[0x277CCA9B8] errorWithDomain:v24 code:14 userInfo:v15];
            v20 = *(v27 + 48);
            v21 = [v12 recordID];
            [v20 setObject:v16 forKey:v21];
          }
        }

LABEL_12:
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (!v9)
      {
LABEL_14:

        v6 = v22;
        v5 = v23;
        break;
      }
    }
  }
}

void __41__SCKStubContainer_addDatabaseOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = [*(a1 + 40) zoneContentsByZoneID];
    v8 = [v7 objectForKeyedSubscript:v5];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = *(a1 + 48);
          v16 = [v14 recordID];
          v17 = [v15 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v18 = [v14 recordID];
            [v8 setObject:v14 forKeyedSubscript:v18];

            [*(a1 + 56) addObject:v14];
            v19 = [*(a1 + 40) modifyRecordsSavedRecords];
            v20 = [v19 arrayByAddingObject:v14];
            v21 = *(a1 + 40);
            v22 = *(v21 + 88);
            *(v21 + 88) = v20;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v6 = v23;
  }
}

void __41__SCKStubContainer_addDatabaseOperation___block_invoke_3(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([a1[4] containsObject:v5] & 1) == 0)
  {
    v7 = [a1[5] zoneContentsByZoneID];
    v8 = [v7 objectForKeyedSubscript:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          [v8 removeObjectForKey:{v14, v15}];
          [a1[6] addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)accountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SCKStubContainer *)self accountInfoErrorMode])
  {
    v5 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self accountInfoErrorMode]];
    handlerCopy[2](handlerCopy, 0, v5);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBC160]);
    [v5 setAccountStatus:1];
    [v5 setAccountPartition:1];
    [v5 setHasValidCredentials:1];
    [v5 setHasEncryptionIdentity:1];
    [v5 setSupportsDeviceToDeviceEncryption:{-[SCKStubContainer accountInfoSupportsDeviceToDeviceEncryption](self, "accountInfoSupportsDeviceToDeviceEncryption")}];
    (handlerCopy)[2](handlerCopy, v5, 0);
  }
}

- (id)_errorForErrorMode:(int64_t)mode
{
  if ((mode - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(SCKStubContainer *)self _ckErrorCodeForErrorMode:v3];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:v5 userInfo:0];
  }

  return v6;
}

- (id)_errorForErrorMode:(int64_t)mode itemIDs:(id)ds
{
  v28 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ((mode - 2) >= 2)
  {
    if (mode == 1)
    {
      v19 = [(SCKStubContainer *)self _ckErrorCodeForErrorMode:1];
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:v19 userInfo:0];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v7 = [(SCKStubContainer *)self _ckErrorCodeForErrorMode:mode];
    v8 = *MEMORY[0x277CBBF50];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:v7 userInfo:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = dsCopy;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [dictionary setObject:v9 forKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v21}];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CBBFB0];
    v26 = dictionary;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 errorWithDomain:v8 code:2 userInfo:v17];
  }

  return v18;
}

- (int64_t)_ckErrorCodeForErrorMode:(int64_t)mode
{
  if (mode == 3)
  {
    return 21;
  }

  if (mode == 2)
  {
    return 26;
  }

  if (mode)
  {
    return 4;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SCKStubContainer.m" lineNumber:393 description:@"can't convert no error to a ck error code"];

  return 1;
}

@end