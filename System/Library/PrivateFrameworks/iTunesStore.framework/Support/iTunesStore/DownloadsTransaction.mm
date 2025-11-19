@interface DownloadsTransaction
- (BOOL)_moveDownloadWithID:(int64_t)a3 relativeToDownloadWithID:(int64_t)a4 comparisonType:(int64_t)a5;
- (BOOL)_resetDownload:(id)a3 withValues:(const void *)a4 isUserIntiated:(BOOL)a5;
- (BOOL)deletePersistentDownloadManagerWithClientID:(id)a3 persistenceID:(id)a4;
- (BOOL)deletePersistentDownloadManagerWithID:(int64_t)a3;
- (BOOL)finishDownloadWithID:(int64_t)a3 finalPhase:(id)a4 updatePipeline:(BOOL)a5;
- (BOOL)finishDownloadsWithIdentifiers:(id)a3 finalPhase:(id)a4;
- (BOOL)pauseDownloadsWithIdentifiers:(id)a3;
- (BOOL)prioritizeDownloadWithID:(int64_t)a3 aboveDownloadWithID:(int64_t)a4 error:(id *)a5;
- (BOOL)prioritizeDownloadsWithKind:(id)a3 clientID:(id)a4;
- (BOOL)resetDownloadsMatchingPredicate:(id)a3 isUserInitiated:(BOOL)a4;
- (BOOL)resetDownloadsWithIdentifiers:(id)a3 isUserInitiated:(BOOL)a4;
- (BOOL)restartDownloadsWithIdentifiers:(id)a3;
- (BOOL)retryDownloadWithIdentifier:(int64_t)a3;
- (BOOL)retryDownloadsWithIdentifiers:(id)a3;
- (BOOL)updateDownloadEntityWithIdentifier:(int64_t)a3 withDownload:(id)a4;
- (double)_orderKeyAdjacentToOrderKey:(double)a3 comparisonType:(int64_t)a4;
- (id)_addEffectiveClientWithBundleID:(id)a3 database:(id)a4;
- (id)_copyEffectiveBundleIDForDownload:(id)a3;
- (id)_newTransactionForDownload:(id)a3 inDatabase:(id)a4;
- (id)addDownloads:(id)a3;
- (id)changeset;
- (id)importDownloads:(id)a3 initialOrderKey:(double)a4 orderKeyIncrement:(double)a5;
- (id)insertDownloads:(id)a3 afterDownloadWithID:(int64_t)a4;
- (id)insertDownloads:(id)a3 beforeDownloadWithID:(int64_t)a4;
- (void)_setPolicy:(id)a3 forDownloadWithID:(int64_t)a4;
- (void)reconcileSoftwareDownloads:(id)a3 fromITunesStore:(BOOL)a4;
- (void)setValue:(id)a3 forExternalProperty:(id)a4 ofDownloadID:(int64_t)a5;
@end

@implementation DownloadsTransaction

- (id)changeset
{
  v2 = [(DownloadsChangeset *)self->super._changeset copy];

  return v2;
}

- (id)addDownloads:(id)a3
{
  [+[DownloadEntity maxValueForProperty:predicate:database:](DownloadEntity maxValueForProperty:@"order_key" predicate:0 database:{-[DownloadsSession database](self, "database")), "doubleValue"}];
  v6 = v5;
  [objc_opt_class() orderKeyIncrement];
  v8 = [(DownloadsTransaction *)self importDownloads:a3 initialOrderKey:v6 orderKeyIncrement:v7];
  v9 = [v8 count];
  if (v9 == [a3 count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v8];
  }

  return v8;
}

- (BOOL)deletePersistentDownloadManagerWithClientID:(id)a3 persistenceID:(id)a4
{
  v5 = [PersistentDownloadManagerEntity anyInDatabase:[(DownloadsSession *)self database] predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"persistence_id" equalToValue:a4], [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:a3], 0]]];
  if (v5)
  {
    v6 = [v5 persistentID];

    LOBYTE(v5) = [(DownloadsTransaction *)self deletePersistentDownloadManagerWithID:v6];
  }

  return v5;
}

- (BOOL)deletePersistentDownloadManagerWithID:(int64_t)a3
{
  v5 = [(DownloadsSession *)self database];
  v6 = objc_alloc_init(NSMutableArray);
  v25 = @"download_id";
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100091C80;
  v23[3] = &unk_100327288;
  v23[4] = v6;
  [+[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity queryWithDatabase:v5 predicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"manager_id", a3)), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v25, 1, v23}];
  v7 = [[PersistentDownloadManagerEntity alloc] initWithPersistentID:a3 inDatabase:v5];
  v8 = [(PersistentDownloadManagerEntity *)v7 deleteFromDatabase];

  if (!v8)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v18 = self;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      if (![PersistentDownloadEntity anyInDatabase:v5 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v13]])
      {
        v14 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v13 longLongValue], v5);
        v15 = [(DownloadEntity *)v14 deleteFromDatabase];

        if (!v15)
        {
          goto LABEL_12;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  v16 = 1;
  [(DownloadsChangeset *)v18->super._changeset addDownloadChangeTypes:1];
LABEL_13:

  return v16;
}

