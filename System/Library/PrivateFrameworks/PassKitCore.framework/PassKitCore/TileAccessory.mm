@interface TileAccessory
+ (id)insertAccessory:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (TileAccessory)initWithAccessory:(id)a3 inDatabase:(id)a4;
- (id)passTileAccessory;
- (int64_t)type;
@end

@implementation TileAccessory

- (TileAccessory)initWithAccessory:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v7 type];

  v9 = PKPassTileAccessoryTypeToString();
  [v8 setObjectOrNull:v9 forKey:@"type"];

  v10 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v10;
}

+ (id)insertAccessory:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
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
    v14 = a1;
    v11 = v6;
    v12 = v7;
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
  v3 = [(TileAccessory *)self type];
  if (v3 <= 2)
  {
    [(__objc2_class *)*off_100841828[v3] deleteEntitiesForBaseAccessory:self inDatabase:self->super._database];
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
  v3 = [(TileAccessory *)self type];
  v4 = [PKPassTileAccessory _createForType:v3 resolved:0];
  v5 = v4;
  if (v3 == 2)
  {
    v6 = TileAccessoryImage;
    v7 = [v4 accessoryTypeImage];
  }

  else if (v3 == 1)
  {
    v6 = TileAccessorySpinner;
    v7 = [v4 accessoryTypeSpinner];
  }

  else
  {
    if (v3)
    {
      goto LABEL_8;
    }

    v6 = TileAccessoryButton;
    v7 = [v4 accessoryTypeButton];
  }

  v8 = v7;
  [(__objc2_class *)v6 inflateAccessory:v7 forBaseAccessory:self inDatabase:self->super._database];

LABEL_8:

  return v5;
}

@end