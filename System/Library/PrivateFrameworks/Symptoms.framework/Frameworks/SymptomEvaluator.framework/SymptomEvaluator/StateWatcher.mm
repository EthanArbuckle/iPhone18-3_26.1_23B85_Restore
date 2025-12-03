@interface StateWatcher
- (BOOL)configureWatchList:(id)list changeList:(id)changeList sourceList:(id)sourceList;
- (id)currentStateSummary:(id)summary;
- (void)deriveKeyPathListFromWatchList:(id)list sourceList:(id)sourceList;
- (void)disable;
- (void)enable;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation StateWatcher

- (id)currentStateSummary:(id)summary
{
  v68 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  if (summaryCopy)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = self->_srcDestMapping;
    selfCopy = self;
    v40 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v40)
    {
      v38 = *v59;
      do
      {
        v5 = 0;
        do
        {
          if (*v59 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v5;
          v6 = *(*(&v58 + 1) + 8 * v5);
          v7 = [(NSDictionary *)self->_srcDestMapping objectForKeyedSubscript:v6];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v55;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v55 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v54 + 1) + 8 * i);
                v13 = outrankLogHandle;
                if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v65 = v12;
                  _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "StateWatcher: currentStateSummary handle %@", buf, 0xCu);
                }

                v14 = [v7 objectForKeyedSubscript:v12];
                v15 = [v14 valueForKey:v6];
                [summaryCopy setValue:v15 forKey:v12];
              }

              v9 = [v7 countByEnumeratingWithState:&v54 objects:v66 count:16];
            }

            while (v9);
          }

          v5 = v42 + 1;
          self = selfCopy;
        }

        while (v42 + 1 != v40);
        v40 = [(NSDictionary *)obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v40);
    }

    if (self->_changeWatchList)
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v35 = self->_changeWatchList;
      v41 = [(NSDictionary *)v35 countByEnumeratingWithState:&v50 objects:v63 count:16];
      if (!v41)
      {
        goto LABEL_43;
      }

      obja = *v51;
      while (1)
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v51 != obja)
          {
            objc_enumerationMutation(v35);
          }

          v17 = *(*(&v50 + 1) + 8 * j);
          v18 = [summaryCopy valueForKey:v17];
          previousChangeWatchValues = self->_previousChangeWatchValues;
          if (!previousChangeWatchValues || (-[NSMutableDictionary objectForKeyedSubscript:](previousChangeWatchValues, "objectForKeyedSubscript:", v17), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v18 isEqual:v20], v20, (v21 & 1) == 0))
          {
            v45 = j;
            v43 = v17;
            v22 = [(NSDictionary *)self->_changeWatchList objectForKeyedSubscript:v17];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v46 objects:v62 count:16];
            if (!v23)
            {
              goto LABEL_40;
            }

            v24 = v23;
            v25 = *v47;
            while (1)
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v47 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v46 + 1) + 8 * k);
                v28 = [v22 objectForKeyedSubscript:v27];
                if ([@"AllChanges" isEqual:v28])
                {
                }

                else
                {
                  v29 = [v22 objectForKeyedSubscript:v27];
                  v30 = [v18 isEqual:v29];

                  self = selfCopy;
                  if (!v30)
                  {
                    continue;
                  }
                }

                if (!self->_previousChangeWatchValues)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v18 intValue])
                  {
                    continue;
                  }
                }

                [summaryCopy setValue:MEMORY[0x277CBEC38] forKey:v27];
              }

              v24 = [v22 countByEnumeratingWithState:&v46 objects:v62 count:16];
              if (!v24)
              {
LABEL_40:

                j = v45;
                v17 = v43;
                break;
              }
            }
          }

          [(NSMutableDictionary *)v39 setObject:v18 forKeyedSubscript:v17];
        }

        v41 = [(NSDictionary *)v35 countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (!v41)
        {
LABEL_43:

          v31 = self->_previousChangeWatchValues;
          self->_previousChangeWatchValues = v39;

          break;
        }
      }
    }
  }

  v32 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v65 = summaryCopy;
    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "StateWatcher: currentStateSummary %@", buf, 0xCu);
  }

  v33 = *MEMORY[0x277D85DE8];

  return summaryCopy;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v48 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v32 = changeCopy;
  v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  selfCopy = self;
  v14 = pathCopy;
  [(NSDictionary *)self->_srcDestMapping objectForKeyedSubscript:pathCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v36 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v33 + 1) + 8 * v19);
      v21 = [v15 objectForKeyedSubscript:v20];
      if ([objectCopy isEqual:v21])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v47 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v23 = v20;
    v24 = outrankLogHandle;
    v22 = v14;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v38 = v14;
      v39 = 2112;
      v40 = v23;
      v41 = 2112;
      v42 = objectCopy;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "StateWatcher: observeValueForKeyPath: %@  MATCH on check client name %@ object %@", buf, 0x20u);
    }

    if (v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:

    v22 = v14;
  }

  v23 = @"unknown";