- (BOOL)finishDownloadWithID:(int64_t)a3 finalPhase:(id)a4 updatePipeline:(BOOL)a5
{
  v5 = a5;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v18 = 138412802;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = a3;
    v22 = 2112;
    v23 = a4;
    LODWORD(v17) = 32;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      [NSString stringWithCString:v12 encoding:4, &v18, v17];
      free(v13);
      SSFileLog();
    }
  }

  if (v5)
  {
    v14 = [[NSOrderedSet alloc] initWithObjects:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3), 0}];
    [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:v14 reason:0];
  }

  v15 = [[DownloadEntity alloc] initWithPersistentID:a3 inDatabase:[(DownloadsSession *)self database]];
  [(DownloadsExternalTransaction *)self unionChangeset:[(DownloadEntity *)v15 finishWithFinalPhase:a4]];
  [(DownloadEntity *)v15 deleteScratchDirectory];
  if ([+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")] && objc_msgSend(+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace, "defaultWorkspace"), "shouldModifyQuota:", -[DownloadEntity valueForProperty:](v15, "valueForProperty:", @"kind")))
  {
    [+[ApplicationWorkspace defaultWorkspace](ApplicationWorkspace "defaultWorkspace")];
  }

  return 1;
}

- (BOOL)finishDownloadsWithIdentifiers:(id)a3 finalPhase:(id)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        LODWORD(v11) = -[DownloadsTransaction finishDownloadWithID:finalPhase:updatePipeline:](self, "finishDownloadWithID:finalPhase:updatePipeline:", [v11 longLongValue], a4, 0);
        objc_autoreleasePoolPop(v12);
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:
  [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:a3 reason:0];
  return v13;
}

