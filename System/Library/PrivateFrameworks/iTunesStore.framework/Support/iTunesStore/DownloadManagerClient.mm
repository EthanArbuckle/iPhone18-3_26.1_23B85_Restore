@interface DownloadManagerClient
- (BOOL)_supportsDownloadKind:(id)kind;
- (BOOL)canAccessAsset:(id)asset;
- (BOOL)canAccessDownload:(id)download;
- (BOOL)hasEntitlements;
- (BOOL)reloadPersistenceStateInDatabase:(id)database;
- (BOOL)shouldFilterExternalDownloads;
- (BOOL)supportsDownloadKind:(id)kind;
- (DownloadManagerClient)initWithInputConnection:(id)connection;
- (NSArray)prefetchedDownloadExternalProperties;
- (NSArray)prefetchedDownloadProperties;
- (NSSet)downloadKinds;
- (NSString)persistenceIdentifier;
- (id)_copyAllowedThirdPartyKinds;
- (id)_copyDownloadKindsFromEntitlement;
- (id)_copyFilteredKindsForKinds:(id)kinds;
- (id)downloadsQueryForMessage:(id)message database:(id)database;
- (id)newDownloadWithClientXPCDownload:(id)download error:(id *)error;
- (id)persistentDownloadManagerInDatabase:(id)database;
- (void)_sendCoalescableMessage:(int64_t)message withDownloadIDs:(id)ds;
- (void)addClientEntityToDatabase:(id)database;
- (void)dealloc;
- (void)sendChangeset:(id)changeset;
- (void)sendDownloadKindsUsingNetwork:(id)network;
- (void)sendDownloadStateChangedWithID:(int64_t)d externalValues:(id)values propertyValues:(id)propertyValues;
- (void)setClientOptions:(id)options;
- (void)setDownloadKinds:(id)kinds;
- (void)setPersistenceIdentifier:(id)identifier;
- (void)setPrefetchedDownloadExternalProperties:(id)properties;
- (void)setPrefetchedDownloadProperties:(id)properties;
- (void)setShouldFilterExternalDownloads:(BOOL)downloads;
@end

@implementation DownloadManagerClient

- (NSString)persistenceIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100123590;
  v10 = sub_1001235A0;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003130;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSSet)downloadKinds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100123590;
  v10 = sub_1001235A0;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000326C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_copyDownloadKindsFromEntitlement
{
  if (self->super._legacyEntitlements || self->_isDownloadsEntitled)
  {

    return [(DownloadManagerClient *)self _copyPrivateDownloadKinds];
  }

  else
  {
    result = [(XPCClient *)self valueForEntitlement:@"PrivateDownloadKinds"];
    if (result)
    {
      v3 = result;
      v4 = [NSMutableSet alloc];

      return [v4 initWithArray:v3];
    }
  }

  return result;
}

- (BOOL)shouldFilterExternalDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003DB0;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadManagerClient;
  [(XPCClient *)&v3 dealloc];
}

- (NSArray)prefetchedDownloadProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100123590;
  v10 = sub_1001235A0;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004194;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)prefetchedDownloadExternalProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100123590;
  v10 = sub_1001235A0;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000044D4;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (DownloadManagerClient)initWithInputConnection:(id)connection
{
  v6.receiver = self;
  v6.super_class = DownloadManagerClient;
  v4 = [(XPCClient *)&v6 initWithInputConnection:?];
  if (v4)
  {
    if (connection)
    {
      v4->_isDownloadsEntitled = SSXPCConnectionHasEntitlement();
    }

    if (!v4->super._entitlements && !v4->_isDownloadsEntitled)
    {
      v4->_shouldFilterExternalDownloads = 1;
    }
  }

  return v4;
}

- (void)addClientEntityToDatabase:(id)database
{
  clientIdentifier = [(XPCClient *)self clientIdentifier];
  if (clientIdentifier)
  {
    v6 = clientIdentifier;
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v6 forKey:@"client_id"];
    auditTokenData = [(XPCClient *)self auditTokenData];
    if (auditTokenData)
    {
      [v8 setObject:auditTokenData forKey:@"audit_token_data"];
    }

    [v8 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", -[XPCClient clientType](self, "clientType") == 1), @"client_type"}];
  }
}

