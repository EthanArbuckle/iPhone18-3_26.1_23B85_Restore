@interface UnknownDictionary
+ (id)dataItemToBitString:(id)string encodingClient:(id)client useCaseEncoding:(id)encoding;
+ (id)hexToBitString:(id)string;
+ (id)ipV4ToBitString:(id)string;
+ (id)ipV6ToBitString:(id)string;
+ (id)processData:(id)data fragmentSize:(int)size prefixSize:(int)prefixSize prefixDbFiles:(id)files encodingDbFiles:(id)dbFiles useCaseEncoding:(id)encoding urlEncodingParameters:(id)parameters error:(id *)self0;
+ (id)processQueryResults:(id)results withCohorts:(id)cohorts withNamespaceID:(id)d;
+ (int)runWithRecipe:(id)recipe data:(id)data error:(id *)error;
@end

@implementation UnknownDictionary

+ (int)runWithRecipe:(id)recipe data:(id)data error:(id *)error
{
  recipeCopy = recipe;
  dataCopy = data;
  v62 = recipeCopy;
  trialClient = [recipeCopy trialClient];
  recipeDictionary = [trialClient recipeDictionary];

  v8 = [recipeDictionary objectForKey:@"unknownDictionary"];

  if (v8)
  {
    v9 = [recipeDictionary objectForKeyedSubscript:@"unknownDictionary"];
    v61 = [v9 objectForKeyedSubscript:@"useCaseEncoding"];
    v10 = [v9 objectForKeyedSubscript:@"iteration"];
    intValue = [v10 intValue];

    v12 = [v9 objectForKeyedSubscript:@"deployments"];
    if (!v12 || ([v9 objectForKeyedSubscript:@"deployments"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) == 0))
    {
      if (error)
      {
        *error = [_DPMLRuntimeError errorWithCode:300 description:@"Unknown deployments info in recipe."];
      }

      goto LABEL_57;
    }

    v15 = [v9 objectForKeyedSubscript:@"deployments"];
    if ([v15 count] <= intValue)
    {
      if (!error)
      {
LABEL_56:

LABEL_57:
        v45 = 0;
        v43 = -1;
        goto LABEL_58;
      }

      v47 = @"Deployments info is incomplete in recipe.";
LABEL_55:
      *error = [_DPMLRuntimeError errorWithCode:300 description:v47];
      goto LABEL_56;
    }

    if (intValue >= 1)
    {
      v16 = 0;
      v17 = 0;
      intValue2 = 0;
      while (1)
      {
        v18 = [v15 objectAtIndexedSubscript:v16];
        v19 = [v18 objectForKeyedSubscript:@"fragmentSize"];

        if (!v19)
        {
          break;
        }

        intValue2 += [v19 intValue];
        ++v16;
        v17 = v19;
        if (intValue == v16)
        {

          goto LABEL_49;
        }
      }

      if (!error)
      {
        goto LABEL_56;
      }

      v47 = @"No fragmentSize in deployment info.";
      goto LABEL_55;
    }

    intValue2 = 0;
LABEL_49:
    v48 = [v15 objectAtIndexedSubscript:intValue];
    v54 = [v48 objectForKeyedSubscript:@"fragmentSize"];
    v55 = [v9 objectForKeyedSubscript:@"urlEncodingParameters"];
  }

  else
  {
    v61 = [recipeDictionary objectForKeyedSubscript:@"useCaseEncoding"];
    v54 = [recipeDictionary objectForKeyedSubscript:@"fragmentSize"];
    v9 = [recipeDictionary objectForKeyedSubscript:@"prefixSize"];
    intValue2 = [v9 intValue];
    v55 = 0;
  }

  if (([v61 isEqualToString:@"ipv4"] & 1) == 0 && (objc_msgSend(v61, "isEqualToString:", @"ipv6") & 1) == 0 && (objc_msgSend(v61, "isEqualToString:", @"huffman") & 1) == 0 && !v55)
  {
    if (error)
    {
      v46 = [NSString stringWithFormat:@"useCaseEncoding %@ is not supported.", v61];
      *error = [_DPMLRuntimeError errorWithCode:300 description:v46];
    }

    v43 = -1;
    goto LABEL_40;
  }

  cohortNameList = [v62 cohortNameList];
  trialClient2 = [v62 trialClient];
  namespaceIdentifier = [trialClient2 namespaceIdentifier];
  v58 = [self processQueryResults:dataCopy withCohorts:cohortNameList withNamespaceID:namespaceIdentifier];

  if (![v58 count])
  {
    v42 = +[_PFLLog extension];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "No data after pre process.", buf, 2u);
    }

    v43 = 0;
    goto LABEL_39;
  }

  trialClient3 = [v62 trialClient];
  v64 = +[NSMutableDictionary dictionary];
  allKeys = [v58 allKeys];
  v24 = [trialClient3 downloadDbs:allKeys suffix:0];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v25 = v58;
  v26 = [v25 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (!v26)
  {
    goto LABEL_29;
  }

  v27 = *v79;
  while (2)
  {
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v79 != v27)
      {
        objc_enumerationMutation(v25);
      }

      v29 = *(*(&v78 + 1) + 8 * i);
      v30 = [v24 objectForKeyedSubscript:v29];
      v31 = v30 == 0;

      if (v31)
      {
        v32 = [v25 objectForKeyedSubscript:v29];
LABEL_26:
        [v64 setObject:v32 forKeyedSubscript:v29];
        goto LABEL_27;
      }

      v32 = +[NSMutableArray array];
      v33 = [v25 objectForKeyedSubscript:v29];
      v34 = [v24 objectForKeyedSubscript:v29];
      v35 = [KnownDictionary processTokens:v33 knownTokensFile:v34 unknownTokens:v32 error:error];

      if (*error)
      {
        allKeys2 = [v24 allKeys];
        [trialClient3 removeDbs:allKeys2 suffix:0];

        goto LABEL_37;
      }

      if ([v32 count])
      {
        goto LABEL_26;
      }

LABEL_27:
    }

    v26 = [v25 countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_29:

  allKeys3 = [v24 allKeys];
  [trialClient3 removeDbs:allKeys3 suffix:0];

  if ([v64 count])
  {
    if (v54)
    {
      intValue3 = [v54 intValue];
      allKeys4 = [v64 allKeys];
      v39 = [trialClient3 downloadDbs:allKeys4 suffix:@"encoding"];

      if (intValue2 < 1)
      {
        v41 = &__NSDictionary0__struct;
      }

      else
      {
        allKeys5 = [v64 allKeys];
        v41 = [trialClient3 downloadDbs:allKeys5 suffix:@"prefix"];
      }

      v51 = [self processData:v64 fragmentSize:intValue3 prefixSize:intValue2 prefixDbFiles:v41 encodingDbFiles:v39 useCaseEncoding:v61 urlEncodingParameters:v55 error:error];
      allKeys6 = [v41 allKeys];
      [trialClient3 removeDbs:allKeys6 suffix:@"prefix"];

      allKeys7 = [v39 allKeys];
      [trialClient3 removeDbs:allKeys7 suffix:@"encoding"];

      v43 = -1;
      if (!*error && v51)
      {
        *buf = 0;
        v75 = buf;
        v76 = 0x2020000000;
        v77 = 0;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100007900;
        v66[3] = &unk_10002C648;
        v72 = intValue2;
        v67 = v41;
        errorCopy = error;
        v68 = trialClient3;
        v73 = intValue3;
        v69 = v62;
        v70 = buf;
        [v51 enumerateKeysAndObjectsUsingBlock:v66];
        v43 = *(v75 + 6);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      if (error)
      {
        *error = [_DPMLRuntimeError errorWithCode:300 description:@"No fragmentSize in recipe."];
      }

LABEL_37:
      v43 = -1;
    }
  }

  else
  {
    v49 = +[_PFLLog extension];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10001C3EC();
    }

    v43 = 0;
  }

  v42 = trialClient3;
LABEL_39:

LABEL_40:
  v45 = v54;
LABEL_58:

  return v43;
}

