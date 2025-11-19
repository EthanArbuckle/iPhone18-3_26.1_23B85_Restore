@interface SCKStubContainer
- (SCKStubContainer)init;
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

- (void)setContentsOfZone:(id)a3 toRecords:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
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
        v15 = [v14 recordID];
        [v8 setObject:v14 forKeyedSubscript:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc(MEMORY[0x277CBC5F8]);
  v17 = [v16 initWithZoneName:v6 ownerName:*MEMORY[0x277CBBF28]];
  v18 = [(SCKStubContainer *)self zoneContentsByZoneID];
  [v18 setObject:v8 forKeyedSubscript:v17];
}

- (id)contentsOfZone:(id)a3
{
  v4 = MEMORY[0x277CBC5F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithZoneName:v5 ownerName:*MEMORY[0x277CBBF28]];

  v8 = [(SCKStubContainer *)self zoneContentsByZoneID];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v9 allValues];

  return v10;
}

- (id)contentsOfZone:(id)a3 withType:(id)a4
{
  v6 = a4;
  v7 = [(SCKStubContainer *)self contentsOfZone:a3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__SCKStubContainer_contentsOfZone_withType___block_invoke;
  v12[3] = &unk_279D15C78;
  v13 = v6;
  v8 = v6;
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

- (id)recordWithName:(id)a3 inZone:(id)a4
{
  v6 = MEMORY[0x277CBC5F8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v9 initWithZoneName:v7 ownerName:*MEMORY[0x277CBBF28]];

  v11 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v10];
  v12 = [(SCKStubContainer *)self zoneContentsByZoneID];
  v13 = [v12 objectForKeyedSubscript:v10];
  v14 = [v13 objectForKeyedSubscript:v11];

  return v14;
}

- (void)addDatabaseOperation:(id)a3
{
  v221 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_class();
  v168 = self;
  if (v6 == objc_opt_class())
  {
    v157 = v5;
    v14 = v5;
    ++self->_modifyZonesOperationCount;
    if ([(SCKStubContainer *)self modifyZonesErrorMode])
    {
      v15 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self modifyZonesErrorMode]];
      v16 = [v14 modifyRecordZonesCompletionBlock];

      if (!v16)
      {
LABEL_44:

LABEL_45:
LABEL_133:
        v5 = v157;
        goto LABEL_134;
      }

      v17 = [v14 modifyRecordZonesCompletionBlock];
      v17[2](v17, 0, 0, v15);
    }

    else
    {
      v41 = [(SCKStubContainer *)self modifyZonesSavedZones];
      v42 = [v14 recordZonesToSave];
      v43 = [v41 arrayByAddingObjectsFromArray:v42];
      modifyZonesSavedZones = self->_modifyZonesSavedZones;
      self->_modifyZonesSavedZones = v43;

      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v45 = [v14 recordZonesToSave];
      v46 = [v45 countByEnumeratingWithState:&v206 objects:v220 count:16];
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
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v206 + 1) + 8 * i);
            v51 = [(SCKStubContainer *)self zoneContentsByZoneID];
            v52 = [v50 zoneID];
            v53 = [v51 objectForKeyedSubscript:v52];

            if (!v53)
            {
              v54 = [MEMORY[0x277CBEB38] dictionary];
              v55 = [(SCKStubContainer *)self zoneContentsByZoneID];
              v56 = [v50 zoneID];
              [v55 setObject:v54 forKeyedSubscript:v56];
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v206 objects:v220 count:16];
        }

        while (v47);
      }

      v57 = [v14 modifyRecordZonesCompletionBlock];

      if (!v57)
      {
        goto LABEL_45;
      }

      v15 = [v14 modifyRecordZonesCompletionBlock];
      v17 = [v14 recordZonesToSave];
      v58 = [v14 recordZoneIDsToDelete];
      (v15)[2](v15, v17, v58, 0);
    }

    goto LABEL_44;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v18 = v5;
    ++self->_zoneChangesOperationCount;
    if ([(SCKStubContainer *)self zoneChangesErrorMode])
    {
      v19 = [(SCKStubContainer *)self zoneChangesErrorMode];
      v20 = [v18 recordZoneIDs];
      v21 = [(SCKStubContainer *)self _errorForErrorMode:v19 itemIDs:v20];

      if ([v21 code] == 2)
      {
        v22 = v5;
        v204 = 0u;
        v205 = 0u;
        v202 = 0u;
        v203 = 0u;
        v23 = [v18 recordZoneIDs];
        v24 = [v23 countByEnumeratingWithState:&v202 objects:v219 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v202 + 1) + 8 * j);
              v29 = [v18 recordZoneFetchCompletionBlock];

              if (v29)
              {
                v30 = [v18 recordZoneFetchCompletionBlock];
                (v30)[2](v30, v28, 0, 0, 0, v21);
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v202 objects:v219 count:16];
          }

          while (v25);
        }

        v5 = v22;
      }

      v31 = [(SCKStubContainer *)self willFinishZoneChanges];

      if (v31)
      {
        v32 = [(SCKStubContainer *)self willFinishZoneChanges];
        v32[2]();
      }

      v33 = [v18 fetchRecordZoneChangesCompletionBlock];

      if (v33)
      {
        v34 = [v18 fetchRecordZoneChangesCompletionBlock];
        (v34)[2](v34, v21);
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    v158 = v5;
    v21 = [MEMORY[0x277CBEB18] array];
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

    v160 = v21;
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
        v70 = [(SCKStubContainer *)self zoneContentsByZoneID];
        v71 = [v70 objectForKeyedSubscript:v69];

        if (!v71)
        {
          [v21 addObject:v69];
          v83 = [(SCKStubContainer *)self _errorForErrorMode:2];
          v87 = [v18 recordZoneFetchCompletionBlock];

          if (!v87)
          {
            goto LABEL_71;
          }

          v86 = [v18 recordZoneFetchCompletionBlock];
          (v86)[2](v86, v69, 0, 0, 0, v83);
          goto LABEL_69;
        }

        v72 = objc_alloc(MEMORY[0x277CBC670]);
        v73 = [MEMORY[0x277CBEA90] data];
        v166 = [v72 initWithData:v73];

        v196 = 0u;
        v197 = 0u;
        v194 = 0u;
        v195 = 0u;
        v74 = [v71 allValues];
        v75 = [v74 countByEnumeratingWithState:&v194 objects:v217 count:16];
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
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v194 + 1) + 8 * m);
              v80 = [v18 recordChangedBlock];

              if (v80)
              {
                v81 = [v18 recordChangedBlock];
                v81[2](v81, v79);
              }
            }

            v76 = [v74 countByEnumeratingWithState:&v194 objects:v217 count:16];
          }

          while (v76);
        }

        v82 = [v18 recordZoneChangeTokensUpdatedBlock];

        v83 = v166;
        if (v82)
        {
          v84 = [v18 recordZoneChangeTokensUpdatedBlock];
          v84[2](v84, v69, v166, 0);
        }

        v85 = [v18 recordZoneFetchCompletionBlock];

        v21 = v160;
        if (v85)
        {
          v86 = [v18 recordZoneFetchCompletionBlock];
          v86[2](v86, v69, v166, 0, 0, 0);
          self = v168;
LABEL_69:

          goto LABEL_71;
        }

        self = v168;