- (BOOL)canAccessAsset:(id)asset
{
  v5 = [asset valueForProperty:@"download_id"];
  if (v5)
  {
    v6 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v5 longLongValue], objc_msgSend(asset, "database"));
    v7 = [(DownloadManagerClient *)self canAccessDownload:v6];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)canAccessDownload:(id)download
{
  v7[0] = @"client_id";
  v7[1] = @"is_private";
  v7[2] = @"kind";
  [download getValues:v6 forProperties:v7 count:3];
  if (v6[2])
  {
    v4 = [(DownloadManagerClient *)self supportsDownloadKind:?];
    if (v4)
    {
      if ([v6[1] BOOLValue] && v6[0])
      {
        LOBYTE(v4) = [v6[0] isEqualToString:{-[XPCClient clientIdentifier](self, "clientIdentifier")}];
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)downloadsQueryForMessage:(id)message database:(id)database
{
  if (xpc_dictionary_get_int64(message, "0") != 39)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v7 = SSXPCDictionaryCopyCFObjectWithClass();
  if (![v7 count])
  {

LABEL_6:
    downloadKinds = [(DownloadManagerClient *)self downloadKinds];
    goto LABEL_7;
  }

  downloadKinds = [NSSet setWithArray:v7];

  if (!downloadKinds)
  {
    goto LABEL_6;
  }

LABEL_7:
  clientIdentifier = [(XPCClient *)self clientIdentifier];
  v10 = 0;
  if (clientIdentifier && downloadKinds)
  {
    v11 = clientIdentifier;
    v12 = objc_alloc_init(NSMutableArray);
    v13 = xpc_dictionary_get_BOOL(message, "1");
    v14 = [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:v11];
    if (v13)
    {
      v23[0] = v14;
      v23[1] = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(application_id.bundle_id equalToValue:download.client_id)", v11];
      v15 = [NSArray arrayWithObjects:v23 count:2];
    }

    else
    {
      v15 = [NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"is_private" equalToLongLong:0], v14, 0];
    }

    [v12 addObject:{+[SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAnyPredicates:", v15)}];
    [v12 addObject:{+[SSSQLiteContainsPredicate containsPredicateWithProperty:values:](SSSQLiteContainsPredicate, "containsPredicateWithProperty:values:", @"kind", downloadKinds)}];
    v16 = [NSArray alloc];
    v17 = [v16 initWithObjects:{SSDownloadPhaseFailed, SSDownloadPhaseFinished, SSDownloadPhaseCanceled, 0}];
    v18 = [(DownloadManagerClient *)self persistentDownloadManagerInDatabase:database];
    if (v18)
    {
      v19 = +[PersistentDownloadEntity queryWithDatabase:predicate:](PersistentDownloadEntity, "queryWithDatabase:predicate:", database, +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"manager_id", [v18 persistentID]));
      v20 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:[NSArray arrayWithObjects:[SSSQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", v17], [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID query:v19 queryProperty:@"download_id"], 0]];
    }

    else
    {
      v20 = [SSSQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(download_state.phase values:SSDownloadPhaseWaiting)", v17];
    }

    [v12 addObject:v20];

    v21 = objc_alloc_init(SSSQLiteQueryDescriptor);
    [v21 setEntityClass:objc_opt_class()];
    [v21 setOrderingDirections:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", SSSQLiteOrderDescending, SSSQLiteOrderAscending, 0)}];
    [v21 setOrderingProperties:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", @"priority", @"order_key", 0)}];
    [v21 setPredicate:{+[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", v12)}];

    v10 = [[SSSQLiteQuery alloc] initWithDatabase:database descriptor:v21];
  }

  return v10;
}

- (id)newDownloadWithClientXPCDownload:(id)download error:(id *)error
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = sub_100123590;
  v33 = sub_1001235A0;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_100123590;
  v27 = sub_1001235A0;
  v28 = 0;
  if (download && xpc_get_type(download) == &_xpc_type_dictionary)
  {
    dispatchQueue = self->super._dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100123C90;
    block[3] = &unk_1003292B0;
    block[4] = download;
    block[5] = self;
    block[6] = &v23;
    block[7] = &v29;
    dispatch_sync(dispatchQueue, block);
    v15 = v24[5];
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    shouldLogToDisk = [v7 shouldLogToDisk];
    oSLogObject = [v7 OSLogObject];
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v11 = objc_opt_class();
      v35 = 138412290;
      v36 = v11;
      LODWORD(v21) = 12;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        [NSString stringWithCString:v12 encoding:4, &v35, v21];
        free(v13);
        SSFileLog();
      }
    }

    v14 = [NSError alloc];
    v15 = [v14 initWithDomain:SSErrorDomain code:400 userInfo:0];
    v24[5] = v15;
  }

  v17 = v15;
  v18 = v30;
  v19 = v30[5];
  if (error && !v19)
  {
    *error = v24[5];
    v19 = v18[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v19;
}

- (id)persistentDownloadManagerInDatabase:(id)database
{
  clientIdentifier = [(XPCClient *)self clientIdentifier];
  persistenceIdentifier = [(DownloadManagerClient *)self persistenceIdentifier];
  if (!clientIdentifier || !persistenceIdentifier)
  {
    return 0;
  }

  v7 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:clientIdentifier], [SSSQLiteComparisonPredicate predicateWithProperty:@"persistence_id" equalToValue:persistenceIdentifier], 0]];

  return [PersistentDownloadManagerEntity anyInDatabase:database predicate:v7];
}

- (BOOL)reloadPersistenceStateInDatabase:(id)database
{
  persistenceIdentifier = [(DownloadManagerClient *)self persistenceIdentifier];
  if (persistenceIdentifier)
  {
    v6 = persistenceIdentifier;
    downloadKinds = [(DownloadManagerClient *)self downloadKinds];
    v8 = [(NSSet *)downloadKinds containsObject:SSDownloadKindNewsstandContent];
    v9 = v8;
    if (v8)
    {
      v10 = [(XPCClient *)self clientType]== 1;
    }

    else
    {
      v10 = 0;
    }

    v12 = [(DownloadManagerClient *)self persistentDownloadManagerInDatabase:database];
    v36 = v10;
    if (v12)
    {
      v13 = v12;
      if (v9)
      {
        if ([-[PersistentDownloadManagerEntity valueForProperty:](v12 valueForProperty:{@"migration_version", "integerValue"}] != 1)
        {
          v14 = +[SSLogConfig sharedDaemonConfig];
          if (!v14)
          {
            v14 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v14 shouldLog];
          if ([v14 shouldLogToDisk])
          {
            v16 = shouldLog | 2;
          }

          else
          {
            v16 = shouldLog;
          }

          if (os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_INFO))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 2;
          }

          if (v17)
          {
            v42 = 138412546;
            v43 = objc_opt_class();
            v44 = 2112;
            clientIdentifier = [(XPCClient *)self clientIdentifier];
            LODWORD(v34) = 22;
            v33 = &v42;
            v18 = _os_log_send_and_compose_impl();
            if (v18)
            {
              v19 = v18;
              v20 = [NSString stringWithCString:v18 encoding:4, &v42, v34];
              free(v19);
              v33 = v20;
              SSFileLog();
            }
          }

          [(PersistentDownloadManagerEntity *)v13 performNewsstandMigration1InDatabase:database, v33];
        }
      }

      else
      {
        [(PersistentDownloadManagerEntity *)v12 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:?], @"migration_version"];
      }
    }

    else
    {
      v21 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"persistence_id", -[XPCClient clientIdentifier](self, "clientIdentifier"), @"client_id", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v10), @"wake_up_on_finish", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 1), @"migration_version", 0}];
      v13 = [[PersistentDownloadManagerEntity alloc] initWithPropertyValues:v21 inDatabase:database];

      if (!v13)
      {
        goto LABEL_34;
      }
    }

    if ([+[PersistentDownloadManagerKindEntity queryWithDatabase:predicate:](PersistentDownloadManagerKindEntity queryWithDatabase:database predicate:{+[SSSQLiteComparisonPredicate predicateWithProperty:equalToValue:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToValue:", @"manager_id", +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", -[PersistentDownloadManagerEntity persistentID](v13, "persistentID")))), "deleteAllEntities"}])
    {
      v22 = [NSNumber numberWithLongLong:[(PersistentDownloadManagerEntity *)v13 persistentID]];
      selfCopy = self;
      downloadKinds2 = [(DownloadManagerClient *)self downloadKinds];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24 = [(NSSet *)downloadKinds2 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v38;
        while (2)
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v38 != v26)
            {
              objc_enumerationMutation(downloadKinds2);
            }

            v28 = [[NSDictionary alloc] initWithObjectsAndKeys:{v22, @"manager_id", *(*(&v37 + 1) + 8 * i), @"download_kind", 0}];
            databaseCopy = database;
            v30 = [[PersistentDownloadManagerKindEntity alloc] initWithPropertyValues:v28 inDatabase:database];

            if (!v30)
            {
              v11 = 0;
              goto LABEL_36;
            }

            database = databaseCopy;
          }

          v25 = [(NSSet *)downloadKinds2 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v31 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", -[DownloadManagerClient shouldFilterExternalDownloads](selfCopy, "shouldFilterExternalDownloads")), @"filters_external_downloads", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v36), @"wake_up_on_finish", 0}];
      [(PersistentDownloadManagerEntity *)v13 setValuesWithDictionary:v31];

      v11 = 1;
      goto LABEL_36;
    }

LABEL_34:
    v11 = 0;
LABEL_36:

    return v11;
  }

  return 1;
}

- (void)sendChangeset:(id)changeset
{
  downloadChangeTypes = [changeset downloadChangeTypes];
  if ([(XPCClient *)self canReceiveMessages])
  {
    statusChangedDownloadIDs = [changeset statusChangedDownloadIDs];
    if (downloadChangeTypes)
    {
      [(XPCClient *)self sendCoalescedMessageWithIdentifier:1003];
      if ((downloadChangeTypes & 2) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    if ((downloadChangeTypes & 8) != 0)
    {
      removedDownloadIDs = [changeset removedDownloadIDs];
      removedPersistentDownloadIDs = [changeset removedPersistentDownloadIDs];
      if ([(NSString *)[(DownloadManagerClient *)self persistenceIdentifier] length])
      {
        if ([removedDownloadIDs count])
        {
          [(DownloadManagerClient *)self sendDownloadsRemovedWithIdentifiers:removedDownloadIDs];
        }

        if ([removedPersistentDownloadIDs count])
        {
          if ([statusChangedDownloadIDs count])
          {
            v12 = [removedPersistentDownloadIDs mutableCopy];
            [v12 minusSet:statusChangedDownloadIDs];
            if ([v12 count])
            {
              [(DownloadManagerClient *)self sendDownloadsUpdatedWithIdentifiers:v12];
            }
          }

          else
          {
            [(DownloadManagerClient *)self sendDownloadsUpdatedWithIdentifiers:removedPersistentDownloadIDs];
          }
        }
      }

      else if ([removedPersistentDownloadIDs count])
      {
        v13 = [removedDownloadIDs mutableCopy];
        [v13 unionOrderedSet:removedPersistentDownloadIDs];
        [(DownloadManagerClient *)self sendDownloadsRemovedWithIdentifiers:v13];
      }

      else
      {
        [(DownloadManagerClient *)self sendDownloadsRemovedWithIdentifiers:removedDownloadIDs];
      }
    }

    if ((downloadChangeTypes & 0x10) != 0)
    {
      -[DownloadManagerClient sendDownloadsUpdatedWithIdentifiers:](self, "sendDownloadsUpdatedWithIdentifiers:", [changeset updatedDownloadIDs]);
    }

    if ((downloadChangeTypes & 2) != 0)
    {
LABEL_14:
      if ([statusChangedDownloadIDs count] == 1)
      {
        v7 = [objc_msgSend(statusChangedDownloadIDs "anyObject")];
        changedExternalDownloadProperties = [changeset changedExternalDownloadProperties];
        changedDownloadProperties = [changeset changedDownloadProperties];

        [(DownloadManagerClient *)self sendDownloadStateChangedWithID:v7 externalValues:changedExternalDownloadProperties propertyValues:changedDownloadProperties];
      }

      else
      {

        [(DownloadManagerClient *)self sendDownloadStatesChangedWithIdentifiers:statusChangedDownloadIDs];
      }
    }
  }

  else if (downloadChangeTypes)
  {

    [(XPCClient *)self sendCoalescedMessageWithIdentifier:1003];
  }
}

- (void)sendDownloadKindsUsingNetwork:(id)network
{
  if ([(XPCClient *)self canReceiveMessages])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "0", 1006);
    SSXPCDictionarySetCFObject();
    [(SSXPCConnection *)self->super._outputConnection sendMessage:v4 withReply:&stru_1003292F0];

    xpc_release(v4);
  }

  else
  {

    [(XPCClient *)self sendCoalescedMessageWithIdentifier:1006];
  }
}

- (void)sendDownloadStateChangedWithID:(int64_t)d externalValues:(id)values propertyValues:(id)propertyValues
{
  if ([(XPCClient *)self canReceiveMessages])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "0", 1004);
    SSXPCDictionarySetCFObject();
    SSXPCDictionarySetCFObject();
    v8 = xpc_array_create(0, 0);
    xpc_array_set_int64(v8, 0xFFFFFFFFFFFFFFFFLL, d);
    xpc_dictionary_set_value(v7, "1", v8);
    xpc_release(v8);
    [(SSXPCConnection *)self->super._outputConnection sendMessage:v7 withReply:&stru_100329310];

    xpc_release(v7);
  }

  else
  {

    [(XPCClient *)self sendCoalescedMessageWithIdentifier:1003];
  }
}

