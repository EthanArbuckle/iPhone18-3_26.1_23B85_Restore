@interface NDTSQKeyValueStore
- (BOOL)compareAndSwapIntegerValue:(int64_t)value expectedExistingValue:(int64_t)existingValue forKey:(id)key;
- (NDTSQKeyValueStore)initWithName:(id)name;
- (double)getDoubleForKey:(id)key default:(double)default;
- (id)getDataForKey:(id)key default:(id)default;
- (id)getStringForKey:(id)key default:(id)default;
- (int64_t)getIntegerForKey:(id)key default:(int64_t)default;
- (void)createTables;
- (void)deleteValueForKey:(id)key;
- (void)setData:(id)data forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setString:(id)string forKey:(id)key;
@end

@implementation NDTSQKeyValueStore

- (NDTSQKeyValueStore)initWithName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = NDTSQKeyValueStore;
  v6 = [(NDTSQKeyValueStore *)&v16 init];
  if (v6)
  {
    nameCopy = [NSString stringWithFormat:@"select value from %@ where key = ?", nameCopy];
    select = v6->_select;
    v6->_select = nameCopy;

    nameCopy2 = [NSString stringWithFormat:@"update %@ set value = ? where value = ? and key = ?", nameCopy];
    exchange = v6->_exchange;
    v6->_exchange = nameCopy2;

    nameCopy3 = [NSString stringWithFormat:@"insert or replace into %@ (key, value) values (?, ?)", nameCopy];
    insert = v6->_insert;
    v6->_insert = nameCopy3;

    nameCopy4 = [NSString stringWithFormat:@"delete from %@ where key = ?", nameCopy];
    delete = v6->_delete;
    v6->_delete = nameCopy4;

    objc_storeStrong(&v6->_baseName, name);
  }

  return v6;
}

- (void)createTables
{
  v3 = [NSString stringWithFormat:@"create table if not exists %@ (key text unique, value text)", self->_baseName];
  [(NDTSQSchema *)self executeSql:v3];
}

- (int64_t)getIntegerForKey:(id)key default:(int64_t)default
{
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  defaultCopy = default;
  select = self->_select;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000017CC;
  v11[3] = &unk_10005CC68;
  v8 = keyCopy;
  v12 = v8;
  v13 = &v14;
  [(NDTSQSchema *)self parseSql:select andRun:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  insert = self->_insert;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000018D8;
  v9[3] = &unk_10005CC90;
  v10 = keyCopy;
  integerCopy = integer;
  v8 = keyCopy;
  [(NDTSQSchema *)self parseSql:insert andRun:v9];
}

- (BOOL)compareAndSwapIntegerValue:(int64_t)value expectedExistingValue:(int64_t)existingValue forKey:(id)key
{
  keyCopy = key;
  exchange = self->_exchange;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001A00;
  v12[3] = &unk_10005CCB8;
  valueCopy = value;
  existingValueCopy = existingValue;
  v13 = keyCopy;
  v10 = keyCopy;
  [(NDTSQSchema *)self parseSql:exchange andRun:v12];
  LOBYTE(value) = [(NDTSQSchema *)self changes]== 1;

  return value;
}

- (double)getDoubleForKey:(id)key default:(double)default
{
  keyCopy = key;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  defaultCopy = default;
  select = self->_select;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001B64;
  v11[3] = &unk_10005CC68;
  v8 = keyCopy;
  v12 = v8;
  v13 = &v14;
  [(NDTSQSchema *)self parseSql:select andRun:v11];
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  insert = self->_insert;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001C7C;
  v9[3] = &unk_10005CC90;
  v10 = keyCopy;
  doubleCopy = double;
  v8 = keyCopy;
  [(NDTSQSchema *)self parseSql:insert andRun:v9];
}

- (id)getStringForKey:(id)key default:(id)default
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100001E34;
  v19 = sub_100001E44;
  defaultCopy = default;
  v20 = defaultCopy;
  select = self->_select;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001E4C;
  v12[3] = &unk_10005CC68;
  v9 = keyCopy;
  v13 = v9;
  v14 = &v15;
  [(NDTSQSchema *)self parseSql:select andRun:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  insert = self->_insert;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001F84;
  v11[3] = &unk_10005CCE0;
  v12 = keyCopy;
  v13 = stringCopy;
  v9 = stringCopy;
  v10 = keyCopy;
  [(NDTSQSchema *)self parseSql:insert andRun:v11];
}

- (id)getDataForKey:(id)key default:(id)default
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100001E34;
  v19 = sub_100001E44;
  defaultCopy = default;
  v20 = defaultCopy;
  select = self->_select;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000213C;
  v12[3] = &unk_10005CC68;
  v9 = keyCopy;
  v13 = v9;
  v14 = &v15;
  [(NDTSQSchema *)self parseSql:select andRun:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  insert = self->_insert;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002274;
  v11[3] = &unk_10005CCE0;
  v12 = keyCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = keyCopy;
  [(NDTSQSchema *)self parseSql:insert andRun:v11];
}

- (void)deleteValueForKey:(id)key
{
  keyCopy = key;
  delete = self->_delete;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000237C;
  v7[3] = &unk_10005CD08;
  v8 = keyCopy;
  v6 = keyCopy;
  [(NDTSQSchema *)self parseSql:delete andRun:v7];
}

@end