@interface SCWStubContainer
- (SCWStubContainer)init;
- (id)_errorForErrorMode:(int64_t)a3;
- (id)_errorForErrorMode:(int64_t)a3 itemIDs:(id)a4;
- (id)contentsOfZone:(id)a3;
- (id)contentsOfZone:(id)a3 withType:(id)a4;
- (id)recordWithName:(id)a3 inZone:(id)a4;
- (int64_t)_ckErrorCodeForErrorMode:(int64_t)a3;
- (void)accountInfoWithCompletionHandler:(id)a3;
- (void)addDatabaseOperation:(id)a3;
- (void)setContentsOfZone:(id)a3 toRecords:(id)a4;
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

- (void)setContentsOfZone:(id)a3 toRecords:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
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
        v15 = [v14 recordID];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc(MEMORY[0x1E695BA90]);
  v17 = [v16 initWithZoneName:v6 ownerName:*MEMORY[0x1E695B728]];
  v18 = [(SCWStubContainer *)self zoneContentsByZoneID];
  [v18 setObject:v8 forKeyedSubscript:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (id)contentsOfZone:(id)a3
{
  v4 = MEMORY[0x1E695BA90];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:v5 ownerName:*MEMORY[0x1E695B728]];

  v8 = [(SCWStubContainer *)self zoneContentsByZoneID];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 allValues];

  return v10;
}

- (id)contentsOfZone:(id)a3 withType:(id)a4
{
  v6 = a4;
  v7 = [(SCWStubContainer *)self contentsOfZone:a3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SCWStubContainer_contentsOfZone_withType___block_invoke;
  v12[3] = &unk_1E85E3DE8;
  v13 = v6;
  v8 = v6;
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

- (id)recordWithName:(id)a3 inZone:(id)a4
{
  v6 = MEMORY[0x1E695BA90];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B728]];

  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v8 zoneID:v10];
  v12 = [(SCWStubContainer *)self zoneContentsByZoneID];
  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:v11];

  return v14;
}

