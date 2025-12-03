@interface DirectUploadEntity
+ (id)newEntityValuesWithMediaSocialAttachment:(id)attachment;
- (BOOL)deleteFromDatabase;
- (MediaSocialPostEntity)postEntity;
- (NSArray)artists;
- (id)insertEntitiesForArtists:(id)artists withProperties:(id)properties;
- (int64_t)setFailedWithError:(id)error;
- (void)deleteAssetFile;
- (void)resetStatusProperties;
- (void)setProcessingWithResponse:(id)response;
@end

@implementation DirectUploadEntity

+ (id)newEntityValuesWithMediaSocialAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = objc_alloc_init(NSMutableDictionary);
  albumIdentifier = [attachmentCopy albumIdentifier];
  if (albumIdentifier)
  {
    [v4 setObject:albumIdentifier forKey:@"album_id"];
  }

  assetURL = [attachmentCopy assetURL];

  if (assetURL)
  {
    [v4 setObject:assetURL forKey:@"asset_url"];
  }

  attachmentDescription = [attachmentCopy attachmentDescription];

  if (attachmentDescription)
  {
    [v4 setObject:attachmentDescription forKey:@"description"];
  }

  categoryName = [attachmentCopy categoryName];

  if (categoryName)
  {
    [v4 setObject:categoryName forKey:@"category_name"];
  }

  subtitle = [attachmentCopy subtitle];

  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  title = [attachmentCopy title];

  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  v11 = [attachmentCopy UTI];

  if (v11)
  {
    [v4 setObject:v11 forKey:@"uti"];
  }

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [attachmentCopy deletesAssetWhenFinished]);
  [v4 setObject:v12 forKey:@"owns_asset"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [attachmentCopy isExplicitContent]);
  [v4 setObject:v13 forKey:@"is_explicit"];

  [attachmentCopy previewFrameTimestamp];
  v14 = [NSNumber numberWithDouble:?];
  [v4 setObject:v14 forKey:@"preview_frame_time"];

  [v4 setObject:SSVDirectUploadKindFuse forKey:@"kind"];
  return v4;
}

- (NSArray)artists
{
  v3 = +[NSMutableArray array];
  v15[0] = @"artist_id";
  v15[1] = @"name";
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"upload_id" equalToLongLong:[(DirectUploadEntity *)self persistentID]];
  database = [(DirectUploadEntity *)self database];
  v14 = @"order_index";
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  v7 = [DirectUploadArtistEntity queryWithDatabase:database predicate:v4 orderingProperties:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100183ECC;
  v12[3] = &unk_100327958;
  v8 = v3;
  v13 = v8;
  [v7 enumeratePersistentIDsAndProperties:v15 count:2 usingBlock:v12];
  v9 = v8;

  for (i = 1; i != -1; --i)
  {
  }

  return v9;
}

- (void)deleteAssetFile
{
  v26[0] = @"asset_url";
  v26[1] = @"owns_asset";
  v24 = 0;
  v25 = 0;
  [(DirectUploadEntity *)self getValues:&v24 forProperties:v26 count:2];
  if ([v25 BOOLValue])
  {
    v2 = v24 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = [NSURL alloc];
    v4 = [v3 initWithString:v24];
    if (![v4 isFileURL])
    {
LABEL_20:

      goto LABEL_21;
    }

    v5 = objc_alloc_init(NSFileManager);
    v17 = 0;
    v6 = [v5 removeItemAtURL:v4 error:&v17];
    v7 = v17;
    if (v6)
    {
LABEL_19:

      goto LABEL_20;
    }

    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v12 = objc_opt_class();
      v18 = 138412802;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v4;
      v13 = v12;
      LODWORD(v16) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_18:

        goto LABEL_19;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, &v18, v16];
      free(v14);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_21:
  for (i = 1; i != -1; --i)
  {
  }
}

- (id)insertEntitiesForArtists:(id)artists withProperties:(id)properties
{
  propertiesCopy = properties;
  artistsCopy = artists;
  v8 = +[NSMutableArray array];
  v9 = [[NSNumber alloc] initWithLongLong:{-[DirectUploadEntity persistentID](self, "persistentID")}];
  [(DirectUploadEntity *)self database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001842F4;
  v17[3] = &unk_10032A6A8;
  v18 = v9;
  v20 = v19 = propertiesCopy;
  v10 = v8;
  v21 = v10;
  v11 = v20;
  v12 = propertiesCopy;
  v13 = v9;
  [artistsCopy enumerateObjectsUsingBlock:v17];

  v14 = v21;
  v15 = v10;

  return v10;
}

- (MediaSocialPostEntity)postEntity
{
  v3 = [(DirectUploadEntity *)self valueForProperty:@"post_id"];
  longLongValue = [v3 longLongValue];

  if (longLongValue)
  {
    v5 = [MediaSocialPostEntity alloc];
    database = [(DirectUploadEntity *)self database];
    v7 = [(MediaSocialPostEntity *)v5 initWithPersistentID:longLongValue inDatabase:database];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)resetStatusProperties
{
  v4 = +[NSNull null];
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:v4 forKey:@"error_code"];
  [v3 setObject:v4 forKey:@"error_domain"];
  [v3 setObject:v4 forKey:@"error_message"];
  [v3 setObject:&off_10034C000 forKey:@"state"];
  [(DirectUploadEntity *)self setValuesWithDictionary:v3];
}

- (int64_t)setFailedWithError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_10034C018 forKey:@"state"];
  v6 = [(DirectUploadEntity *)self valueForProperty:@"failure_count"];
  integerValue = [v6 integerValue];

  v8 = [NSNumber numberWithInteger:integerValue + 1];
  [v5 setObject:v8 forKey:@"failure_count"];

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (domain)
    {
      [v5 setObject:domain forKey:@"error_domain"];
    }

    localizedDescription = [errorCopy localizedDescription];

    if (localizedDescription)
    {
      [v5 setObject:localizedDescription forKey:@"error_message"];
    }

    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v5 setObject:v11 forKey:@"error_code"];
  }

  else
  {
    [v5 setObject:&off_10034C030 forKey:@"error_code"];
    [v5 setObject:SSErrorDomain forKey:@"error_domain"];
  }

  [(DirectUploadEntity *)self setValuesWithDictionary:v5];

  return (integerValue + 1);
}

- (void)setProcessingWithResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:&off_10034C048 forKey:@"state"];
  assetToken = [responseCopy assetToken];
  if (assetToken)
  {
    [v4 setObject:assetToken forKey:@"asset_token"];
  }

  assetTokenType = [responseCopy assetTokenType];
  if (assetTokenType)
  {
    [v4 setObject:assetTokenType forKey:@"asset_token_type"];
  }

  v7 = [NSNumber alloc];
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  v9 = [v7 initWithDouble:?];

  [v4 setObject:v9 forKey:@"upload_time"];
  [(DirectUploadEntity *)self setValuesWithDictionary:v4];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"upload_id" equalToLongLong:[(DirectUploadEntity *)self persistentID]];
  database = [(DirectUploadEntity *)selfCopy database];
  v5 = [DirectUploadArtistEntity queryWithDatabase:database predicate:v3];

  [v5 deleteAllEntities];
  [(DirectUploadEntity *)selfCopy deleteAssetFile];
  v7.receiver = selfCopy;
  v7.super_class = DirectUploadEntity;
  LOBYTE(selfCopy) = [(DirectUploadEntity *)&v7 deleteFromDatabase];

  return selfCopy;
}

@end