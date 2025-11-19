@interface SharingMessage
+ (BOOL)hasSharingMessage:(id)a3 transportIdentifier:(id)a4 inDatabase:(id)a5;
+ (id)_predicateForCreatedAtNewerThanDate:(id)a3;
+ (id)_predicateForCreatedAtOlderThanDate:(id)a3;
+ (id)_propertyValuesForSharingMessage:(id)a3 storePayload:(BOOL)a4;
+ (id)_sharingMessageForProperties:(id)a3 values:(const void *)a4;
+ (id)_sharingMessagesWithQuery:(id)a3 inDatabase:(id)a4;
+ (id)allOutstandingSharingMessagesInDatabase:(id)a3;
+ (id)properties;
+ (id)sharingMessageForMessageIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)sharingMessagesForTransportIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)sharingMessagesForTransportIdentifier:(id)a3 newerThanDate:(id)a4 inDatabase:(id)a5;
+ (id)transportIdentifierForSharingMessage:(id)a3 inDatabase:(id)a4;
+ (void)deleteSharingMessageForIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteSharingMessagesForTransportIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteSharingMessagesOlderThan:(id)a3 inDatabase:(id)a4;
+ (void)insertOrUpdateSharingMessages:(id)a3 storePayloads:(BOOL)a4 transportIdentifier:(id)a5 inDatabase:(id)a6;
- (SharingMessage)initWithSharingMessage:(id)a3 storePayload:(BOOL)a4 forTransportIdentifier:(id)a5 inDatabase:(id)a6;
- (id)sharingMessage;
- (void)updateWithSharingMessage:(id)a3 storePayload:(BOOL)a4;
@end

@implementation SharingMessage

- (SharingMessage)initWithSharingMessage:(id)a3 storePayload:(BOOL)a4 forTransportIdentifier:(id)a5 inDatabase:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [objc_opt_class() _propertyValuesForSharingMessage:v12 storePayload:v7];

  [v13 setObjectOrNull:v11 forKey:@"a"];
  v14 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:v10];

  return v14;
}

- (void)updateWithSharingMessage:(id)a3 storePayload:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _propertyValuesForSharingMessage:v6 storePayload:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v7];
}

+ (void)insertOrUpdateSharingMessages:(id)a3 storePayloads:(BOOL)a4 transportIdentifier:(id)a5 inDatabase:(id)a6
{
  v23 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v24 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v24)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 identifier];
        v14 = [a1 _predicateForTransportIdentifier:v9];
        v30[0] = v14;
        v25 = v13;
        v15 = [a1 _predicateForMessageIdentifier:v13];
        v30[1] = v15;
        [NSArray arrayWithObjects:v30 count:2];
        v17 = v16 = v9;
        v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];
        v19 = [a1 anyInDatabase:v10 predicate:v18];

        if (v19)
        {
          [(SharingMessage *)v19 updateWithSharingMessage:v12 storePayload:v23];
        }

        else
        {
          v19 = [[SharingMessage alloc] initWithSharingMessage:v12 storePayload:v23 forTransportIdentifier:v16 inDatabase:v10];
        }

        v9 = v16;
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v24);
  }
}

+ (BOOL)hasSharingMessage:(id)a3 transportIdentifier:(id)a4 inDatabase:(id)a5
{
  v22 = a5;
  v8 = a3;
  v21 = [a1 _predicateForTransportIdentifier:a4];
  v24[0] = v21;
  v20 = [v8 identifier];
  v9 = [a1 _predicateForMessageIdentifier:v20];
  v23[0] = v9;
  v10 = [v8 payload];

  v11 = [v10 SHA256Hash];
  v12 = [v11 hexEncoding];
  v13 = [a1 _predicateForPayloadHash:v12];
  v23[1] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:2];
  v15 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v14];
  v24[1] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:2];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  v18 = [a1 anyInDatabase:v22 predicate:v17];

  return v18 != 0;
}

+ (id)transportIdentifierForSharingMessage:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  v8 = [a1 _predicateForMessageIdentifier:v7];
  v9 = [a1 anyInDatabase:v6 predicate:v8];

  v10 = [v9 valueForProperty:@"a"];

  return v10;
}

+ (id)sharingMessagesForTransportIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForTransportIdentifier:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];
  v9 = [a1 _sharingMessagesWithQuery:v8 inDatabase:v6];

  return v9;
}

+ (id)sharingMessagesForTransportIdentifier:(id)a3 newerThanDate:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _predicateForTransportIdentifier:a3];
  v17[0] = v10;
  v11 = [a1 _predicateForCreatedAtNewerThanDate:v9];

  v17[1] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [a1 queryWithDatabase:v8 predicate:v13];
  v15 = [a1 _sharingMessagesWithQuery:v14 inDatabase:v8];

  return v15;
}