+ (id)processQueryResults:(id)results withCohorts:(id)cohorts withNamespaceID:(id)d
{
  resultsCopy = results;
  cohortsCopy = cohorts;
  dCopy = d;
  v9 = +[NSMutableDictionary dictionary];
  v51 = resultsCopy;
  if ([cohortsCopy count])
  {
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    obj = resultsCopy;
    v58 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (!v58)
    {
      goto LABEL_68;
    }

    v56 = *v72;
    v52 = cohortsCopy;
    while (1)
    {
      for (i = 0; i != v58; i = v23 + 1)
      {
        if (*v72 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v60 = i;
        v11 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v67 objects:v86 count:16];
        if (!v13)
        {
          v15 = 0;
          intValue = 1;
          goto LABEL_21;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v68;
        intValue = 1;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v68 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v67 + 1) + 8 * j);
            if ([v19 isEqualToString:{@"TokenCount", v51}])
            {
              v20 = [v12 objectForKeyedSubscript:v19];
              intValue = [v20 intValue];
            }

            else
            {
              if ([cohortsCopy containsObject:v19])
              {
                continue;
              }

              [v12 objectForKeyedSubscript:v19];
              v15 = v20 = v15;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v67 objects:v86 count:16];
        }

        while (v14);
LABEL_21:

        if ([v15 length])
        {
          v66 = 0;
          v21 = [FedStatsDataCohort keysForCohorts:cohortsCopy namespaceID:dCopy parameters:v12 possibleError:&v66];
          if (v66)
          {
            v22 = +[_PFLLog extension];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v66;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid query result %@.", buf, 0xCu);
            }

            v23 = v60;
          }

          else
          {
            v25 = +[NSMutableArray array];
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v53 = v21;
            v26 = v21;
            v27 = [v26 countByEnumeratingWithState:&v62 objects:v83 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v63;
              do
              {
                for (k = 0; k != v28; k = k + 1)
                {
                  if (*v63 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v62 + 1) + 8 * k);
                  if ([v31 length])
                  {
                    v32 = [v31 componentsSeparatedByString:@"/"];
                    [v25 addObjectsFromArray:v32];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v62 objects:v83 count:16];
              }

              while (v28);
            }

            v22 = v25;
            if ([v25 count])
            {
              v33 = [v25 componentsJoinedByString:@"_"];
              lowercaseString = [v33 lowercaseString];

              v35 = [v9 objectForKeyedSubscript:lowercaseString];

              v23 = v60;
              if (!v35)
              {
                v36 = +[NSMutableArray array];
                [v9 setObject:v36 forKeyedSubscript:lowercaseString];
              }

              cohortsCopy = v52;
              if (intValue >= 1)
              {
                do
                {
                  v37 = [v9 objectForKeyedSubscript:{lowercaseString, v51}];
                  [v37 addObject:v15];

                  --intValue;
                }

                while (intValue);
              }
            }

            else
            {
              lowercaseString = +[_PFLLog extension];
              v23 = v60;
              if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v85 = v12;
                _os_log_impl(&_mh_execute_header, lowercaseString, OS_LOG_TYPE_INFO, "FedStatsDataCohort has no keys: %@.", buf, 0xCu);
              }

              cohortsCopy = v52;
            }

            v21 = v53;
          }
        }

        else
        {
          v24 = +[_PFLLog extension];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v85 = v12;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Query result has no data: %@.", buf, 0xCu);
          }

          v23 = v60;
        }
      }

      v58 = [obj countByEnumeratingWithState:&v71 objects:v87 count:16];
      if (!v58)
      {
        goto LABEL_68;
      }
    }
  }

  v81 = 0uLL;
  v82 = 0uLL;
  v79 = 0uLL;
  v80 = 0uLL;
  v57 = resultsCopy;
  v61 = [v57 countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v61)
  {
    v59 = *v80;
    do
    {
      for (m = 0; m != v61; m = m + 1)
      {
        if (*v80 != v59)
        {
          objc_enumerationMutation(v57);
        }

        v39 = *(*(&v79 + 1) + 8 * m);
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v40 = v39;
        v41 = [v40 countByEnumeratingWithState:&v75 objects:v88 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v76;
          do
          {
            for (n = 0; n != v42; n = n + 1)
            {
              if (*v76 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v75 + 1) + 8 * n);
              v46 = [v9 objectForKeyedSubscript:{v45, v51}];

              if (!v46)
              {
                v47 = +[NSMutableArray array];
                [v9 setObject:v47 forKeyedSubscript:v45];
              }

              v48 = [v9 objectForKeyedSubscript:v45];
              v49 = [v40 objectForKeyedSubscript:v45];
              [v48 addObject:v49];
            }

            v42 = [v40 countByEnumeratingWithState:&v75 objects:v88 count:16];
          }

          while (v42);
        }
      }

      v61 = [v57 countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v61);
  }

