@interface PaymentOfferDynamicContent
+ (id)_predicateForTablePID:(int64_t)a3 type:(unint64_t)a4;
+ (id)dynamicContentForTablePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)deleteDynamicContentForTablePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5;
+ (void)insertOrUpdateDynamicContent:(id)a3 forTablePID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6;
- (BOOL)deleteFromDatabase;
- (id)dynamicContent;
@end

@implementation PaymentOfferDynamicContent

+ (void)insertOrUpdateDynamicContent:(id)a3 forTablePID:(int64_t)a4 type:(unint64_t)a5 inDatabase:(id)a6
{
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010ED98;
  v13[3] = &unk_100846B70;
  v16 = a1;
  v17 = a4;
  v18 = a5;
  v14 = a6;
  v15 = v10;
  v11 = v10;
  v12 = v14;
  sub_1005D4424(v12, v13);
}

+ (void)deleteDynamicContentForTablePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForTablePID:a3 type:a4];
  v10 = [a1 queryWithDatabase:v8 predicate:v9];

  [v10 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v2 = self;
  v3 = [(SQLiteEntity *)self persistentID];
  v4 = [(SQLiteEntity *)v2 database];
  [PaymentOfferDynamicContentPage deletePagesForDynamicContentPID:v3 inDatabase:v4];
  v6.receiver = v2;
  v6.super_class = PaymentOfferDynamicContent;
  LOBYTE(v2) = [(SQLiteEntity *)&v6 deleteFromDatabase];

  return v2;
}

+ (id)dynamicContentForTablePID:(int64_t)a3 type:(unint64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 _predicateForTablePID:a3 type:a4];
  v10 = [a1 anyInDatabase:v8 predicate:v9];

  v11 = [v10 dynamicContent];

  return v11;
}

- (id)dynamicContent
{
  v3 = objc_alloc_init(PKPaymentOfferDynamicContent);
  v4 = [(SQLiteEntity *)self persistentID];
  v5 = [(SQLiteEntity *)self database];
  v6 = [PaymentOfferDynamicContentPage dynamicContentPagesByTypeForDynamicContentPID:v4 inDatabase:v5];
  [v3 setContentByPageType:v6];

  return v3;
}

+ (id)_predicateForTablePID:(int64_t)a3 type:(unint64_t)a4
{
  v5 = [NSNumber numberWithLongLong:a3];
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"table_pid" equalToValue:v5];
  v12[0] = v6;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v7];
  v12[1] = v8;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  return v10;
}

@end