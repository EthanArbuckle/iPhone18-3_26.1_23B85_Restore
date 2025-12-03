@interface TileValue
+ (id)insertValue:(id)value inDatabase:(id)database;
- (BOOL)deleteFromDatabase;
- (TileValue)initWithValue:(id)value inDatabase:(id)database;
- (id)passTileValue;
- (int64_t)type;
@end

@implementation TileValue

- (TileValue)initWithValue:(id)value inDatabase:(id)database
{
  databaseCopy = database;
  valueCopy = value;
  v8 = objc_alloc_init(NSMutableDictionary);
  [valueCopy type];

  v9 = PKPassTileValueTypeToString();
  [v8 setObjectOrNull:v9 forKey:@"type"];

  v10 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v10;
}

+ (id)insertValue:(id)value inDatabase:(id)database
{
  valueCopy = value;
  databaseCopy = database;
  if (valueCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100005B10;
    v19 = sub_10000B194;
    v20 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100122410;
    v10[3] = &unk_100840570;
    selfCopy = self;
    v11 = valueCopy;
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
  type = [(TileValue *)self type];
  if ((type - 1) <= 2)
  {
    [(__objc2_class *)*off_100847750[type - 1] deleteEntitiesForBaseValue:self inDatabase:self->super._database];
  }

  v5.receiver = self;
  v5.super_class = TileValue;
  return [(SQLiteEntity *)&v5 deleteFromDatabase];
}

- (int64_t)type
{
  v2 = [(SQLiteEntity *)self valueForProperty:@"type"];
  v3 = PKPassTileValueTypeFromString();

  return v3;
}

- (id)passTileValue
{
  type = [(TileValue *)self type];
  v4 = [PKPassTileValue _createForType:type resolved:0];
  v5 = v4;
  if (type > 1)
  {
    if (type == 2)
    {
      v6 = TileValueNumber;
      valueTypeNumber = [v4 valueTypeNumber];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v6 = TileValueForeignReference;
      valueTypeNumber = [v4 valueTypeForeignReference];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v6 = TileValueDate;
    valueTypeNumber = [v4 valueTypeDate];
  }

  else
  {
    v6 = TileValueText;
    valueTypeNumber = [v4 valueTypeText];
  }

  v8 = valueTypeNumber;
  [(__objc2_class *)v6 inflateValue:valueTypeNumber forBaseValue:self inDatabase:self->super._database];

LABEL_11:

  return v5;
}

@end