- (void)setClientOptions:(id)options
{
  if (options)
  {
    if (xpc_get_type(options) == &_xpc_type_dictionary)
    {
      dispatchQueue = self->super._dispatchQueue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100124BE4;
      v6[3] = &unk_100327350;
      v6[4] = self;
      v6[5] = options;
      dispatch_sync(dispatchQueue, v6);
    }
  }
}

- (void)setDownloadKinds:(id)kinds
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100124D64;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = kinds;
  dispatch_async(dispatchQueue, v4);
}

- (void)setPersistenceIdentifier:(id)identifier
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100124E30;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setPrefetchedDownloadProperties:(id)properties
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100124EFC;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = properties;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setPrefetchedDownloadExternalProperties:(id)properties
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100124FC8;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = properties;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setShouldFilterExternalDownloads:(BOOL)downloads
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100125098;
  v4[3] = &unk_100327830;
  v4[4] = self;
  downloadsCopy = downloads;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)supportsDownloadKind:(id)kind
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dispatchQueue = self->super._dispatchQueue;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012516C;
  block[3] = &unk_100329338;
  block[5] = kind;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)hasEntitlements
{
  if (self->_isDownloadsEntitled)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = DownloadManagerClient;
  return [(XPCClient *)&v5 hasEntitlements];
}

