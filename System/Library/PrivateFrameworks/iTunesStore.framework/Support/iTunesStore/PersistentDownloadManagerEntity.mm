@interface PersistentDownloadManagerEntity
+ (void)initialize;
- (id)finishPersistentDownloadsWithDownloadIDs:(id)ds;
- (void)performNewsstandMigration1InDatabase:(id)database;
@end

@implementation PersistentDownloadManagerEntity

- (id)finishPersistentDownloadsWithDownloadIDs:(id)ds
{
  v38 = objc_alloc_init(DownloadsChangeset);
  database = [(PersistentDownloadManagerEntity *)self database];
  obj = ds;
  v41 = [SSSQLiteComparisonPredicate predicateWithProperty:@"manager_id" equalToLongLong:[(PersistentDownloadManagerEntity *)self persistentID]];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [ds countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v42 = *v44;
    v37 = SSDownloadMetadataKeyFileExtensionMoviePackage;
    v39 = SSDownloadPhaseFailed;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v9 longLongValue], database);
        v52[0] = @"kind";
        v52[1] = @"download_state.phase";
        v52[2] = @"is_hls";
        [(DownloadEntity *)v10 getValues:v51 forProperties:v52 count:3];
        v11 = v51[2];
        if (objc_opt_respondsToSelector())
        {
          bOOLValue = [v11 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v13 = v51[0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = 0;
        }

        if (SSDownloadPhaseIsUnsuccessful())
        {
          if (bOOLValue)
          {
            if (SSDownloadKindIsMediaKind())
            {
              v14 = [DownloadAssetEntity anyInDatabase:database predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v9], [SSSQLiteComparisonPredicate predicateWithProperty:@"is_hls" equalToValue:&__kCFBooleanTrue], 0]]];
              if (v14)
              {
                v15 = [sub_10020F36C(v13) stringByAppendingPathComponent:{-[NSString stringByAppendingPathExtension:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", objc_msgSend(v14, "persistentID")), "stringByAppendingPathExtension:", v37)}];
                if (v15)
                {
                  v16 = v15;
                  LOBYTE(v47) = 0;
                  v17 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:v15, &v47];
                  if (v47 == 1)
                  {
                    if (v17)
                    {
                      v36 = [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v16, 0];
                      v18 = +[SSLogConfig sharedDaemonConfig];
                      if (!v18)
                      {
                        v18 = +[SSLogConfig sharedConfig];
                      }

                      shouldLog = [v18 shouldLog];
                      if ([v18 shouldLogToDisk])
                      {
                        shouldLog |= 2u;
                      }

                      if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEBUG))
                      {
                        shouldLog &= 2u;
                      }

                      if (shouldLog)
                      {
                        v20 = objc_opt_class();
                        v47 = 138412802;
                        v48 = v20;
                        v49 = 1024;
                        LODWORD(v50[0]) = v36;
                        WORD2(v50[0]) = 2112;
                        *(v50 + 6) = v9;
                        LODWORD(v35) = 28;
                        v33 = &v47;
                        v21 = _os_log_send_and_compose_impl();
                        if (v21)
                        {
                          v22 = v21;
                          v23 = [NSString stringWithCString:v21 encoding:4, &v47, v35];
                          free(v22);
                          v33 = v23;
                          SSFileLog();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        if ((SSDownloadPhaseIsFinishedPhase() & 1) != 0 || [v51[1] isEqualToString:v39])
        {
          v24 = +[SSLogConfig sharedDaemonConfig];
          if (!v24)
          {
            v24 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v24 shouldLog];
          if ([v24 shouldLogToDisk])
          {
            v26 = shouldLog2 | 2;
          }

          else
          {
            v26 = shouldLog2;
          }

          if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v26 &= 2u;
          }

          if (v26)
          {
            v27 = objc_opt_class();
            v47 = 138412546;
            v48 = v27;
            v49 = 2112;
            v50[0] = v9;
            LODWORD(v35) = 22;
            v34 = &v47;
            v28 = _os_log_send_and_compose_impl();
            if (v28)
            {
              v29 = v28;
              v30 = [NSString stringWithCString:v28 encoding:4, &v47, v35];
              free(v29);
              v34 = v30;
              SSFileLog();
            }
          }

          v31 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v9, v34];
          [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:database predicate:{+[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v31, v41, 0))), "deleteAllEntities"}];
          if (![PersistentDownloadEntity anyInDatabase:database predicate:v31])
          {
            [(DownloadEntity *)v10 deleteFromDatabase];
            [(DownloadsChangeset *)v38 addDownloadChangeTypes:8];
            [(DownloadsChangeset *)v38 addDownloadKind:v51[0]];
            [(DownloadsChangeset *)v38 addRemovedDownloadID:[(DownloadEntity *)v10 persistentID]];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v7);
  }

  return v38;
}

- (void)performNewsstandMigration1InDatabase:(id)database
{
  v9 = @"download_id";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100140868;
  v5[3] = &unk_100329AE8;
  databaseCopy = database;
  v7 = [(PersistentDownloadManagerEntity *)self valueForProperty:@"client_id"];
  selfCopy = self;
  [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:databaseCopy predicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"manager_id", -[PersistentDownloadManagerEntity persistentID](self, "persistentID"))), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v9, 1, v5}];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1), @"migration_version", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", 1), @"filters_external_downloads", 0}];
  [(PersistentDownloadManagerEntity *)self setValuesWithDictionary:v4];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100383F18 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"persistent_download", @"manager_id", @"persistent_manager_kind", 0}];
    qword_100383F10 = [[NSSet alloc] initWithObjects:{@"persistent_download", @"persistent_manager_kind", 0}];
  }
}

@end