- (void)addDatabaseOperation:(id)a3
{
  v218 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v165 = self;
  if (v5 == objc_opt_class())
  {
    v154 = v4;
    v24 = v4;
    ++self->_modifyZonesOperationCount;
    if ([(SCWStubContainer *)self modifyZonesErrorMode])
    {
      v25 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self modifyZonesErrorMode]];
      v26 = [v24 modifyRecordZonesCompletionBlock];

      if (!v26)
      {
LABEL_53:

LABEL_54:
LABEL_132:
        v4 = v154;
        goto LABEL_133;
      }

      v27 = [v24 modifyRecordZonesCompletionBlock];
      v27[2](v27, 0, 0, v25);
    }

    else
    {
      v51 = [(SCWStubContainer *)self modifyZonesSavedZones];
      v52 = [v24 recordZonesToSave];
      v53 = [v51 arrayByAddingObjectsFromArray:v52];
      modifyZonesSavedZones = self->_modifyZonesSavedZones;
      self->_modifyZonesSavedZones = v53;

      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v55 = [v24 recordZonesToSave];
      v56 = [v55 countByEnumeratingWithState:&v203 objects:v217 count:16];
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
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v203 + 1) + 8 * i);
            v61 = [(SCWStubContainer *)self zoneContentsByZoneID];
            v62 = [v60 zoneID];
            v63 = [v61 objectForKeyedSubscript:v62];

            if (!v63)
            {
              v64 = [MEMORY[0x1E695DF90] dictionary];
              v65 = [(SCWStubContainer *)self zoneContentsByZoneID];
              v66 = [v60 zoneID];
              [v65 setObject:v64 forKeyedSubscript:v66];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v203 objects:v217 count:16];
        }

        while (v57);
      }

      v67 = [v24 modifyRecordZonesCompletionBlock];

      if (!v67)
      {
        goto LABEL_54;
      }

      v25 = [v24 modifyRecordZonesCompletionBlock];
      v27 = [v24 recordZonesToSave];
      v68 = [v24 recordZoneIDsToDelete];
      (v25)[2](v25, v27, v68, 0);
    }

    goto LABEL_53;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v28 = v4;
    ++self->_zoneChangesOperationCount;
    if ([(SCWStubContainer *)self zoneChangesErrorMode])
    {
      v29 = [(SCWStubContainer *)self zoneChangesErrorMode];
      v30 = [v28 recordZoneIDs];
      v31 = [(SCWStubContainer *)self _errorForErrorMode:v29 itemIDs:v30];

      if ([v31 code] == 2)
      {
        v32 = v4;
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v33 = [v28 recordZoneIDs];
        v34 = [v33 countByEnumeratingWithState:&v199 objects:v216 count:16];
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
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v199 + 1) + 8 * j);
              v39 = [v28 recordZoneFetchCompletionBlock];

              if (v39)
              {
                v40 = [v28 recordZoneFetchCompletionBlock];
                (v40)[2](v40, v38, 0, 0, 0, v31);
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v199 objects:v216 count:16];
          }

          while (v35);
        }

        v4 = v32;
      }

      v41 = [(SCWStubContainer *)self willFinishZoneChanges];

      if (v41)
      {
        v42 = [(SCWStubContainer *)self willFinishZoneChanges];
        v42[2]();
      }

      v43 = [v28 fetchRecordZoneChangesCompletionBlock];

      if (v43)
      {
        v44 = [v28 fetchRecordZoneChangesCompletionBlock];
        (v44)[2](v44, v31);
        goto LABEL_115;
      }

      goto LABEL_116;
    }

    v155 = v4;
    v31 = [MEMORY[0x1E695DF70] array];
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

    v157 = v31;
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
        v80 = [(SCWStubContainer *)self zoneContentsByZoneID];
        v81 = [v80 objectForKeyedSubscript:v79];

        if (!v81)
        {
          [v31 addObject:v79];
          v93 = [(SCWStubContainer *)self _errorForErrorMode:2];
          v97 = [v28 recordZoneFetchCompletionBlock];

          if (!v97)
          {
            goto LABEL_80;
          }

          v96 = [v28 recordZoneFetchCompletionBlock];
          (v96)[2](v96, v79, 0, 0, 0, v93);
          goto LABEL_78;
        }

        v82 = objc_alloc(MEMORY[0x1E695BAB8]);
        v83 = [MEMORY[0x1E695DEF0] data];
        v163 = [v82 initWithData:v83];

        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v84 = [v81 allValues];
        v85 = [v84 countByEnumeratingWithState:&v191 objects:v214 count:16];
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
                objc_enumerationMutation(v84);
              }

              v89 = *(*(&v191 + 1) + 8 * m);
              v90 = [v28 recordChangedBlock];

              if (v90)
              {
                v91 = [v28 recordChangedBlock];
                v91[2](v91, v89);
              }
            }

            v86 = [v84 countByEnumeratingWithState:&v191 objects:v214 count:16];
          }

          while (v86);
        }

        v92 = [v28 recordZoneChangeTokensUpdatedBlock];

        v93 = v163;
        if (v92)
        {
          v94 = [v28 recordZoneChangeTokensUpdatedBlock];
          v94[2](v94, v79, v163, 0);
        }

        v95 = [v28 recordZoneFetchCompletionBlock];

        v31 = v157;
        if (v95)
        {
          v96 = [v28 recordZoneFetchCompletionBlock];
          v96[2](v96, v79, v163, 0, 0, 0);
          self = v165;
LABEL_78:

          goto LABEL_80;
        }

        self = v165;
