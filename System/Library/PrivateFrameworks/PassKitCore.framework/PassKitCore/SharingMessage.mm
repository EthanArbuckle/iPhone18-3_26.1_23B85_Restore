@interface SharingMessage
+ (BOOL)hasSharingMessage:(id)message transportIdentifier:(id)identifier inDatabase:(id)database;
+ (id)_predicateForCreatedAtNewerThanDate:(id)date;
+ (id)_predicateForCreatedAtOlderThanDate:(id)date;
+ (id)_propertyValuesForSharingMessage:(id)message storePayload:(BOOL)payload;
+ (id)_sharingMessageForProperties:(id)properties values:(const void *)values;
+ (id)_sharingMessagesWithQuery:(id)query inDatabase:(id)database;
+ (id)allOutstandingSharingMessagesInDatabase:(id)database;
+ (id)properties;
+ (id)sharingMessageForMessageIdentifier:(id)identifier inDatabase:(id)database;
+ (id)sharingMessagesForTransportIdentifier:(id)identifier inDatabase:(id)database;
+ (id)sharingMessagesForTransportIdentifier:(id)identifier newerThanDate:(id)date inDatabase:(id)database;
+ (id)transportIdentifierForSharingMessage:(id)message inDatabase:(id)database;
+ (void)deleteSharingMessageForIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteSharingMessagesForTransportIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteSharingMessagesOlderThan:(id)than inDatabase:(id)database;
+ (void)insertOrUpdateSharingMessages:(id)messages storePayloads:(BOOL)payloads transportIdentifier:(id)identifier inDatabase:(id)database;
- (SharingMessage)initWithSharingMessage:(id)message storePayload:(BOOL)payload forTransportIdentifier:(id)identifier inDatabase:(id)database;
- (id)sharingMessage;
- (void)updateWithSharingMessage:(id)message storePayload:(BOOL)payload;
@end

@implementation SharingMessage

- (SharingMessage)initWithSharingMessage:(id)message storePayload:(BOOL)payload forTransportIdentifier:(id)identifier inDatabase:(id)database
{
  payloadCopy = payload;
  databaseCopy = database;
  identifierCopy = identifier;
  messageCopy = message;
  v13 = [objc_opt_class() _propertyValuesForSharingMessage:messageCopy storePayload:payloadCopy];

  [v13 setObjectOrNull:identifierCopy forKey:@"a"];
  v14 = [(SQLiteEntity *)self initWithPropertyValues:v13 inDatabase:databaseCopy];

  return v14;
}

- (void)updateWithSharingMessage:(id)message storePayload:(BOOL)payload
{
  payloadCopy = payload;
  messageCopy = message;
  v7 = [objc_opt_class() _propertyValuesForSharingMessage:messageCopy storePayload:payloadCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v7];
}

+ (void)insertOrUpdateSharingMessages:(id)messages storePayloads:(BOOL)payloads transportIdentifier:(id)identifier inDatabase:(id)database
{
  payloadsCopy = payloads;
  messagesCopy = messages;
  identifierCopy = identifier;
  databaseCopy = database;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = messagesCopy;
  v24 = [messagesCopy countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        identifier = [v12 identifier];
        v14 = [self _predicateForTransportIdentifier:identifierCopy];
        v30[0] = v14;
        v25 = identifier;
        v15 = [self _predicateForMessageIdentifier:identifier];
        v30[1] = v15;
        [NSArray arrayWithObjects:v30 count:2];
        v17 = v16 = identifierCopy;
        v18 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v17];
        v19 = [self anyInDatabase:databaseCopy predicate:v18];

        if (v19)
        {
          [(SharingMessage *)v19 updateWithSharingMessage:v12 storePayload:payloadsCopy];
        }

        else
        {
          v19 = [[SharingMessage alloc] initWithSharingMessage:v12 storePayload:payloadsCopy forTransportIdentifier:v16 inDatabase:databaseCopy];
        }

        identifierCopy = v16;
      }

      v24 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v24);
  }
}

+ (BOOL)hasSharingMessage:(id)message transportIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  messageCopy = message;
  v21 = [self _predicateForTransportIdentifier:identifier];
  v24[0] = v21;
  identifier = [messageCopy identifier];
  v9 = [self _predicateForMessageIdentifier:identifier];
  v23[0] = v9;
  payload = [messageCopy payload];

  sHA256Hash = [payload SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];
  v13 = [self _predicateForPayloadHash:hexEncoding];
  v23[1] = v13;
  v14 = [NSArray arrayWithObjects:v23 count:2];
  v15 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v14];
  v24[1] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:2];
  v17 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

  v18 = [self anyInDatabase:databaseCopy predicate:v17];

  return v18 != 0;
}

+ (id)transportIdentifierForSharingMessage:(id)message inDatabase:(id)database
{
  databaseCopy = database;
  identifier = [message identifier];
  v8 = [self _predicateForMessageIdentifier:identifier];
  v9 = [self anyInDatabase:databaseCopy predicate:v8];

  v10 = [v9 valueForProperty:@"a"];

  return v10;
}