- (id)importDownloads:(id)a3 initialOrderKey:(double)a4 orderKeyIncrement:(double)a5
{
  v9 = +[NSMutableOrderedSet orderedSet];
  v79 = objc_alloc_init(NSMutableDictionary);
  v10 = [(DownloadsSession *)self database];
  v11 = [objc_opt_class() orderingBucketSize];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = a3;
  v77 = [a3 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v77)
  {
    __upper_bound = v11 >> 1;
    v75 = *v82;
    v74 = SSDownloadExternalPropertyPolicy;
    v78 = v9;
    v73 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v82 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v81 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        a4 = a4 + a5;
        [v13 setValue:+[NSNumber numberWithDouble:](NSNumber forProperty:{"numberWithDouble:", a4), @"order_key"}];
        [v13 setValue:+[NSNumber numberWithInt:](NSNumber forProperty:{"numberWithInt:", arc4random_uniform(__upper_bound)), @"order_seed"}];
        v15 = [v13 externalPropertyValues];
        if (![v15 objectForKey:v74])
        {
          v16 = [v13 downloadPolicy];
          if (v16)
          {
            [v13 setValue:+[NSNumber numberWithLongLong:](NSNumber forProperty:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", v16)), @"policy_id"}];
          }
        }

        v17 = [(DownloadsTransaction *)self _copyEffectiveBundleIDForDownload:v13];
        if (v17)
        {
          v18 = v17;
          v19 = [v79 objectForKey:v17];
          if (v19 || (v19 = [(DownloadsTransaction *)self _addEffectiveClientWithBundleID:v18 database:v10]) != 0)
          {
            v20 = v19;
            [v13 setValue:v19 forProperty:@"effective_client_id"];
            [v79 setObject:v20 forKey:v18];
          }
        }

        [v13 setValue:0 forProperty:@"application_id.bundle_id"];
        v21 = [v13 propertyValues];
        v22 = [[DownloadEntity alloc] initWithPropertyValues:v21 inDatabase:v10];
        if (!v22)
        {
          v41 = +[SSLogConfig sharedDaemonConfig];
          if (!v41)
          {
            v41 = +[SSLogConfig sharedConfig];
          }

          v42 = [v41 shouldLog];
          if ([v41 shouldLogToDisk])
          {
            v43 = v42 | 2;
          }

          else
          {
            v43 = v42;
          }

          if (os_log_type_enabled([v41 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v44 = v43;
          }

          else
          {
            v44 = v43 & 2;
          }

          if (v44)
          {
            v45 = objc_opt_class();
            v46 = [v13 databaseID];
            v85 = 138543618;
            v86 = v45;
            v87 = 2048;
            v88 = v46;
            LODWORD(v71) = 22;
            v70 = &v85;
            v47 = _os_log_send_and_compose_impl();
            if (v47)
            {
              v48 = v47;
              v49 = [NSString stringWithCString:v47 encoding:4, &v85, v71];
              free(v48);
              v70 = v49;
              SSFileLog();
            }
          }

          goto LABEL_67;
        }

        v23 = v22;
        v24 = [(DownloadsTransaction *)self _newTransactionForDownload:v22 inDatabase:v10];
        -[DownloadEntity setValue:forProperty:](v23, "setValue:forProperty:", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v24 persistentID]), @"transaction_id");
        if (v15)
        {
          [(DownloadsExternalTransaction *)self setExternalPropertyValues:v15 forDownloadWithID:[(DownloadEntity *)v23 persistentID]];
        }

        v25 = [(DownloadEntity *)v23 setAssetsUsingDownload:v13];
        if (!v25)
        {
          v50 = +[SSLogConfig sharedDaemonConfig];
          if (!v50)
          {
            v50 = +[SSLogConfig sharedConfig];
          }

          v51 = [v50 shouldLog];
          if ([v50 shouldLogToDisk])
          {
            v52 = v51 | 2;
          }

          else
          {
            v52 = v51;
          }

          if (os_log_type_enabled([v50 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v53 = v52;
          }

          else
          {
            v53 = v52 & 2;
          }

          if (v53)
          {
            v54 = objc_opt_class();
            v55 = [(DownloadEntity *)v23 persistentID];
            v85 = 138543618;
            v86 = v54;
            v87 = 2048;
            v88 = v55;
            LODWORD(v71) = 22;
            v70 = &v85;
            v56 = _os_log_send_and_compose_impl();
            if (v56)
            {
              v57 = v56;
              v58 = [NSString stringWithCString:v56 encoding:4, &v85, v71];
              free(v57);
              v70 = v58;
              SSFileLog();
            }
          }

LABEL_67:
          objc_autoreleasePoolPop(v14);
          v9 = v78;
          goto LABEL_68;
        }

        v26 = v25;
        context = v14;
        v27 = [(DownloadEntity *)v23 persistentID];
        [v78 addObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", v27)}];
        v28 = [v21 objectForKey:@"kind"];
        if (v28)
        {
          v29 = v28;
          if (SSDownloadKindIsMediaKind())
          {
            v30 = [(DownloadEntity *)v23 copyDownloadingIPodLibraryItem];
            if (v30)
            {
              v31 = v30;
              [(DownloadsChangeset *)self->super._changeset addIPodLibraryItem:v30];
              goto LABEL_22;
            }
          }

          else if (SSDownloadKindIsSoftwareKind())
          {
            if (SSDebugShouldUseAppstored())
            {
              v32 = +[SSLogConfig sharedDaemonConfig];
              if (!v32)
              {
                v32 = +[SSLogConfig sharedConfig];
              }

              v33 = v32;
              v34 = [v32 shouldLog];
              if ([v33 shouldLogToDisk])
              {
                v34 |= 2u;
              }

              if (!os_log_type_enabled([v33 OSLogObject], OS_LOG_TYPE_DEBUG))
              {
                v34 &= 2u;
              }

              if (v34)
              {
                v35 = objc_opt_class();
                v85 = 138412290;
                v86 = v35;
                LODWORD(v71) = 12;
                v70 = &v85;
                v36 = _os_log_send_and_compose_impl();
                if (v36)
                {
                  v37 = v36;
                  v38 = [NSString stringWithCString:v36 encoding:4, &v85, v71];
                  free(v37);
                  SSFileLog();
                  [(DownloadsChangeset *)self->super._changeset addDownloadKind:v29, v38];
                  goto LABEL_36;
                }
              }
            }

            else if ([objc_msgSend(v21 objectForKey:{@"is_automatic", "integerValue"}] != 2)
            {
              v39 = [v21 objectForKey:@"bundle_id"];
              v31 = -[ApplicationHandle initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:]([ApplicationHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:", [v24 persistentID], v27, v39);
              [(DownloadsChangeset *)self->super._changeset addAppPlaceholderWithHandle:v31];
              if ([v39 length])
              {
                [ApplicationWorkspaceState incompleteNotificationForInstallingDownload:v27 bundleIdentifier:v39];
              }

LABEL_22:
            }
          }

          [(DownloadsChangeset *)self->super._changeset addDownloadKind:v29, v70];
        }

LABEL_36:
        if ([objc_msgSend(v21 objectForKey:{@"is_restore", "BOOLValue"}])
        {
          [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:32];
          [(DownloadsChangeset *)self->super._changeset addRestorableDownloadID:v27];
        }

        [(DownloadsChangeset *)self->super._changeset unionChangeset:v26];

        objc_autoreleasePoolPop(context);
        v12 = v12 + 1;
        v10 = v73;
      }

      while (v77 != v12);
      v40 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
      v9 = v78;
      v77 = v40;
    }

    while (v40);
  }

LABEL_68:

  v59 = [v9 count];
  v60 = [obj count];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
  if (v59 != v60)
  {
    v61 = +[SSLogConfig sharedDaemonConfig];
    if (!v61)
    {
      v61 = +[SSLogConfig sharedConfig];
    }

    v62 = [v61 shouldLog];
    if ([v61 shouldLogToDisk])
    {
      v63 = v62 | 2;
    }

    else
    {
      v63 = v62;
    }

    if (!os_log_type_enabled([v61 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v63 &= 2u;
    }

    if (v63)
    {
      v64 = objc_opt_class();
      v65 = [obj count];
      v66 = [v9 count];
      v85 = 138543874;
      v86 = v64;
      v87 = 2048;
      v88 = v65;
      v89 = 2048;
      v90 = v66;
      LODWORD(v71) = 32;
      v67 = _os_log_send_and_compose_impl();
      if (v67)
      {
        v68 = v67;
        [NSString stringWithCString:v67 encoding:4, &v85, v71];
        free(v68);
        SSFileLog();
      }
    }

    return 0;
  }

  return v9;
}

- (id)insertDownloads:(id)a3 afterDownloadWithID:(int64_t)a4
{
  v6 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:[(DownloadsSession *)self database]];
  v7 = [(DownloadEntity *)v6 valueForProperty:@"order_key"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:5 comparisonType:?];
    v11 = -[DownloadsTransaction importDownloads:initialOrderKey:orderKeyIncrement:](self, "importDownloads:initialOrderKey:orderKeyIncrement:", a3, v9, vabdd_f64(v10, v9) / ([a3 count] + 1));
  }

  else
  {
    v11 = [(DownloadsTransaction *)self addDownloads:a3];
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 == [a3 count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v12];
  }

  return v12;
}

- (id)insertDownloads:(id)a3 beforeDownloadWithID:(int64_t)a4
{
  v6 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:[(DownloadsSession *)self database]];
  v7 = [(DownloadEntity *)v6 valueForProperty:@"order_key"];
  if (v7)
  {
    [v7 doubleValue];
    v9 = v8;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:3 comparisonType:?];
    v11 = -[DownloadsTransaction importDownloads:initialOrderKey:orderKeyIncrement:](self, "importDownloads:initialOrderKey:orderKeyIncrement:", a3, v10, vabdd_f64(v10, v9) / ([a3 count] + 1));
  }

  else
  {
    v11 = [(DownloadsTransaction *)self addDownloads:a3];
  }

  v12 = v11;
  v13 = [v11 count];
  if (v13 == [a3 count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v12];
  }

  return v12;
}

- (BOOL)pauseDownloadsWithIdentifiers:(id)a3
{
  v19 = [(DownloadsSession *)self database];
  obj = a3;
  v18 = [a3 count];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = SSDownloadPhasePaused;
    v16 = SSDownloadPropertyDownloadPhase;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v10 longLongValue], v19);
        v13 = [(DownloadEntity *)v12 downloadKind];
        [(DownloadEntity *)v12 setValue:v8 forProperty:@"download_state.phase"];
        [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:2];
        [(DownloadsChangeset *)self->super._changeset addDownloadKind:v13];
        [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:[(DownloadEntity *)v12 persistentID]];
        if (v18 == 1)
        {
          v14 = [[NSDictionary alloc] initWithObjectsAndKeys:{v8, v16, 0}];
          [(DownloadsChangeset *)self->super._changeset setChangedDownloadProperties:v14];
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  [(DownloadPipeline *)self->super.super._pipeline stopDownloadsWithIdentifiers:obj reason:1];
  return 1;
}

- (BOOL)prioritizeDownloadWithID:(int64_t)a3 aboveDownloadWithID:(int64_t)a4 error:(id *)a5
{
  v9 = [[DownloadEntity alloc] initWithPersistentID:a3 inDatabase:[(DownloadsSession *)self database]];
  if (([(DownloadEntity *)v9 existsInDatabase]& 1) != 0 && ([(DownloadEntity *)v9 valueForProperty:@"IFNULL(download_state.phase, SSDownloadPhaseWaiting)"], !SSDownloadPhaseIsFinishedPhase()))
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v21 = 138412546;
      v22 = objc_opt_class();
      v23 = 2048;
      v24 = a3;
      LODWORD(v20) = 22;
      v19 = &v21;
      v16 = _os_log_send_and_compose_impl();
      if (v16)
      {
        v17 = v16;
        v18 = [NSString stringWithCString:v16 encoding:4, &v21, v20];
        free(v17);
        v19 = v18;
        SSFileLog();
      }
    }

    [(DownloadEntity *)v9 setValue:&off_10034BC40 forProperty:@"priority", v19];
    if (!a4)
    {
      v11 = 1;
      [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)self->super._changeset addDownloadKind:[(DownloadEntity *)v9 downloadKind]];
      [(DownloadPipeline *)self->super.super._pipeline prioritizeDownloadWithIdentifier:[NSNumber numberWithLongLong:a3]];
      goto LABEL_6;
    }

    v11 = [(DownloadsTransaction *)self moveDownloadWithID:a3 beforeDownloadWithID:a4];
    v10 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = SSError();
    v11 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }
  }

  if (!v11)
  {
    v11 = 0;
    *a5 = v10;
  }

LABEL_6:

  return v11;
}