- (id)_copyAllowedThirdPartyKinds
{
  if (!-[XPCClient _isNewsstandApp](self, "_isNewsstandApp") || ![-[XPCClient _applicationBackgroundModes](self "_applicationBackgroundModes")])
  {
    return 0;
  }

  v3 = [NSMutableSet alloc];
  return [v3 initWithObjects:{SSDownloadKindNewsstandContent, 0}];
}

- (id)_copyFilteredKindsForKinds:(id)kinds
{
  if (!kinds)
  {
    return 0;
  }

  _copyPrivateDownloadKinds = [(DownloadManagerClient *)self _copyPrivateDownloadKinds];
  _copyDownloadKindsFromEntitlement = [(DownloadManagerClient *)self _copyDownloadKindsFromEntitlement];
  if (_copyDownloadKindsFromEntitlement)
  {
    [_copyPrivateDownloadKinds minusSet:_copyDownloadKindsFromEntitlement];
  }

  else if (self->super._legacyEntitlements || self->_isDownloadsEntitled)
  {
    [_copyPrivateDownloadKinds removeAllObjects];
  }

  else if ([(XPCClient *)self _clientType]== 1)
  {
    _copyAllowedThirdPartyKinds = [(DownloadManagerClient *)self _copyAllowedThirdPartyKinds];
    [_copyPrivateDownloadKinds unionSet:kinds];
    if (_copyAllowedThirdPartyKinds)
    {
      [_copyPrivateDownloadKinds minusSet:_copyAllowedThirdPartyKinds];
    }
  }

  v8 = [kinds mutableCopy];
  v9 = [v8 mutableCopy];
  [v9 intersectSet:_copyPrivateDownloadKinds];
  if ([v9 count])
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v13 = objc_opt_class();
      clientIdentifier = self->super._clientIdentifier;
      v20 = 138412802;
      v21 = v13;
      v22 = 2112;
      v23 = clientIdentifier;
      v24 = 2112;
      v25 = v9;
      LODWORD(v19) = 32;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4, &v20, v19];
        free(v16);
        SSFileLog();
      }
    }
  }

  [v8 minusSet:_copyPrivateDownloadKinds];
  v7 = [v8 copy];

  return v7;
}