+ (id)sharingMessagesForTransportIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForTransportIdentifier:identifier];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];
  v9 = [self _sharingMessagesWithQuery:v8 inDatabase:databaseCopy];

  return v9;
}

+ (id)sharingMessagesForTransportIdentifier:(id)identifier newerThanDate:(id)date inDatabase:(id)database
{
  databaseCopy = database;
  dateCopy = date;
  v10 = [self _predicateForTransportIdentifier:identifier];
  v17[0] = v10;
  v11 = [self _predicateForCreatedAtNewerThanDate:dateCopy];

  v17[1] = v11;
  v12 = [NSArray arrayWithObjects:v17 count:2];
  v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

  v14 = [self queryWithDatabase:databaseCopy predicate:v13];
  v15 = [self _sharingMessagesWithQuery:v14 inDatabase:databaseCopy];

  return v15;
}

+ (id)sharingMessageForMessageIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForMessageIdentifier:identifier];
  v13 = v7;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  sharingMessage = [v10 sharingMessage];

  return sharingMessage;
}

+ (void)deleteSharingMessageForIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForMessageIdentifier:identifier];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteSharingMessagesForTransportIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForTransportIdentifier:identifier];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteSharingMessagesOlderThan:(id)than inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForCreatedAtOlderThanDate:than];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)allOutstandingSharingMessagesInDatabase:(id)database
{
  databaseCopy = database;
  _predicateForNonNullPayload = [self _predicateForNonNullPayload];
  v18[0] = _predicateForNonNullPayload;
  _predicateForValidTransportIdentifier = [self _predicateForValidTransportIdentifier];
  v18[1] = _predicateForValidTransportIdentifier;
  v7 = [NSArray arrayWithObjects:v18 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [self queryWithDatabase:databaseCopy predicate:v8];

  v10 = objc_alloc_init(NSMutableDictionary);
  properties = [self properties];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A13EC;
  v15[3] = &unk_10084B280;
  selfCopy = self;
  v12 = v10;
  v16 = v12;
  [v9 enumeratePersistentIDsAndProperties:properties usingBlock:v15];

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

+ (id)_sharingMessagesWithQuery:(id)query inDatabase:(id)database
{
  queryCopy = query;
  v6 = objc_alloc_init(NSMutableArray);
  properties = [self properties];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001A15E4;
  v14 = &unk_10084B280;
  selfCopy = self;
  v8 = v6;
  v15 = v8;
  [queryCopy enumeratePersistentIDsAndProperties:properties usingBlock:&v11];

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
  properties = [objc_opt_class() properties];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A1760;
  v6[3] = &unk_100843040;
  v6[4] = self;
  v6[5] = &v7;
  [(SQLiteEntity *)self getValuesForProperties:properties withApplier:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)_predicateForCreatedAtOlderThanDate:(id)date
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" lessThanValue:v3];

  return v4;
}

+ (id)_predicateForCreatedAtNewerThanDate:(id)date
{
  v3 = _SQLValueForDate();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"e" greaterThanValue:v3];

  return v4;
}

+ (id)_sharingMessageForProperties:(id)properties values:(const void *)values
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001A1B5C;
  v24[3] = &unk_10084B2A8;
  propertiesCopy = properties;
  v25 = propertiesCopy;
  valuesCopy = values;
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

+ (id)_propertyValuesForSharingMessage:(id)message storePayload:(BOOL)payload
{
  payloadCopy = payload;
  messageCopy = message;
  v6 = objc_alloc_init(NSMutableDictionary);
  identifier = [messageCopy identifier];
  [v6 setObjectOrNull:identifier forKey:@"b"];

  if (payloadCopy)
  {
    payload = [messageCopy payload];
    [v6 setObjectOrNull:payload forKey:@"c"];
  }

  else
  {
    payload = +[NSNull null];
    [v6 setObject:payload forKeyedSubscript:@"c"];
  }

  payload2 = [messageCopy payload];
  sHA256Hash = [payload2 SHA256Hash];
  hexEncoding = [sHA256Hash hexEncoding];
  [v6 setObjectOrNull:hexEncoding forKey:@"d"];

  v12 = +[NSDate now];
  v13 = _SQLValueForDate();
  [v6 setObjectOrNull:v13 forKey:@"e"];

  displayInformation = [messageCopy displayInformation];
  v15 = displayInformation;
  if (displayInformation)
  {
    title = [displayInformation title];
    [v6 setObjectOrNull:title forKey:@"f"];

    subtitle = [v15 subtitle];
    [v6 setObjectOrNull:subtitle forKey:@"g"];

    imageURL = [v15 imageURL];
    v19 = _SQLValueForURL();
    [v6 setObjectOrNull:v19 forKey:@"h"];

    openGraphURL = [v15 openGraphURL];
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