LABEL_71:
      }

      v164 = [obj countByEnumeratingWithState:&v198 objects:v218 count:16];
      if (!v164)
      {
LABEL_73:

        if ([v21 count])
        {
          v34 = [(SCKStubContainer *)self _errorForErrorMode:2 itemIDs:v21];
        }

        else
        {
          v34 = 0;
        }

        v137 = [(SCKStubContainer *)self willFinishZoneChanges];

        if (v137)
        {
          v138 = [(SCKStubContainer *)self willFinishZoneChanges];
          v138[2]();
        }

        v139 = [v18 fetchRecordZoneChangesCompletionBlock];

        v5 = v158;
        if (v139)
        {
          v140 = [v18 fetchRecordZoneChangesCompletionBlock];
          v140[2](v140, v34);
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
    v35 = [(SCKStubContainer *)self willModifyRecords];

    if (v35)
    {
      v36 = [(SCKStubContainer *)self willModifyRecords];
      v36[2]();
    }

    v157 = v5;
    v37 = v5;
    ++self->_modifyRecordsOperationCount;
    if ([(SCKStubContainer *)self modifyRecordsErrorMode])
    {
      v38 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self modifyRecordsErrorMode]];
      v39 = [v37 modifyRecordsCompletionBlock];

      if (v39)
      {
        v40 = [v37 modifyRecordsCompletionBlock];
        (v40)[2](v40, 0, 0, v38);
      }
    }

    else
    {
      v165 = [MEMORY[0x277CBEB58] set];
      v167 = [MEMORY[0x277CBEB38] dictionary];
      v102 = [MEMORY[0x277CBEB38] dictionary];
      v190 = 0u;
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v161 = v37;
      v163 = [v37 recordsToSave];
      v103 = [v163 countByEnumeratingWithState:&v190 objects:v216 count:16];
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
              objc_enumerationMutation(v163);
            }

            v107 = *(*(&v190 + 1) + 8 * n);
            v108 = [v107 recordID];
            v109 = [v108 zoneID];
            v110 = [v167 objectForKeyedSubscript:v109];

            if (v110)
            {
              v111 = [v110 arrayByAddingObject:v107];
            }

            else
            {
              v215 = v107;
              v111 = [MEMORY[0x277CBEA60] arrayWithObjects:&v215 count:1];
            }

            v112 = [v107 recordID];
            v113 = [v112 zoneID];
            [v167 setObject:v111 forKeyedSubscript:v113];

            v114 = [(SCKStubContainer *)v168 zoneContentsByZoneID];
            v115 = [v107 recordID];
            v116 = [v115 zoneID];
            v117 = [v114 objectForKeyedSubscript:v116];

            if (!v117)
            {
              v118 = [v107 recordID];
              v119 = [v118 zoneID];
              [v165 addObject:v119];
            }
          }

          v104 = [v163 countByEnumeratingWithState:&v190 objects:v216 count:16];
        }

        while (v104);
      }

      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v120 = [v161 recordIDsToDelete];
      v121 = [v120 countByEnumeratingWithState:&v186 objects:v214 count:16];
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
              objc_enumerationMutation(v120);
            }

            v125 = *(*(&v186 + 1) + 8 * ii);
            v126 = [v125 zoneID];
            v127 = [v102 objectForKeyedSubscript:v126];

            if (v127)
            {
              v128 = [v127 arrayByAddingObject:v125];
            }

            else
            {
              v213 = v125;
              v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v213 count:1];
            }

            v129 = [v125 zoneID];
            [v102 setObject:v128 forKeyedSubscript:v129];

            v130 = [(SCKStubContainer *)v168 zoneContentsByZoneID];
            v131 = [v125 zoneID];
            v132 = [v130 objectForKeyedSubscript:v131];

            if (!v132)
            {
              v133 = [v125 zoneID];
              [v165 addObject:v133];
            }
          }

          v122 = [v120 countByEnumeratingWithState:&v186 objects:v214 count:16];
        }

        while (v122);
      }

      if ([v165 count])
      {
        v134 = [v165 allObjects];
        v135 = v168;
        v136 = [(SCKStubContainer *)v168 _errorForErrorMode:2 itemIDs:v134];
      }

      else
      {
        v136 = 0;
        v135 = v168;
      }

      v141 = [MEMORY[0x277CBEB38] dictionary];
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke;
      v182[3] = &unk_279D170D8;
      v142 = v165;
      v183 = v142;
      v184 = v135;
      v143 = v141;
      v185 = v143;
      [v167 enumerateKeysAndObjectsUsingBlock:v182];
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

          v135 = v168;
        }

        else
        {
          v136 = 0;
        }
      }

      if ([v143 count] && objc_msgSend(v161, "atomic"))
      {
        v147 = [v161 modifyRecordsCompletionBlock];

        if (v147)
        {
          v148 = [v161 modifyRecordsCompletionBlock];
          (v148)[2](v148, 0, 0, v136);
        }
      }

      else
      {
        v149 = [MEMORY[0x277CBEB18] array];
        v177[0] = MEMORY[0x277D85DD0];
        v177[1] = 3221225472;
        v177[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke_2;
        v177[3] = &unk_279D17100;
        v150 = v142;
        v178 = v150;
        v179 = v135;
        v180 = v143;
        v151 = v135;
        v152 = v149;
        v181 = v152;
        [v167 enumerateKeysAndObjectsUsingBlock:v177];
        v37 = v161;
        v153 = [MEMORY[0x277CBEB18] array];
        v173[0] = MEMORY[0x277D85DD0];
        v173[1] = 3221225472;
        v173[2] = __41__SCKStubContainer_addDatabaseOperation___block_invoke_3;
        v173[3] = &unk_279D170D8;
        v174 = v150;
        v175 = v151;
        v154 = v153;
        v176 = v154;
        [v102 enumerateKeysAndObjectsUsingBlock:v173];
        v155 = [v161 modifyRecordsCompletionBlock];

        if (v155)
        {
          v156 = [v161 modifyRecordsCompletionBlock];
          (v156)[2](v156, v152, v154, v136);
        }
      }
    }

    goto LABEL_133;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v18 = v5;
    ++self->_modifySubscriptionsOperationCount;
    v59 = [(SCKStubContainer *)self modifySubscriptionsSavedSubscriptions];
    v60 = [v18 subscriptionsToSave];
    v61 = [v59 arrayByAddingObjectsFromArray:v60];
    modifySubscriptionsSavedSubscriptions = self->_modifySubscriptionsSavedSubscriptions;
    self->_modifySubscriptionsSavedSubscriptions = v61;

    v63 = [v18 modifySubscriptionsCompletionBlock];

    if (v63)
    {
      v64 = [v18 modifySubscriptionsCompletionBlock];
      [v18 subscriptionsToSave];
      v66 = v65 = v5;
      v67 = [v18 subscriptionIDsToDelete];
      (v64)[2](v64, v66, v67, 0);

      v5 = v65;
    }

    goto LABEL_118;
  }

  v10 = objc_opt_class();
  if (v10 == objc_opt_class())
  {
    v88 = v5;
    v89 = v5;
    ++self->_databaseChangesOperationCount;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v90 = [(SCKStubContainer *)self databaseChangesOperationChangedZoneIDs];
    v91 = [v90 countByEnumeratingWithState:&v169 objects:v210 count:16];
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
            objc_enumerationMutation(v90);
          }

          v95 = *(*(&v169 + 1) + 8 * jj);
          v96 = [v89 recordZoneWithIDChangedBlock];
          v96[2](v96, v95);
        }

        v92 = [v90 countByEnumeratingWithState:&v169 objects:v210 count:16];
      }

      while (v92);
    }

    v97 = objc_alloc(MEMORY[0x277CBC670]);
    v98 = [MEMORY[0x277CBEA90] data];
    v99 = [v97 initWithData:v98];

    v100 = [v89 fetchDatabaseChangesCompletionBlock];

    if (v100)
    {
      v101 = [v89 fetchDatabaseChangesCompletionBlock];
      (v101)[2](v101, v99, 0, 0);
    }

    v5 = v88;
  }

  else
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"SCKStubContainer.m" lineNumber:312 description:{@"unknown operation class %@", v13}];
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

