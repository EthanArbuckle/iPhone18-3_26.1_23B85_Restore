@interface TileStateDefault
+ (id)_predicateForBaseState:(id)state;
+ (id)_predicateForBaseStatePID:(int64_t)d;
+ (id)insertState:(id)state forBaseState:(id)baseState inDatabase:(id)database;
+ (void)deleteEntitiesForBaseState:(id)state inDatabase:(id)database;
+ (void)inflateState:(id)state forBaseStatePID:(int64_t)d inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (TileStateDefault)initWithState:(id)state forBaseState:(id)baseState forAccessory:(id)accessory forSecondaryAccessory:(id)secondaryAccessory inDatabase:(id)database;
- (id)accessory;
- (id)secondaryAccessory;
@end

@implementation TileStateDefault

- (TileStateDefault)initWithState:(id)state forBaseState:(id)baseState forAccessory:(id)accessory forSecondaryAccessory:(id)secondaryAccessory inDatabase:(id)database
{
  databaseCopy = database;
  secondaryAccessoryCopy = secondaryAccessory;
  accessoryCopy = accessory;
  baseStateCopy = baseState;
  stateCopy = state;
  v17 = objc_alloc_init(NSMutableDictionary);
  [v17 setEntityPIDOrNull:baseStateCopy forKey:@"state_pid"];

  title = [stateCopy title];
  [v17 setObjectOrNull:title forKey:@"title"];

  body = [stateCopy body];

  [v17 setObjectOrNull:body forKey:@"body"];
  [v17 setEntityPIDOrNull:accessoryCopy forKey:@"accessory_pid"];

  [v17 setEntityPIDOrNull:secondaryAccessoryCopy forKey:@"secondary_accessory_pid"];
  v20 = [(SQLiteEntity *)self initWithPropertyValues:v17 inDatabase:databaseCopy];

  return v20;
}

+ (id)insertState:(id)state forBaseState:(id)baseState inDatabase:(id)database
{
  stateCopy = state;
  baseStateCopy = baseState;
  databaseCopy = database;
  v11 = 0;
  if (stateCopy && baseStateCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100005A10;
    v23 = sub_10000B114;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000989B4;
    v13[3] = &unk_1008415F0;
    v14 = stateCopy;
    v15 = databaseCopy;
    v17 = &v19;
    selfCopy = self;
    v16 = baseStateCopy;
    sub_1005D4424(v15, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (void)inflateState:(id)state forBaseStatePID:(int64_t)d inDatabase:(id)database
{
  stateCopy = state;
  databaseCopy = database;
  if (stateCopy)
  {
    v10 = [self _predicateForBaseStatePID:d];
    v11 = [(SQLiteEntity *)TileStateDefault queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v16[0] = @"title";
    v16[1] = @"body";
    v16[2] = @"accessory_pid";
    v16[3] = @"secondary_accessory_pid";
    v12 = [NSArray arrayWithObjects:v16 count:4];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100098C44;
    v13[3] = &unk_10083CBC0;
    v14 = stateCopy;
    v15 = databaseCopy;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseState:(id)state inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForBaseState:state];
  v7 = [(SQLiteEntity *)TileStateDefault queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  accessory = [(TileStateDefault *)self accessory];
  [accessory deleteFromDatabase];

  secondaryAccessory = [(TileStateDefault *)self secondaryAccessory];
  [secondaryAccessory deleteFromDatabase];

  v6.receiver = self;
  v6.super_class = TileStateDefault;
  return [(SQLiteEntity *)&v6 deleteFromDatabase];
}

+ (id)_predicateForBaseState:(id)state
{
  if (state)
  {
    [self _predicateForBaseStatePID:{objc_msgSend(state, "persistentID")}];
  }

  else
  {
    [SQLiteComparisonPredicate predicateWithProperty:@"state_pid" equalToValue:0];
  }
  v3 = ;

  return v3;
}

+ (id)_predicateForBaseStatePID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"state_pid" equalToValue:v3];

  return v4;
}

- (id)accessory
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"accessory_pid"];
  if (v3)
  {
    v4 = -[SQLiteEntity initWithPersistentID:inDatabase:]([TileAccessory alloc], "initWithPersistentID:inDatabase:", [v3 longLongValue], self->super._database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)secondaryAccessory
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"secondary_accessory_pid"];
  if (v3)
  {
    v4 = -[SQLiteEntity initWithPersistentID:inDatabase:]([TileAccessory alloc], "initWithPersistentID:inDatabase:", [v3 longLongValue], self->super._database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end