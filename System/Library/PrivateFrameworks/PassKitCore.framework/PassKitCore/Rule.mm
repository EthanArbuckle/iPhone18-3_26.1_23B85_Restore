@interface Rule
+ (id)_propertySettersForRule;
+ (id)insertOrUpdateRule:(id)rule inDatabase:(id)database;
+ (id)ruleWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)rulesInDatabase:(id)database;
+ (id)rulesInDatabase:(id)database matchingRuleIdentifiers:(id)identifiers;
+ (void)deleteAllRulesInDatabase:(id)database;
+ (void)deleteRuleWithIdentifier:(id)identifier inDatabase:(id)database;
+ (void)deleteRulesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database;
- (Rule)initWithRule:(id)rule inDatabase:(id)database;
- (id)rule;
- (void)updateWithRule:(id)rule;
@end

@implementation Rule

+ (id)_propertySettersForRule
{
  v4[0] = @"identifier";
  v4[1] = @"predicate_format";
  v5[0] = &stru_100847128;
  v5[1] = &stru_100847148;
  v4[2] = @"os_version_requirement_range";
  v5[2] = &stru_100847168;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)rulesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  v7 = objc_alloc_init(NSMutableSet);
  v8 = +[Rule _propertySettersForRule];
  allKeys = [v8 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100116434;
  v14[3] = &unk_10083C998;
  v16 = v7;
  selfCopy = self;
  v15 = v8;
  v10 = v7;
  v11 = v8;
  [v6 enumeratePersistentIDsAndProperties:allKeys usingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

+ (id)rulesInDatabase:(id)database matchingRuleIdentifiers:(id)identifiers
{
  databaseCopy = database;
  v7 = [self _predicateForRuleIdentifiers:identifiers];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  v9 = objc_alloc_init(NSMutableSet);
  v10 = +[Rule _propertySettersForRule];
  allKeys = [v10 allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011661C;
  v16[3] = &unk_10083C998;
  v18 = v9;
  selfCopy = self;
  v17 = v10;
  v12 = v9;
  v13 = v10;
  [v8 enumeratePersistentIDsAndProperties:allKeys usingBlock:v16];
  v14 = [v12 copy];

  return v14;
}

+ (id)ruleWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForRuleIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

+ (id)insertOrUpdateRule:(id)rule inDatabase:(id)database
{
  ruleCopy = rule;
  databaseCopy = database;
  identifier = [ruleCopy identifier];
  v9 = [self ruleWithIdentifier:identifier inDatabase:databaseCopy];

  if (v9)
  {
    [v9 updateWithRule:ruleCopy];
  }

  else
  {
    v9 = [[self alloc] initWithRule:ruleCopy inDatabase:databaseCopy];
  }

  return v9;
}

- (Rule)initWithRule:(id)rule inDatabase:(id)database
{
  databaseCopy = database;
  ruleCopy = rule;
  v8 = objc_alloc_init(NSMutableDictionary);
  identifier = [ruleCopy identifier];
  [v8 setObjectOrNull:identifier forKey:@"identifier"];

  predicateFormat = [ruleCopy predicateFormat];
  [v8 setObjectOrNull:predicateFormat forKey:@"predicate_format"];

  osVersionRequirementRange = [ruleCopy osVersionRequirementRange];

  v12 = _SQLValueForOSVersionRequirementRange();
  [v8 setObjectOrNull:v12 forKey:@"os_version_requirement_range"];

  v13 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  v14 = v13;

  return v14;
}

+ (void)deleteRuleWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForRuleIdentifier:identifier];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteRulesNotIncludingIdentifiers:(id)identifiers inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"identifier" values:identifiers];
  v7 = [self queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllRulesInDatabase:(id)database
{
  databaseCopy = database;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [self queryWithDatabase:databaseCopy predicate:v5];

  [v6 deleteAllEntities];
}

- (id)rule
{
  v3 = objc_alloc_init(PKRule);
  v4 = +[Rule _propertySettersForRule];
  allKeys = [v4 allKeys];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100116BA4;
  v14 = &unk_10083C240;
  v15 = v4;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:allKeys withApplier:&v11];

  [v6 parsePredicateFormat];
  v8 = v16;
  v9 = v6;

  return v6;
}

- (void)updateWithRule:(id)rule
{
  ruleCopy = rule;
  v9 = objc_alloc_init(NSMutableDictionary);
  identifier = [ruleCopy identifier];
  [v9 setObjectOrNull:identifier forKey:@"identifier"];

  predicateFormat = [ruleCopy predicateFormat];
  [v9 setObjectOrNull:predicateFormat forKey:@"predicate_format"];

  osVersionRequirementRange = [ruleCopy osVersionRequirementRange];

  v8 = _SQLValueForOSVersionRequirementRange();
  [v9 setObjectOrNull:v8 forKey:@"os_version_requirement_range"];

  [(SQLiteEntity *)self setValuesWithDictionary:v9];
}

@end