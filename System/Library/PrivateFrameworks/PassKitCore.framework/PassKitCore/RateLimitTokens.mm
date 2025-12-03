@interface RateLimitTokens
+ (id)_propertyValuesForTokens:(id)tokens;
+ (id)_setters;
+ (id)insertOrUpdateTokens:(id)tokens inDatabase:(id)database;
+ (id)predicateForOperation:(int64_t)operation;
+ (id)tokensForBundleIdentifier:(id)identifier operation:(int64_t)operation inDatabase:(id)database;
- (RateLimitTokens)initWithTokens:(id)tokens inDatabase:(id)database;
- (id)tokens;
- (void)updateWithTokens:(id)tokens;
@end

@implementation RateLimitTokens

- (RateLimitTokens)initWithTokens:(id)tokens inDatabase:(id)database
{
  databaseCopy = database;
  tokensCopy = tokens;
  v8 = [objc_opt_class() _propertyValuesForTokens:tokensCopy];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)insertOrUpdateTokens:(id)tokens inDatabase:(id)database
{
  tokensCopy = tokens;
  databaseCopy = database;
  bundleIdentifier = [tokensCopy bundleIdentifier];
  v9 = [self tokensForBundleIdentifier:bundleIdentifier operation:objc_msgSend(tokensCopy inDatabase:{"operation"), databaseCopy}];

  if (v9)
  {
    [v9 updateWithTokens:tokensCopy];
  }

  else
  {
    v9 = [[self alloc] initWithTokens:tokensCopy inDatabase:databaseCopy];
  }

  return v9;
}

- (void)updateWithTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = [objc_opt_class() _propertyValuesForTokens:tokensCopy];

  [(SQLiteEntity *)self setValuesWithDictionary:v5];
}

+ (id)tokensForBundleIdentifier:(id)identifier operation:(int64_t)operation inDatabase:(id)database
{
  databaseCopy = database;
  v9 = [self predicateForBundleIdentifier:identifier];
  v15[0] = v9;
  v10 = [self predicateForOperation:operation];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];

  v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  v13 = [objc_opt_class() anyInDatabase:databaseCopy predicate:v12];

  return v13;
}

- (id)tokens
{
  v3 = objc_alloc_init(_TtC5passd27PDRateLimitTokens_Prototype);
  _setters = [objc_opt_class() _setters];
  allKeys = [_setters allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F8D34;
  v10[3] = &unk_10083BEE0;
  v10[4] = self;
  v11 = _setters;
  v12 = v3;
  v6 = v3;
  v7 = _setters;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:v10];

  build = [(PDRateLimitTokens_Prototype *)v6 build];

  return build;
}

+ (id)predicateForOperation:(int64_t)operation
{
  v3 = [NSNumber numberWithInteger:operation];
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

+ (id)_propertyValuesForTokens:(id)tokens
{
  tokensCopy = tokens;
  v4 = objc_alloc_init(NSMutableDictionary);
  bundleIdentifier = [tokensCopy bundleIdentifier];
  [v4 setObjectOrNull:bundleIdentifier forKey:@"a"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [tokensCopy operation]);
  [v4 setObject:v6 forKey:@"b"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [tokensCopy tokenCount]);
  [v4 setObject:v7 forKey:@"c"];

  lastRefillDate = [tokensCopy lastRefillDate];

  v9 = _SQLValueForDate();
  [v4 setObjectOrNull:v9 forKey:@"d"];

  return v4;
}

@end