LABEL_80:
      }

      v161 = [obj countByEnumeratingWithState:&v195 objects:v215 count:16];
      if (!v161)
      {
LABEL_82:

        if ([v31 count])
        {
          v44 = [(SCWStubContainer *)self _errorForErrorMode:2 itemIDs:v31];
        }

        else
        {
          v44 = 0;
        }

        v133 = [(SCWStubContainer *)self willFinishZoneChanges];

        if (v133)
        {
          v134 = [(SCWStubContainer *)self willFinishZoneChanges];
          v134[2]();
        }

        v135 = [v28 fetchRecordZoneChangesCompletionBlock];

        v4 = v155;
        if (v135)
        {
          v136 = [v28 fetchRecordZoneChangesCompletionBlock];
          v136[2](v136, v44);
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
    v45 = [(SCWStubContainer *)self willModifyRecords];

    if (v45)
    {
      v46 = [(SCWStubContainer *)self willModifyRecords];
      v46[2]();
    }

    v154 = v4;
    v47 = v4;
    ++self->_modifyRecordsOperationCount;
    if ([(SCWStubContainer *)self modifyRecordsErrorMode])
    {
      v48 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self modifyRecordsErrorMode]];
      v49 = [v47 modifyRecordsCompletionBlock];

      if (v49)
      {
        v50 = [v47 modifyRecordsCompletionBlock];
        (v50)[2](v50, 0, 0, v48);
      }
    }

    else
    {
      v162 = [MEMORY[0x1E695DFA8] set];
      v164 = [MEMORY[0x1E695DF90] dictionary];
      v98 = [MEMORY[0x1E695DF90] dictionary];
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v158 = v47;
      v160 = [v47 recordsToSave];
      v99 = [v160 countByEnumeratingWithState:&v187 objects:v213 count:16];
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
              objc_enumerationMutation(v160);
            }

            v103 = *(*(&v187 + 1) + 8 * n);
            v104 = [v103 recordID];
            v105 = [v104 zoneID];
            v106 = [v164 objectForKeyedSubscript:v105];

            if (v106)
            {
              v107 = [v106 arrayByAddingObject:v103];
            }

            else
            {
              v212 = v103;
              v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
            }

            v108 = [v103 recordID];
            v109 = [v108 zoneID];
            [v164 setObject:v107 forKeyedSubscript:v109];

            v110 = [(SCWStubContainer *)v165 zoneContentsByZoneID];
            v111 = [v103 recordID];
            v112 = [v111 zoneID];
            v113 = [v110 objectForKeyedSubscript:v112];

            if (!v113)
            {
              v114 = [v103 recordID];
              v115 = [v114 zoneID];
              [v162 addObject:v115];
            }
          }

          v100 = [v160 countByEnumeratingWithState:&v187 objects:v213 count:16];
        }

        while (v100);
      }

      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v116 = [v158 recordIDsToDelete];
      v117 = [v116 countByEnumeratingWithState:&v183 objects:v211 count:16];
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
              objc_enumerationMutation(v116);
            }

            v121 = *(*(&v183 + 1) + 8 * ii);
            v122 = [v121 zoneID];
            v123 = [v98 objectForKeyedSubscript:v122];

            if (v123)
            {
              v124 = [v123 arrayByAddingObject:v121];
            }

            else
            {
              v210 = v121;
              v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
            }

            v125 = [v121 zoneID];
            [v98 setObject:v124 forKeyedSubscript:v125];

            v126 = [(SCWStubContainer *)v165 zoneContentsByZoneID];
            v127 = [v121 zoneID];
            v128 = [v126 objectForKeyedSubscript:v127];

            if (!v128)
            {
              v129 = [v121 zoneID];
              [v162 addObject:v129];
            }
          }

          v118 = [v116 countByEnumeratingWithState:&v183 objects:v211 count:16];
        }

        while (v118);
      }

      if ([v162 count])
      {
        v130 = [v162 allObjects];
        v131 = v165;
        v132 = [(SCWStubContainer *)v165 _errorForErrorMode:2 itemIDs:v130];
      }

      else
      {
        v132 = 0;
        v131 = v165;
      }

      v137 = [MEMORY[0x1E695DF90] dictionary];
      v179[0] = MEMORY[0x1E69E9820];
      v179[1] = 3221225472;
      v179[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke;
      v179[3] = &unk_1E85E3E10;
      v138 = v162;
      v180 = v138;
      v181 = v131;
      v139 = v137;
      v182 = v139;
      [v164 enumerateKeysAndObjectsUsingBlock:v179];
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

          v131 = v165;
        }

        else
        {
          v132 = 0;
        }
      }

      if ([v139 count] && objc_msgSend(v158, "atomic"))
      {
        v143 = [v158 modifyRecordsCompletionBlock];

        if (v143)
        {
          v144 = [v158 modifyRecordsCompletionBlock];
          (v144)[2](v144, 0, 0, v132);
        }
      }

      else
      {
        v145 = [MEMORY[0x1E695DF70] array];
        v174[0] = MEMORY[0x1E69E9820];
        v174[1] = 3221225472;
        v174[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke_2;
        v174[3] = &unk_1E85E3E38;
        v146 = v138;
        v175 = v146;
        v176 = v131;
        v177 = v139;
        v147 = v131;
        v148 = v145;
        v178 = v148;
        [v164 enumerateKeysAndObjectsUsingBlock:v174];
        v47 = v158;
        v149 = [MEMORY[0x1E695DF70] array];
        v170[0] = MEMORY[0x1E69E9820];
        v170[1] = 3221225472;
        v170[2] = __41__SCWStubContainer_addDatabaseOperation___block_invoke_3;
        v170[3] = &unk_1E85E3E10;
        v171 = v146;
        v172 = v147;
        v150 = v149;
        v173 = v150;
        [v98 enumerateKeysAndObjectsUsingBlock:v170];
        v151 = [v158 modifyRecordsCompletionBlock];

        if (v151)
        {
          v152 = [v158 modifyRecordsCompletionBlock];
          (v152)[2](v152, v148, v150, v132);
        }
      }
    }

    goto LABEL_132;
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v28 = v4;
    ++self->_modifySubscriptionsOperationCount;
    v69 = [(SCWStubContainer *)self modifySubscriptionsSavedSubscriptions];
    v70 = [v28 subscriptionsToSave];
    v71 = [v69 arrayByAddingObjectsFromArray:v70];
    modifySubscriptionsSavedSubscriptions = self->_modifySubscriptionsSavedSubscriptions;
    self->_modifySubscriptionsSavedSubscriptions = v71;

    v73 = [v28 modifySubscriptionsCompletionBlock];

    if (v73)
    {
      v74 = [v28 modifySubscriptionsCompletionBlock];
      [v28 subscriptionsToSave];
      v76 = v75 = v4;
      v77 = [v28 subscriptionIDsToDelete];
      (v74)[2](v74, v76, v77, 0);

      v4 = v75;
    }

    goto LABEL_117;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v10 = v4;
    v11 = v4;
    ++self->_databaseChangesOperationCount;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v12 = [(SCWStubContainer *)self databaseChangesOperationChangedZoneIDs];
    v13 = [v12 countByEnumeratingWithState:&v166 objects:v207 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v166 + 1) + 8 * jj);
          v18 = [v11 recordZoneWithIDChangedBlock];
          v18[2](v18, v17);
        }

        v14 = [v12 countByEnumeratingWithState:&v166 objects:v207 count:16];
      }

      while (v14);
    }

    v19 = objc_alloc(MEMORY[0x1E695BAB8]);
    v20 = [MEMORY[0x1E695DEF0] data];
    v21 = [v19 initWithData:v20];

    v22 = [v11 fetchDatabaseChangesCompletionBlock];

    if (v22)
    {
      v23 = [v11 fetchDatabaseChangesCompletionBlock];
      (v23)[2](v23, v21, 0, 0);
    }

    v4 = v10;
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

