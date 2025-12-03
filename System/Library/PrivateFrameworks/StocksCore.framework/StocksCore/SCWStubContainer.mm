@interface SCWStubContainer
- (SCWStubContainer)init;
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

@implementation SCWStubContainer

- (SCWStubContainer)init
{
  v12.receiver = self;
  v12.super_class = SCWStubContainer;
  v2 = [(SCWStubContainer *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    modifyZonesSavedZones = v2->_modifyZonesSavedZones;
    v2->_modifyZonesSavedZones = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    modifyRecordsSavedRecords = v2->_modifyRecordsSavedRecords;
    v2->_modifyRecordsSavedRecords = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    modifySubscriptionsSavedSubscriptions = v2->_modifySubscriptionsSavedSubscriptions;
    v2->_modifySubscriptionsSavedSubscriptions = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoneContentsByZoneID = v2->_zoneContentsByZoneID;
    v2->_zoneContentsByZoneID = v9;

    v2->_accountInfoSupportsDeviceToDeviceEncryption = 1;
  }

  return v2;
}

- (void)setContentsOfZone:(id)zone toRecords:(id)records
{
  v25 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  recordsCopy = records;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = recordsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        recordID = [v14 recordID];
        [dictionary setObject:v14 forKeyedSubscript:recordID];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc(MEMORY[0x1E695BA90]);
  v17 = [v16 initWithZoneName:zoneCopy ownerName:*MEMORY[0x1E695B728]];
  zoneContentsByZoneID = [(SCWStubContainer *)self zoneContentsByZoneID];
  [zoneContentsByZoneID setObject:dictionary forKeyedSubscript:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)contentsOfZone:(id)zone
{
  v4 = MEMORY[0x1E695BA90];
  zoneCopy = zone;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:zoneCopy ownerName:*MEMORY[0x1E695B728]];

  zoneContentsByZoneID = [(SCWStubContainer *)self zoneContentsByZoneID];
  v9 = [zoneContentsByZoneID objectForKeyedSubscript:v7];
  allValues = [v9 allValues];

  return allValues;
}

- (id)contentsOfZone:(id)zone withType:(id)type
{
  typeCopy = type;
  v7 = [(SCWStubContainer *)self contentsOfZone:zone];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SCWStubContainer_contentsOfZone_withType___block_invoke;
  v12[3] = &unk_1E85E3DE8;
  v13 = typeCopy;
  v8 = typeCopy;
  v9 = [v7 indexesOfObjectsPassingTest:v12];
  v10 = [v7 objectsAtIndexes:v9];

  return v10;
}

uint64_t __44__SCWStubContainer_contentsOfZone_withType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recordType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)recordWithName:(id)name inZone:(id)zone
{
  v6 = MEMORY[0x1E695BA90];
  zoneCopy = zone;
  nameCopy = name;
  v9 = [v6 alloc];
  v10 = [v9 initWithZoneName:zoneCopy ownerName:*MEMORY[0x1E695B728]];

  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:nameCopy zoneID:v10];
  zoneContentsByZoneID = [(SCWStubContainer *)self zoneContentsByZoneID];
  v13 = [zoneContentsByZoneID objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:v11];

  return v14;
}

