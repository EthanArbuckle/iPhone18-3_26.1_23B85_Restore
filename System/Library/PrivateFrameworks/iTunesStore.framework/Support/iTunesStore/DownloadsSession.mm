@interface DownloadsSession
- (BOOL)placeholderDownloadCanceledForPurchaseIdentifier:(int64_t)a3;
- (DownloadsSession)initWithSessionDescriptor:(id)a3;
- (id)downloadForStoreDownload:(id)a3;
- (id)newEventDictionaryWithDownloadIdentifier:(int64_t)a3 assetIdentifier:(int64_t)a4;
- (id)placeholderDownloadForPurchase:(id)a3;
- (id)placeholderDownloadForPurchaseIdentifier:(int64_t)a3;
- (id)valueForExternalProperty:(id)a3 ofAssetID:(int64_t)a4;
- (id)valueForExternalProperty:(id)a3 ofDownloadID:(int64_t)a4;
- (void)dealloc;
@end

@implementation DownloadsSession

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsSession;
  [(DownloadsSession *)&v3 dealloc];
}

- (DownloadsSession)initWithSessionDescriptor:(id)a3
{
  v6.receiver = self;
  v6.super_class = DownloadsSession;
  v4 = [(DownloadsSession *)&v6 init];
  if (v4)
  {
    v4->_database = [a3 database];
    v4->_externalState = [a3 externalState];
    v4->_pipeline = [a3 pipeline];
    v4->_policyManager = [a3 policyManager];
  }

  return v4;
}

- (id)downloadForStoreDownload:(id)a3
{
  result = [a3 transactionIdentifier];
  if (result)
  {
    v6 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"store_item_id", [a3 itemIdentifier]), +[SSSQLiteComparisonPredicate predicateWithProperty:equalToValue:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToValue:", @"store_transaction_id", result), 0));
    database = self->_database;

    return [DownloadEntity anyInDatabase:database predicate:v6];
  }

  return result;
}

- (id)newEventDictionaryWithDownloadIdentifier:(int64_t)a3 assetIdentifier:(int64_t)a4
{
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithLongLong:a4];
  [v7 setObject:v8 forKey:SSEventKeyDownloadAssetIdentifier];
  v9 = [NSNumber numberWithLongLong:a3];
  [v7 setObject:v9 forKey:SSEventKeyDownloadIdentifier];
  v10 = [[DownloadAssetEntity alloc] initWithPersistentID:a4 inDatabase:self->_database];
  v23 = [[NSArray alloc] initWithObjects:{@"bytes_total", @"url", 0}];
  v24 = v10;
  v11 = [[SSMemoryEntity alloc] initWithDatabaseEntity:v10 properties:v23];
  v12 = [v11 valueForProperty:@"bytes_total"];
  if (v12)
  {
    [v7 setObject:v12 forKey:SSEventKeySizeInBytes];
  }

  v13 = [v11 valueForProperty:@"url"];
  if (v13)
  {
    [v7 setObject:v13 forKey:SSEventKeyURLString];
  }

  v14 = [[DownloadEntity alloc] initWithPersistentID:a3 inDatabase:self->_database];
  v15 = [[NSArray alloc] initWithObjects:{@"is_automatic", @"client_id", @"is_restore", @"kind", 0}];
  v16 = [[SSMemoryEntity alloc] initWithDatabaseEntity:v14 properties:v15];
  v17 = SSEventDownloadClassUserInitiated;
  if ([objc_msgSend(v16 valueForProperty:{@"is_restore", "BOOLValue"}])
  {
    v18 = &SSEventDownloadClassRestore;
  }

  else
  {
    v19 = [objc_msgSend(v16 valueForProperty:{@"is_automatic", "integerValue"}];
    if (v19 == 2)
    {
      v18 = &SSEventDownloadClassAutomaticUpdate;
    }

    else
    {
      if (v19 != 1)
      {
        goto LABEL_12;
      }

      v18 = &SSEventDownloadClassAutomaticDownload;
    }
  }

  v17 = *v18;
LABEL_12:
  [v7 setObject:v17 forKey:SSEventKeyDownloadClass];
  v20 = [v16 valueForProperty:@"kind"];
  if (v20)
  {
    [v7 setObject:v20 forKey:SSEventKeyDownloadKind];
  }

  v21 = [v16 valueForProperty:@"client_id"];
  if (v21)
  {
    [v7 setObject:v21 forKey:SSEventKeyClientIdentifier];
  }

  return v7;
}

- (BOOL)placeholderDownloadCanceledForPurchaseIdentifier:(int64_t)a3
{
  v3 = [-[DownloadsSession placeholderDownloadForPurchaseIdentifier:](self placeholderDownloadForPurchaseIdentifier:{a3), "valueForProperty:", @"download_state.phase"}];
  v4 = SSDownloadPhaseCanceled;

  return [v3 isEqualToString:v4];
}

- (id)placeholderDownloadForPurchase:(id)a3
{
  v5 = [a3 valueForDownloadProperty:SSSQLEntityPropertyPersistentID];
  if (!v5 || (result = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v5 longLongValue], self->_database)) == 0)
  {
    v7 = [a3 uniqueIdentifier];

    return [(DownloadsSession *)self placeholderDownloadForPurchaseIdentifier:v7];
  }

  return result;
}

