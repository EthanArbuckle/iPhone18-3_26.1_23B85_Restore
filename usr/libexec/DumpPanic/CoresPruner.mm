@interface CoresPruner
- (CoresPruner)initWithCorefileURL:(id)l CoresToKeep:(unsigned int)keep userspaceCorefileName:(id)name;
- (void)cleanup;
- (void)prune;
- (void)scanFilesInURL:(id)l pullinFiles:(id)files screenFiles:(id)screenFiles andTimeStamps:(id)stamps;
@end

@implementation CoresPruner

- (void)cleanup
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  filesToPullIn = [(CoresPruner *)self filesToPullIn];
  allValues = [filesToPullIn allValues];

  obj = allValues;
  v20 = [allValues countByEnumeratingWithState:&v30 objects:v39 count:16];
  v4 = 0;
  if (v20)
  {
    v22 = 0;
    v19 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v5;
        v6 = *(*(&v30 + 1) + 8 * v5);

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v22 = v6;
        v7 = [v22 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v7)
        {
          v8 = v7;
          v24 = *v27;
          do
          {
            v9 = 0;
            do
            {
              v10 = v4;
              if (*v27 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v11 = *(*(&v26 + 1) + 8 * v9);
              v12 = +[NSFileManager defaultManager];
              corefileURL = [(CoresPruner *)self corefileURL];
              lastPathComponent = [v11 lastPathComponent];
              v15 = [corefileURL URLByAppendingPathComponent:lastPathComponent];
              v25 = v4;
              v16 = [v12 moveItemAtURL:v11 toURL:v15 error:&v25];
              v4 = v25;

              v17 = qword_100042B28;
              if (v16)
              {
                if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v35 = v11;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Moved staged '%{public}@ to panics folder", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v35 = v11;
                v36 = 2114;
                v37 = v4;
                _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot move staged '%{public}@' to panics folder : %{public}@", buf, 0x16u);
              }

              v9 = v9 + 1;
            }

            while (v8 != v9);
            v8 = [v22 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v8);
        }

        v5 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v20);
  }
}

- (void)scanFilesInURL:(id)l pullinFiles:(id)files screenFiles:(id)screenFiles andTimeStamps:(id)stamps
{
  lCopy = l;
  filesCopy = files;
  screenFilesCopy = screenFiles;
  v43 = filesCopy;
  stampsCopy = stamps;
  if (filesCopy && screenFilesCopy && stampsCopy)
  {
    v11 = +[NSFileManager defaultManager];
    v56[0] = NSURLNameKey;
    v56[1] = NSURLIsDirectoryKey;
    v12 = [NSArray arrayWithObjects:v56 count:2];
    v13 = [v11 enumeratorAtURL:lCopy includingPropertiesForKeys:v12 options:4 errorHandler:0];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v13;
    v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (!v50)
    {
      goto LABEL_36;
    }

    v49 = *v52;
    selfCopy = self;
    while (1)
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        userspaceCorefileName = [(CoresPruner *)self userspaceCorefileName];
        if (!userspaceCorefileName)
        {
          goto LABEL_11;
        }

        v17 = userspaceCorefileName;
        absoluteString = [v15 absoluteString];
        userspaceCorefileName2 = [(CoresPruner *)self userspaceCorefileName];
        v20 = [absoluteString containsString:userspaceCorefileName2];

        if (v20)
        {
LABEL_11:
          absoluteString2 = [lCopy absoluteString];
          v22 = [absoluteString2 containsString:@"staged"];

          if ((v22 & 1) != 0 || ([v15 absoluteString], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "containsString:", @"staged"), v23, (v24 & 1) == 0))
          {
            absoluteString3 = [v15 absoluteString];
            v26 = 0;
            v27 = screenFilesCopy;
          }

          else
          {
            absoluteString3 = [v15 lastPathComponent];
            v26 = 1;
            v27 = v43;
          }

          v28 = absoluteString3;
          v29 = objc_opt_new();
          v30 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
          [v29 setLocale:v30];
          [v29 setDateFormat:@"yyyy-MM-dd-HHmmss"];
          lastPathComponent = [v28 lastPathComponent];
          if ([lastPathComponent containsString:@".core"])
          {
            v32 = [v28 rangeOfString:@".core"];
            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              _os_assert_log();
              _os_crash();
              __break(1u);
            }

            v33 = v32;
            v34 = 0;
            do
            {
              v35 = v34;
              v36 = [lastPathComponent characterAtIndex:v34];
              if (v33 == v35)
              {
                break;
              }

              v34 = v35 + 1;
            }

            while (v36 != 46);
            if (v35 == v33)
            {
              v37 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
              {
LABEL_24:
                *buf = 138412290;
                v58 = lastPathComponent;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "unable to parse date from filename %@, skipping", buf, 0xCu);
              }

LABEL_25:
              v38 = 0;
            }

            else
            {
              v39 = [lastPathComponent substringToIndex:v35];
              v38 = [v29 dateFromString:v39];
            }

            self = selfCopy;
            if (v38)
            {
              v40 = v27;
              v41 = [v40 objectForKeyedSubscript:v38];
              if (!v41)
              {
                v41 = objc_opt_new();
              }

              [v41 addObject:v15];
              [v40 setObject:v41 forKeyedSubscript:v38];

              if ((v26 & 1) == 0)
              {
                [stampsCopy addObject:v38];
              }
            }

            continue;
          }

          v37 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }

      v50 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (!v50)
      {
LABEL_36:

        goto LABEL_39;
      }
    }
  }

  v42 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = lCopy;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "NULL input for scanFilesInURL, skipping scanning in URL %@", buf, 0xCu);
  }

