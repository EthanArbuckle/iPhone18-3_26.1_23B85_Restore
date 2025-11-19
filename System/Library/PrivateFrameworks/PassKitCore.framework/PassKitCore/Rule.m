@interface Rule
+ (id)_propertySettersForRule;
+ (id)insertOrUpdateRule:(id)a3 inDatabase:(id)a4;
+ (id)ruleWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)rulesInDatabase:(id)a3;
+ (id)rulesInDatabase:(id)a3 matchingRuleIdentifiers:(id)a4;
+ (void)deleteAllRulesInDatabase:(id)a3;
+ (void)deleteRuleWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (void)deleteRulesNotIncludingIdentifiers:(id)a3 inDatabase:(id)a4;
- (Rule)initWithRule:(id)a3 inDatabase:(id)a4;
- (id)rule;
- (void)updateWithRule:(id)a3;
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

+ (id)rulesInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [a1 queryWithDatabase:v4 predicate:v5];

  v7 = objc_alloc_init(NSMutableSet);
  v8 = +[Rule _propertySettersForRule];
  v9 = [v8 allKeys];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100116434;
  v14[3] = &unk_10083C998;
  v16 = v7;
  v17 = a1;
  v15 = v8;
  v10 = v7;
  v11 = v8;
  [v6 enumeratePersistentIDsAndProperties:v9 usingBlock:v14];
  v12 = [v10 copy];

  return v12;
}

+ (id)rulesInDatabase:(id)a3 matchingRuleIdentifiers:(id)a4
{
  v6 = a3;
  v7 = [a1 _predicateForRuleIdentifiers:a4];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  v9 = objc_alloc_init(NSMutableSet);
  v10 = +[Rule _propertySettersForRule];
  v11 = [v10 allKeys];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011661C;
  v16[3] = &unk_10083C998;
  v18 = v9;
  v19 = a1;
  v17 = v10;
  v12 = v9;
  v13 = v10;
  [v8 enumeratePersistentIDsAndProperties:v11 usingBlock:v16];
  v14 = [v12 copy];

  return v14;
}

+ (id)ruleWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForRuleIdentifier:a3];
  v8 = [a1 anyInDatabase:v6 predicate:v7];

  return v8;
}

+ (id)insertOrUpdateRule:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [a1 ruleWithIdentifier:v8 inDatabase:v7];

  if (v9)
  {
    [v9 updateWithRule:v6];
  }

  else
  {
    v9 = [[a1 alloc] initWithRule:v6 inDatabase:v7];
  }

  return v9;
}

- (Rule)initWithRule:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v7 identifier];
  [v8 setObjectOrNull:v9 forKey:@"identifier"];

  v10 = [v7 predicateFormat];
  [v8 setObjectOrNull:v10 forKey:@"predicate_format"];

  v11 = [v7 osVersionRequirementRange];

  v12 = _SQLValueForOSVersionRequirementRange();
  [v8 setObjectOrNull:v12 forKey:@"os_version_requirement_range"];

  v13 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  v14 = v13;

  return v14;
}

+ (void)deleteRuleWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForRuleIdentifier:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteRulesNotIncludingIdentifiers:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"identifier" values:a3];
  v7 = [a1 queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (void)deleteAllRulesInDatabase:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteBooleanPredicate truePredicate];
  v6 = [a1 queryWithDatabase:v4 predicate:v5];

  [v6 deleteAllEntities];
}

- (id)rule
{
  v3 = objc_alloc_init(PKRule);
  v4 = +[Rule _propertySettersForRule];
  v5 = [v4 allKeys];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100116BA4;
  v14 = &unk_10083C240;
  v15 = v4;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  [(SQLiteEntity *)self getValuesForProperties:v5 withApplier:&v11];

  [v6 parsePredicateFormat];
  v8 = v16;
  v9 = v6;

  return v6;
}

- (void)updateWithRule:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(NSMutableDictionary);
  v5 = [v4 identifier];
  [v9 setObjectOrNull:v5 forKey:@"identifier"];

  v6 = [v4 predicateFormat];
  [v9 setObjectOrNull:v6 forKey:@"predicate_format"];

  v7 = [v4 osVersionRequirementRange];

  v8 = _SQLValueForOSVersionRequirementRange();
  [v9 setObjectOrNull:v8 forKey:@"os_version_requirement_range"];

  [(SQLiteEntity *)self setValuesWithDictionary:v9];
}

@end