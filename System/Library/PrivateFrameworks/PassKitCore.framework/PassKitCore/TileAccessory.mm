@interface TileAccessory
+ (id)insertAccessory:(id)accessory inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (TileAccessory)initWithAccessory:(id)accessory inDatabase:(id)database;
- (id)passTileAccessory;
- (int64_t)type;
@end

@implementation TileAccessory

- (TileAccessory)initWithAccessory:(id)accessory inDatabase:(id)database
{
  databaseCopy = database;
  accessoryCopy = accessory;
  v8 = objc_alloc_init(NSMutableDictionary);
  [accessoryCopy type];

  v9 = PKPassTileAccessoryTypeToString();
  [v8 setObjectOrNull:v9 forKey:@"type"];

  v10 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v10;
}

+ (id)insertAccessory:(id)accessory inDatabase:(id)database
{
  accessoryCopy = accessory;
  databaseCopy = database;
  if (accessoryCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100005A30;
    v19 = sub_10000B124;
    v20 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009C5BC;
    v10[3] = &unk_100840570;
    selfCopy = self;
    v11 = accessoryCopy;
    v12 = databaseCopy;
    v13 = &v15;
    sub_1005D4424(v12, v10);
    v8 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteFromDatabase
{
  type = [(TileAccessory *)self type];
  if (type <= 2)
  {
    [(__objc2_class *)*off_100841828[type] deleteEntitiesForBaseAccessory:self inDatabase:self->super._database];
  }

  v5.receiver = self;
  v5.super_class = TileAccessory;
  return [(SQLiteEntity *)&v5 deleteFromDatabase];
}

- (int64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  PKPassTileAccessoryTypeFromString();

  return 0;
}

- (id)passTileAccessory
{
  type = [(TileAccessory *)self type];
  v4 = [PKPassTileAccessory _createForType:type resolved:0];
  v5 = v4;
  if (type == 2)
  {
    v6 = TileAccessoryImage;
    accessoryTypeImage = [v4 accessoryTypeImage];
  }

  else if (type == 1)
  {
    v6 = TileAccessorySpinner;
    accessoryTypeImage = [v4 accessoryTypeSpinner];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    v6 = TileAccessoryButton;
    accessoryTypeImage = [v4 accessoryTypeButton];
  }

  v8 = accessoryTypeImage;
  [(__objc2_class *)v6 inflateAccessory:accessoryTypeImage forBaseAccessory:self inDatabase:self->super._database];

LABEL_8:

  return v5;
}

@end