- (void)addDatabaseOperation:(id)operation
{
  v218 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  v5 = objc_opt_class();
  selfCopy = self;
  if (v5 == objc_opt_class())
  {
    v154 = operationCopy;
    v24 = operationCopy;
    ++self->_modifyZonesOperationCount;
    if ([(SCWStubContainer *)self modifyZonesErrorMode])
    {
      modifyRecordZonesCompletionBlock4 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self modifyZonesErrorMode]];
      modifyRecordZonesCompletionBlock = [v24 modifyRecordZonesCompletionBlock];

      if (!modifyRecordZonesCompletionBlock)
      {
LABEL_53:

LABEL_54:
LABEL_132:
        operationCopy = v154;
        goto LABEL_133;
      }

      modifyRecordZonesCompletionBlock2 = [v24 modifyRecordZonesCompletionBlock];
      modifyRecordZonesCompletionBlock2[2](modifyRecordZonesCompletionBlock2, 0, 0, modifyRecordZonesCompletionBlock4);
    }

    else
    {
      modifyZonesSavedZones = [(SCWStubContainer *)self modifyZonesSavedZones];
      recordZonesToSave = [v24 recordZonesToSave];
      v53 = [modifyZonesSavedZones arrayByAddingObjectsFromArray:recordZonesToSave];
      modifyZonesSavedZones = self->_modifyZonesSavedZones;
      self->_modifyZonesSavedZones = v53;

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      recordZonesToSave2 = [v24 recordZonesToSave];
      v56 = [recordZonesToSave2 countByEnumeratingWithState:&v203 objects:v217 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v204;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v204 != v58)
            {
              objc_enumerationMutation(recordZonesToSave2);
            }

            v60 = *(*(&v203 + 1) + 8 * i);
            zoneContentsByZoneID = [(SCWStubContainer *)self zoneContentsByZoneID];
            zoneID = [v60 zoneID];
            v63 = [zoneContentsByZoneID objectForKeyedSubscript:zoneID];

            if (!v63)
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              zoneContentsByZoneID2 = [(SCWStubContainer *)self zoneContentsByZoneID];
              zoneID2 = [v60 zoneID];
              [zoneContentsByZoneID2 setObject:dictionary forKeyedSubscript:zoneID2];
            }
          }

          v57 = [recordZonesToSave2 countByEnumeratingWithState:&v203 objects:v217 count:16];
        }

        while (v57);
      }

      modifyRecordZonesCompletionBlock3 = [v24 modifyRecordZonesCompletionBlock];

      if (!modifyRecordZonesCompletionBlock3)
      {
        goto LABEL_54;
      }

      modifyRecordZonesCompletionBlock4 = [v24 modifyRecordZonesCompletionBlock];
      modifyRecordZonesCompletionBlock2 = [v24 recordZonesToSave];
      recordZoneIDsToDelete = [v24 recordZoneIDsToDelete];
      (modifyRecordZonesCompletionBlock4)[2](modifyRecordZonesCompletionBlock4, modifyRecordZonesCompletionBlock2, recordZoneIDsToDelete, 0);
    }

    goto LABEL_53;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v28 = operationCopy;
    ++self->_zoneChangesOperationCount;
    if ([(SCWStubContainer *)self zoneChangesErrorMode])
    {
      zoneChangesErrorMode = [(SCWStubContainer *)self zoneChangesErrorMode];
      recordZoneIDs = [v28 recordZoneIDs];
      array = [(SCWStubContainer *)self _errorForErrorMode:zoneChangesErrorMode itemIDs:recordZoneIDs];

      if ([array code] == 2)
      {
        v32 = operationCopy;
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        recordZoneIDs2 = [v28 recordZoneIDs];
        v34 = [recordZoneIDs2 countByEnumeratingWithState:&v199 objects:v216 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v200;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v200 != v36)
              {
                objc_enumerationMutation(recordZoneIDs2);
              }

              v38 = *(*(&v199 + 1) + 8 * j);
              recordZoneFetchCompletionBlock = [v28 recordZoneFetchCompletionBlock];

              if (recordZoneFetchCompletionBlock)
              {
                recordZoneFetchCompletionBlock2 = [v28 recordZoneFetchCompletionBlock];
                (recordZoneFetchCompletionBlock2)[2](recordZoneFetchCompletionBlock2, v38, 0, 0, 0, array);
              }
            }

            v35 = [recordZoneIDs2 countByEnumeratingWithState:&v199 objects:v216 count:16];
          }

          while (v35);
        }

        operationCopy = v32;
      }

      willFinishZoneChanges = [(SCWStubContainer *)self willFinishZoneChanges];

      if (willFinishZoneChanges)
      {
        willFinishZoneChanges2 = [(SCWStubContainer *)self willFinishZoneChanges];
        willFinishZoneChanges2[2]();
      }

      fetchRecordZoneChangesCompletionBlock = [v28 fetchRecordZoneChangesCompletionBlock];

      if (fetchRecordZoneChangesCompletionBlock)
      {
        fetchRecordZoneChangesCompletionBlock2 = [v28 fetchRecordZoneChangesCompletionBlock];
        (fetchRecordZoneChangesCompletionBlock2)[2](fetchRecordZoneChangesCompletionBlock2, array);
        goto LABEL_115;
      }

      goto LABEL_116;
    }

    v155 = operationCopy;
    array = [MEMORY[0x1E695DF70] array];
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    obj = [v28 recordZoneIDs];
    v161 = [obj countByEnumeratingWithState:&v195 objects:v215 count:16];
    if (!v161)
    {
      goto LABEL_82;
    }

    v157 = array;
    v159 = *v196;
    while (1)
    {
      for (k = 0; k != v161; ++k)
      {
        if (*v196 != v159)
        {
          objc_enumerationMutation(obj);
        }

        v79 = *(*(&v195 + 1) + 8 * k);
        zoneContentsByZoneID3 = [(SCWStubContainer *)self zoneContentsByZoneID];
        v81 = [zoneContentsByZoneID3 objectForKeyedSubscript:v79];

        if (!v81)
        {
          [array addObject:v79];
          v93 = [(SCWStubContainer *)self _errorForErrorMode:2];
          recordZoneFetchCompletionBlock3 = [v28 recordZoneFetchCompletionBlock];

          if (!recordZoneFetchCompletionBlock3)
          {
            goto LABEL_80;
          }

          recordZoneFetchCompletionBlock4 = [v28 recordZoneFetchCompletionBlock];
          (recordZoneFetchCompletionBlock4)[2](recordZoneFetchCompletionBlock4, v79, 0, 0, 0, v93);
          goto LABEL_78;
        }

        v82 = objc_alloc(MEMORY[0x1E695BAB8]);
        data = [MEMORY[0x1E695DEF0] data];
        v163 = [v82 initWithData:data];

        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        allValues = [v81 allValues];
        v85 = [allValues countByEnumeratingWithState:&v191 objects:v214 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v192;
          do
          {
            for (m = 0; m != v86; ++m)
            {
              if (*v192 != v87)
              {
                objc_enumerationMutation(allValues);
              }

              v89 = *(*(&v191 + 1) + 8 * m);
              recordChangedBlock = [v28 recordChangedBlock];

              if (recordChangedBlock)
              {
                recordChangedBlock2 = [v28 recordChangedBlock];
                recordChangedBlock2[2](recordChangedBlock2, v89);
              }
            }

            v86 = [allValues countByEnumeratingWithState:&v191 objects:v214 count:16];
          }

          while (v86);
        }

        recordZoneChangeTokensUpdatedBlock = [v28 recordZoneChangeTokensUpdatedBlock];

        v93 = v163;
        if (recordZoneChangeTokensUpdatedBlock)
        {
          recordZoneChangeTokensUpdatedBlock2 = [v28 recordZoneChangeTokensUpdatedBlock];
          recordZoneChangeTokensUpdatedBlock2[2](recordZoneChangeTokensUpdatedBlock2, v79, v163, 0);
        }

        recordZoneFetchCompletionBlock5 = [v28 recordZoneFetchCompletionBlock];

        array = v157;
        if (recordZoneFetchCompletionBlock5)
        {
          recordZoneFetchCompletionBlock4 = [v28 recordZoneFetchCompletionBlock];
          recordZoneFetchCompletionBlock4[2](recordZoneFetchCompletionBlock4, v79, v163, 0, 0, 0);
          self = selfCopy;
LABEL_78:

          goto LABEL_80;
        }

        self = selfCopy;
LABEL_80:
      }

      v161 = [obj countByEnumeratingWithState:&v195 objects:v215 count:16];
      if (!v161)
      {
LABEL_82:

        if ([array count])
        {
          fetchRecordZoneChangesCompletionBlock2 = [(SCWStubContainer *)self _errorForErrorMode:2 itemIDs:array];
        }

        else
        {
          fetchRecordZoneChangesCompletionBlock2 = 0;
        }

        willFinishZoneChanges3 = [(SCWStubContainer *)self willFinishZoneChanges];

        if (willFinishZoneChanges3)
        {
          willFinishZoneChanges4 = [(SCWStubContainer *)self willFinishZoneChanges];
          willFinishZoneChanges4[2]();
        }

        fetchRecordZoneChangesCompletionBlock3 = [v28 fetchRecordZoneChangesCompletionBlock];

        operationCopy = v155;
        if (fetchRecordZoneChangesCompletionBlock3)
        {
          fetchRecordZoneChangesCompletionBlock4 = [v28 fetchRecordZoneChangesCompletionBlock];
          fetchRecordZoneChangesCompletionBlock4[2](fetchRecordZoneChangesCompletionBlock4, fetchRecordZoneChangesCompletionBlock2);
        }

LABEL_115:

LABEL_116:
LABEL_117:

        goto LABEL_133;
      }
    }
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    willModifyRecords = [(SCWStubContainer *)self willModifyRecords];

    if (willModifyRecords)
    {
      willModifyRecords2 = [(SCWStubContainer *)self willModifyRecords];
      willModifyRecords2[2]();
    }

    v154 = operationCopy;
    v47 = operationCopy;
    ++self->_modifyRecordsOperationCount;
    if ([(SCWStubContainer *)self modifyRecordsErrorMode])
    {
      v48 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self modifyRecordsErrorMode]];
      modifyRecordsCompletionBlock = [v47 modifyRecordsCompletionBlock];

      if (modifyRecordsCompletionBlock)
      {
        modifyRecordsCompletionBlock2 = [v47 modifyRecordsCompletionBlock];
        (modifyRecordsCompletionBlock2)[2](modifyRecordsCompletionBlock2, 0, 0, v48);
      }
    }

    else
    {
      v162 = [MEMORY[0x1E695DFA8] set];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v158 = v47;
      recordsToSave = [v47 recordsToSave];
      v99 = [recordsToSave countByEnumeratingWithState:&v187 objects:v213 count:16];
      if (v99)
      {
        v100 = v99;
        v101 = *v188;
        do
        {
          for (n = 0; n != v100; ++n)
          {
            if (*v188 != v101)
            {
              objc_enumerationMutation(recordsToSave);
            }

            v103 = *(*(&v187 + 1) + 8 * n);
            recordID = [v103 recordID];
            zoneID3 = [recordID zoneID];
            v106 = [dictionary2 objectForKeyedSubscript:zoneID3];

            if (v106)
            {
              v107 = [v106 arrayByAddingObject:v103];
            }

            else
            {
              v212 = v103;
              v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
            }

            recordID2 = [v103 recordID];
            zoneID4 = [recordID2 zoneID];
            [dictionary2 setObject:v107 forKeyedSubscript:zoneID4];

            zoneContentsByZoneID4 = [(SCWStubContainer *)selfCopy zoneContentsByZoneID];
            recordID3 = [v103 recordID];
            zoneID5 = [recordID3 zoneID];
            v113 = [zoneContentsByZoneID4 objectForKeyedSubscript:zoneID5];

            if (!v113)
            {
              recordID4 = [v103 recordID];
              zoneID6 = [recordID4 zoneID];
              [v162 addObject:zoneID6];
            }
          }

          v100 = [recordsToSave countByEnumeratingWithState:&v187 objects:v213 count:16];
        }

        while (v100);
      }

      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      recordIDsToDelete = [v158 recordIDsToDelete];
      v117 = [recordIDsToDelete countByEnumeratingWithState:&v183 objects:v211 count:16];
      if (v117)
      {
        v118 = v117;
        v119 = *v184;
        do
        {
          for (ii = 0; ii != v118; ++ii)
          {
            if (*v184 != v119)
            {
              objc_enumerationMutation(recordIDsToDelete);
            }

            v121 = *(*(&v183 + 1) + 8 * ii);
            zoneID7 = [v121 zoneID];
            v123 = [dictionary3 objectForKeyedSubscript:zoneID7];

            if (v123)
            {
              v124 = [v123 arrayByAddingObject:v121];
            }

            else
            {
              v210 = v121;
              v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
            }

            zoneID8 = [v121 zoneID];
            [dictionary3 setObject:v124 forKeyedSubscript:zoneID8];

            zoneContentsByZoneID5 = [(SCWStubContainer *)selfCopy zoneContentsByZoneID];
            zoneID9 = [v121 zoneID];
            v128 = [zoneContentsByZoneID5 objectForKeyedSubscript:zoneID9];

            if (!v128)
            {
              zoneID10 = [v121 zoneID];
              [v162 addObject:zoneID10];
            }
          }

          v118 = [recordIDsToDelete countByEnumeratingWithState:&v183 objects:v211 count:16];
        }

        while (v118);
      }

      if ([v162 count])
      {
        allObjects = [v162 allObjects];
        v131 = selfCopy;
        v132 = [(SCWStubContainer *)selfCopy _errorForErrorMode:2 itemIDs:allObjects];
      }

      else
      {
        v132 = 0;
        v131 = selfCopy;
      }

      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      v179[0] = MEMORY[0x1E69E9820];
      v179[1] = 3221225472;
      v179[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke;
      v179[3] = &unk_1E85E3E10;
      v138 = v162;
      v180 = v138;
      v181 = v131;
      v139 = dictionary4;
      v182 = v139;
      [dictionary2 enumerateKeysAndObjectsUsingBlock:v179];
      v47 = v158;
      if (!v132)
      {
        if ([v139 count])
        {
          v140 = MEMORY[0x1E696ABC0];
          v141 = *MEMORY[0x1E695B740];
          v208 = *MEMORY[0x1E695B798];
          v209 = v139;
          v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
          v132 = [v140 errorWithDomain:v141 code:2 userInfo:v142];

          v131 = selfCopy;
        }

        else
        {
          v132 = 0;
        }
      }

      if ([v139 count] && objc_msgSend(v158, "atomic"))
      {
        modifyRecordsCompletionBlock3 = [v158 modifyRecordsCompletionBlock];

        if (modifyRecordsCompletionBlock3)
        {
          modifyRecordsCompletionBlock4 = [v158 modifyRecordsCompletionBlock];
          (modifyRecordsCompletionBlock4)[2](modifyRecordsCompletionBlock4, 0, 0, v132);
        }
      }

      else
      {
        array2 = [MEMORY[0x1E695DF70] array];
        v174[0] = MEMORY[0x1E69E9820];
        v174[1] = 3221225472;
        v174[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke_2;
        v174[3] = &unk_1E85E3E38;
        v146 = v138;
        v175 = v146;
        v176 = v131;
        v177 = v139;
        v147 = v131;
        v148 = array2;
        v178 = v148;
        [dictionary2 enumerateKeysAndObjectsUsingBlock:v174];
        v47 = v158;
        array3 = [MEMORY[0x1E695DF70] array];
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v170[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke_3;
        v170[3] = &unk_1E85E3E10;
        v171 = v146;
        v172 = v147;
        v150 = array3;
        v173 = v150;
        [dictionary3 enumerateKeysAndObjectsUsingBlock:v170];
        modifyRecordsCompletionBlock5 = [v158 modifyRecordsCompletionBlock];

        if (modifyRecordsCompletionBlock5)
        {
          modifyRecordsCompletionBlock6 = [v158 modifyRecordsCompletionBlock];
          (modifyRecordsCompletionBlock6)[2](modifyRecordsCompletionBlock6, v148, v150, v132);
        }
      }
    }

    goto LABEL_132;
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v28 = operationCopy;
    ++self->_modifySubscriptionsOperationCount;
    modifySubscriptionsSavedSubscriptions = [(SCWStubContainer *)self modifySubscriptionsSavedSubscriptions];
    subscriptionsToSave = [v28 subscriptionsToSave];
    v71 = [modifySubscriptionsSavedSubscriptions arrayByAddingObjectsFromArray:subscriptionsToSave];
    modifySubscriptionsSavedSubscriptions = self->_modifySubscriptionsSavedSubscriptions;
    self->_modifySubscriptionsSavedSubscriptions = v71;

    modifySubscriptionsCompletionBlock = [v28 modifySubscriptionsCompletionBlock];

    if (modifySubscriptionsCompletionBlock)
    {
      modifySubscriptionsCompletionBlock2 = [v28 modifySubscriptionsCompletionBlock];
      [v28 subscriptionsToSave];
      v76 = v75 = operationCopy;
      subscriptionIDsToDelete = [v28 subscriptionIDsToDelete];
      (modifySubscriptionsCompletionBlock2)[2](modifySubscriptionsCompletionBlock2, v76, subscriptionIDsToDelete, 0);

      operationCopy = v75;
    }

    goto LABEL_117;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v10 = operationCopy;
    v11 = operationCopy;
    ++self->_databaseChangesOperationCount;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    databaseChangesOperationChangedZoneIDs = [(SCWStubContainer *)self databaseChangesOperationChangedZoneIDs];
    v13 = [databaseChangesOperationChangedZoneIDs countByEnumeratingWithState:&v166 objects:v207 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v167;
      do
      {
        for (jj = 0; jj != v14; ++jj)
        {
          if (*v167 != v15)
          {
            objc_enumerationMutation(databaseChangesOperationChangedZoneIDs);
          }

          v17 = *(*(&v166 + 1) + 8 * jj);
          recordZoneWithIDChangedBlock = [v11 recordZoneWithIDChangedBlock];
          recordZoneWithIDChangedBlock[2](recordZoneWithIDChangedBlock, v17);
        }

        v14 = [databaseChangesOperationChangedZoneIDs countByEnumeratingWithState:&v166 objects:v207 count:16];
      }

      while (v14);
    }

    v19 = objc_alloc(MEMORY[0x1E695BAB8]);
    data2 = [MEMORY[0x1E695DEF0] data];
    v21 = [v19 initWithData:data2];

    fetchDatabaseChangesCompletionBlock = [v11 fetchDatabaseChangesCompletionBlock];

    if (fetchDatabaseChangesCompletionBlock)
    {
      fetchDatabaseChangesCompletionBlock2 = [v11 fetchDatabaseChangesCompletionBlock];
      (fetchDatabaseChangesCompletionBlock2)[2](fetchDatabaseChangesCompletionBlock2, v21, 0, 0);
    }

    operationCopy = v10;
  }

LABEL_133:

  v153 = *MEMORY[0x1E69E9840];
}

void __41__SCWStubContainer_addDatabaseOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v28 = a1;
    v7 = [*(a1 + 40) zoneContentsByZoneID];
    v24 = v5;
    v30 = [v7 objectForKeyedSubscript:v5];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    v10 = *v32;
    v27 = *MEMORY[0x1E695B7B8];
    v26 = *MEMORY[0x1E695B7C0];
    v25 = *MEMORY[0x1E695B740];
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 recordID];
        v14 = [v30 objectForKeyedSubscript:v13];

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

            v35[0] = v27;
            v35[1] = v26;
            v36[0] = v12;
            v36[1] = v14;
            v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
            v16 = [MEMORY[0x1E696ABC0] errorWithDomain:v25 code:14 userInfo:v15];
            v20 = *(v28 + 48);
            v21 = [v12 recordID];
            [v20 setObject:v16 forKey:v21];
          }
        }