+ (id)sharingMessageForMessageIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForMessageIdentifier:a3];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  v10 = [a1 anyInDatabase:v6 predicate:v9];

  v11 = [v10 sharingMessage];

  return v11;
}

+ (void)deleteSharingMessageForIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForMessageIdentifier:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteSharingMessagesForTransportIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForTransportIdentifier:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteSharingMessagesOlderThan:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForCreatedAtOlderThanDate:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)allOutstandingSharingMessagesInDatabase:(id)a3
{
  v4 = a3;
  v5 = [a1 _predicateForNonNullPayload];
  v18[0] = v5;
  v6 = [a1 _predicateForValidTransportIdentifier];
  v18[1] = v6;
  v7 = [NSArray arrayWithObjects:v18 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [a1 queryWithDatabase:v4 predicate:v8];

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [a1 properties];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A13EC;
  v15[3] = &unk_10084B280;
  v17 = a1;
  v12 = v10;
  v16 = v12;
  [v9 enumeratePersistentIDsAndProperties:v11 usingBlock:v15];

  if ([v12 count])
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_sharingMessagesWithQuery:(id)a3 inDatabase:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [a1 properties];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001A15E4;
  v14 = &unk_10084B280;
  v16 = a1;
  v8 = v6;
  v15 = v8;
  [v5 enumeratePersistentIDsAndProperties:v7 usingBlock:&v11];

  if ([v8 count])
  {
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sharingMessage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100005BB0;
  v11 = sub_10000B1E4;
  v12 = 0;
  v3 = [objc_opt_class() properties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A1760;
  v6[3] = &unk_100843040;
  v6[4] = self;
  v6[5] = &v7;
  [(SQLiteEntity *)self getValuesForProperties:v3 withApplier:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)_predicateForCreatedAtOlderThanDate:(id)a3
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" lessThanValue:v3];

  return v4;
}

+ (id)_predicateForCreatedAtNewerThanDate:(id)a3
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" greaterThanValue:v3];

  return v4;
}

+ (id)_sharingMessageForProperties:(id)a3 values:(const void *)a4
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001A1B5C;
  v24[3] = &unk_10084B2A8;
  v5 = a3;
  v25 = v5;
  v26 = a4;
  v6 = objc_retainBlock(v24);
  v7 = (v6[2])(v6, @"b");
  v8 = (v6[2])(v6, @"c");
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = (v6[2])(v6, @"f");
    v12 = v11;
    if (v11)
    {
      v13 = (v6[2])(v6, @"g");
      v14 = (v6[2])(v6, @"h");
      v15 = _URLForSQLValue();

      v16 = (v6[2])(v6, @"i");
      v17 = _URLForSQLValue();

      v18 = [[PKSharingMessageDisplayInformation alloc] initWithTitle:v12 subtitle:v13 imageURL:v15 openGraphURL:v17];
    }

    else
    {
      v18 = 0;
    }

    v23 = 0;
    v10 = [PKSharingMessage specializedMessageFromPayload:v8 displayInformation:v18 outError:&v23];
    v19 = v23;
    if (v10)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      [v10 setIdentifier:v7];
    }

    else
    {
      v21 = v19;

      v10 = 0;
    }
  }

  return v10;
}

+ (id)_propertyValuesForSharingMessage:(id)a3 storePayload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 identifier];
  [v6 setObjectOrNull:v7 forKey:@"b"];

  if (v4)
  {
    v8 = [v5 payload];
    [v6 setObjectOrNull:v8 forKey:@"c"];
  }

  else
  {
    v8 = +[NSNull null];
    [v6 setObject:v8 forKeyedSubscript:@"c"];
  }

  v9 = [v5 payload];
  v10 = [v9 SHA256Hash];
  v11 = [v10 hexEncoding];
  [v6 setObjectOrNull:v11 forKey:@"d"];

  v12 = +[NSDate now];
  v13 = _SQLValueForDate();
  [v6 setObjectOrNull:v13 forKey:@"e"];

  v14 = [v5 displayInformation];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 title];
    [v6 setObjectOrNull:v16 forKey:@"f"];

    v17 = [v15 subtitle];
    [v6 setObjectOrNull:v17 forKey:@"g"];

    v18 = [v15 imageURL];
    v19 = _SQLValueForURL();
    [v6 setObjectOrNull:v19 forKey:@"h"];

    v20 = [v15 openGraphURL];
    v21 = _SQLValueForURL();
    [v6 setObjectOrNull:v21 forKey:@"i"];
  }

  return v6;
}

+ (id)properties
{
  v4[0] = @"pid";
  v4[1] = @"a";
  v4[2] = @"b";
  v4[3] = @"c";
  v4[4] = @"d";
  v4[5] = @"e";
  v4[6] = @"f";
  v4[7] = @"g";
  v4[8] = @"h";
  v4[9] = @"i";
  v2 = [NSArray arrayWithObjects:v4 count:10];

  return v2;
}

@end