- (void)accountInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(SCKStubContainer *)self accountInfoErrorMode])
  {
    v5 = [(SCKStubContainer *)self _errorForErrorMode:[(SCKStubContainer *)self accountInfoErrorMode]];
    v4[2](v4, 0, v5);
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBC160]);
    [v5 setAccountStatus:1];
    [v5 setAccountPartition:1];
    [v5 setHasValidCredentials:1];
    [v5 setHasEncryptionIdentity:1];
    [v5 setSupportsDeviceToDeviceEncryption:{-[SCKStubContainer accountInfoSupportsDeviceToDeviceEncryption](self, "accountInfoSupportsDeviceToDeviceEncryption")}];
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
    v5 = [(SCKStubContainer *)self _ckErrorCodeForErrorMode:v3];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:v5 userInfo:0];
  }

  return v6;
}

- (id)_errorForErrorMode:(int64_t)a3 itemIDs:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
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
    v7 = [(SCKStubContainer *)self _ckErrorCodeForErrorMode:a3];
    v8 = *MEMORY[0x277CBBF50];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:v7 userInfo:0];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v6;
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

          [v10 setObject:v9 forKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v21}];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v13);
    }

    v16 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CBBFB0];
    v26 = v10;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = [v16 errorWithDomain:v8 code:2 userInfo:v17];
  }

  return v18;
}

- (int64_t)_ckErrorCodeForErrorMode:(int64_t)a3
{
  if (a3 == 3)
  {
    return 21;
  }

  if (a3 == 2)
  {
    return 26;
  }

  if (a3)
  {
    return 4;
  }

  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SCKStubContainer.m" lineNumber:393 description:@"can't convert no error to a ck error code"];

  return 1;
}

@end