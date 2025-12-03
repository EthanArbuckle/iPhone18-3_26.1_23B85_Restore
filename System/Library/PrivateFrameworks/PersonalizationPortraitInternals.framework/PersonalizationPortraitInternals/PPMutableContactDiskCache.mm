@interface PPMutableContactDiskCache
- (BOOL)_writeCache:(id)cache path:(id)path error:(id *)error;
- (BOOL)addNameRecords:(id)records error:(id *)error;
- (BOOL)deleteCacheIfTooOld;
- (BOOL)deleteNameRecordCache;
- (BOOL)updateNameRecordCacheWithHistoryRecords:(id)records error:(id *)error;
- (id)_createNewCacheObjectWithCreatedAt:(int64_t)at;
- (id)_recordSetBucketsForNameRecords:(id)records;
@end

@implementation PPMutableContactDiskCache

- (id)_recordSetBucketsForNameRecords:(id)records
{
  recordsCopy = records;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PPMutableContactDiskCache__recordSetBucketsForNameRecords___block_invoke;
  v7[3] = &unk_278973300;
  v5 = v4;
  v8 = v5;
  [recordsCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

void __61__PPMutableContactDiskCache__recordSetBucketsForNameRecords___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sourceIdentifier];
  v5 = [v4 substringToIndex:1];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [PPContactDiskCacheHistoryRecordSet alloc];
    v8 = v5;
    if (v7)
    {
      v21.receiver = v7;
      v21.super_class = PPContactDiskCacheHistoryRecordSet;
      v9 = objc_msgSendSuper2(&v21, sel_init);
      v7 = v9;
      if (v9)
      {
        objc_storeStrong(&v9->_filename, v5);
        v10 = objc_opt_new();
        adds = v7->_adds;
        v7->_adds = v10;

        v12 = objc_opt_new();
        updates = v7->_updates;
        v7->_updates = v12;

        v14 = objc_opt_new();
        deletes = v7->_deletes;
        v7->_deletes = v14;
      }
    }

    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  v16 = [v3 changeType];
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 updates];
      goto LABEL_16;
    }

    if (v16 == 3)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 deletes];
      goto LABEL_16;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = pp_default_log_handle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

        goto LABEL_19;
      }

      v19 = [v3 sourceIdentifier];
      LODWORD(v21.receiver) = 138412290;
      *(&v21.receiver + 4) = v19;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPContactNameRecordChangeTypeNone found when trying to update disk cache for identifier %@", &v21, 0xCu);
LABEL_17:

      goto LABEL_18;
    }

    if (v16 == 1)
    {
      v17 = [*(a1 + 32) objectForKeyedSubscript:v5];
      v18 = [v17 adds];
LABEL_16:
      v19 = v18;
      [v18 addObject:v3];
      goto LABEL_17;
    }
  }

LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)deleteCacheIfTooOld
{
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1209600.0];
  lastCreatedAt = self->super._lastCreatedAt;
  [v3 timeIntervalSinceReferenceDate];
  if (lastCreatedAt >= v5)
  {
    goto LABEL_6;
  }

  v6 = pp_contacts_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPContactDiskCache: deleting cache since it is too old.", v9, 2u);
  }

  if ([(PPMutableContactDiskCache *)self deleteNameRecordCache])
  {
    self->super._lastCreatedAt = 0;
    v7 = 1;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)_createNewCacheObjectWithCreatedAt:(int64_t)at
{
  v4 = objc_opt_new();
  [v4 setCreatedAt:at];
  v5 = objc_opt_new();
  [v4 setRecords:v5];

  return v4;
}

