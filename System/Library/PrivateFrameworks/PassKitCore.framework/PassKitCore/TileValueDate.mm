@interface TileValueDate
+ (id)_predicateForBaseValue:(id)value;
+ (id)insertValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
+ (void)deleteEntitiesForBaseValue:(id)value inDatabase:(id)database;
+ (void)inflateValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
- (TileValueDate)initWithValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database;
@end

@implementation TileValueDate

- (TileValueDate)initWithValue:(id)value forBaseValue:(id)baseValue inDatabase:(id)database
{
  databaseCopy = database;
  baseValueCopy = baseValue;
  valueCopy = value;
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setEntityPIDOrNull:baseValueCopy forKey:@"value_pid"];

  content = [valueCopy content];
  [v10 setObjectOrNull:content forKey:@"content"];

  [valueCopy dateStyle];
  v12 = _PKEnumValueToString();
  [v10 setObjectOrNull:v12 forKey:{@"date_style", 0, 0, 1, 1, 2, 2, 3, 3, 4, 4}];

  [valueCopy timeStyle];
  v13 = _PKEnumValueToString();
  [v10 setObjectOrNull:v13 forKey:{@"time_style", 0, 0, 1, 1, 2, 2, 3, 3, 4, 4}];

  [v10 setBool:objc_msgSend(valueCopy forKey:{"ignoresTimeZone"), @"ignores_time_zone"}];
  isRelative = [valueCopy isRelative];

  [v10 setBool:isRelative forKey:@"is_relative"];
  v15 = [(SQLiteEntity *)self initWithPropertyValues:v10 inDatabase:databaseCopy];

  return v15;
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
    v22 = sub_100005A20;
    v23 = sub_10000B11C;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100099D9C;
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
    v11 = [(SQLiteEntity *)TileValueDate queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v15[0] = @"content";
    v15[1] = @"date_style";
    v15[2] = @"time_style";
    v15[3] = @"ignores_time_zone";
    v15[4] = @"is_relative";
    v12 = [NSArray arrayWithObjects:v15 count:5];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100099F80;
    v13[3] = &unk_100840B08;
    v14 = valueCopy;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseValue:(id)value inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForBaseValue:value];
  v7 = [(SQLiteEntity *)TileValueDate queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBaseValue:(id)value
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [value persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"value_pid" equalToValue:v3];

  return v4;
}

@end