LABEL_12:
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (!v9)
      {
LABEL_14:

        v6 = v23;
        v5 = v24;
        break;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __41__SCWStubContainer_addDatabaseOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = [*(a1 + 40) zoneContentsByZoneID];
    v8 = [v7 objectForKeyedSubscript:v5];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
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

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v6 = v24;
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __41__SCWStubContainer_addDatabaseOperation___block_invoke_3(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([a1[4] containsObject:v5] & 1) == 0)
  {
    v7 = [a1[5] zoneContentsByZoneID];
    v8 = [v7 objectForKeyedSubscript:v5];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [v8 removeObjectForKey:{v14, v16}];
          [a1[6] addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)accountInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(SCWStubContainer *)self accountInfoErrorMode])
  {
    v5 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self accountInfoErrorMode]];
    handlerCopy[2](handlerCopy, 0, v5);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695B858]);
    [v5 setAccountStatus:1];
    [v5 setAccountPartition:1];
    [v5 setHasValidCredentials:1];
    [v5 setHasEncryptionIdentity:1];
    [v5 setSupportsDeviceToDeviceEncryption:{-[SCWStubContainer accountInfoSupportsDeviceToDeviceEncryption](self, "accountInfoSupportsDeviceToDeviceEncryption")}];
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
    v5 = [(SCWStubContainer *)self _ckErrorCodeForErrorMode:v3];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:v5 userInfo:0];
  }

  return v6;
}

- (id)_errorForErrorMode:(int64_t)mode itemIDs:(id)ds
{
  v29 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ((mode - 2) >= 2)
  {
    if (mode == 1)
    {
      v19 = [(SCWStubContainer *)self _ckErrorCodeForErrorMode:1];
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:v19 userInfo:0];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v7 = [(SCWStubContainer *)self _ckErrorCodeForErrorMode:mode];
    v8 = *MEMORY[0x1E695B740];
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:v7 userInfo:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = dsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [dictionary setObject:v9 forKeyedSubscript:{*(*(&v22 + 1) + 8 * i), v22}];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E695B798];
    v27 = dictionary;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [v16 errorWithDomain:v8 code:2 userInfo:v17];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (int64_t)_ckErrorCodeForErrorMode:(int64_t)mode
{
  if ((mode - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1DACC1C30[mode - 1];
  }
}

@end