- (void)accountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SCWStubContainer *)self accountInfoErrorMode])
  {
    v5 = [(SCWStubContainer *)self _errorForErrorMode:[(SCWStubContainer *)self accountInfoErrorMode]];
    v4[2](v4, 0, v5);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695B858]);
    [v5 setAccountStatus:1];
    [v5 setAccountPartition:1];
    [v5 setHasValidCredentials:1];
    [v5 setHasEncryptionIdentity:1];
    [v5 setSupportsDeviceToDeviceEncryption:{-[SCWStubContainer accountInfoSupportsDeviceToDeviceEncryption](self, "accountInfoSupportsDeviceToDeviceEncryption")}];
    (v4)[2](v4, v5, 0);
  }
}

- (id)_errorForErrorMode:(int64_t)a3
{
  if ((a3 - 1) > 2)
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

- (id)_errorForErrorMode:(int64_t)a3 itemIDs:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
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
    v7 = [(SCWStubContainer *)self _ckErrorCodeForErrorMode:a3];
    v8 = *MEMORY[0x1E695B740];
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:v7 userInfo:0];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v6;
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

          [v10 setObject:v9 forKeyedSubscript:{*(*(&v22 + 1) + 8 * i), v22}];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E695B798];
    v27 = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [v16 errorWithDomain:v8 code:2 userInfo:v17];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (int64_t)_ckErrorCodeForErrorMode:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1DACC1C30[a3 - 1];
  }
}

@end