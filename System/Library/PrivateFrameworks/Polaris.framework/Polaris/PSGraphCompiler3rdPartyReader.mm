@interface PSGraphCompiler3rdPartyReader
- (PSGraphCompiler3rdPartyReader)initWithTransitionManager:(id)manager withContext:(id)context;
- (PSTransitionManager3rdPartyReader)transitionManager;
- (void)createReadersForTransitionBlock:(id)block;
- (void)dealloc;
- (void)destroyReadersForTransitionBlock:(id)block;
- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity;
@end

@implementation PSGraphCompiler3rdPartyReader

- (PSGraphCompiler3rdPartyReader)initWithTransitionManager:(id)manager withContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = PSGraphCompiler3rdPartyReader;
  v8 = [(PSGraphCompiler3rdPartyReader *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedReaderBlocks = v8->_retainedReaderBlocks;
    v8->_retainedReaderBlocks = v9;

    objc_storeWeak(&v8->_transitionManager, managerCopy);
    objc_storeStrong(&v8->_context, context);
    ps_prm_create_manager_for_3rdParty_session();
  }

  return 0;
}

- (void)dealloc
{
  ps_prm_delete_manager(self->_prm_mgr);
  v3.receiver = self;
  v3.super_class = PSGraphCompiler3rdPartyReader;
  [(PSGraphCompiler3rdPartyReader *)&v3 dealloc];
}