- (BOOL)prioritizeDownloadsWithKind:(id)a3 clientID:(id)a4
{
  v7 = [(DownloadsSession *)self database];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:a3];
  v9 = [DownloadEntity minValueForProperty:@"order_key" predicate:[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8 database:[SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" value:a4 comparisonType:2], 0]], v7];
  if (v9)
  {
    v40 = a3;
    v10 = v9;
    v11 = objc_alloc_init(NSMutableArray);
    v38 = v10;
    [v10 doubleValue];
    v39 = self;
    [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:3 comparisonType:?];
    v13 = v12;
    v14 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8, [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:a4], 0]];
    v15 = objc_alloc_init(SSSQLiteQueryDescriptor);
    [v15 setEntityClass:objc_opt_class()];
    [v15 setOrderingDirections:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", SSSQLiteOrderDescending, SSSQLiteOrderAscending, 0)}];
    [v15 setOrderingProperties:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"priority", @"order_key", 0)}];
    [v15 setPredicate:v14];
    v16 = [[SSSQLiteQuery alloc] initWithDatabase:v7 descriptor:v15];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10009364C;
    v45[3] = &unk_1003272B0;
    v45[4] = v11;
    [v16 enumeratePersistentIDsUsingBlock:v45];

    if ([v11 count])
    {
      v17 = a4;
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v19 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      if (os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 2;
      }

      if (v21)
      {
        v22 = objc_opt_class();
        v47 = 138412802;
        v48 = v22;
        v49 = 2112;
        v50 = v40;
        v51 = 2112;
        v52 = v17;
        LODWORD(v37) = 32;
        v36 = &v47;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
          v24 = v23;
          v25 = [NSString stringWithCString:v23 encoding:4, &v47, v37];
          free(v24);
          v36 = v25;
          SSFileLog();
        }
      }

      [v38 doubleValue];
      v27 = v26;
      v28 = [v11 count];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = (v27 - v13) / (v28 + 1);
        v32 = *v42;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v42 != v32)
            {
              objc_enumerationMutation(v11);
            }

            v13 = v31 + v13;
            v34 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v41 + 1) + 8 * i) longLongValue], v7);
            [(DownloadEntity *)v34 setValue:[NSNumber forProperty:"numberWithDouble:" numberWithDouble:v13], @"order_key"];
          }

          v30 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v30);
      }

      [(DownloadsChangeset *)v39->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)v39->super._changeset addDownloadKind:v40];
    }
  }

  return 1;
}

