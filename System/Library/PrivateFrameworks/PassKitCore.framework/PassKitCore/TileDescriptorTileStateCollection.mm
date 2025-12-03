@interface TileDescriptorTileStateCollection
+ (BOOL)insertStates:(id)states forDescriptor:(id)descriptor inDatabase:(id)database;
+ (id)_predicateForDescriptorPID:(int64_t)d;
+ (void)deleteEntitiesForDescriptor:(id)descriptor inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (TileDescriptorTileStateCollection)initWithState:(id)state identifier:(id)identifier forDescriptor:(id)descriptor inDatabase:(id)database;
- (id)tileState;
@end

@implementation TileDescriptorTileStateCollection

- (TileDescriptorTileStateCollection)initWithState:(id)state identifier:(id)identifier forDescriptor:(id)descriptor inDatabase:(id)database
{
  databaseCopy = database;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  stateCopy = state;
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setEntityPIDOrNull:descriptorCopy forKey:@"descriptor_pid"];

  [v14 setEntityPIDOrNull:stateCopy forKey:@"state_pid"];
  [v14 setObjectOrNull:identifierCopy forKey:@"state_identifier"];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v14 inDatabase:databaseCopy];
  return v15;
}

+ (BOOL)insertStates:(id)states forDescriptor:(id)descriptor inDatabase:(id)database
{
  statesCopy = states;
  descriptorCopy = descriptor;
  databaseCopy = database;
  if ([statesCopy count])
  {
    if (descriptorCopy)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001DAEC;
      v13[3] = &unk_10083C290;
      v14 = statesCopy;
      v15 = databaseCopy;
      selfCopy = self;
      v16 = descriptorCopy;
      v17 = &v19;
      sub_1005D4424(v15, v13);
      v11 = *(v20 + 24);

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

+ (void)deleteEntitiesForDescriptor:(id)descriptor inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForDescriptorPID:{objc_msgSend(descriptor, "persistentID")}];
  v7 = [(SQLiteEntity *)TileDescriptorTileStateCollection queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  tileState = [(TileDescriptorTileStateCollection *)self tileState];
  [tileState deleteFromDatabase];

  v5.receiver = self;
  v5.super_class = TileDescriptorTileStateCollection;
  return [(SQLiteEntity *)&v5 deleteFromDatabase];
}

+ (id)_predicateForDescriptorPID:(int64_t)d
{
  v3 = [NSNumber numberWithLongLong:d];
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"descriptor_pid" equalToValue:v3];

  return v4;
}

- (id)tileState
{
  v3 = [(SQLiteEntity *)self valueForProperty:@"state_pid"];
  if (v3)
  {
    v4 = -[SQLiteEntity initWithPersistentID:inDatabase:]([TileState alloc], "initWithPersistentID:inDatabase:", [v3 longLongValue], self->super._database);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end