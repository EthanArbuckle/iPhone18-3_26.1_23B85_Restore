@interface MediaSocialPostEntity
+ (id)newEntityValuesWithMediaSocialPost:(id)post;
- (BOOL)deleteFromDatabase;
- (BOOL)hasActiivtyID;
- (BOOL)isOverPollDuration;
- (BOOL)isReadyToSend;
- (MediaSocialStatusPollRequest)statusPollRequest;
- (NSArray)contentItems;
- (NSArray)externalServiceDestinations;
- (NSArray)uploadedAttachments;
- (id)_insertUploadWithAttachment:(id)attachment properties:(id)properties database:(id)database;
- (id)allUploadPersistentIdentifiers;
- (id)insertEntitiesForAttachments:(id)attachments withProperties:(id)properties;
- (id)insertEntitiesForContentItems:(id)items;
- (id)insertEntitiesForExternalDestinations:(id)destinations;
- (void)updateWithPollingResponse:(id)response;
@end

@implementation MediaSocialPostEntity

+ (id)newEntityValuesWithMediaSocialPost:(id)post
{
  postCopy = post;
  v4 = objc_alloc_init(NSMutableDictionary);
  accountIdentifier = [postCopy accountIdentifier];
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"account_id"];
  }

  authorIdentifier = [postCopy authorIdentifier];

  if (authorIdentifier)
  {
    [v4 setObject:authorIdentifier forKey:@"author_id"];
  }

  authorType = [postCopy authorType];

  if (authorType)
  {
    [v4 setObject:authorType forKey:@"author_type"];
  }

  text = [postCopy text];

  if (text)
  {
    [v4 setObject:text forKey:@"message"];
  }

  if ([postCopy isAttributed])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"is_attributed"];
  }

  return v4;
}

- (id)allUploadPersistentIdentifiers
{
  v3 = +[NSMutableArray array];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:[(MediaSocialPostEntity *)self persistentID]];
  database = [(MediaSocialPostEntity *)self database];
  v6 = [DirectUploadEntity queryWithDatabase:database predicate:v4];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E20E0;
  v9[3] = &unk_100327A50;
  v7 = v3;
  v10 = v7;
  [v6 enumeratePersistentIDsUsingBlock:v9];

  return v7;
}

- (NSArray)contentItems
{
  v3 = +[NSMutableArray array];
  v13[0] = @"item_id";
  v13[1] = @"type";
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:[(MediaSocialPostEntity *)self persistentID]];
  database = [(MediaSocialPostEntity *)self database];
  v6 = [MediaSocialContentItemEntity queryWithDatabase:database predicate:v4];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E22FC;
  v11[3] = &unk_100327958;
  v7 = v3;
  v12 = v7;
  [v6 enumeratePersistentIDsAndProperties:v13 count:2 usingBlock:v11];
  v8 = v7;

  for (i = 1; i != -1; --i)
  {
  }

  return v8;
}

- (NSArray)externalServiceDestinations
{
  v3 = +[NSMutableArray array];
  v13[0] = @"access_token";
  v13[1] = @"page_access_token";
  v13[2] = @"page_id";
  v13[3] = @"service_type";
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:[(MediaSocialPostEntity *)self persistentID]];
  database = [(MediaSocialPostEntity *)self database];
  v6 = [MediaSocialExternalTargetEntity queryWithDatabase:database predicate:v4];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E254C;
  v11[3] = &unk_100327958;
  v7 = v3;
  v12 = v7;
  [v6 enumeratePersistentIDsAndProperties:v13 count:4 usingBlock:v11];
  v8 = v7;

  for (i = 3; i != -1; --i)
  {
  }

  return v8;
}

