@interface TileMetadataRKE
+ (id)_predicateForBaseMetadata:(id)a3;
+ (id)insertMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
+ (void)deleteEntitiesForBaseMetadata:(id)a3 inDatabase:(id)a4;
+ (void)inflateMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
- (TileMetadataRKE)initWithMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
@end

@implementation TileMetadataRKE

- (TileMetadataRKE)initWithMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [v9 persistentID];

  v13 = [NSNumber numberWithLongLong:v12];
  [v11 setObjectOrNull:v13 forKey:@"metadata_pid"];

  v14 = [v10 vehicleFunctions];

  v15 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
  [v11 setObjectOrNull:v15 forKey:@"vehicle_functions"];

  v16 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  return v16;
}

+ (id)insertMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (v8 && v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1000059F0;
    v23 = sub_10000B104;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100079984;
    v13[3] = &unk_10083F200;
    v17 = &v19;
    v18 = a1;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    sub_1005D4424(v16, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (void)inflateMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = a5;
    v10 = [a1 _predicateForBaseMetadata:a4];
    v11 = [(SQLiteEntity *)TileMetadataRKE queryWithDatabase:v9 predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v15 = @"vehicle_functions";
    v12 = [NSArray arrayWithObjects:&v15 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100079B40;
    v13[3] = &unk_100840B08;
    v14 = v8;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseMetadata:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForBaseMetadata:a3];
  v7 = [(SQLiteEntity *)TileMetadataRKE queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBaseMetadata:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"metadata_pid" equalToValue:v3];

  return v4;
}

@end