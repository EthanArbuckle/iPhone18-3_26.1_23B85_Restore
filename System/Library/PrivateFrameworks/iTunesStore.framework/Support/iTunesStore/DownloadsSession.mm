@interface DownloadsSession
- (BOOL)placeholderDownloadCanceledForPurchaseIdentifier:(int64_t)identifier;
- (DownloadsSession)initWithSessionDescriptor:(id)descriptor;
- (id)downloadForStoreDownload:(id)download;
- (id)newEventDictionaryWithDownloadIdentifier:(int64_t)identifier assetIdentifier:(int64_t)assetIdentifier;
- (id)placeholderDownloadForPurchase:(id)purchase;
- (id)placeholderDownloadForPurchaseIdentifier:(int64_t)identifier;
- (id)valueForExternalProperty:(id)property ofAssetID:(int64_t)d;
- (id)valueForExternalProperty:(id)property ofDownloadID:(int64_t)d;
- (void)dealloc;
@end

@implementation DownloadsSession

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadsSession;
  [(DownloadsSession *)&v3 dealloc];
}

- (DownloadsSession)initWithSessionDescriptor:(id)descriptor
{
  v6.receiver = self;
  v6.super_class = DownloadsSession;
  v4 = [(DownloadsSession *)&v6 init];
  if (v4)
  {
    v4->_database = [descriptor database];
    v4->_externalState = [descriptor externalState];
    v4->_pipeline = [descriptor pipeline];
    v4->_policyManager = [descriptor policyManager];
  }

  return v4;
}

- (id)downloadForStoreDownload:(id)download
{
  result = [download transactionIdentifier];
  if (result)
  {
    v6 = +[SSSQLiteCompoundPredicate predicateMatchingAllPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAllPredicates:", +[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", +[SSSQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"store_item_id", [download itemIdentifier]), +[SSSQLiteComparisonPredicate predicateWithProperty:equalToValue:](SSSQLiteComparisonPredicate, "predicateWithProperty:equalToValue:", @"store_transaction_id", result), 0));
    database = self->_database;

    return [DownloadEntity anyInDatabase:database predicate:v6];
  }

  return result;
}

- (id)newEventDictionaryWithDownloadIdentifier:(int64_t)identifier assetIdentifier:(int64_t)assetIdentifier
{
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithLongLong:assetIdentifier];
  [v7 setObject:v8 forKey:SSEventKeyDownloadAssetIdentifier];
  v9 = [NSNumber numberWithLongLong:identifier];
  [v7 setObject:v9 forKey:SSEventKeyDownloadIdentifier];
  v10 = [[DownloadAssetEntity alloc] initWithPersistentID:assetIdentifier inDatabase:self->_database];
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

  v14 = [[DownloadEntity alloc] initWithPersistentID:identifier inDatabase:self->_database];
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

- (BOOL)placeholderDownloadCanceledForPurchaseIdentifier:(int64_t)identifier
{
  v3 = [-[DownloadsSession placeholderDownloadForPurchaseIdentifier:](self placeholderDownloadForPurchaseIdentifier:{identifier), "valueForProperty:", @"download_state.phase"}];
  v4 = SSDownloadPhaseCanceled;

  return [v3 isEqualToString:v4];
}

- (id)placeholderDownloadForPurchase:(id)purchase
{
  v5 = [purchase valueForDownloadProperty:SSSQLEntityPropertyPersistentID];
  if (!v5 || (result = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v5 longLongValue], self->_database)) == 0)
  {
    uniqueIdentifier = [purchase uniqueIdentifier];

    return [(DownloadsSession *)self placeholderDownloadForPurchaseIdentifier:uniqueIdentifier];
  }

  return result;
}

- (id)placeholderDownloadForPurchaseIdentifier:(int64_t)identifier
{
  v4 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:[NSArray arrayWithObjects:[SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:1], [SSSQLiteComparisonPredicate predicateWithProperty:@"purchase_id" equalToLongLong:identifier], 0]];
  database = self->_database;

  return [DownloadEntity anyInDatabase:database predicate:v4];
}

- (id)valueForExternalProperty:(id)property ofAssetID:(int64_t)d
{
  if ([property isEqualToString:SSDownloadAssetExternalPropertySINFs])
  {
    v7 = [[DownloadAssetEntity alloc] initWithPersistentID:d inDatabase:self->_database];
    sinfs = [(DownloadAssetEntity *)v7 sinfs];

    return sinfs;
  }

  else
  {
    externalState = self->_externalState;

    return [(ExternalDownloadState *)externalState valueForExternalProperty:property ofAssetID:d];
  }
}

- (id)valueForExternalProperty:(id)property ofDownloadID:(int64_t)d
{
  if ([property isEqualToString:SSDownloadExternalPropertyRentalInformation])
  {
    v7 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:self->_database];
    rentalInformation = [(DownloadEntity *)v7 rentalInformation];

    return rentalInformation;
  }

  if ([property isEqualToString:SSDownloadExternalPropertyPolicy])
  {
    v10 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:self->_database];
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

        shouldLog = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = shouldLog | 2;
        }

        else
        {
          v16 = shouldLog;
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

  if ([property isEqualToString:SSDownloadExternalPropertyPolicySizeLimit])
  {
    v20 = [(DownloadPolicyManager *)self->_policyManager overrideDownloadSizeLimitForDownloadIdentifier:d];
    if (v20)
    {
      longLongValue = [v20 longLongValue];
    }

    else
    {
      v22 = [[DownloadEntity alloc] initWithPersistentID:d inDatabase:self->_database];
      v23 = [(DownloadEntity *)v22 valueForProperty:@"policy_id"];
      if (v23)
      {
        longLongValue = -[DownloadPolicyManager downloadSizeLimitForPolicyWithID:](self->_policyManager, "downloadSizeLimitForPolicyWithID:", [v23 longLongValue]);
      }

      else
      {
        longLongValue = SSDownloadSizeLimitNoLimit;
      }
    }

    return [NSNumber numberWithLongLong:longLongValue];
  }

  v13 = [(ExternalDownloadState *)self->_externalState valueForExternalProperty:property ofDownloadID:d];
  if (v13)
  {
    return v13;
  }

  if (![property isEqualToString:SSDownloadExternalPropertyPercentComplete])
  {
    return 0;
  }

  return [NSNumber numberWithInteger:0];
}

@end