LABEL_14:
  if (v13 && v12 && ([(__CFString *)v13 isEqual:v12]& 1) != 0)
  {
    v25 = outrankLogHandle;
    v26 = v32;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v38 = v23;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = objectCopy;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "StateWatcher: ignore unchanged myname %@ %@ -> %@ derived from %@ %@", buf, 0x34u);
    }
  }

  else
  {
    v27 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v38 = v23;
      v39 = 2112;
      v40 = v13;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = objectCopy;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "StateWatcher: observe myname %@ %@ -> %@ derived from %@ %@", buf, 0x34u);
    }

    delegate = [(StateWatcher *)selfCopy delegate];
    v29 = delegate;
    v26 = v32;
    if (delegate)
    {
      [delegate noteStateChange:v23 new:v12 old:v13];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)enable
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v2 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "StateWatcher: ignore double enable", buf, 2u);
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_srcDestMapping;
    v18 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v18)
    {
      v17 = *v25;
      do
      {
        v4 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = v4;
          v5 = *(*(&v24 + 1) + 8 * v4);
          v6 = [(NSDictionary *)self->_srcDestMapping objectForKeyedSubscript:v5];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v21;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v21 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = [v6 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
                v12 = outrankLogHandle;
                if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v29 = v5;
                  v30 = 2112;
                  v31 = v11;
                  _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "StateWatcher: add observer for %@ to %@", buf, 0x16u);
                }

                [v11 addObserver:self forKeyPath:v5 options:7 context:0];
              }

              v8 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
            }

            while (v8);
          }

          v4 = v19 + 1;
        }

        while (v19 + 1 != v18);
        v18 = [(NSDictionary *)obj countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v18);
    }

    self->_enabled = 1;
    delegate = [(StateWatcher *)self delegate];
    v14 = delegate;
    if (delegate)
    {
      [delegate noteStateChange:@"batchedStatesOnEnable" new:0 old:0];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)disable
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_srcDestMapping;
    v16 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v16)
    {
      v15 = *v23;
      do
      {
        v3 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = v3;
          v4 = *(*(&v22 + 1) + 8 * v3);
          v5 = [(NSDictionary *)self->_srcDestMapping objectForKeyedSubscript:v4];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v6 = [v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v19;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v19 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = [v5 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
                v11 = outrankLogHandle;
                if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v27 = v10;
                  v28 = 2112;
                  v29 = v4;
                  _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "StateWatcher: remove observer from %@ for %@", buf, 0x16u);
                }

                [v10 removeObserver:self forKeyPath:v4];
              }

              v7 = [v5 countByEnumeratingWithState:&v18 objects:v30 count:16];
            }

            while (v7);
          }

          v3 = v17 + 1;
        }

        while (v17 + 1 != v16);
        v16 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v16);
    }

    self->_enabled = 0;
  }

  else
  {
    v12 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "StateWatcher: ignore double disable", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deriveKeyPathListFromWatchList:(id)list sourceList:(id)sourceList
{
  v39 = *MEMORY[0x277D85DE8];
  listCopy = list;
  sourceListCopy = sourceList;
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = listCopy;
  v23 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v23)
  {
    v22 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [obj objectForKeyedSubscript:v8];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              v15 = [v9 objectForKeyedSubscript:v14];
              v16 = [sourceListCopy objectForKeyedSubscript:v14];
              if (v16)
              {
                v17 = [(NSDictionary *)v26 objectForKeyedSubscript:v15];
                if (!v17)
                {
                  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [(NSDictionary *)v26 setObject:v17 forKeyedSubscript:v15];
                }

                [v17 setObject:v16 forKeyedSubscript:v8];
              }

              else
              {
                v18 = outrankLogHandle;
                if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v36 = v14;
                  _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Statewatcher: deriveKeyPathListFromWatchList no entry for %@", buf, 0xCu);
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v37 count:16];
          }

          while (v11);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v23);
  }

  srcDestMapping = self->_srcDestMapping;
  self->_srcDestMapping = v26;

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)configureWatchList:(id)list changeList:(id)changeList sourceList:(id)sourceList
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  changeListCopy = changeList;
  sourceListCopy = sourceList;
  if (!self->_srcDestMapping && [(StateWatcher *)self isValidWatchList:listCopy]&& [(StateWatcher *)self isValidChangeList:changeListCopy]&& [(StateWatcher *)self isValidSourceList:sourceListCopy])
  {
    [(StateWatcher *)self deriveKeyPathListFromWatchList:listCopy sourceList:sourceListCopy];
    objc_storeStrong(&self->_changeWatchList, changeList);
    v11 = outrankLogHandle;
    v12 = 1;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      srcDestMapping = self->_srcDestMapping;
      v16 = 138412290;
      v17 = srcDestMapping;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "StateWatcher: configured with keyPathList %@", &v16, 0xCu);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

@end