- (void)reconcileSoftwareDownloads:(id)a3 fromITunesStore:(BOOL)a4
{
  if (a4)
  {
    v6 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:0], [SSSQLiteComparisonPredicate predicateWithProperty:@"is_restore" equalToLongLong:1], 0]];
  }

  else
  {
    v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  }

  v7 = v6;
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:0];
  v10 = SSDownloadPhaseCanceled;
  v42[0] = SSDownloadPhaseCanceled;
  v42[1] = SSDownloadPhaseFinished;
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:v8, v7, v9, [SSSQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", [NSArray arrayWithObjects:v42 count:2]], 0]];
  v12 = objc_alloc_init(NSMutableOrderedSet);
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v38 = 138412546;
    v39 = objc_opt_class();
    v40 = 2048;
    v41 = [a3 count];
    LODWORD(v35) = 22;
    v33 = &v38;
    v16 = _os_log_send_and_compose_impl();
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4, &v38, v35];
      free(v17);
      v33 = v18;
      SSFileLog();
    }
  }

  v36[5] = v12;
  v37 = @"bundle_id";
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100093C24;
  v36[3] = &unk_1003272D8;
  v36[4] = a3;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:-[DownloadsSession database](self predicate:{"database", v33), v11), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v37, 1, v36}];
  if ([v12 count])
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v23 = [v12 count];
      v38 = 138412546;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      LODWORD(v35) = 22;
      v34 = &v38;
      v24 = _os_log_send_and_compose_impl();
      if (v24)
      {
        v25 = v24;
        v26 = [NSString stringWithCString:v24 encoding:4, &v38, v35];
        free(v25);
        v34 = v26;
        SSFileLog();
      }
    }

    [(DownloadsTransaction *)self finishDownloadsWithIdentifiers:v12 finalPhase:v10, v34];
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    if (!os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v30 = objc_opt_class();
      v38 = 138412546;
      v39 = v30;
      v40 = 2112;
      v41 = v12;
      LODWORD(v35) = 22;
      v31 = _os_log_send_and_compose_impl();
      if (v31)
      {
        v32 = v31;
        [NSString stringWithCString:v31 encoding:4, &v38, v35];
        free(v32);
        SSFileLog();
      }
    }
  }
}