- (id)insertEntitiesForAttachments:(id)attachments withProperties:(id)properties
{
  propertiesCopy = properties;
  attachmentsCopy = attachments;
  v8 = +[NSMutableArray array];
  v9 = [propertiesCopy mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = [[NSNumber alloc] initWithDouble:CFAbsoluteTimeGetCurrent()];
  [v9 setObject:v10 forKey:@"creation_time"];
  v11 = [[NSNumber alloc] initWithLongLong:{-[MediaSocialPostEntity persistentID](self, "persistentID")}];
  [v9 setObject:v11 forKey:@"post_id"];
  [(MediaSocialPostEntity *)self database];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E27B0;
  v18[3] = &unk_1003288E8;
  v18[4] = self;
  v20 = v19 = v9;
  v12 = v8;
  v21 = v12;
  v13 = v20;
  v14 = v9;
  [attachmentsCopy enumerateObjectsUsingBlock:v18];

  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)insertEntitiesForContentItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray array];
  v6 = [[NSNumber alloc] initWithLongLong:{-[MediaSocialPostEntity persistentID](self, "persistentID")}];
  [(MediaSocialPostEntity *)self database];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E2ADC;
  v13[3] = &unk_100328910;
  v15 = v14 = v6;
  v7 = v5;
  v16 = v7;
  v8 = v15;
  v9 = v6;
  [itemsCopy enumerateObjectsUsingBlock:v13];

  v10 = v16;
  v11 = v7;

  return v7;
}

- (id)insertEntitiesForExternalDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = +[NSMutableArray array];
  database = [(MediaSocialPostEntity *)self database];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E2CA0;
  v13[3] = &unk_100328938;
  v14 = [[NSNumber alloc] initWithLongLong:{-[MediaSocialPostEntity persistentID](self, "persistentID")}];
  v15 = database;
  v7 = v5;
  v16 = v7;
  v8 = database;
  v9 = v14;
  [destinationsCopy enumerateObjectsUsingBlock:v13];

  v10 = v16;
  v11 = v7;

  return v7;
}

- (BOOL)isReadyToSend
{
  v3 = [(MediaSocialPostEntity *)self valueForProperty:@"is_failed"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" value:&off_10034BDD8 comparisonType:2];
    v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:[(MediaSocialPostEntity *)self persistentID]];
    v13[0] = v7;
    v13[1] = v6;
    v8 = [NSArray arrayWithObjects:v13 count:2];
    v9 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

    database = [(MediaSocialPostEntity *)self database];
    v11 = [DirectUploadEntity anyInDatabase:database predicate:v9];

    if (v11)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = ![(MediaSocialPostEntity *)self hasActiivtyID];
    }
  }

  return v5;
}

- (BOOL)hasActiivtyID
{
  v4 = 0;
  v5 = @"activity_id";
  [(MediaSocialPostEntity *)self getValues:&v4 forProperties:&v5 count:1];
  if (v4)
  {
    v2 = [v4 length] != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isOverPollDuration
{
  v11[0] = @"poll_duration";
  v11[1] = @"creation_time";
  v9 = 0;
  v10 = 0;
  [(MediaSocialPostEntity *)self getValues:&v9 forProperties:v11 count:2];
  [v9 doubleValue];
  v3 = v2;
  [v10 doubleValue];
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  for (i = 1; i != -1; --i)
  {
  }

  return v3 + v5 < Current;
}

- (MediaSocialStatusPollRequest)statusPollRequest
{
  v3 = objc_alloc_init(MediaSocialStatusPollRequest);
  v9[0] = @"account_id";
  v9[1] = @"activity_id";
  v9[2] = @"poll_interval";
  v9[3] = @"source_app";
  v9[4] = @"poll_duration";
  v9[5] = @"creation_time";
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  [(MediaSocialPostEntity *)self getValues:&v6 forProperties:v9 count:6];
  [(MediaSocialStatusPollRequest *)v3 setAccountIdentifier:v6];
  [(MediaSocialStatusPollRequest *)v3 setActivityIdentifier:*(&v6 + 1)];
  [v7 doubleValue];
  [(MediaSocialStatusPollRequest *)v3 setPollingInterval:?];
  [(MediaSocialStatusPollRequest *)v3 setPostIdentifier:[(MediaSocialPostEntity *)self persistentID]];
  [(MediaSocialStatusPollRequest *)v3 setSourceApplicationIdentifier:*(&v7 + 1)];
  [v8 doubleValue];
  [(MediaSocialStatusPollRequest *)v3 setPollingDuration:?];
  [*(&v8 + 1) doubleValue];
  [(MediaSocialStatusPollRequest *)v3 setPostCreateTime:?];
  for (i = 5; i != -1; --i)
  {
  }

  return v3;
}

- (void)updateWithPollingResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(MediaSocialPostEntity *)self valueForProperty:@"poll_count"];
  integerValue = [v5 integerValue];

  v7 = [[NSNumber alloc] initWithInteger:integerValue + 1];
  [v4 setObject:v7 forKey:@"poll_count"];
  [responseCopy pollingInterval];
  if (v8 <= 2.22044605e-16)
  {
    [responseCopy pollDuration];
  }

  else
  {
    v9 = [[NSNumber alloc] initWithDouble:v8];
    [v4 setObject:v9 forKey:@"poll_interval"];

    [responseCopy pollDuration];
    v11 = [[NSNumber alloc] initWithDouble:v10];
    [v4 setObject:v11 forKey:@"poll_duration"];
  }

  [(MediaSocialPostEntity *)self setValuesWithDictionary:v4];
}

