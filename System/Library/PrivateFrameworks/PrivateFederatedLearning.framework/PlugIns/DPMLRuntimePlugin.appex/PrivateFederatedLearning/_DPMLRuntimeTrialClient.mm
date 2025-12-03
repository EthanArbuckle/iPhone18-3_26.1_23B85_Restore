@interface _DPMLRuntimeTrialClient
- (NSDictionary)recipeDictionary;
- (_DPMLRuntimeTrialClient)initWithTask:(id)task error:(id *)error;
- (id)downloadDbs:(id)dbs suffix:(id)suffix;
- (id)downloadFactor:(id)factor error:(id *)error;
- (id)updateMetadataWithDPParameters:(id)parameters;
- (void)loadRecipeWithError:(id *)error;
- (void)removeDbs:(id)dbs suffix:(id)suffix;
- (void)removeFactor:(id)factor;
@end

@implementation _DPMLRuntimeTrialClient

- (_DPMLRuntimeTrialClient)initWithTask:(id)task error:(id *)error
{
  taskCopy = task;
  v50.receiver = self;
  v50.super_class = _DPMLRuntimeTrialClient;
  v8 = [(_DPMLRuntimeTrialClient *)&v50 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_25;
  }

  errorCopy = error;
  v49 = v8;
  v48 = [NSBundle bundleForClass:objc_opt_class()];
  v47 = [v48 pathForResource:@"dpmlruntime-allowed-namespaces" ofType:@"plist"];
  v46 = [NSDictionary dictionaryWithContentsOfFile:?];
  v10 = [v46 objectForKey:@"allowed-namespaces"];
  if (![v10 count])
  {
LABEL_13:
    if (error)
    {
      [_DPMLRuntimeError errorWithCode:300 description:@"Could not find any matching namespace on client"];
      v22 = 0;
      *error = v4 = 0;
    }

    else
    {
      v22 = 1;
    }

    v9 = v49;
    goto LABEL_24;
  }

  v4 = 0;
  *&v11 = 138412546;
  v44 = v11;
  while (1)
  {
    v12 = +[_PFLLog extension];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v10 objectAtIndexedSubscript:v4];
      *buf = 138412290;
      v52 = v21;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Checking for namespace: %@", buf, 0xCu);
    }

    triClient = [taskCopy triClient];
    v14 = [v10 objectAtIndexedSubscript:v4];
    v15 = [triClient levelForFactor:@"recipe" withNamespaceName:v14];

    v16 = +[_PFLLog extension];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = v44;
      v52 = v15;
      v53 = 2112;
      v54 = @"recipe";
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Got level: %@ for factor %@", buf, 0x16u);
    }

    fileValue = [v15 fileValue];
    if (([fileValue hasPath] & 1) == 0)
    {

      goto LABEL_12;
    }

    fileValue2 = [v15 fileValue];
    path = [fileValue2 path];
    v20 = [path rangeOfString:@".recipe"];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_12:

    v4 = (v4 + 1);
    if (v4 >= [v10 count])
    {
      goto LABEL_13;
    }
  }

  fileValue3 = [v15 fileValue];
  path2 = [fileValue3 path];
  v25 = [NSURL fileURLWithPath:path2];
  v9 = v49;
  recipeURL = v49->_recipeURL;
  v49->_recipeURL = v25;

  [(_DPMLRuntimeTrialClient *)v49 loadRecipeWithError:errorCopy];
  if (v49->_recipeDictionary)
  {
    v27 = [v10 objectAtIndexedSubscript:v4];
    namespaceIdentifier = v49->_namespaceIdentifier;
    v49->_namespaceIdentifier = v27;

    triClient2 = [taskCopy triClient];
    [triClient2 refresh];
    v30 = [v10 objectAtIndexedSubscript:v4];
    v31 = [triClient2 experimentIdentifiersWithNamespaceName:v30];

    if (v31)
    {
      experimentId = [v31 experimentId];
      experimentIdentifier = v49->_experimentIdentifier;
      v49->_experimentIdentifier = experimentId;

      v34 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 deploymentId]);
      stringValue = [v34 stringValue];
      deploymentIdentifier = v49->_deploymentIdentifier;
      v49->_deploymentIdentifier = stringValue;

      treatmentId = [v31 treatmentId];
    }

    else
    {
      v38 = v49->_experimentIdentifier;
      v49->_experimentIdentifier = 0;

      v39 = v49->_deploymentIdentifier;
      v49->_deploymentIdentifier = 0;

      treatmentId = 0;
    }

    treatmentIdentifier = v49->_treatmentIdentifier;
    v49->_treatmentIdentifier = treatmentId;

    triClient3 = [taskCopy triClient];
    trialClient = v49->_trialClient;
    v49->_trialClient = triClient3;

    v4 = v49;
  }

  else
  {
    v4 = 0;
  }

  v22 = 0;