- (BOOL)_writeCache:(id)cache path:(id)path error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  data = [cache data];
  v15 = 0;
  v9 = [data writeToFile:pathCopy options:1073741825 error:&v15];
  v10 = v15;

  if ((v9 & 1) == 0)
  {
    v11 = pp_contacts_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = pathCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&dword_23224A000, v11, OS_LOG_TYPE_ERROR, "failed to write name record cache at: %@ error: %@", buf, 0x16u);
    }

    if (error)
    {
      v12 = v10;
      *error = v10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)deleteNameRecordCache
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:self->super._path];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager2 enumeratorAtPath:self->super._path];

    if (v7)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        v30 = v8;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v32 + 1) + 8 * i);
            pathExtension = [v13 pathExtension];
            v15 = [pathExtension isEqualToString:@"pb"];

            if (v15)
            {
              v16 = objc_autoreleasePoolPush();
              selfCopy = self;
              v18 = [(NSString *)self->super._path stringByAppendingPathComponent:v13];
              objc_autoreleasePoolPop(v16);
              v19 = v3;
              defaultManager3 = [*(v3 + 2560) defaultManager];
              v31 = 0;
              v21 = [defaultManager3 removeItemAtPath:v18 error:&v31];
              v22 = v31;

              if ((v21 & 1) == 0)
              {
                v26 = pp_contacts_log_handle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v37 = v18;
                  v38 = 2112;
                  v39 = v22;
                  _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "failed to delete name record cache file at: %@ error: %@", buf, 0x16u);
                }

                v8 = v30;
                goto LABEL_24;
              }

              v3 = v19;
              self = selfCopy;
              v8 = v30;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v23 = pp_contacts_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23224A000, v23, OS_LOG_TYPE_DEFAULT, "contact name record cache deleted.", buf, 2u);
      }

      v24 = 1;
    }

    else
    {
      v25 = pp_contacts_log_handle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        path = self->super._path;
        *buf = 138412290;
        v37 = path;
        _os_log_error_impl(&dword_23224A000, v25, OS_LOG_TYPE_ERROR, "PPContactDiskCache: failed to create enumerator for %@", buf, 0xCu);
      }

      v8 = 0;
LABEL_24:
      v24 = 0;
    }
  }

  else
  {
    v8 = pp_contacts_log_handle();
    v24 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "went to delete name record cache but file was missing", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)addNameRecords:(id)records error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  [(PPMutableContactDiskCache *)self _recordSetBucketsForNameRecords:?];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v49 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v49)
  {
    errorCopy = error;
    v48 = *v63;
    v46 = 1;
    selfCopy = self;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v62 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 stringByAppendingPathExtension:@"pb"];
        objc_autoreleasePoolPop(v8);
        if ([v9 length] != 4)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PPContactDiskCache.m" lineNumber:266 description:{@"Unexpected filename: %@", v9}];
        }

        v10 = objc_autoreleasePoolPush();
        v11 = [(NSString *)self->super._path stringByAppendingPathComponent:v9];
        objc_autoreleasePoolPop(v10);
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v13 = [defaultManager fileExistsAtPath:v11];

        if (v13)
        {
          v61 = 0;
          v14 = [(PPContactDiskCache *)self _cacheObjectFromFilePath:v11 error:&v61];
          v15 = v61;
          v16 = v15;
          if (!v14)
          {
            v39 = pp_contacts_log_handle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v67 = v11;
              v68 = 2112;
              v69 = v16;
              _os_log_error_impl(&dword_23224A000, v39, OS_LOG_TYPE_ERROR, "failed to load cache object at %@: %@", buf, 0x16u);
            }

            if (errorCopy)
            {
              v40 = v16;
              *errorCopy = v16;
            }

            v46 = 0;
            goto LABEL_37;
          }

          v54 = v15;
        }

        else
        {
          v17 = objc_opt_new();
          [v17 timeIntervalSinceReferenceDate];
          v14 = [(PPMutableContactDiskCache *)self _createNewCacheObjectWithCreatedAt:v18];

          v54 = 0;
        }

        lastCreatedAt = self->super._lastCreatedAt;
        createdAt = [v14 createdAt];
        v52 = v6;
        v53 = v9;
        v55 = v11;
        if (lastCreatedAt && createdAt >= self->super._lastCreatedAt)
        {
          createdAt = self->super._lastCreatedAt;
        }

        self->super._lastCreatedAt = createdAt;
        v21 = [obj objectForKeyedSubscript:v7];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v51 = v21;
        adds = [v21 adds];
        v23 = [adds countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v58;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v58 != v25)
              {
                objc_enumerationMutation(adds);
              }

              v27 = *(*(&v57 + 1) + 8 * i);
              v28 = pp_contacts_log_handle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                sourceIdentifier = [v27 sourceIdentifier];
                firstName = [v27 firstName];
                lastName = [v27 lastName];
                *buf = 138740739;
                v67 = sourceIdentifier;
                v68 = 2117;
                v69 = firstName;
                v70 = 2117;
                v71 = lastName;
                v72 = 2112;
                v73 = v55;
                _os_log_debug_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEBUG, "addNameRecord: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
              }

              records = [v14 records];
              pbRecord = [v27 pbRecord];
              [records addObject:pbRecord];
            }

            v24 = [adds countByEnumeratingWithState:&v57 objects:v74 count:16];
          }

          while (v24);
        }

        v56 = 0;
        self = selfCopy;
        v34 = [(PPMutableContactDiskCache *)selfCopy _writeCache:v14 path:v55 error:&v56];
        v35 = v56;
        v36 = v35;
        if (!v34)
        {
          if (errorCopy)
          {
            v37 = v35;
            *errorCopy = v36;
          }

          [(PPMutableContactDiskCache *)selfCopy deleteNameRecordCache];
          v46 = 0;
        }

        v6 = v52 + 1;
      }

      while (v52 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v46 = 1;
  }

LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
  return v46 & 1;
}

- (BOOL)updateNameRecordCacheWithHistoryRecords:(id)records error:(id *)error
{
  recordsCopy = records;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5745;
  v16 = __Block_byref_object_dispose__5746;
  v17 = 0;
  v8 = [(PPMutableContactDiskCache *)self _recordSetBucketsForNameRecords:recordsCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke;
  v11[3] = &unk_2789732D8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = &v18;
  v11[7] = a2;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  if (v19[3])
  {
    v9 = 1;
  }

  else
  {
    if (error)
    {
      *error = v13[5];
    }

    [(PPMutableContactDiskCache *)self deleteNameRecordCache];
    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v9 & 1;
}

void __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke(void *a1, void *a2, void *a3)
{
  v119 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v82 = v5;
  v8 = [v5 stringByAppendingPathExtension:@"pb"];
  objc_autoreleasePoolPop(v7);
  if ([v8 length] != 4)
  {
    v80 = [MEMORY[0x277CCA890] currentHandler];
    [v80 handleFailureInMethod:a1[7] object:a1[4] file:@"PPContactDiskCache.m" lineNumber:203 description:{@"Unexpected filename: %@", v8}];
  }

  v9 = objc_autoreleasePoolPush();
  v81 = v8;
  v10 = [*(a1[4] + 16) stringByAppendingPathComponent:v8];
  objc_autoreleasePoolPop(v9);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  v83 = a1;
  v84 = v6;
  v86 = v10;
  if (v12)
  {
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v15 = a1[4];
    v16 = *(a1[5] + 8);
    obj = *(v16 + 40);
    v17 = [v15 _cacheObjectFromFilePath:v10 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    if (!v17)
    {
      goto LABEL_45;
    }

    v18 = objc_alloc(MEMORY[0x277CBEB58]);
    v19 = [v6 updates];
    v20 = [v19 count];
    v21 = [v6 deletes];
    v22 = [v18 initWithCapacity:{objc_msgSend(v21, "count") + v20}];

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v23 = [v6 updates];
    v24 = [v23 countByEnumeratingWithState:&v102 objects:v118 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v103;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v103 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v102 + 1) + 8 * i) sourceIdentifier];
          [v22 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v102 objects:v118 count:16];
      }

      while (v25);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v29 = [v6 deletes];
    v30 = [v29 countByEnumeratingWithState:&v98 objects:v117 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v99;
      v85 = v29;
      do
      {
        v33 = 0;
        do
        {
          if (*v99 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v98 + 1) + 8 * v33);
          v35 = pp_contacts_log_handle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v37 = [v34 sourceIdentifier];
            v38 = [v34 firstName];
            v39 = [v34 lastName];
            *buf = 138740739;
            v110 = v37;
            v111 = 2117;
            v112 = v38;
            v113 = 2117;
            v114 = v39;
            v115 = 2112;
            v116 = v86;
            _os_log_debug_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: delete: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);

            v29 = v85;
          }

          v36 = [v34 sourceIdentifier];
          [v22 addObject:v36];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v98 objects:v117 count:16];
      }

      while (v31);
    }

    v40 = [v17 records];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke_72;
    v96[3] = &unk_2789732B0;
    v97 = v22;
    v41 = v22;
    v42 = [v40 _pas_filteredArrayWithTest:v96];
    v43 = [v42 mutableCopy];
    [v17 setRecords:v43];

    a1 = v83;
    v6 = v84;
  }

  else
  {
    v44 = a1[4];
    v45 = objc_opt_new();
    [v45 timeIntervalSinceReferenceDate];
    v17 = [v44 _createNewCacheObjectWithCreatedAt:v46];
  }

  v47 = *(a1[4] + 8);
  v48 = [v17 createdAt];
  v49 = a1[4];
  if (v47 && v48 >= *(v49 + 8))
  {
    v48 = *(v49 + 8);
  }

  *(v49 + 8) = v48;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v50 = [v6 adds];
  v51 = [v50 countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v93;
    do
    {
      v54 = 0;
      do
      {
        if (*v93 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v92 + 1) + 8 * v54);
        v56 = pp_contacts_log_handle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v59 = [v55 sourceIdentifier];
          v60 = [v55 firstName];
          v61 = [v55 lastName];
          *buf = 138740739;
          v110 = v59;
          v111 = 2117;
          v112 = v60;
          v113 = 2117;
          v114 = v61;
          v115 = 2112;
          v116 = v86;
          _os_log_debug_impl(&dword_23224A000, v56, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: add: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
        }

        v57 = [v17 records];
        v58 = [v55 pbRecord];
        [v57 addObject:v58];

        ++v54;
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v92 objects:v108 count:16];
    }

    while (v52);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v62 = [v84 updates];
  v63 = [v62 countByEnumeratingWithState:&v88 objects:v107 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v89;
    do
    {
      v66 = 0;
      do
      {
        if (*v89 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v88 + 1) + 8 * v66);
        v68 = pp_contacts_log_handle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v71 = [v67 sourceIdentifier];
          v72 = [v67 firstName];
          v73 = [v67 lastName];
          *buf = 138740739;
          v110 = v71;
          v111 = 2117;
          v112 = v72;
          v113 = 2117;
          v114 = v73;
          v115 = 2112;
          v116 = v86;
          _os_log_debug_impl(&dword_23224A000, v68, OS_LOG_TYPE_DEBUG, "updateNameRecordCacheWithHistoryRecords: update: %{sensitive}@ %{sensitive}@ %{sensitive}@ path: %@", buf, 0x2Au);
        }

        v69 = [v17 records];
        v70 = [v67 pbRecord];
        [v69 addObject:v70];

        ++v66;
      }

      while (v64 != v66);
      v64 = [v62 countByEnumeratingWithState:&v88 objects:v107 count:16];
    }

    while (v64);
  }

  v74 = *(v83[5] + 8);
  v75 = *(v74 + 40);
  *(v74 + 40) = 0;

  v76 = v83[4];
  v77 = *(v83[5] + 8);
  v87 = *(v77 + 40);
  v10 = v86;
  v78 = [v76 _writeCache:v17 path:v86 error:&v87];
  objc_storeStrong((v77 + 40), v87);
  *(*(v83[6] + 8) + 24) = v78;

  v6 = v84;
LABEL_45:

  v79 = *MEMORY[0x277D85DE8];
}

uint64_t __75__PPMutableContactDiskCache_updateNameRecordCacheWithHistoryRecords_error___block_invoke_72(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end