LABEL_39:
}

- (void)prune
{
  v3 = objc_opt_new();
  v4 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];
  [v3 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v5 = objc_opt_new();
  corefileURL = [(CoresPruner *)self corefileURL];
  v7 = [corefileURL URLByAppendingPathComponent:@"staged"];

  v8 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    corefileURL2 = [(CoresPruner *)self corefileURL];
    *buf = 138412290;
    v92 = corefileURL2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Prune core files in %@", buf, 0xCu);
  }

  userspaceCorefileName = [(CoresPruner *)self userspaceCorefileName];

  v12 = qword_100042B28;
  v13 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
  if (userspaceCorefileName)
  {
    if (v13)
    {
      v14 = v12;
      userspaceCorefileName2 = [(CoresPruner *)self userspaceCorefileName];
      *buf = 138412290;
      v92 = userspaceCorefileName2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Prune %@ userspace core files", buf, 0xCu);
    }
  }

  else if (v13)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Prune kernel core files", buf, 2u);
  }

  if ([(CoresPruner *)self coresToKeep])
  {
    corefileURL3 = [(CoresPruner *)self corefileURL];
    filesToPullIn = [(CoresPruner *)self filesToPullIn];
    filesToScreen = [(CoresPruner *)self filesToScreen];
    [(CoresPruner *)self scanFilesInURL:corefileURL3 pullinFiles:filesToPullIn screenFiles:filesToScreen andTimeStamps:v5];

    filesToPullIn2 = [(CoresPruner *)self filesToPullIn];
    v20 = [filesToPullIn2 count];

    if (v20 >= 2)
    {
      v21 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v73 = v21;
        filesToPullIn3 = [(CoresPruner *)self filesToPullIn];
        v75 = [filesToPullIn3 count];
        *buf = 134217984;
        v92 = v75;
        _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "Found %lu sets of cores under staged folder", buf, 0xCu);
      }

      v22 = [CoresPruner alloc];
      userspaceCorefileName3 = [(CoresPruner *)self userspaceCorefileName];
      v24 = [(CoresPruner *)v22 initWithCorefileURL:v7 CoresToKeep:1 userspaceCorefileName:userspaceCorefileName3];

      [(CoresPruner *)v24 prune];
      filesToScreen2 = [(CoresPruner *)v24 filesToScreen];
      [(CoresPruner *)self setFilesToPullIn:filesToScreen2];
    }

    [v5 sortUsingComparator:&stru_1000390F8];
    filesToPullIn4 = [(CoresPruner *)self filesToPullIn];
    if ([filesToPullIn4 count])
    {
      v27 = [v5 count];
      v28 = [(CoresPruner *)self coresToKeep]- 1;

      if (v27 > v28)
      {
        v76 = v7;
        v29 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          v31 = [v5 count];
          coresToKeep = [(CoresPruner *)self coresToKeep];
          filesToPullIn5 = [(CoresPruner *)self filesToPullIn];
          v34 = [filesToPullIn5 count];
          *buf = 134218496;
          v92 = v31;
          v93 = 1024;
          *v94 = coresToKeep;
          *&v94[4] = 2048;
          *&v94[6] = v34;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Removing prior corefiles, found %lu sets (policy limit %u, %lu set staged)", buf, 0x1Cu);
        }

        v79 = v3;
        [(CoresPruner *)self setCoresToKeep:[(CoresPruner *)self coresToKeep]- 1];
LABEL_24:
        v78 = v4;
        v43 = objc_opt_new();
        while (1)
        {
          v44 = [v5 count];
          if (v44 <= [(CoresPruner *)self coresToKeep])
          {
            break;
          }

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          filesToScreen3 = [(CoresPruner *)self filesToScreen];
          v46 = [v5 objectAtIndex:0];
          v47 = [filesToScreen3 objectForKeyedSubscript:v46];

          v48 = [v47 countByEnumeratingWithState:&v85 objects:v90 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v86;
            do
            {
              for (i = 0; i != v49; i = i + 1)
              {
                if (*v86 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                [v43 addObject:*(*(&v85 + 1) + 8 * i)];
              }

              v49 = [v47 countByEnumeratingWithState:&v85 objects:v90 count:16];
            }

            while (v49);
          }

          filesToScreen4 = [(CoresPruner *)self filesToScreen];
          v53 = [v5 objectAtIndex:0];
          [filesToScreen4 removeObjectForKey:v53];

          [v5 removeObjectAtIndex:0];
        }

        selfCopy = self;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v54 = v43;
        v55 = [v54 countByEnumeratingWithState:&v81 objects:v89 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v82;
          do
          {
            v58 = 0;
            do
            {
              if (*v82 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v81 + 1) + 8 * v58);
              v60 = qword_100042B28;
              if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v92 = v59;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Removing file %@", buf, 0xCu);
              }

              v61 = +[NSFileManager defaultManager];
              v80 = 0;
              v62 = [v61 removeItemAtURL:v59 error:&v80];
              v63 = v80;

              if ((v62 & 1) == 0)
              {
                v64 = qword_100042B28;
                if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
                {
                  v65 = v64;
                  localizedDescription = [v63 localizedDescription];
                  *buf = 138412546;
                  v92 = v59;
                  v93 = 2112;
                  *v94 = localizedDescription;
                  _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to remove file %@ with error %@", buf, 0x16u);
                }
              }

              v58 = v58 + 1;
            }

            while (v56 != v58);
            v56 = [v54 countByEnumeratingWithState:&v81 objects:v89 count:16];
          }

          while (v56);
        }

        [(CoresPruner *)selfCopy cleanup];
        v4 = v78;
        v3 = v79;
        v7 = v76;
        goto LABEL_50;
      }
    }

    else
    {
    }

    v36 = [v5 count];
    coresToKeep2 = [(CoresPruner *)self coresToKeep];
    v38 = qword_100042B28;
    v39 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
    if (v36 > coresToKeep2)
    {
      v76 = v7;
      v79 = v3;
      if (v39)
      {
        v40 = v38;
        v41 = [v5 count];
        coresToKeep3 = [(CoresPruner *)self coresToKeep];
        *buf = 134218240;
        v92 = v41;
        v93 = 1024;
        *v94 = coresToKeep3;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Removing prior corefiles, found %lu sets (policy limit %u)", buf, 0x12u);
      }

      goto LABEL_24;
    }

    if (v39)
    {
      v67 = v38;
      v68 = [v5 count];
      coresToKeep4 = [(CoresPruner *)self coresToKeep];
      [(CoresPruner *)self filesToPullIn];
      v71 = v70 = v7;
      v72 = [v71 count];
      *buf = 134218496;
      v92 = v68;
      v93 = 1024;
      *v94 = coresToKeep4;
      *&v94[4] = 2048;
      *&v94[6] = v72;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Found %lu sets of corefiles (policy limit %u, %lu set staged), not cleaning up", buf, 0x1Cu);

      v7 = v70;
    }

    [(CoresPruner *)self cleanup];
  }

  else
  {
    v35 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Not pruning because the policy limit is set to 0", buf, 2u);
    }
  }

LABEL_50:
}

- (CoresPruner)initWithCorefileURL:(id)l CoresToKeep:(unsigned int)keep userspaceCorefileName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CoresPruner;
  v11 = [(CoresPruner *)&v18 init];
  userspaceCorefileName = v11->_userspaceCorefileName;
  v11->_userspaceCorefileName = 0;

  objc_storeStrong(&v11->_corefileURL, l);
  v11->_coresToKeep = keep;
  v13 = +[NSMutableDictionary dictionary];
  filesToScreen = v11->_filesToScreen;
  v11->_filesToScreen = v13;

  v15 = +[NSMutableDictionary dictionary];
  filesToPullIn = v11->_filesToPullIn;
  v11->_filesToPullIn = v15;

  if (nameCopy)
  {
    objc_storeStrong(&v11->_userspaceCorefileName, name);
  }

  return v11;
}

@end