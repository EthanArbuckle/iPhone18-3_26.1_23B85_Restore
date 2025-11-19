@interface TileMetadataVerticalFlowGroup
+ (id)_predicateForBaseMetadata:(id)a3;
+ (id)insertMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
+ (void)deleteEntitiesForBaseMetadata:(id)a3 inDatabase:(id)a4;
+ (void)inflateMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
- (TileMetadataVerticalFlowGroup)initWithMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5;
@end

@implementation TileMetadataVerticalFlowGroup

- (TileMetadataVerticalFlowGroup)initWithMetadata:(id)a3 forBaseMetadata:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [v9 persistentID];

  v13 = [NSNumber numberWithLongLong:v12];
  [v11 setObjectOrNull:v13 forKey:@"metadata_pid"];

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 rows]);
  [v11 setObjectOrNull:v14 forKey:@"rows"];

  [v10 widthClass];
  v15 = PKPassTileWidthClassVerticalFlowToString();
  [v11 setObjectOrNull:v15 forKey:@"width_class"];

  [v10 heightClass];
  v16 = PKPassTileHeightClassToString();
  [v11 setObjectOrNull:v16 forKey:@"height_class"];

  v17 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];
  return v17;
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
    v22 = sub_100005A90;
    v23 = sub_10000B154;
    v24 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E2AB8;
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
    v11 = [(SQLiteEntity *)TileMetadataVerticalFlowGroup queryWithDatabase:v9 predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v15[0] = @"rows";
    v15[1] = @"width_class";
    v15[2] = @"height_class";
    v12 = [NSArray arrayWithObjects:v15 count:3];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E2C88;
    v13[3] = &unk_100840B08;
    v14 = v8;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseMetadata:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v8 = [a1 _predicateForBaseMetadata:a3];
  v7 = [(SQLiteEntity *)TileMetadataVerticalFlowGroup queryWithDatabase:v6 predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBaseMetadata:(id)a3
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a3 persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"metadata_pid" equalToValue:v3];

  return v4;
}

@end