@interface TileValueNumber
+ (id)_predicateForBaseValue:(id)value;
+ (id)insertValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
+ (void)deleteEntitiesForBaseValue:(id)value inDatabase:(id)database;
+ (void)inflateValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
- (TileValueNumber)initWithValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
@end

@implementation TileValueNumber

- (TileValueNumber)initWithValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database
{
  valueCopy = value;
  databaseCopy = database;
  baseValueCopy = baseValue;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setEntityPIDOrNull:baseValueCopy forKey:@"value_pid"];

  content = [valueCopy content];
  currencyCode = [valueCopy currencyCode];
  if (content)
  {
    [content decimalValue];
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
  }

  v14 = [NSDecimalNumber decimalNumberWithDecimal:v19];
  if (!currencyCode || ([currencyCode isEqualToString:PKNoCurrencyCode] & 1) != 0)
  {
    [v11 setObject:v14 forKey:@"decimal_content"];
LABEL_9:
    [valueCopy numberStyle];
    v17 = _PKEnumValueToString();
    [v11 setObjectOrNull:v17 forKey:{@"number_style", 1, 1, 3, 3, 4, 4, 5, 5}];

    self = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
    selfCopy = self;
    goto LABEL_10;
  }

  selfCopy = PKFormattedCurrencyStringFromNumber();

  if (selfCopy)
  {
    v16 = PKCurrencyDecimalToStorageNumber();
    [v11 setObject:v16 forKey:@"currency_content"];
    [v11 setObject:currencyCode forKey:@"currency_code"];

    goto LABEL_9;
  }

LABEL_10:

  return selfCopy;
}

+ (id)insertValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database
{
  valueCopy = value;
  baseValueCopy = baseValue;
  databaseCopy = database;
  v11 = 0;
  if (valueCopy && baseValueCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100005B70;
    v23 = sub_10000B1C4;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10018888C;
    v13[3] = &unk_10083F200;
    v17 = &v19;
    selfCopy = self;
    v14 = valueCopy;
    v15 = baseValueCopy;
    v16 = databaseCopy;
    sub_1005D4424(v16, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (void)inflateValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database
{
  valueCopy = value;
  if (valueCopy)
  {
    databaseCopy = database;
    v10 = [self _predicateForBaseValue:baseValue];
    v11 = [(SQLiteEntity *)TileValueNumber queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v15[0] = @"currency_content";
    v15[1] = @"decimal_content";
    v15[2] = @"number_style";
    v15[3] = @"currency_code";
    v12 = [NSArray arrayWithObjects:v15 count:4];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100188A64;
    v13[3] = &unk_100840B08;
    v14 = valueCopy;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseValue:(id)value inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForBaseValue:value];
  v7 = [(SQLiteEntity *)TileValueNumber queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBaseValue:(id)value
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [value persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"value_pid" equalToValue:v3];

  return v4;
}

@end