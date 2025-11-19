@interface VPANVirtualCard
+ (id)anyInDatabase:(id)a3 withVirtualCardIdentifier:(id)a4;
+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)a3 cardholderNameFromSafari:(id)a4 inDatabase:(id)a5;
+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)a3 dateLastUsedBySafari:(id)a4 inDatabase:(id)a5;
+ (void)updateVirtualCard:(id)a3 fromDatabase:(id)a4;
- (VPANVirtualCard)initWithVirtualCardIdentifier:(id)a3 inDatabase:(id)a4;
- (void)updateCardholderNameFromSafari:(id)a3;
- (void)updateDateLastUsedBySafari:(id)a3;
- (void)updateVirtualCard:(id)a3;
@end

@implementation VPANVirtualCard

- (VPANVirtualCard)initWithVirtualCardIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObjectOrNull:v7 forKey:@"a"];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)a3 dateLastUsedBySafari:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithVirtualCardIdentifier:v10 inDatabase:v8];

  [v11 updateDateLastUsedBySafari:v9];

  return v11;
}

+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)a3 cardholderNameFromSafari:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithVirtualCardIdentifier:v10 inDatabase:v8];

  [v11 updateCardholderNameFromSafari:v9];

  return v11;
}

+ (id)anyInDatabase:(id)a3 withVirtualCardIdentifier:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForVirtualCardIdentifier:a4];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

- (void)updateDateLastUsedBySafari:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v5 = _SQLValueForDate();

  [v6 setObjectOrNull:v5 forKey:@"b"];
  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

- (void)updateCardholderNameFromSafari:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v5 = _SQLValueForString();

  [v6 setObjectOrNull:v5 forKey:@"c"];
  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

+ (void)updateVirtualCard:(id)a3 fromDatabase:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 type] == 2)
  {
    v6 = [v8 identifier];
    v7 = [VPANVirtualCard anyInDatabase:v5 withVirtualCardIdentifier:v6];

    [v7 updateVirtualCard:v8];
  }
}

- (void)updateVirtualCard:(id)a3
{
  v7 = a3;
  if ([v7 type] == 2)
  {
    v4 = [(SQLiteEntity *)self valueForProperty:@"b"];
    v5 = _DateForSQLValue();

    [v7 setLastAutoFilledBySafari:v5];
    v6 = [(SQLiteEntity *)self valueForProperty:@"c"];
    [v7 setNameFromSafari:v6];
  }
}

@end