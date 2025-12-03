@interface SAPathList
- (SAPathList)init;
- (SATrie)pathsTrie;
- (id)findAncestorOfPath:(id)path;
- (id)generateDictionary;
- (id)getBundleIDsForPath:(id)path;
- (id)getBundleIDsForSuccessorPath:(id)path;
- (void)updateWithAppPathList:(id)list;
@end

@implementation SAPathList

- (SAPathList)init
{
  v6.receiver = self;
  v6.super_class = SAPathList;
  v2 = [(SAPathList *)&v6 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:100];
    pathToBundleIDs = v2->_pathToBundleIDs;
    v2->_pathToBundleIDs = v3;
  }

  return v2;
}

- (id)getBundleIDsForPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_pathToBundleIDs objectForKey:pathCopy];
  if (!v5)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003D748();
    }
  }

  return v5;
}

- (id)getBundleIDsForSuccessorPath:(id)path
{
  v4 = [(SAPathList *)self findAncestorOfPath:path];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_pathToBundleIDs objectForKey:v4];
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003D748();
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (SATrie)pathsTrie
{
  pathsTrie = self->_pathsTrie;
  if (!pathsTrie)
  {
    v4 = objc_opt_new();
    v5 = self->_pathsTrie;
    self->_pathsTrie = v4;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_pathToBundleIDs;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [SASupport getResolvedPath:v11, v19];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = v11;
          }

          v16 = v15;

          if (v16)
          {
            [(SATrie *)self->_pathsTrie insertPath:v16];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    pathsTrie = self->_pathsTrie;
  }

  v17 = pathsTrie;

  return v17;
}

- (id)findAncestorOfPath:(id)path
{
  pathCopy = path;
  pathsTrie = [(SAPathList *)self pathsTrie];
  v6 = [pathsTrie getAncestorOfPath:pathCopy];

  return v6;
}

- (void)updateWithAppPathList:(id)list
{
  listCopy = list;
  v5 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  appPathList = [listCopy appPathList];
  allKeys = [appPathList allKeys];

  obj = allKeys;
  v41 = [allKeys countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v41)
  {
    v40 = *v58;
    v38 = listCopy;
    v48 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v58 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v8;
        v9 = *(*(&v57 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        appPathList2 = [listCopy appPathList];
        v11 = [appPathList2 objectForKey:v9];

        identifier = [v11 identifier];
        if (([v11 isGroup] & 1) == 0)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v42 = v11;
          uniquePaths = [v11 uniquePaths];
          v13 = [uniquePaths countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v54;
            do
            {
              v16 = 0;
              do
              {
                if (*v54 != v15)
                {
                  objc_enumerationMutation(uniquePaths);
                }

                v17 = *(*(&v53 + 1) + 8 * v16);
                v18 = objc_autoreleasePoolPush();
                v19 = [v5 objectForKeyedSubscript:v17];

                if (v19)
                {
                  v20 = SALog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v63 = v17;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Path %@ is already claimed by another bundles-IDs", buf, 0xCu);
                  }
                }

                else
                {
                  [(NSMutableDictionary *)self->_pathToBundleIDs setObject:identifier forKey:v17];
                  [v5 setValue:&off_1000689A0 forKey:v17];
                }

                objc_autoreleasePoolPop(v18);
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [uniquePaths countByEnumeratingWithState:&v53 objects:v64 count:16];
            }

            while (v14);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          sharedPaths = [v42 sharedPaths];
          v22 = [sharedPaths countByEnumeratingWithState:&v49 objects:v61 count:16];
          v23 = &SBSCopyDisplayIdentifiers_ptr;
          if (v22)
          {
            v24 = v22;
            v25 = *v50;
            v45 = *v50;
            do
            {
              v26 = 0;
              v46 = v24;
              do
              {
                if (*v50 != v25)
                {
                  objc_enumerationMutation(sharedPaths);
                }

                v27 = *(*(&v49 + 1) + 8 * v26);
                v28 = objc_autoreleasePoolPush();
                v29 = [v48 objectForKeyedSubscript:v27];

                if (v29)
                {
                  v30 = SALog();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v63 = v27;
                    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Path (%@) is already registered as unique", buf, 0xCu);
                  }
                }

                else
                {
                  v30 = [(NSMutableDictionary *)self->_pathToBundleIDs objectForKey:v27];
                  if (v30)
                  {
                    v31 = [v23[171] breakCommaSeparatedStringToComponents:v30];
                    if (([v31 containsObject:identifier] & 1) == 0)
                    {
                      selfCopy = self;
                      v33 = [v31 mutableCopy];
                      [v33 addObject:identifier];
                      v34 = sharedPaths;
                      pathToBundleIDs = selfCopy->_pathToBundleIDs;
                      v36 = [v23[171] createCommaSeparatedString:v33];
                      v37 = pathToBundleIDs;
                      sharedPaths = v34;
                      v24 = v46;
                      [(NSMutableDictionary *)v37 setObject:v36 forKey:v27];

                      v23 = &SBSCopyDisplayIdentifiers_ptr;
                      self = selfCopy;
                      v25 = v45;
                    }
                  }

                  else
                  {
                    [(NSMutableDictionary *)self->_pathToBundleIDs setObject:identifier forKey:v27];
                  }
                }

                objc_autoreleasePoolPop(v28);
                v26 = v26 + 1;
              }

              while (v24 != v26);
              v24 = [sharedPaths countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v24);
          }

          listCopy = v38;
          v5 = v48;
          v11 = v42;
        }

        objc_autoreleasePoolPop(context);
        v8 = v44 + 1;
      }

      while ((v44 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v41);
  }
}

- (id)generateDictionary
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_pathToBundleIDs;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v6;
      v11 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v15 + 1) + 8 * v9);
        v7 = [(NSMutableDictionary *)self->_pathToBundleIDs objectForKeyedSubscript:v12];

        v6 = [NSDictionary dictionaryWithObjectsAndKeys:v7, @"bundles", v12, @"path", 0];

        [v3 addObject:v6];
        v9 = v9 + 1;
        v10 = v6;
        v11 = v7;
      }

      while (v5 != v9);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

@end