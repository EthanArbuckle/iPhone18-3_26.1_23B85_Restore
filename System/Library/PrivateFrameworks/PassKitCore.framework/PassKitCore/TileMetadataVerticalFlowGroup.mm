@interface TileMetadataVerticalFlowGroup
+ (id)_predicateForBaseMetadata:(id)metadata;
+ (id)insertMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database;
+ (void)deleteEntitiesForBaseMetadata:(id)metadata inDatabase:(id)database;
+ (void)inflateMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database;
- (TileMetadataVerticalFlowGroup)initWithMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database;
@end

@implementation TileMetadataVerticalFlowGroup

- (TileMetadataVerticalFlowGroup)initWithMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database
{
  databaseCopy = database;
  baseMetadataCopy = baseMetadata;
  metadataCopy = metadata;
  v11 = objc_alloc_init(NSMutableDictionary);
  persistentID = [baseMetadataCopy persistentID];

  v13 = [NSNumber numberWithLongLong:persistentID];
  [v11 setObjectOrNull:v13 forKey:@"metadata_pid"];

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [metadataCopy rows]);
  [v11 setObjectOrNull:v14 forKey:@"rows"];

  [metadataCopy widthClass];
  v15 = PKPassTileWidthClassVerticalFlowToString();
  [v11 setObjectOrNull:v15 forKey:@"width_class"];

  [metadataCopy heightClass];
  v16 = PKPassTileHeightClassToString();
  [v11 setObjectOrNull:v16 forKey:@"height_class"];

  v17 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];
  return v17;
}

+ (id)insertMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database
{
  metadataCopy = metadata;
  baseMetadataCopy = baseMetadata;
  databaseCopy = database;
  v11 = 0;
  if (metadataCopy && baseMetadataCopy)
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
    selfCopy = self;
    v14 = metadataCopy;
    v15 = baseMetadataCopy;
    v16 = databaseCopy;
    sub_1005D4424(v16, v13);
    v11 = v20[5];

    _Block_object_dispose(&v19, 8);
  }

  return v11;
}

+ (void)inflateMetadata:(id)metadata forBaseMetadata:(id)baseMetadata inDatabase:(id)database
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    databaseCopy = database;
    v10 = [self _predicateForBaseMetadata:baseMetadata];
    v11 = [(SQLiteEntity *)TileMetadataVerticalFlowGroup queryWithDatabase:databaseCopy predicate:v10 orderingProperties:0 orderingDirections:0 limit:1];

    v15[0] = @"rows";
    v15[1] = @"width_class";
    v15[2] = @"height_class";
    v12 = [NSArray arrayWithObjects:v15 count:3];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E2C88;
    v13[3] = &unk_100840B08;
    v14 = metadataCopy;
    [v11 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];
  }
}

+ (void)deleteEntitiesForBaseMetadata:(id)metadata inDatabase:(id)database
{
  databaseCopy = database;
  v8 = [self _predicateForBaseMetadata:metadata];
  v7 = [(SQLiteEntity *)TileMetadataVerticalFlowGroup queryWithDatabase:databaseCopy predicate:v8];

  [v7 deleteAllEntities];
}

+ (id)_predicateForBaseMetadata:(id)metadata
{
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [metadata persistentID]);
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"metadata_pid" equalToValue:v3];

  return v4;
}

@end