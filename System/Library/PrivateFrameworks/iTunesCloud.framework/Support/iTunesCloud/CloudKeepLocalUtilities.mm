@interface CloudKeepLocalUtilities
+ (void)downPinCollectionsForClasses:(id)classes configuration:(id)configuration;
+ (void)rePinCollectionsForClasses:(id)classes configuration:(id)configuration;
@end

@implementation CloudKeepLocalUtilities

+ (void)rePinCollectionsForClasses:(id)classes configuration:(id)configuration
{
  classesCopy = classes;
  configurationCopy = configuration;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Downloads");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = classesCopy;
    *&buf[12] = 2114;
    *&buf[14] = configurationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RePinning collection classes %{public}@ and configuration %{public}@", buf, 0x16u);
  }

  userIdentity = [configurationCopy userIdentity];
  v33 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = classesCopy;
  v31 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v31)
  {
    v30 = *v49;
    v37 = ML3EntityPropertyKeepLocalStatus;
    v38 = ML3EntityPropertyKeepLocal;
    do
    {
      v8 = 0;
      do
      {
        if (*v49 != v30)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v32 = v8;
        v10 = *(*(&v48 + 1) + 8 * v8);
        v11 = objc_opt_new();
        v12 = [ML3ComparisonPredicate predicateWithProperty:v37 equalToInteger:3];
        v34 = [v10 queryWithLibrary:v33 predicate:v12];

        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10005B5E0;
        v44[3] = &unk_1001DB550;
        v47 = v10;
        v36 = v33;
        v45 = v36;
        v13 = v11;
        v46 = v13;
        [v34 enumeratePersistentIDsUsingBlock:v44];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v35 = v13;
        v14 = [v35 countByEnumeratingWithState:&v40 objects:v59 count:16];
        if (v14)
        {
          v15 = *v41;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v35);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
              v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 persistentID]);
              v20 = [ML3ComparisonPredicate predicateWithProperty:trackForeignPersistentID value:v19 comparison:1];
              v58[0] = v20;
              v21 = [ML3ComparisonPredicate predicateWithProperty:v38 equalToInt64:0];
              v58[1] = v21;
              v22 = [NSArray arrayWithObjects:v58 count:2];
              v23 = [ML3AllCompoundPredicate predicateMatchingPredicates:v22];

              v24 = [ML3Track queryWithLibrary:v36 predicate:v23];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v57 = 0;
              v39[0] = _NSConcreteStackBlock;
              v39[1] = 3221225472;
              v39[2] = sub_10005B63C;
              v39[3] = &unk_1001DB578;
              v39[4] = buf;
              [v24 enumeratePersistentIDsUsingBlock:v39];
              LOBYTE(v21) = *(*&buf[8] + 24);
              v25 = os_log_create("com.apple.amp.itunescloudd", "Downloads");
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
              if (v21)
              {
                if (v26)
                {
                  *v54 = 138543362;
                  v55 = v17;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Clearing status for %{public}@", v54, 0xCu);
                }

                v52 = v37;
                v27 = [NSArray arrayWithObjects:&v52 count:1];
                [v17 setValues:&off_1001EE260 forProperties:v27];
              }

              else
              {
                if (v26)
                {
                  *v54 = 138543362;
                  v55 = v17;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "RePinning %{public}@", v54, 0xCu);
                }

                v53[0] = v38;
                v53[1] = v37;
                v27 = [NSArray arrayWithObjects:v53 count:2];
                [v17 setValues:&off_1001EE248 forProperties:v27];
              }

              _Block_object_dispose(buf, 8);
            }

            v14 = [v35 countByEnumeratingWithState:&v40 objects:v59 count:16];
          }

          while (v14);
        }

        v8 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v31);
  }
}

+ (void)downPinCollectionsForClasses:(id)classes configuration:(id)configuration
{
  classesCopy = classes;
  configurationCopy = configuration;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Downloads");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v64 = classesCopy;
    v65 = 2114;
    v66 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DownPinning collection classes %{public}@ and configuration %{public}@", buf, 0x16u);
  }

  v32 = configurationCopy;
  userIdentity = [configurationCopy userIdentity];
  v35 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = classesCopy;
  v36 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v36)
  {
    v34 = *v56;
    v40 = ML3EntityPropertyKeepLocal;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v9;
        v10 = *(*(&v55 + 1) + 8 * v9);
        v11 = objc_opt_new();
        v12 = [ML3ComparisonPredicate predicateWithProperty:v40 value:&off_1001ED210 comparison:3];
        v13 = [v10 queryWithLibrary:v35 predicate:v12];

        v61 = v40;
        v14 = [NSArray arrayWithObjects:&v61 count:1];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10005BBF4;
        v51[3] = &unk_1001DB528;
        v54 = v10;
        v15 = v35;
        v52 = v15;
        v16 = v11;
        v53 = v16;
        v37 = v13;
        [v13 enumeratePersistentIDsAndProperties:v14 usingBlock:v51];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v39 = v16;
        v17 = [v39 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v48;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v48 != v19)
              {
                objc_enumerationMutation(v39);
              }

              v21 = *(*(&v47 + 1) + 8 * i);
              v22 = os_log_create("com.apple.amp.itunescloudd", "Downloads");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v64 = v21;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "DownPinning %{public}@", buf, 0xCu);
              }

              v23 = objc_opt_new();
              trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
              v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 persistentID]);
              v26 = [ML3ComparisonPredicate predicateWithProperty:trackForeignPersistentID value:v25 comparison:1];
              v27 = [ML3Track queryWithLibrary:v15 predicate:v26];

              v59 = v40;
              v28 = [NSArray arrayWithObjects:&v59 count:1];
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_10005BC50;
              v45[3] = &unk_1001DF8D0;
              v29 = v23;
              v46 = v29;
              [v27 enumeratePersistentIDsAndProperties:v28 usingBlock:v45];

              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_10005BCD8;
              v41[3] = &unk_1001DF3A0;
              v42 = v29;
              v30 = v15;
              v43 = v30;
              v44 = v21;
              v31 = v29;
              [v30 performDatabaseTransactionWithBlock:v41];
            }

            v18 = [v39 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v18);
        }

        v9 = v38 + 1;
      }

      while ((v38 + 1) != v36);
      v36 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v36);
  }
}

@end