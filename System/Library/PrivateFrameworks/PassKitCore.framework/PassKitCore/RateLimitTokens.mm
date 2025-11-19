@interface RateLimitTokens
+ (id)_propertyValuesForTokens:(id)a3;
+ (id)_setters;
+ (id)insertOrUpdateTokens:(id)a3 inDatabase:(id)a4;
+ (id)predicateForOperation:(int64_t)a3;
+ (id)tokensForBundleIdentifier:(id)a3 operation:(int64_t)a4 inDatabase:(id)a5;
- (RateLimitTokens)initWithTokens:(id)a3 inDatabase:(id)a4;
- (id)tokens;
- (void)updateWithTokens:(id)a3;
@end

@implementation RateLimitTokens

- (RateLimitTokens)initWithTokens:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _propertyValuesForTokens:v7];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v9;
}

+ (id)insertOrUpdateTokens:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = [a1 tokensForBundleIdentifier:v8 operation:objc_msgSend(v6 inDatabase:{"operation"), v7}];

  if (v9)
  {
    [v9 updateWithTokens:v6];
  }

  else
  {
    v9 = [[a1 alloc] initWithTokens:v6 inDatabase:v7];
  }

  return v9;
}

- (void)updateWithTokens:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _propertyValuesForTokens:v4];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)tokensForBundleIdentifier:(id)a3 operation:(int64_t)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = [a1 predicateForBundleIdentifier:a3];
  v15[0] = v9;
  v10 = [a1 predicateForOperation:a4];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];

  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v13 = [objc_opt_class() anyInDatabase:v8 predicate:v12];

  return v13;
}

- (id)tokens
{
  v3 = objc_alloc_init(_TtC5passd27PDRateLimitTokens_Prototype);
  v4 = [objc_opt_class() _setters];
  v5 = [v4 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F8D34;
  v10[3] = &unk_10083BEE0;
  v10[4] = self;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:v10];

  v8 = [(PDRateLimitTokens_Prototype *)v6 build];

  return v8;
}

+ (id)predicateForOperation:(int64_t)a3
{
  v3 = [NSNumber numberWithInteger:a3];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"b" equalToValue:v3];

  return v4;
}

+ (id)_setters
{
  v4[0] = @"a";
  v4[1] = @"b";
  v5[0] = &stru_100845748;
  v5[1] = &stru_100845768;
  v4[2] = @"c";
  v4[3] = @"d";
  v5[2] = &stru_100845788;
  v5[3] = &stru_1008457A8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

+ (id)_propertyValuesForTokens:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 bundleIdentifier];
  [v4 setObjectOrNull:v5 forKey:@"a"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 operation]);
  [v4 setObject:v6 forKey:@"b"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 tokenCount]);
  [v4 setObject:v7 forKey:@"c"];

  v8 = [v3 lastRefillDate];

  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"d"];

  return v4;
}

@end