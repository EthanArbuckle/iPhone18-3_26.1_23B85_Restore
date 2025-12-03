@interface TileMetadata
+ (id)_predicateForTileType:(int64_t)type;
+ (id)insertMetadata:(id)metadata inDatabase:(id)database;
+ (id)passUniqueIdentifiersInDatabase:(id)database withTileOfType:(int64_t)type;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
- (BOOL)deleteFromDatabase;
- (TileMetadata)initWithMetadata:(id)metadata inDatabase:(id)database;
- (id)metadata;
- (int64_t)type;
@end

@implementation TileMetadata

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  joinsCopy = joins;
  if ([property isEqualToString:@"pass.unique_id"])
  {
    [joinsCopy addObject:@"JOIN pass_tile_descriptor ON pass_tile_metadata.pid = pass_tile_descriptor.metadata_pid"];
    [joinsCopy addObject:@"JOIN pass ON pass_tile_descriptor.pass_pid = pass.pid"];
  }
}

- (TileMetadata)initWithMetadata:(id)metadata inDatabase:(id)database
{
  databaseCopy = database;
  metadataCopy = metadata;
  v8 = objc_alloc_init(NSMutableDictionary);
  identifier = [metadataCopy identifier];
  [v8 setObjectOrNull:identifier forKey:@"identifier"];

  [metadataCopy type];
  v10 = PKPassTileTypeToString();
  [v8 setObjectOrNull:v10 forKey:@"type"];

  [metadataCopy preferredStyle];
  v11 = PKPassTileStyleToString();
  [v8 setObjectOrNull:v11 forKey:@"style"];

  [v8 setBool:objc_msgSend(metadataCopy forKey:{"isSelectable"), @"selectable"}];
  [v8 setBool:objc_msgSend(metadataCopy forKey:{"showInPrearm"), @"show_in_prearm"}];
  [metadataCopy context];

  v12 = PKPassTileContextToString();
  [v8 setObjectOrNull:v12 forKey:@"context_identifier"];

  v13 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v13;
}

+ (id)insertMetadata:(id)metadata inDatabase:(id)database
{
  metadataCopy = metadata;
  databaseCopy = database;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005B80;
  v21 = sub_10000B1CC;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019110C;
  v12[3] = &unk_100840570;
  selfCopy = self;
  v8 = metadataCopy;
  v13 = v8;
  v9 = databaseCopy;
  v14 = v9;
  v15 = &v17;
  sub_1005D4424(v9, v12);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (BOOL)deleteFromDatabase
{
  type = [(TileMetadata *)self type];
  if ((type - 1) <= 2)
  {
    [(__objc2_class *)*off_10084A958[type - 1] deleteEntitiesForBaseMetadata:self inDatabase:self->super._database];
  }

  v5.receiver = self;
  v5.super_class = TileMetadata;
  return [(SQLiteEntity *)&v5 deleteFromDatabase];
}

- (int64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  PKPassTileTypeFromString();

  return 0;
}

+ (id)passUniqueIdentifiersInDatabase:(id)database withTileOfType:(int64_t)type
{
  databaseCopy = database;
  v7 = [self _predicateForTileType:type];
  LOBYTE(v12) = 1;
  v8 = [(SQLiteEntity *)TileMetadata queryWithDatabase:databaseCopy predicate:v7 orderingProperties:0 orderingDirections:0 limit:0 groupingProperties:0 returnsDistinctEntities:v12];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100005B80;
  v18 = sub_10000B1CC;
  v19 = 0;
  v20 = @"pass.unique_id";
  v9 = [NSArray arrayWithObjects:&v20 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001914AC;
  v13[3] = &unk_10084A938;
  v13[4] = &v14;
  [v8 enumerateProperties:v9 usingBlock:v13];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

+ (id)_predicateForTileType:(int64_t)type
{
  v3 = PKPassTileTypeToString();
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"type" equalToValue:v3];

  return v4;
}

- (id)metadata
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100005B80;
  v13 = sub_10000B1CC;
  v14 = 0;
  v19[0] = @"type";
  v19[1] = @"identifier";
  v19[2] = @"context_identifier";
  v19[3] = @"style";
  v19[4] = @"selectable";
  v19[5] = @"show_in_prearm";
  v3 = [NSArray arrayWithObjects:v19 count:6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100191868;
  v8[3] = &unk_1008430B8;
  v8[4] = &v15;
  v8[5] = &v9;
  [(SQLiteEntity *)self getValuesForProperties:v3 withApplier:v8];

  v4 = v16[3];
  switch(v4)
  {
    case 1:
      metadataTypeVehicleFunction = [v10[5] metadataTypeVehicleFunction];
      [TileMetadataRKE inflateMetadata:metadataTypeVehicleFunction forBaseMetadata:self inDatabase:self->super._database];
      break;
    case 2:
      metadataTypeVehicleFunction = [v10[5] metadataTypeHorizontalFlowGroup];
      [TileMetadataHorizontalFlowGroup inflateMetadata:metadataTypeVehicleFunction forBaseMetadata:self inDatabase:self->super._database];
      break;
    case 3:
      metadataTypeVehicleFunction = [v10[5] metadataTypeVerticalFlowGroup];
      [TileMetadataVerticalFlowGroup inflateMetadata:metadataTypeVehicleFunction forBaseMetadata:self inDatabase:self->super._database];
      break;
    default:
      goto LABEL_8;
  }

LABEL_8:
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

@end