LABEL_68:

  return v9;
}

+ (id)processData:(id)data fragmentSize:(int)size prefixSize:(int)prefixSize prefixDbFiles:(id)files encodingDbFiles:(id)dbFiles useCaseEncoding:(id)encoding urlEncodingParameters:(id)parameters error:(id *)self0
{
  errorCopy2 = error;
  dataCopy = data;
  filesCopy = files;
  dbFilesCopy = dbFiles;
  encodingCopy = encoding;
  parametersCopy = parameters;
  v76 = [FedStatsDataSampler samplerWithCount:10];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v17 = dataCopy;
  v71 = dbFilesCopy;
  v73 = [v17 countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v73)
  {
    v72 = *v95;
    v68 = filesCopy;
    v69 = v17;
    do
    {
      v18 = 0;
      do
      {
        if (*v95 != v72)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v94 + 1) + 8 * v18);
        if (prefixSize < 1)
        {
          p_super = 0;
        }

        else
        {
          v20 = [filesCopy objectForKeyedSubscript:*(*(&v94 + 1) + 8 * v18)];

          if (!v20)
          {
            v49 = +[_PFLLog extension];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v101 = v19;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Found no prefix database for  %@.", buf, 0xCu);
            }

            goto LABEL_46;
          }

          v21 = [SqliteClient alloc];
          [filesCopy objectForKeyedSubscript:v19];
          v23 = v22 = v19;
          v24 = [(SqliteClient *)v21 initWithFile:v23 error:errorCopy2];

          v19 = v22;
          p_super = &v24->super;
          if (!v24)
          {
            v65 = +[_PFLLog extension];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              sub_10001C564();
            }

            if (errorCopy2)
            {
              [_DPMLRuntimeError errorWithCode:300 description:@"Failed to load sqlite DB."];
              *errorCopy2 = v51 = 0;
            }

            else
            {
              v51 = 0;
            }

            getResults = v17;
            goto LABEL_69;
          }
        }

        v25 = [dbFilesCopy objectForKeyedSubscript:{v19, v68}];

        v74 = v18;
        if (v25)
        {
          v26 = [SqliteClient alloc];
          [dbFilesCopy objectForKeyedSubscript:v19];
          v28 = v27 = v19;
          v85 = [(SqliteClient *)v26 initWithFile:v28 error:errorCopy2];
        }

        else
        {
          v85 = 0;
          v27 = v19;
        }

        v30 = parametersCopy;
        v29 = encodingCopy;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v77 = v27;
        obj = [v17 objectForKeyedSubscript:v27];
        v31 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
        if (v31)
        {
          v32 = v31;
          v84 = 0;
          v33 = *v91;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v91 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v90 + 1) + 8 * i);
              if (v30)
              {
                [URLEncoding bitStringFromURL:*(*(&v90 + 1) + 8 * i) encodingOption:v29 urlEncodingParameters:v30 encodingClient:v85 error:error];
              }

              else
              {
                [self dataItemToBitString:*(*(&v90 + 1) + 8 * i) encodingClient:v85 useCaseEncoding:v29];
              }
              v36 = ;
              v37 = v36;
              if (v36)
              {
                if ([v36 length] > prefixSize)
                {
                  v38 = prefixSize + size - [v37 length];
                  v39 = v38 & ~(v38 >> 31);
                  v40 = [v37 substringWithRange:{prefixSize, size - v39}];
                  v41 = v40;
                  if (v38 < 1)
                  {
                    v43 = v40;
                  }

                  else
                  {
                    v42 = v39 + 1;
                    do
                    {
                      v43 = [v41 stringByAppendingString:@"0"];

                      --v42;
                      v41 = v43;
                    }

                    while (v42 > 1);
                  }

                  if (prefixSize >= 1)
                  {
                    v44 = [v37 substringWithRange:{0, prefixSize}];
                    v84 = [p_super findWord:v44 error:error];
                    if (v84 == -1)
                    {
                      v84 = -1;
LABEL_42:

                      v30 = parametersCopy;
                      v29 = encodingCopy;
                      goto LABEL_43;
                    }

                    v45 = +[_PFLLog extension];
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      *v101 = v44;
                      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "prefix %@.", buf, 0xCu);
                    }
                  }

                  v46 = [FedStatsUtil bitStringToInt:v43];
                  v47 = +[_PFLLog extension];
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109632;
                    *v101 = v46;
                    *&v101[4] = 1024;
                    *&v101[6] = v84;
                    v102 = 1024;
                    v103 = (v84 << size) + v46 + 1;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "fragmentIndex %i, prefixIndex %i, indexToRecord %i.", buf, 0x14u);
                  }

                  v99[0] = v77;
                  v44 = [NSNumber numberWithInt:(v84 << size) + v46 + 1];
                  v99[1] = v44;
                  v48 = [NSArray arrayWithObjects:v99 count:2];
                  [v76 addItem:v48];

                  goto LABEL_42;
                }

                v43 = +[_PFLLog extension];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v101 = v35;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "There is no enough data for this iteration %@.", buf, 0xCu);
                }
              }

              else
              {
                v43 = +[_PFLLog extension];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *v101 = v35;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Drop bad data item %@.", buf, 0xCu);
                }
              }

