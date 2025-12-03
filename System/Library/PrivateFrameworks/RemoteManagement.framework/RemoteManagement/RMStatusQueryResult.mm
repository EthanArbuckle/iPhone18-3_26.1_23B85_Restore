@interface RMStatusQueryResult
- (BOOL)hasStatusToReport;
- (RMStatusQueryResult)init;
- (RMStatusQueryResult)initWithStatusKeyPaths:(id)paths statusByKeyPath:(id)path errorByKeyPath:(id)keyPath;
@end

@implementation RMStatusQueryResult

- (RMStatusQueryResult)init
{
  v3 = +[NSSet set];
  v4 = [(RMStatusQueryResult *)self initWithStatusKeyPaths:v3 statusByKeyPath:&__NSDictionary0__struct errorByKeyPath:&__NSDictionary0__struct];

  return v4;
}

- (RMStatusQueryResult)initWithStatusKeyPaths:(id)paths statusByKeyPath:(id)path errorByKeyPath:(id)keyPath
{
  pathsCopy = paths;
  pathCopy = path;
  keyPathCopy = keyPath;
  v71.receiver = self;
  v71.super_class = RMStatusQueryResult;
  v9 = [(RMStatusQueryResult *)&v71 init];
  if (v9)
  {
    v10 = [pathsCopy copy];
    statusKeyPaths = v9->_statusKeyPaths;
    v50 = v9;
    v9->_statusKeyPaths = v10;

    v12 = objc_opt_new();
    v54 = objc_opt_new();
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = pathsCopy;
    obj = pathsCopy;
    v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v58)
    {
      v55 = *v68;
      v53 = v12;
      do
      {
        for (i = 0; i != v58; i = i + 1)
        {
          if (*v68 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v67 + 1) + 8 * i);
          v15 = [v14 rangeOfString:@"/"];
          if (v16)
          {
            v17 = v15;
            v18 = v16;
            v19 = [v14 substringToIndex:v15];
            v20 = v19;
            v21 = [v14 substringFromIndex:&v17[v18]];
            v22 = v21;
          }

          else
          {
            v19 = 0;
            v21 = 0;
          }

          v23 = v19;
          v24 = v21;
          v25 = [keyPathCopy objectForKeyedSubscript:v14];
          if (v23)
          {
            v26 = [pathCopy valueForKeyPath:v23];
            allKeys = [v26 allKeys];
            [v26 allValues];
            v28 = v27 = v25;
            v60 = v24;
            v29 = [v28 valueForKeyPath:v24];

            v30 = [NSSet setWithArray:v29];
            v31 = +[NSNull null];
            v32 = [NSSet setWithObject:v31];
            v33 = [v30 isEqualToSet:v32];

            v25 = v27;
            if (v33 && v27)
            {
              [v54 setObject:v27 forKeyedSubscript:v14];
              v12 = v53;
              v34 = allKeys;
              v24 = v60;
            }

            else
            {
              v12 = v53;
              sub_1000326D0(v53, v23);
              v37 = [v53 valueForKeyPath:v23];
              v61[0] = _NSConcreteStackBlock;
              v61[1] = 3221225472;
              v61[2] = sub_1000693D8;
              v61[3] = &unk_1000D2A70;
              v24 = v60;
              v62 = v60;
              v63 = v29;
              v64 = v37;
              v65 = v23;
              v66 = v54;
              v38 = v37;
              v34 = allKeys;
              [allKeys enumerateObjectsUsingBlock:v61];
            }
          }

          else
          {
            v26 = [pathCopy valueForKeyPath:v14];
            if (v26)
            {
              v35 = 1;
            }

            else
            {
              v35 = v25 == 0;
            }

            if (v35)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = [v26 copy];
                [v54 setObject:v36 forKeyedSubscript:v14];
              }

              else
              {
                v39 = [RMJSONSerialization serializeValue:v26];
                if (v39)
                {
                  v40 = v25;
                  pathExtension = [v14 pathExtension];
                  v42 = [pathExtension length];

                  if (v42)
                  {
                    stringByDeletingPathExtension = [v14 stringByDeletingPathExtension];
                    sub_1000326D0(v12, stringByDeletingPathExtension);
                  }

                  [v12 setValue:v39 forKeyPath:v14];
                  v25 = v40;
                }

                else if (v26)
                {
                  v44 = [RMErrorUtilities createUnsupportedStatusValueErrorWithKeyPath:v14];
                  [v54 setObject:v44 forKeyedSubscript:v14];
                }
              }
            }

            else
            {
              [v54 setObject:v25 forKeyedSubscript:v14];
            }
          }
        }

        v58 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v58);
    }

    v45 = [v12 copy];
    v9 = v50;
    statusByKeyPath = v50->_statusByKeyPath;
    v50->_statusByKeyPath = v45;

    v47 = [v54 copy];
    errorByKeyPath = v50->_errorByKeyPath;
    v50->_errorByKeyPath = v47;

    pathsCopy = v51;
  }

  return v9;
}

- (BOOL)hasStatusToReport
{
  statusByKeyPath = [(RMStatusQueryResult *)self statusByKeyPath];
  if ([statusByKeyPath count])
  {
    v4 = 1;
  }

  else
  {
    errorByKeyPath = [(RMStatusQueryResult *)self errorByKeyPath];
    v4 = [errorByKeyPath count] != 0;
  }

  return v4;
}

@end