LABEL_24:

  if (v22)
  {
LABEL_25:
    v4 = v9;
  }

  return v4;
}

- (NSDictionary)recipeDictionary
{
  recipeDictionary = self->_recipeDictionary;
  if (!recipeDictionary)
  {
    [(_DPMLRuntimeTrialClient *)self loadRecipeWithError:0];
    recipeDictionary = self->_recipeDictionary;
  }

  return recipeDictionary;
}

- (void)loadRecipeWithError:(id *)error
{
  p_recipeURL = &self->_recipeURL;
  v6 = [NSData dataWithContentsOfURL:self->_recipeURL options:1 error:error];
  if (v6)
  {
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:error];
    recipeDictionary = self->_recipeDictionary;
    p_recipeDictionary = &self->_recipeDictionary;
    *p_recipeDictionary = v7;

    v10 = +[_PFLLog extension];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D514(p_recipeURL, p_recipeDictionary);
    }

    v11 = *p_recipeDictionary;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = +[_PFLLog extension];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001D594(v12);
      }

      v13 = *p_recipeDictionary;
      *p_recipeDictionary = 0;

      if (error && !*error)
      {
        *error = [_DPMLRuntimeError errorWithCode:300 description:@"Recipe is not dictionary format"];
      }
    }
  }
}

- (id)updateMetadataWithDPParameters:(id)parameters
{
  v4 = [parameters mutableCopy];
  [v4 setObject:&stru_10002D560 forKeyedSubscript:kDPMetadataVersionHash];
  recipeDictionary = [(_DPMLRuntimeTrialClient *)self recipeDictionary];
  v6 = kDPMetadataDediscoTaskConfig;
  v7 = [recipeDictionary objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];

  if (v7)
  {
    [v4 setObject:v7 forKey:v6];
    v8 = +[_PFLLog extension];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "New metadata: %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = +[_PFLLog extension];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001D5D8(v6, v8);
    }
  }

  return v4;
}

