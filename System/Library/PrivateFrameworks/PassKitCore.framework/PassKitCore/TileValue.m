@interface TileValue
+ (id)insertValue:(id)a3 inDatabase:(id)a4;
- (BOOL)deleteFromDatabase;
- (TileValue)initWithValue:(id)a3 inDatabase:(id)a4;
- (id)passTileValue;
- (int64_t)type;
@end

@implementation TileValue

- (TileValue)initWithValue:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  [v7 type];

  v9 = PKPassTileValueTypeToString();
  [v8 setObjectOrNull:v9 forKey:@"type"];

  v10 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:v6];
  return v10;
}

+ (id)insertValue:(id)a3 inDatabase:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
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
  v3 = [(TileValue *)self type];
  if ((v3 - 1) <= 2)
  {
    [(__objc2_class *)*off_100847750[v3 - 1] deleteEntitiesForBaseValue:self inDatabase:self->super._database];
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
  v3 = [(TileValue *)self type];
  v4 = [PKPassTileValue _createForType:v3 resolved:0];
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = TileValueNumber;
      v7 = [v4 valueTypeNumber];
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      v6 = TileValueForeignReference;
      v7 = [v4 valueTypeForeignReference];
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    v6 = TileValueDate;
    v7 = [v4 valueTypeDate];
  }

  else
  {
    v6 = TileValueText;
    v7 = [v4 valueTypeText];
  }

  v8 = v7;
  [(__objc2_class *)v6 inflateValue:v7 forBaseValue:self inDatabase:self->super._database];

LABEL_11:

  return v5;
}

@end