@interface DirectUploadEntity
+ (id)newEntityValuesWithMediaSocialAttachment:(id)a3;
- (BOOL)deleteFromDatabase;
- (MediaSocialPostEntity)postEntity;
- (NSArray)artists;
- (id)insertEntitiesForArtists:(id)a3 withProperties:(id)a4;
- (int64_t)setFailedWithError:(id)a3;
- (void)deleteAssetFile;
- (void)resetStatusProperties;
- (void)setProcessingWithResponse:(id)a3;
@end

@implementation DirectUploadEntity

+ (id)newEntityValuesWithMediaSocialAttachment:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 albumIdentifier];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"album_id"];
  }

  v6 = [v3 assetURL];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"asset_url"];
  }

  v7 = [v3 attachmentDescription];

  if (v7)
  {
    [v4 setObject:v7 forKey:@"description"];
  }

  v8 = [v3 categoryName];

  if (v8)
  {
    [v4 setObject:v8 forKey:@"category_name"];
  }

  v9 = [v3 subtitle];

  if (v9)
  {
    [v4 setObject:v9 forKey:@"subtitle"];
  }

  v10 = [v3 title];

  if (v10)
  {
    [v4 setObject:v10 forKey:@"title"];
  }

  v11 = [v3 UTI];

  if (v11)
  {
    [v4 setObject:v11 forKey:@"uti"];
  }

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 deletesAssetWhenFinished]);
  [v4 setObject:v12 forKey:@"owns_asset"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isExplicitContent]);
  [v4 setObject:v13 forKey:@"is_explicit"];

  [v3 previewFrameTimestamp];
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
  v5 = [(DirectUploadEntity *)self database];
  v14 = @"order_index";
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  v7 = [DirectUploadArtistEntity queryWithDatabase:v5 predicate:v4 orderingProperties:v6];

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

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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

      v11 = [NSString stringWithCString:v14 encoding:4, &v18, v16];
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

- (id)insertEntitiesForArtists:(id)a3 withProperties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = [[NSNumber alloc] initWithLongLong:{-[DirectUploadEntity persistentID](self, "persistentID")}];
  [(DirectUploadEntity *)self database];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001842F4;
  v17[3] = &unk_10032A6A8;
  v18 = v9;
  v20 = v19 = v6;
  v10 = v8;
  v21 = v10;
  v11 = v20;
  v12 = v6;
  v13 = v9;
  [v7 enumerateObjectsUsingBlock:v17];

  v14 = v21;
  v15 = v10;

  return v10;
}

- (MediaSocialPostEntity)postEntity
{
  v3 = [(DirectUploadEntity *)self valueForProperty:@"post_id"];
  v4 = [v3 longLongValue];

  if (v4)
  {
    v5 = [MediaSocialPostEntity alloc];
    v6 = [(DirectUploadEntity *)self database];
    v7 = [(MediaSocialPostEntity *)v5 initWithPersistentID:v4 inDatabase:v6];
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

- (int64_t)setFailedWithError:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_10034C018 forKey:@"state"];
  v6 = [(DirectUploadEntity *)self valueForProperty:@"failure_count"];
  v7 = [v6 integerValue];

  v8 = [NSNumber numberWithInteger:v7 + 1];
  [v5 setObject:v8 forKey:@"failure_count"];

  if (v4)
  {
    v9 = [v4 domain];
    if (v9)
    {
      [v5 setObject:v9 forKey:@"error_domain"];
    }

    v10 = [v4 localizedDescription];

    if (v10)
    {
      [v5 setObject:v10 forKey:@"error_message"];
    }

    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    [v5 setObject:v11 forKey:@"error_code"];
  }

  else
  {
    [v5 setObject:&off_10034C030 forKey:@"error_code"];
    [v5 setObject:SSErrorDomain forKey:@"error_domain"];
  }

  [(DirectUploadEntity *)self setValuesWithDictionary:v5];

  return (v7 + 1);
}

- (void)setProcessingWithResponse:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:&off_10034C048 forKey:@"state"];
  v5 = [v10 assetToken];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"asset_token"];
  }

  v6 = [v10 assetTokenType];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"asset_token_type"];
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
  v2 = self;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"upload_id" equalToLongLong:[(DirectUploadEntity *)self persistentID]];
  v4 = [(DirectUploadEntity *)v2 database];
  v5 = [DirectUploadArtistEntity queryWithDatabase:v4 predicate:v3];

  [v5 deleteAllEntities];
  [(DirectUploadEntity *)v2 deleteAssetFile];
  v7.receiver = v2;
  v7.super_class = DirectUploadEntity;
  LOBYTE(v2) = [(DirectUploadEntity *)&v7 deleteFromDatabase];

  return v2;
}

@end