- (void)_sendCoalescableMessage:(int64_t)message withDownloadIDs:(id)ds
{
  if ([(XPCClient *)self canReceiveMessages])
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "0", message);
    v8 = xpc_array_create(0, 0);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [ds countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(ds);
          }

          xpc_array_set_int64(v8, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v13 + 1) + 8 * i) longLongValue]);
        }

        v10 = [ds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v7, "1", v8);
    xpc_release(v8);
    [(SSXPCConnection *)self->super._outputConnection sendMessage:v7 withReply:&stru_100329358];
    xpc_release(v7);
  }

  else
  {

    [(XPCClient *)self sendCoalescedMessageWithIdentifier:1003];
  }
}

- (BOOL)_supportsDownloadKind:(id)kind
{
  downloadKinds = self->_downloadKinds;
  if (downloadKinds)
  {

    return [(NSSet *)downloadKinds containsObject:?];
  }

  else
  {
    _copyPrivateDownloadKinds = [(DownloadManagerClient *)self _copyPrivateDownloadKinds];
    if ([_copyPrivateDownloadKinds containsObject:kind])
    {
      _copyDownloadKindsFromEntitlement = [(DownloadManagerClient *)self _copyDownloadKindsFromEntitlement];
      v9 = [_copyDownloadKindsFromEntitlement containsObject:kind];
    }

    else
    {
      v9 = 1;
    }

    return v9;
  }
}

@end