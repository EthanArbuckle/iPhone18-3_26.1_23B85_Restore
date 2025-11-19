@interface _PFLSharedJetsamInfo
+ (id)sharedJetsamInfo;
- (BOOL)getInfoFor:(id)a3 into:(jetsam_info *)a4;
- (BOOL)resetIntervalFor:(id)a3;
- (_PFLSharedJetsamInfo)init;
- (void)unregister:(id)a3;
@end

@implementation _PFLSharedJetsamInfo

- (_PFLSharedJetsamInfo)init
{
  v8.receiver = self;
  v8.super_class = _PFLSharedJetsamInfo;
  v2 = [(_PFLSharedJetsamInfo *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fetchersLock = v2->_fetchersLock;
    v2->_fetchersLock = v3;

    v5 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    fetchers = v2->_fetchers;
    v2->_fetchers = v5;

    v2->_pid = getpid();
  }

  return v2;
}

+ (id)sharedJetsamInfo
{
  if (sharedJetsamInfo_onceToken != -1)
  {
    +[_PFLSharedJetsamInfo sharedJetsamInfo];
  }

  v3 = sharedJetsamInfo_sharedJetsamInfo;

  return v3;
}

- (BOOL)getInfoFor:(id)a3 into:(jetsam_info *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  v7 = proc_pid_rusage(self->_pid, 4, v14);
  if (!v7)
  {
    v8 = v26 >> 10;
    a4->currentKB = *(&v15 + 1) >> 10;
    a4->maxLifetimeKB = v8;
    [(NSLock *)self->_fetchersLock lock];
    v9 = [(NSMapTable *)self->_fetchers objectForKey:v6];
    [(NSLock *)self->_fetchersLock unlock];
    if (v9)
    {
      if (*(&v28 + 1) >> 10 <= a4->currentKB)
      {
        currentKB = a4->currentKB;
      }

      else
      {
        currentKB = *(&v28 + 1) >> 10;
      }

      v11 = [v9 longLongValue];
      if (currentKB <= v11)
      {
        maxLifetimeKB = v11;
      }

      else
      {
        maxLifetimeKB = currentKB;
      }
    }

    else
    {
      maxLifetimeKB = a4->maxLifetimeKB;
    }

    a4->maxIntervalKB = maxLifetimeKB;
  }

  return v7 == 0;
}

- (BOOL)resetIntervalFor:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  *buffer = 0u;
  v38 = 0u;
  if (proc_pid_rusage(self->_pid, 4, buffer))
  {
    v5 = 0;
  }

  else
  {
    v25 = v4;
    v6 = *(&v54 + 1);
    if (proc_reset_footprint_interval())
    {
      v5 = 0;
      v4 = v25;
    }

    else
    {
      v7 = v6 >> 10;
      v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMapTable count](self->_fetchers, "count")}];
      [(NSLock *)self->_fetchersLock lock];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = [(NSMapTable *)self->_fetchers keyEnumerator];
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            if (v13 != v25)
            {
              v14 = [(NSMapTable *)self->_fetchers objectForKey:*(*(&v31 + 1) + 8 * i)];
              v15 = [v14 longLongValue];

              if (v15 < v7)
              {
                [v26 addObject:v13];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v10);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v26;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * j);
            fetchers = self->_fetchers;
            v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{v7, v25}];
            [(NSMapTable *)fetchers setObject:v23 forKey:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v18);
      }

      v4 = v25;
      [(NSMapTable *)self->_fetchers setObject:&unk_284076E30 forKey:v25];
      [(NSLock *)self->_fetchersLock unlock];

      v5 = 1;
    }
  }

  return v5;
}

- (void)unregister:(id)a3
{
  fetchersLock = self->_fetchersLock;
  v5 = a3;
  [(NSLock *)fetchersLock lock];
  [(NSMapTable *)self->_fetchers removeObjectForKey:v5];

  v6 = self->_fetchersLock;

  [(NSLock *)v6 unlock];
}

@end