- (BOOL)resetDownloadsMatchingPredicate:(id)a3 isUserInitiated:(BOOL)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = objc_alloc_init(NSMutableOrderedSet);
  v20[0] = @"is_automatic";
  v20[1] = @"download_state.blocked_reason";
  v20[2] = @"is_private";
  v20[3] = @"kind";
  v20[4] = @"download_state.phase";
  v20[5] = @"download_state.restore_state";
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100093E9C;
  v10[3] = &unk_100327300;
  v11 = [(DownloadsSession *)self database];
  v12 = self;
  v15 = a4;
  v13 = v7;
  v14 = &v16;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:v11 predicate:{a3), "enumeratePersistentIDsAndProperties:count:usingBlock:", v20, 6, v10}];
  if (*(v17 + 24) == 1 && [v7 count])
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v7];
  }

  v8 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v8;
}

- (BOOL)resetDownloadsWithIdentifiers:(id)a3 isUserInitiated:(BOOL)a4
{
  v4 = a4;
  v15 = objc_alloc_init(NSMutableOrderedSet);
  v22[0] = @"is_automatic";
  v22[1] = @"download_state.blocked_reason";
  v22[2] = @"is_private";
  v22[3] = @"kind";
  v22[4] = @"download_state.phase";
  v22[5] = @"download_state.restore_state";
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v11 longLongValue], -[DownloadsSession database](self, "database"));
        [(DownloadEntity *)v12 getValues:v20 forProperties:v22 count:6];
        if ([(DownloadsTransaction *)self _resetDownload:v12 withValues:v20 isUserIntiated:v4])
        {
          [v15 addObject:v11];
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [v15 count];
  if (v13)
  {
    [(DownloadsChangeset *)self->super._changeset addDownloadsToPipelineWithIDs:v15];
  }

  return v13 != 0;
}

- (BOOL)restartDownloadsWithIdentifiers:(id)a3
{
  v5 = [(DownloadsSession *)self database];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a3;
  v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v10 longLongValue], v5);
        [(DownloadsChangeset *)self->super._changeset addDownloadKind:[(DownloadEntity *)v12 downloadKind]];
        [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:[(DownloadEntity *)v12 persistentID]];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(DownloadsChangeset *)self->super._changeset restartDownloadsInPipelineWithIDs:obj];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:2];
  return 1;
}

- (BOOL)retryDownloadWithIdentifier:(int64_t)a3
{
  v4 = [[NSOrderedSet alloc] initWithObjects:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a3), 0}];
  LOBYTE(self) = [(DownloadsTransaction *)self retryDownloadsWithIdentifiers:v4];

  return self;
}

- (BOOL)retryDownloadsWithIdentifiers:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v11 + 1) + 8 * v8) longLongValue], -[DownloadsSession database](self, "database"));
        [(DownloadsExternalTransaction *)self unionChangeset:[(DownloadEntity *)v9 retryDownload]];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return 1;
}