LABEL_43:
            }

            v32 = [obj countByEnumeratingWithState:&v90 objects:v104 count:16];
          }

          while (v32);
        }

        filesCopy = v68;
        v17 = v69;
        dbFilesCopy = v71;
        errorCopy2 = error;
        v18 = v74;
        v49 = p_super;
LABEL_46:

        v18 = v18 + 1;
      }

      while (v18 != v73);
      v50 = [v17 countByEnumeratingWithState:&v94 objects:v105 count:16];
      v73 = v50;
    }

    while (v50);
  }

  v51 = +[NSMutableDictionary dictionary];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  getResults = [v76 getResults];
  v53 = [getResults countByEnumeratingWithState:&v86 objects:v98 count:16];
  if (v53)
  {
    v54 = v53;
    v70 = v17;
    v55 = *v87;
    do
    {
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v87 != v55)
        {
          objc_enumerationMutation(getResults);
        }

        v57 = *(*(&v86 + 1) + 8 * j);
        if ([v57 count] >= 2)
        {
          v58 = [v57 objectAtIndexedSubscript:0];
          v59 = [v51 objectForKeyedSubscript:v58];

          if (!v59)
          {
            v60 = +[NSMutableArray array];
            v61 = [v57 objectAtIndexedSubscript:0];
            [v51 setObject:v60 forKeyedSubscript:v61];
          }

          v62 = [v57 objectAtIndexedSubscript:0];
          v63 = [v51 objectForKeyedSubscript:v62];
          v64 = [v57 objectAtIndexedSubscript:1];
          [v63 addObject:v64];
        }
      }

      v54 = [getResults countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v54);
    v17 = v70;
    dbFilesCopy = v71;
  }

