@interface TileDescriptorTileStateCollection
+ (BOOL)insertStates:(id)a3 forDescriptor:(id)a4 inDatabase:(id)a5;
+ (id)_predicateForDescriptorPID:(int64_t)a3;
+ (void)deleteEntitiesForDescriptor:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (TileDescriptorTileStateCollection)initWithState:(id)a3 identifier:(id)a4 forDescriptor:(id)a5 inDatabase:(id)a6;
- (id)tileState;
@end

@implementation TileDescriptorTileStateCollection

- (TileDescriptorTileStateCollection)initWithState:(id)a3 identifier:(id)a4 forDescriptor:(id)a5 inDatabase:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setEntityPIDOrNull:v11 forKey:@"descriptor_pid"];

  [v14 setEntityPIDOrNull:v13 forKey:@"state_pid"];
  [v14 setObjectOrNull:v12 forKey:@"state_identifier"];

  v15 = [(SQLiteEntity *)self initWithPropertyValues:v14 inDatabase:v10];
  return v15;
}

+ (BOOL)insertStates:(id)a3 forDescriptor:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    if (v9)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001DAEC;
      v13[3] = &unk_10083C290;
      v14 = v8;
      v15 = v10;
      v18 = a1;
      v16 = v9;
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

+ (void)deleteEntitiesForDescriptor:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForDescriptorPID:{objc_msgSend(a3, "persistentID")}];
  v7 = [(SQLiteEntity *)TileDescriptorTileStateCollection queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

- (BOOL)deleteFromDatabase
{
  v3 = [(TileDescriptorTileStateCollection *)self tileState];
  [v3 deleteFromDatabase];

  v5.receiver = self;
  v5.super_class = TileDescriptorTileStateCollection;
  return [(SQLiteEntity *)&v5 deleteFromDatabase];
}

+ (id)_predicateForDescriptorPID:(int64_t)a3
{
  v3 = [NSNumber numberWithLongLong:a3];
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