- (BOOL)updateDownloadEntityWithIdentifier:(int64_t)a3 withDownload:(id)a4
{
  v7 = [[DownloadEntity alloc] initWithPersistentID:a3 inDatabase:[(DownloadsSession *)self database]];
  v8 = [a4 externalPropertyValues];
  if (![v8 objectForKey:SSDownloadExternalPropertyPolicy])
  {
    v9 = [a4 downloadPolicy];
    if (v9)
    {
      [a4 setValue:+[NSNumber numberWithLongLong:](NSNumber forProperty:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", v9)), @"policy_id"}];
    }
  }

  if (v8)
  {
    [(DownloadsExternalTransaction *)self setExternalPropertyValues:v8 forDownloadWithID:a3];
  }

  -[DownloadEntity setValuesWithDictionary:](v7, "setValuesWithDictionary:", [a4 propertyValues]);
  v10 = [(DownloadEntity *)v7 setAssetsUsingDownload:a4];
  if (v10)
  {
    v11 = [a4 valueForProperty:@"kind"];
    if (SSDownloadKindIsMediaKind())
    {
      v12 = [(DownloadEntity *)v7 copyDownloadingIPodLibraryItem];
      if (v12)
      {
        v13 = v12;
        [(DownloadsChangeset *)self->super._changeset addIPodLibraryItem:v12];
      }
    }

    [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:16];
    [(DownloadsChangeset *)self->super._changeset addDownloadKind:v11];
    [(DownloadsChangeset *)self->super._changeset addDownloadToPipelineWithID:a3];
    [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:a3];
    [(DownloadsChangeset *)self->super._changeset unionChangeset:v10];
  }

  return v10 != 0;
}

- (void)setValue:(id)a3 forExternalProperty:(id)a4 ofDownloadID:(int64_t)a5
{
  if ([a4 isEqualToString:SSDownloadExternalPropertyPolicy])
  {

    [(DownloadsTransaction *)self _setPolicy:a3 forDownloadWithID:a5];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = DownloadsTransaction;
    [(DownloadsExternalTransaction *)&v9 setValue:a3 forExternalProperty:a4 ofDownloadID:a5];
  }
}

- (id)_addEffectiveClientWithBundleID:(id)a3 database:(id)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_100094970;
  v21 = sub_100094980;
  v22 = 0;
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v23 = @"effective_client_id";
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009498C;
  v16[3] = &unk_100327328;
  v16[4] = &v17;
  [+[DownloadApplicationIdentifierEntity queryWithDatabase:predicate:](DownloadApplicationIdentifierEntity queryWithDatabase:a4 predicate:{v6), "enumeratePersistentIDsAndProperties:count:usingBlock:", &v23, 1, v16}];
  v7 = v18[5];
  if (!v7)
  {
    v8 = [DownloadApplicationIdentifierEntity maxValueForProperty:@"effective_client_id" predicate:0 database:a4];
    v9 = [NSNumber alloc];
    if ([v8 longLongValue] >= 999)
    {
      v10 = [v8 longLongValue] + 1;
    }

    else
    {
      v10 = 1000;
    }

    v11 = [v9 initWithLongLong:v10];
    v18[5] = v11;
    v12 = [NSDictionary alloc];
    v13 = [v12 initWithObjectsAndKeys:{v18[5], @"effective_client_id", a3, @"bundle_id", 0}];

    v7 = v18[5];
  }

  v14 = v7;
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (id)_copyEffectiveBundleIDForDownload:(id)a3
{
  v4 = [a3 valueForProperty:@"override_audit_token_data"];
  if (v4)
  {
    v5 = v4;
    if ([v4 length] == 32)
    {
      [v5 getBytes:&v8 length:32];
      return CPCopyBundleIdentifierFromAuditToken();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = [a3 valueForProperty:@"application_id.bundle_id"];
    if (!result)
    {
      v7 = [a3 valueForProperty:@"client_id"];

      return v7;
    }
  }

  return result;
}

- (BOOL)_moveDownloadWithID:(int64_t)a3 relativeToDownloadWithID:(int64_t)a4 comparisonType:(int64_t)a5
{
  v8 = [[DownloadEntity alloc] initWithPersistentID:a3 inDatabase:[(DownloadsSession *)self database]];
  v9 = [(DownloadEntity *)v8 downloadKind];
  if (v9)
  {
    v10 = v9;
    v11 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:[(DownloadsSession *)self database]];
    v12 = [(DownloadEntity *)v11 valueForProperty:@"order_key"];
    v13 = v12 != 0;
    if (v12)
    {
      [v12 doubleValue];
      v15 = v14;
      [(DownloadsTransaction *)self _orderKeyAdjacentToOrderKey:a5 comparisonType:?];
      if (a5 == 3)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      [(DownloadEntity *)v8 setValue:[NSNumber forProperty:"numberWithDouble:" numberWithDouble:v16) * 0.5], @"order_key"];
      [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:1];
      [(DownloadsChangeset *)self->super._changeset addDownloadKind:v10];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_newTransactionForDownload:(id)a3 inDatabase:(id)a4
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [a3 valueForProperty:@"kind"];
  if ([v7 isEqualToString:SSDownloadKindSoftwareApplication])
  {
    if ([objc_msgSend(a3 valueForProperty:{@"is_automatic", "integerValue"}] == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v8), @"type"}];
  v9 = [a3 valueForProperty:@"bundle_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setObject:v9 forKey:@"bundle_id"];
  }

  v10 = [[TransactionEntity alloc] initWithPropertyValues:v6 inDatabase:a4];

  return v10;
}

- (double)_orderKeyAdjacentToOrderKey:(double)a3 comparisonType:(int64_t)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_100094970;
  v19 = sub_100094980;
  v20 = 0;
  v7 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v7 setEntityClass:objc_opt_class()];
  [v7 setLimitCount:1];
  if (a4 == 3)
  {
    [v7 setOrderingDirections:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", SSSQLiteOrderDescending)}];
  }

  [v7 setOrderingProperties:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", @"order_key"}];
  [v7 setPredicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:value:comparisonType:](SSSQLiteComparisonPredicate, "predicateWithProperty:value:comparisonType:", @"order_key", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", a3), a4)}];
  v8 = [[SSSQLiteQuery alloc] initWithDatabase:-[DownloadsSession database](self descriptor:{"database"), v7}];
  v21 = @"order_key";
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100094F88;
  v14[3] = &unk_100327328;
  v14[4] = &v15;
  [v8 enumeratePersistentIDsAndProperties:&v21 count:1 usingBlock:v14];

  v9 = v16[5];
  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    [objc_opt_class() orderKeyIncrement];
    if (a4 == 5)
    {
      v11 = v12 + a3;
    }

    else
    {
      v11 = a3 - v12;
    }
  }

  _Block_object_dispose(&v15, 8);
  return v11;
}

- (BOOL)_resetDownload:(id)a3 withValues:(const void *)a4 isUserIntiated:(BOOL)a5
{
  v5 = a5;
  v9 = [*a4 integerValue];
  v10 = ([a4[4] isEqualToString:SSDownloadPhaseFailed] & 1) != 0 || (objc_msgSend(a4[4], "isEqualToString:", SSDownloadPhasePaused) & 1) != 0 || objc_msgSend(a4[1], "integerValue") != 0;
  v11 = [a4[2] BOOLValue];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v10 && !v12)
  {
    return 0;
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:SSDownloadPhaseWaiting forKey:@"download_state.phase"];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.restore_state"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.blocked_reason"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"store_preorder_id"}];
  [v14 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 0), @"download_state.store_queue_refresh_count"}];
  v15 = [a3 persistentID];
  v16 = v9 == 0 || v10;
  v17 = +[SSLogConfig sharedDaemonConfig];
  v18 = v17;
  if (v16 || !v5)
  {
    if (!v17)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v27 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v35 = 138412546;
      v36 = objc_opt_class();
      v37 = 2048;
      v38 = v15;
      LODWORD(v34) = 22;
      v33 = &v35;
      v29 = _os_log_send_and_compose_impl();
      if (v29)
      {
        v30 = v29;
        v31 = [NSString stringWithCString:v29 encoding:4, &v35, v34];
        free(v30);
        v33 = v31;
        SSFileLog();
      }
    }

    v26 = 18;
  }

  else
  {
    if (!v17)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v35 = 138412546;
      v36 = objc_opt_class();
      v37 = 2048;
      v38 = v15;
      LODWORD(v34) = 22;
      v33 = &v35;
      v21 = _os_log_send_and_compose_impl();
      if (v21)
      {
        v22 = v21;
        v23 = [NSString stringWithCString:v21 encoding:4, &v35, v34];
        free(v22);
        v33 = v23;
        SSFileLog();
      }
    }

    [v14 setObject:&off_10034BC58 forKey:{@"is_automatic", v33}];
    [v14 setObject:&__kCFBooleanFalse forKey:@"is_private"];
    [v14 setObject:&off_10034BC70 forKey:@"priority"];
    v24 = [SSDownloadPolicy alloc];
    v25 = [v24 initWithDownloadKind:SSDownloadKindSoftwareApplication URLBagType:0];
    [v14 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", -[DownloadPolicyManager addDownloadPolicy:](-[DownloadsSession policyManager](self, "policyManager"), "addDownloadPolicy:", v25)), @"policy_id"}];

    [(DownloadsChangeset *)self->super._changeset addPolicyChangedDownloadID:v15];
    v26 = 19;
  }

  if ([a4[5] integerValue])
  {
    v26 |= 0x20uLL;
    [(DownloadsChangeset *)self->super._changeset addRestorableDownloadID:v15];
  }

  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:v26];
  [(DownloadsChangeset *)self->super._changeset addDownloadKind:a4[3]];
  [(DownloadsChangeset *)self->super._changeset addStatusChangedDownloadID:v15];
  [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:v15];
  v13 = [a3 setValuesWithDictionary:v14];

  return v13;
}

- (void)_setPolicy:(id)a3 forDownloadWithID:(int64_t)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    objc_opt_class();
    ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
    if (!ObjectWithArchivedData)
    {
      return;
    }

    v8 = ObjectWithArchivedData;
    v6 = [(DownloadPolicyManager *)[(DownloadsSession *)self policyManager] addDownloadPolicy:ObjectWithArchivedData];

    if (v6 == -1)
    {
      return;
    }
  }

  v9 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:[(DownloadsSession *)self database]];
  [(DownloadEntity *)v9 setValue:[NSNumber forProperty:"numberWithLongLong:" numberWithLongLong:v6], @"policy_id"];
  [(DownloadsChangeset *)self->super._changeset addDownloadChangeTypes:17];
  [(DownloadsChangeset *)self->super._changeset addPolicyChangedDownloadID:a4];
  [(DownloadsChangeset *)self->super._changeset addUpdatedDownloadID:a4];
}

@end