LABEL_69:

  return v51;
}

+ (id)dataItemToBitString:(id)string encodingClient:(id)client useCaseEncoding:(id)encoding
{
  stringCopy = string;
  clientCopy = client;
  encodingCopy = encoding;
  if ([encodingCopy isEqualToString:@"ipv4"])
  {
    v11 = [self ipV4ToBitString:stringCopy];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([encodingCopy isEqualToString:@"ipv6"])
  {
    v11 = [self ipV6ToBitString:stringCopy];
    goto LABEL_5;
  }

  if (!clientCopy)
  {
    v17 = +[_PFLLog extension];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001C614();
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = +[_PFLLog extension];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10001C5D8();
    }

LABEL_18:

    v12 = 0;
    goto LABEL_6;
  }

  v14 = [clientCopy huffmanCode:@"<UT>" error:0];
  if (!v14)
  {
    v15 = +[_PFLLog extension];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No unknown token found in database.", buf, 2u);
    }

    goto LABEL_24;
  }

  v15 = [clientCopy huffmanCode:@"<ET>" error:0];
  if (!v15)
  {
    v18 = +[_PFLLog extension];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "No end token found in database.", buf, 2u);
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = sub_1000090B8;
  v27 = sub_1000090C8;
  v28 = +[NSMutableString string];
  v16 = [stringCopy length];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000090D0;
  v19[3] = &unk_10002C670;
  v20 = clientCopy;
  v21 = v14;
  v22 = buf;
  [stringCopy enumerateSubstringsInRange:0 options:v16 usingBlock:{2, v19}];
  [*(v24 + 5) appendString:v15];
  v12 = *(v24 + 5);

  _Block_object_dispose(buf, 8);
LABEL_25:

LABEL_6:

  return v12;
}

+ (id)ipV4ToBitString:(id)string
{
  stringCopy = string;
  v4 = +[NSMutableString string];
  v5 = [stringCopy componentsSeparatedByString:@"."];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = +[FedStatsUtil intToBitString:length:](FedStatsUtil, "intToBitString:length:", [*(*(&v12 + 1) + 8 * i) intValue], 8);
        [v4 appendString:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)ipV6ToBitString:(id)string
{
  stringCopy = string;
  v5 = +[NSMutableString string];
  v6 = [stringCopy componentsSeparatedByString:@":"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self hexToBitString:*(*(&v15 + 1) + 8 * i)];
        [v5 appendString:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v6 count];
  if (7 - v12 >= 1)
  {
    v13 = 8 - v12;
    do
    {
      [v5 appendString:@"0000000000000000"];
      --v13;
    }

    while (v13 > 1);
  }

  return v5;
}

+ (id)hexToBitString:(id)string
{
  v3 = [NSScanner scannerWithString:string];
  v6 = 0;
  [v3 scanHexInt:&v6];
  v4 = [FedStatsUtil intToBitString:v6 length:16];

  return v4;
}

@end