- (void)createReadersForTransitionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  blockCopy = block;
  obj = [blockCopy addedGraphs];
  v41 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v41)
  {
    v40 = *v51;
    v4 = 0x281E7A000;
    do
    {
      v5 = 0;
      do
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v50 + 1) + 8 * v5);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        readers = [v6 readers];
        v7 = [readers countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v47;
          do
          {
            v10 = 0;
            v43 = v8;
            do
            {
              if (*v47 != v9)
              {
                objc_enumerationMutation(readers);
              }

              v11 = *(*(&v46 + 1) + 8 * v10);
              v12 = __PLSLogSharedInstance();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                name = [v11 name];
                uTF8String = [name UTF8String];
                input = [v11 input];
                [input resourceKey];
                selfCopy = self;
                v17 = v6;
                v19 = v18 = v9;
                uTF8String2 = [v19 UTF8String];
                *buf = 136315394;
                v55 = uTF8String;
                v56 = 2080;
                *v57 = uTF8String2;
                _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Creating PSReader (%s) for resource key %s.", buf, 0x16u);

                v9 = v18;
                v6 = v17;
                self = selfCopy;
                v8 = v43;

                v4 = 0x281E7A000uLL;
              }

              context = ps_prm_opts_create();
              input2 = [v11 input];
              resolvedResourceKey = [input2 resolvedResourceKey];

              input3 = [v11 input];
              -[PSGraphCompiler3rdPartyReader populateReaderOpts:forKey:forGraph:withCapacity:](self, "populateReaderOpts:forKey:forGraph:withCapacity:", context, resolvedResourceKey, v6, [input3 capacity]);

              v25 = [objc_alloc((v4 + 2896)) init3rdPartyReader:v11 graph:v6 readerOptions:context withPRMManager:self->_prm_mgr];
              if (*(*[v11 getContext] + 8) != 1)
              {
                [PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:buf];
LABEL_21:
                v45 = 0;
                name2 = [v11 name];
                uTF8String3 = [name2 UTF8String];
                v29 = context + 6;
                v30 = atomic_load(v29);
                asprintf(&v45, "Unable to set reader (%s) state to _READY. Current state %d", uTF8String3, v30);

                v31 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                {
                  name3 = [v11 name];
                  uTF8String4 = [name3 UTF8String];
                  v34 = atomic_load(v29);
                  *buf = 136315906;
                  v55 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
                  v56 = 1024;
                  *v57 = 87;
                  *&v57[4] = 2080;
                  *&v57[6] = uTF8String4;
                  v58 = 1024;
                  v59 = v34;
                  _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _READY. Current state %d", buf, 0x22u);
                }

                v35 = OSLogFlushBuffers();
                if (v35)
                {
                  v36 = v35;
                  v37 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v55 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
                    v56 = 1024;
                    *v57 = v36;
                    _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                  }
                }

                else
                {
                  usleep(0x1E8480u);
                }

                abort_with_reason();
              }

              [(NSMapTable *)self->_retainedReaderBlocks setObject:v25 forKey:v11];
              ps_prm_opts_destroy(context);
              context = [v11 context];
              if (ps_reader_state_update())
              {
                goto LABEL_21;
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [readers countByEnumeratingWithState:&v46 objects:v60 count:16];
          }

          while (v8);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v41);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)destroyReadersForTransitionBlock:(id)block
{
  v79 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSReaders.", buf, 2u);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [blockCopy removedGraphs];
  v44 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v44)
  {
    v43 = *v66;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v66 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v5;
        v6 = *(*(&v65 + 1) + 8 * v5);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        readers = [v6 readers];
        v51 = [readers countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (v51)
        {
          v50 = *v62;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v62 != v50)
              {
                objc_enumerationMutation(readers);
              }

              v8 = *(*(&v61 + 1) + 8 * i);
              v9 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v8];
              if (v9)
              {
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                addedGraphs = [blockCopy addedGraphs];
                v11 = [addedGraphs countByEnumeratingWithState:&v57 objects:v76 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v58;
                  v49 = *v58;
                  do
                  {
                    for (j = 0; j != v12; ++j)
                    {
                      if (*v58 != v13)
                      {
                        objc_enumerationMutation(addedGraphs);
                      }

                      v15 = *(*(&v57 + 1) + 8 * j);
                      v53 = 0u;
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      readers2 = [v15 readers];
                      v17 = [readers2 countByEnumeratingWithState:&v53 objects:v75 count:16];
                      if (v17)
                      {
                        v18 = v17;
                        v19 = *v54;
                        while (2)
                        {
                          for (k = 0; k != v18; ++k)
                          {
                            if (*v54 != v19)
                            {
                              objc_enumerationMutation(readers2);
                            }

                            if (v8 == *(*(&v53 + 1) + 8 * k))
                            {

                              v28 = __PLSLogSharedInstance();
                              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                              {
                                name = [v8 name];
                                uTF8String = [name UTF8String];
                                *buf = 136380675;
                                v70 = uTF8String;
                                _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEFAULT, "Added PSReader already found for %{private}s. Continuing without deleting the current reader.", buf, 0xCu);
                              }

                              self = selfCopy;
                              goto LABEL_36;
                            }
                          }

                          v18 = [readers2 countByEnumeratingWithState:&v53 objects:v75 count:16];
                          if (v18)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v13 = v49;
                    }

                    v12 = [addedGraphs countByEnumeratingWithState:&v57 objects:v76 count:16];
                    self = selfCopy;
                  }

                  while (v12);
                }

                context = [v8 context];
                if (ps_reader_state_update())
                {
                  v52 = 0;
                  name2 = [v8 name];
                  uTF8String2 = [name2 UTF8String];
                  v34 = atomic_load((context + 24));
                  asprintf(&v52, "Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", uTF8String2, v34);

                  v35 = __PLSLogSharedInstance();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                  {
                    name3 = [v8 name];
                    uTF8String3 = [name3 UTF8String];
                    v38 = atomic_load((context + 24));
                    *buf = 136315906;
                    v70 = "[PSGraphCompiler3rdPartyReader destroyReadersForTransitionBlock:]";
                    v71 = 1024;
                    *v72 = 128;
                    *&v72[4] = 2080;
                    *&v72[6] = uTF8String3;
                    v73 = 1024;
                    v74 = v38;
                    _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", buf, 0x22u);
                  }

                  v39 = OSLogFlushBuffers();
                  if (v39)
                  {
                    v40 = v39;
                    v41 = __PLSLogSharedInstance();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v70 = "[PSGraphCompiler3rdPartyReader destroyReadersForTransitionBlock:]";
                      v71 = 1024;
                      *v72 = v40;
                      _os_log_impl(&dword_25EA3A000, v41, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

                  abort_with_reason();
                }

                v22 = __PLSLogSharedInstance();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v8 name];
                  uTF8String4 = [name4 UTF8String];
                  input = [v8 input];
                  resourceKey = [input resourceKey];
                  uTF8String5 = [resourceKey UTF8String];
                  *buf = 136380931;
                  v70 = uTF8String4;
                  v71 = 2081;
                  *v72 = uTF8String5;
                  _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Deleting PSReader (%{private}s) for resource key %{private}s.", buf, 0x16u);
                }

                [(NSMapTable *)self->_retainedReaderBlocks removeObjectForKey:v8];
              }

LABEL_36:
            }

            v51 = [readers countByEnumeratingWithState:&v61 objects:v77 count:16];
          }

          while (v51);
        }

        v5 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v44);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity
{
  keyCopy = key;
  graphCopy = graph;
  v11 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  if (!v11)
  {
    [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    goto LABEL_8;
  }

  v12 = v11;
  if (![v11 resourceClass])
  {
LABEL_8:
    [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    goto LABEL_9;
  }

  if (![v12 options])
  {
LABEL_9:
    v14 = [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    [(PSGraphCompiler3rdPartyReader *)v14 transitionManager];
    return;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  v13 = keyCopy;
  ps_prm_opts_set_resource_key(opts, [keyCopy UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [v12 resourceClass]);
  ps_prm_opts_set_storage_mode(opts, [v12 options]);
  ps_prm_opts_set_resource_metadata_type(opts, 2);
}

- (PSTransitionManager3rdPartyReader)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)createReadersForTransitionBlock:(char *)a1 .cold.1(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Third Party Readers cannot have more than one input");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    v8 = 136315394;
    v9 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
    v10 = 1024;
    v11 = 75;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Third Party Readers cannot have more than one input", &v8, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v8 = 136315394;
      v9 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v6 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v6 forKey:? forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Resource %s had no storage mode defined", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Resource %s had no storage mode defined", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v19 forKey:? forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Resource %s had no class defined", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Resource %s had no class defined", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v19 forKey:? forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Could not find stream definition for reader key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Could not find stream definition for reader key %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager3rdPartyReader *)v19 dealloc];
}

@end