- (id)downloadFactor:(id)factor error:(id *)error
{
  factorCopy = factor;
  trialClient = self->_trialClient;
  namespaceIdentifier = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
  v8 = [(TRIClient *)trialClient factorLevelsWithNamespaceName:namespaceIdentifier];

  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        factor = [v14 factor];
        name = [factor name];
        v17 = [name isEqualToString:factorCopy];

        if (v17)
        {
          level = [v14 level];
          fileValue = [level fileValue];
          hasPath = [fileValue hasPath];

          if (hasPath)
          {
            v24 = +[_PFLLog extension];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              level2 = [v14 level];
              fileValue2 = [level2 fileValue];
              path = [fileValue2 path];
              *buf = 138412290;
              v64 = path;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ file exists.", buf, 0xCu);
            }

            level3 = [v14 level];
            fileValue3 = [level3 fileValue];
            path2 = [fileValue3 path];

            v19 = v9;
          }

          else
          {

            v30 = dispatch_semaphore_create(0);
            v31 = +[_PFLLog extension];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              namespaceIdentifier2 = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
              *buf = 138412546;
              v64 = factorCopy;
              v65 = 2112;
              v66 = namespaceIdentifier2;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Downloading factor %@ for namespace %@", buf, 0x16u);
            }

            v33 = [[TRIDownloadOptions alloc] initWithAllowsCellular:0 discretionaryBehavior:0];
            v34 = self->_trialClient;
            v62 = factorCopy;
            v35 = [NSArray arrayWithObjects:&v62 count:1];
            namespaceIdentifier3 = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
            v37 = dispatch_get_global_queue(0, 0);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_10001A034;
            v56[3] = &unk_10002C8D0;
            v57 = factorCopy;
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_10001A098;
            v53[3] = &unk_10002C8F8;
            v38 = v57;
            v54 = v38;
            v19 = v30;
            v55 = v19;
            v51 = v33;
            [(TRIClient *)v34 downloadLevelsForFactors:v35 withNamespace:namespaceIdentifier3 queue:v37 options:v33 progress:v56 completion:v53];

            v39 = dispatch_time(0, 600000000000);
            dispatch_semaphore_wait(v19, v39);
            trialClient = [(_DPMLRuntimeTrialClient *)self trialClient];
            [trialClient refresh];

            trialClient2 = [(_DPMLRuntimeTrialClient *)self trialClient];
            namespaceIdentifier4 = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
            v43 = [trialClient2 levelForFactor:v38 withNamespaceName:namespaceIdentifier4];

            fileValue4 = [v43 fileValue];
            LOBYTE(namespaceIdentifier4) = [fileValue4 hasPath];

            if (namespaceIdentifier4)
            {
              v45 = +[_PFLLog extension];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                fileValue5 = [v43 fileValue];
                path3 = [fileValue5 path];
                *buf = 138412546;
                v64 = v38;
                v65 = 2112;
                v66 = path3;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Downloaded file for %@: %@", buf, 0x16u);
              }

              fileValue6 = [v43 fileValue];
              path2 = [fileValue6 path];
            }

            else
            {
              namespaceIdentifier5 = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
              fileValue6 = [NSString stringWithFormat:@"Factor %@ of namespace %@ does not have a file downloaded", v38, namespaceIdentifier5];

              if (error)
              {
                [_DPMLRuntimeError errorWithCode:300 description:fileValue6];
                *error = path2 = 0;
              }

              else
              {
                path2 = 0;
              }
            }
          }

          goto LABEL_26;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  namespaceIdentifier6 = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
  v19 = [NSString stringWithFormat:@"Could not find any matching factor %@ for namespace %@", factorCopy, namespaceIdentifier6];

  if (error)
  {
    [_DPMLRuntimeError errorWithCode:300 description:v19];
    *error = path2 = 0;
  }

  else
  {
    path2 = 0;
  }

LABEL_26:

  return path2;
}

- (void)removeFactor:(id)factor
{
  factorCopy = factor;
  v5 = +[_PFLLog extension];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D754(factorCopy, self);
  }

  trialClient = self->_trialClient;
  v14 = factorCopy;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  namespaceIdentifier = [(_DPMLRuntimeTrialClient *)self namespaceIdentifier];
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001A280;
  v11[3] = &unk_10002C8F8;
  v12 = factorCopy;
  selfCopy = self;
  v10 = factorCopy;
  [(TRIClient *)trialClient removeLevelsForFactors:v7 withNamespace:namespaceIdentifier queue:v9 completion:v11];
}

- (id)downloadDbs:(id)dbs suffix:(id)suffix
{
  dbsCopy = dbs;
  suffixCopy = suffix;
  v20 = +[NSMutableDictionary dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = dbsCopy;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * v12);
        suffixCopy = v14;
        if ([suffixCopy length])
        {
          suffixCopy = [NSString stringWithFormat:@"%@_%@", v14, suffixCopy];
        }

        v21 = v13;
        v16 = [(_DPMLRuntimeTrialClient *)self downloadFactor:suffixCopy error:&v21];
        v10 = v21;

        if (v16)
        {
          [v20 setObject:v16 forKeyedSubscript:v14];
        }

        else
        {
          v17 = +[_PFLLog extension];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = v14;
            v28 = 2112;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Found no database for  %@, %@.", buf, 0x16u);
          }
        }

        v12 = v12 + 1;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  return v20;
}

- (void)removeDbs:(id)dbs suffix:(id)suffix
{
  dbsCopy = dbs;
  suffixCopy = suffix;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [dbsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(dbsCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ([suffixCopy length])
        {
          suffixCopy = [NSString stringWithFormat:@"%@_%@", v12, suffixCopy];

          v12 = suffixCopy;
        }

        [(_DPMLRuntimeTrialClient *)self removeFactor:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [dbsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

@end