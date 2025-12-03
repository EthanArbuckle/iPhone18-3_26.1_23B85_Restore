@interface PaymentOfferDynamicContent
+ (id)_predicateForTablePID:(int64_t)d type:(unint64_t)type;
+ (id)dynamicContentForTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)deleteDynamicContentForTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
+ (void)insertOrUpdateDynamicContent:(id)content forTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (id)dynamicContent;
@end

@implementation PaymentOfferDynamicContent

+ (void)insertOrUpdateDynamicContent:(id)content forTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  contentCopy = content;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010ED98;
  v13[3] = &unk_100846B70;
  selfCopy = self;
  dCopy = d;
  typeCopy = type;
  databaseCopy = database;
  v15 = contentCopy;
  v11 = contentCopy;
  v12 = databaseCopy;
  sub_1005D4424(v12, v13);
}

+ (void)deleteDynamicContentForTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForTablePID:d type:type];
  v10 = [self queryWithDatabase:databaseCopy predicate:v9];

  [v10 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  selfCopy = self;
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)selfCopy database];
  [PaymentOfferDynamicContentPage deletePagesForDynamicContentPID:persistentID inDatabase:database];
  v6.receiver = selfCopy;
  v6.super_class = PaymentOfferDynamicContent;
  LOBYTE(selfCopy) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return selfCopy;
}

+ (id)dynamicContentForTablePID:(int64_t)d type:(unint64_t)type inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self _predicateForTablePID:d type:type];
  v10 = [self anyInDatabase:databaseCopy predicate:v9];

  dynamicContent = [v10 dynamicContent];

  return dynamicContent;
}

- (id)dynamicContent
{
  v3 = objc_alloc_init(PKPaymentOfferDynamicContent);
  persistentID = [(SQLiteEntity *)self persistentID];
  database = [(SQLiteEntity *)self database];
  v6 = [PaymentOfferDynamicContentPage dynamicContentPagesByTypeForDynamicContentPID:persistentID inDatabase:database];
  [v3 setContentByPageType:v6];

  return v3;
}

+ (id)_predicateForTablePID:(int64_t)d type:(unint64_t)type
{
  v5 = [NSNumber numberWithLongLong:d];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"table_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:type];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

@end