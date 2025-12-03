@interface TransactionReleasedData
+ (id)_predicateForPaymentTransactionPID:(int64_t)d;
+ (id)_propertySettersForReleasedData;
+ (id)releasedDataForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
+ (void)insertReleasedData:(id)data forPaymentTransactionPID:(int64_t)d inDatabase:(id)database;
- (id)releasedData;
@end

@implementation TransactionReleasedData

+ (void)insertReleasedData:(id)data forPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  dataCopy = data;
  [self deleteEntitiesForPaymentTransactionPID:d inDatabase:databaseCopy];
  v19 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSNumber numberWithLongLong:d];
  [v19 setObject:v10 forKey:@"a"];

  documentType = [dataCopy documentType];
  [v19 setObjectOrNull:documentType forKey:@"document_type"];

  privacyPolicyURL = [dataCopy privacyPolicyURL];
  v13 = _SQLValueForURL();
  [v19 setObjectOrNull:v13 forKey:@"b"];

  certificateData = [dataCopy certificateData];
  [v19 setObjectOrNull:certificateData forKey:@"c"];

  merchantNameOverride = [dataCopy merchantNameOverride];
  [v19 setObjectOrNull:merchantNameOverride forKey:@"d"];

  v16 = [[self alloc] initWithPropertyValues:v19 inDatabase:databaseCopy];
  elements = [dataCopy elements];
  +[TransactionReleasedDataElement insertReleasedDataElements:forPID:inDatabase:](TransactionReleasedDataElement, "insertReleasedDataElements:forPID:inDatabase:", elements, [v16 persistentID], databaseCopy);

  application = [dataCopy application];

  +[TransactionReleasedDataApplication insertReleasedDataApplication:forPID:inDatabase:](TransactionReleasedDataApplication, "insertReleasedDataApplication:forPID:inDatabase:", application, [v16 persistentID], databaseCopy);
}

+ (id)releasedDataForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  releasedData = [v8 releasedData];

  return releasedData;
}

- (id)releasedData
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"document_type"];
  if (v3)
  {
    v4 = [[PKTransactionReleasedData alloc] initWithDocumentType:v3];
    _propertySettersForReleasedData = [objc_opt_class() _propertySettersForReleasedData];
    allKeys = [_propertySettersForReleasedData allKeys];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100020E54;
    v15[3] = &unk_10083BEE0;
    v15[4] = self;
    v16 = _propertySettersForReleasedData;
    v7 = v4;
    v17 = v7;
    v8 = _propertySettersForReleasedData;
    [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v15];

    persistentID = [(SQLiteEntity *)self persistentID];
    database = [(SQLiteEntity *)self database];
    v11 = [TransactionReleasedDataElement releasedDataElementsForPID:persistentID inDatabase:database];
    [v7 setElements:v11];
    v12 = [TransactionReleasedDataApplication releasedDataElementsForPID:persistentID inDatabase:database];
    [v7 setApplication:v12];
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)deleteEntitiesForPaymentTransactionPID:(int64_t)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPaymentTransactionPID:d];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  +[TransactionReleasedDataElement deleteEntitiesForPID:inDatabase:](TransactionReleasedDataElement, "deleteEntitiesForPID:inDatabase:", [v8 persistentID], databaseCopy);
  +[TransactionReleasedDataApplication deleteEntitiesForPID:inDatabase:](TransactionReleasedDataApplication, "deleteEntitiesForPID:inDatabase:", [v8 persistentID], databaseCopy);

  [v8 deleteFromDatabase];
}

+ (id)_propertySettersForReleasedData
{
  v4[0] = @"b";
  v4[1] = @"c";
  v5[0] = &stru_10083C610;
  v5[1] = &stru_10083C630;
  v4[2] = @"d";
  v5[2] = &stru_10083C650;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)_predicateForPaymentTransactionPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"a" equalToValue:v3];

  return v4;
}

@end