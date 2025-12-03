@interface PPContactDiskCache
- (BOOL)isEmpty;
- (BOOL)iterNameRecordCacheWithError:(id *)error block:(id)block;
- (PPContactDiskCache)initWithPath:(id)path;
- (id)_cacheObjectFromFilePath:(id)path error:(id *)error;
@end

@implementation PPContactDiskCache

- (id)_cacheObjectFromFilePath:(id)path error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v17 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v17];
  v7 = v17;
  if (v6)
  {
    v8 = [[PPPBContactNameRecordCache alloc] initWithData:v6];
    if (v8)
    {
      v9 = v8;
      v10 = v9;
    }

    else
    {
      v14 = pp_contacts_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = pathCopy;
        _os_log_impl(&dword_23224A000, v14, OS_LOG_TYPE_DEFAULT, "PPPB: malformed contact name record cache file at %@", buf, 0xCu);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:16 userInfo:0];
        v9 = 0;
        *error = v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }
  }

  else
  {
    v11 = pp_contacts_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = pathCopy;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPPB: failed to read %@: error: %@", buf, 0x16u);
    }

    if (!error)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D3A580];
    if (v7)
    {
      v18 = *MEMORY[0x277CCA7E8];
      v19 = v7;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v9 = 0;
    }

    [v12 errorWithDomain:v13 code:15 userInfo:v9];
    *error = v10 = 0;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)iterNameRecordCacheWithError:(id *)error block:(id)block
{
  v74 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v67 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v67];
  v7 = v67;

  v8 = pp_contacts_log_handle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v6 && (v7 & 1) != 0)
  {
    if (v9)
    {
      path = self->_path;
      buf = 138412290;
      v71 = path;
      _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "PPPB: loading contact record cache from: %@", &buf, 0xCu);
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager2 enumeratorAtPath:self->_path];

    if (v12)
    {
      v66 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v8 = v12;
      v13 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v64;
        v49 = *v64;
        v50 = v8;
        selfCopy = self;
        while (2)
        {
          v16 = 0;
          v52 = v14;
          do
          {
            if (*v64 != v15)
            {
              objc_enumerationMutation(v8);
            }

            v17 = *(*(&v63 + 1) + 8 * v16);
            pathExtension = [v17 pathExtension];
            v19 = [pathExtension isEqualToString:@"pb"];

            if (v19)
            {
              v20 = objc_autoreleasePoolPush();
              v21 = [(NSString *)self->_path stringByAppendingPathComponent:v17];
              objc_autoreleasePoolPop(v20);
              v62 = 0;
              v22 = [(PPContactDiskCache *)self _cacheObjectFromFilePath:v21 error:&v62];
              v56 = v62;
              if (v22)
              {
                v55 = v21;
                if ([v22 hasCreatedAt])
                {
                  lastCreatedAt = self->_lastCreatedAt;
                  createdAt = [v22 createdAt];
                  if (lastCreatedAt && createdAt >= self->_lastCreatedAt)
                  {
                    createdAt = self->_lastCreatedAt;
                  }
                }

                else
                {
                  createdAt = 1;
                }

                self->_lastCreatedAt = createdAt;
                v26 = objc_alloc(MEMORY[0x277CBEB38]);
                [v22 records];
                v28 = v27 = v22;
                v29 = [v26 initWithCapacity:{objc_msgSend(v28, "count")}];

                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                v54 = v27;
                records = [v27 records];
                v31 = [records countByEnumeratingWithState:&v58 objects:v68 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v59;
                  do
                  {
                    for (i = 0; i != v32; ++i)
                    {
                      if (*v59 != v33)
                      {
                        objc_enumerationMutation(records);
                      }

                      v35 = *(*(&v58 + 1) + 8 * i);
                      v36 = objc_autoreleasePoolPush();
                      sourceIdentifier = [v35 sourceIdentifier];

                      if (sourceIdentifier)
                      {
                        v38 = [[PPInternalContactNameRecord alloc] initWithPBContactNameRecord:v35];
                        sourceIdentifier2 = [v35 sourceIdentifier];
                        [v29 setObject:v38 forKeyedSubscript:sourceIdentifier2];
                      }

                      objc_autoreleasePoolPop(v36);
                    }

                    v32 = [records countByEnumeratingWithState:&v58 objects:v68 count:16];
                  }

                  while (v32);
                }

                v57 = 0;
                v40 = objc_autoreleasePoolPush();
                blockCopy[2](blockCopy, v29, &v57);
                objc_autoreleasePoolPop(v40);
                v25 = 0;
                v15 = v49;
                v8 = v50;
                v14 = v52;
                v22 = v54;
                v21 = v55;
                if (v57 == 1)
                {
                  v41 = pp_contacts_log_handle();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_INFO, "PPPB: client stopped iteration early", &buf, 2u);
                  }

                  v25 = 2;
                }

                self = selfCopy;
              }

              else
              {
                if (error)
                {
                  *error = v56;
                }

                v25 = 1;
              }

              if (v25)
              {
                errorCopy = (v25 & 1) == 0;
                goto LABEL_48;
              }
            }

            ++v16;
          }

          while (v16 != v14);
          v14 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      errorCopy = 1;
LABEL_48:
    }

    else
    {
      v44 = pp_contacts_log_handle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v47 = self->_path;
        buf = 138412290;
        v71 = v47;
        _os_log_error_impl(&dword_23224A000, v44, OS_LOG_TYPE_ERROR, "PPPB: failed to create enumerator for %@", &buf, 0xCu);
      }

      errorCopy = error;
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D3A580] code:14 userInfo:0];
        v8 = 0;
        *error = errorCopy = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else if (v9)
  {
    v43 = self->_path;
    buf = 138412546;
    v71 = v43;
    v72 = 1024;
    v73 = v67;
    errorCopy = 1;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "PPPB: No name record cache at: %@ (isDirectory=%d)", &buf, 0x12u);
  }

  else
  {
    errorCopy = 1;
  }

  v45 = *MEMORY[0x277D85DE8];
  return errorCopy;
}

- (BOOL)isEmpty
{
  v21 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:self->_path error:0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        pathExtension = [*(*(&v16 + 1) + 8 * i) pathExtension];
        v12 = [pathExtension isEqualToString:@"pb"];

        v8 += v12;
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
    v13 = v8 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (PPContactDiskCache)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PPContactDiskCache;
  v6 = [(PPContactDiskCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, path);
  }

  return v7;
}

@end