- (NSArray)uploadedAttachments
{
  v3 = +[NSMutableArray array];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:[(MediaSocialPostEntity *)self persistentID]];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:2];
  v25[0] = v4;
  v25[1] = v5;
  v6 = [NSArray arrayWithObjects:v25 count:2];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  v8 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v8 setEntityClass:objc_opt_class()];
  v9 = +[DirectUploadEntity databaseTable];
  v10 = [NSString stringWithFormat:@"(%@.%@ != 0) ASC", v9, @"parent_upload_id"];
  [v8 setOrderingClause:v10];

  [v8 setPredicate:v7];
  v24[0] = @"album_id";
  v24[1] = @"asset_token";
  v24[2] = @"asset_token_type";
  v24[3] = @"category_name";
  v24[4] = @"description";
  v24[5] = @"is_explicit";
  v24[6] = @"parent_upload_id";
  v24[7] = @"parent_relationship_type";
  v24[8] = @"preview_frame_time";
  v24[9] = @"title";
  v24[10] = @"upload_time";
  v24[11] = @"uti";
  v11 = objc_alloc_init(NSMutableDictionary);
  database = [(MediaSocialPostEntity *)self database];
  v13 = [[SSSQLiteQuery alloc] initWithDatabase:database descriptor:v8];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E3688;
  v20[3] = &unk_100328990;
  v21 = database;
  v22 = v11;
  v14 = v3;
  v23 = v14;
  v15 = v11;
  v16 = database;
  [v13 enumeratePersistentIDsAndProperties:v24 count:12 usingBlock:v20];
  v17 = v14;

  for (i = 11; i != -1; --i)
  {
  }

  return v17;
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  database = [(MediaSocialPostEntity *)self database];
  persistentID = [(MediaSocialPostEntity *)selfCopy persistentID];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:persistentID];
  v6 = [MediaSocialExternalTargetEntity queryWithDatabase:database predicate:v5];
  [v6 deleteAllEntities];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"post_id" equalToLongLong:persistentID];

  v8 = [DirectUploadEntity queryWithDatabase:database predicate:v7];

  [v8 deleteAllEntities];
  v10.receiver = selfCopy;
  v10.super_class = MediaSocialPostEntity;
  LOBYTE(selfCopy) = [(MediaSocialPostEntity *)&v10 deleteFromDatabase];

  return selfCopy;
}

- (id)_insertUploadWithAttachment:(id)attachment properties:(id)properties database:(id)database
{
  attachmentCopy = attachment;
  databaseCopy = database;
  propertiesCopy = properties;
  v10 = [DirectUploadEntity newEntityValuesWithMediaSocialAttachment:attachmentCopy];
  [v10 addEntriesFromDictionary:propertiesCopy];

  v11 = [[DirectUploadEntity alloc] initWithPropertyValues:v10 inDatabase:databaseCopy];
  if (v11)
  {
    artists = [attachmentCopy artists];
    if ([artists count])
    {
      v13 = [(DirectUploadEntity *)v11 insertEntitiesForArtists:artists withProperties:0];
    }
  }

  return v11;
}

@end