- (id)placeholderDownloadForPurchaseIdentifier:(int64_t)a3
{
  v4 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:1], [SSSQLiteComparisonPredicate predicateWithProperty:@"purchase_id" equalToLongLong:a3], 0]];
  database = self->_database;

  return [DownloadEntity anyInDatabase:database predicate:v4];
}

- (id)valueForExternalProperty:(id)a3 ofAssetID:(int64_t)a4
{
  if ([a3 isEqualToString:SSDownloadAssetExternalPropertySINFs])
  {
    v7 = [[DownloadAssetEntity alloc] initWithPersistentID:a4 inDatabase:self->_database];
    v8 = [(DownloadAssetEntity *)v7 sinfs];

    return v8;
  }

  else
  {
    externalState = self->_externalState;

    return [(ExternalDownloadState *)externalState valueForExternalProperty:a3 ofAssetID:a4];
  }
}

- (id)valueForExternalProperty:(id)a3 ofDownloadID:(int64_t)a4
{
  if ([a3 isEqualToString:SSDownloadExternalPropertyRentalInformation])
  {
    v7 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:self->_database];
    v8 = [(DownloadEntity *)v7 rentalInformation];

    return v8;
  }

  if ([a3 isEqualToString:SSDownloadExternalPropertyPolicy])
  {
    v10 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:self->_database];
    v11 = [(DownloadEntity *)v10 valueForProperty:@"policy_id"];
    if (v11)
    {
      v12 = -[DownloadPolicyManager downloadPolicyForID:](self->_policyManager, "downloadPolicyForID:", [v11 longLongValue]);
      v25 = 0;
      v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v25];
      if (v25)
      {
        v14 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        v15 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_ERROR))
        {
          v16 &= 2u;
        }

        if (v16)
        {
          v17 = objc_opt_class();
          v26 = 138543618;
          v27 = v17;
          v28 = 2114;
          v29 = v25;
          LODWORD(v24) = 22;
          v18 = _os_log_send_and_compose_impl();
          if (v18)
          {
            v19 = v18;
            [NSString stringWithCString:v18 encoding:4, &v26, v24];
            free(v19);
            SSFileLog();
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }

    return v13;
  }

  if ([a3 isEqualToString:SSDownloadExternalPropertyPolicySizeLimit])
  {
    v20 = [(DownloadPolicyManager *)self->_policyManager overrideDownloadSizeLimitForDownloadIdentifier:a4];
    if (v20)
    {
      v21 = [v20 longLongValue];
    }

    else
    {
      v22 = [[DownloadEntity alloc] initWithPersistentID:a4 inDatabase:self->_database];
      v23 = [(DownloadEntity *)v22 valueForProperty:@"policy_id"];
      if (v23)
      {
        v21 = -[DownloadPolicyManager downloadSizeLimitForPolicyWithID:](self->_policyManager, "downloadSizeLimitForPolicyWithID:", [v23 longLongValue]);
      }

      else
      {
        v21 = SSDownloadSizeLimitNoLimit;
      }
    }

    return [NSNumber numberWithLongLong:v21];
  }

  v13 = [(ExternalDownloadState *)self->_externalState valueForExternalProperty:a3 ofDownloadID:a4];
  if (v13)
  {
    return v13;
  }

  if (![a3 isEqualToString:SSDownloadExternalPropertyPercentComplete])
  {
    return 0;
  }

  return [NSNumber numberWithInteger:0];
}

@end