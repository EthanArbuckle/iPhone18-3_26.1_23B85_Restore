@interface PTParameterRecords
- (PTParameterRecords)initWithDictionary:(id)dictionary;
- (void)addRecordWithKeyPath:(id)path domainID:(id)d recordClassName:(id)name value:(id)value;
- (void)removeRecordWithKeyPath:(id)path domainID:(id)d;
@end

@implementation PTParameterRecords

- (PTParameterRecords)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PTParameterRecords;
  v5 = [(PTParameterRecords *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PTParameterRecords *)v5 setRecordDictionary:dictionaryCopy];
    if (!qword_10001FA10)
    {
      v7 = dispatch_queue_create("com.apple.PrototypeTools.PTParameterRecords", 0);
      v8 = qword_10001FA10;
      qword_10001FA10 = v7;
    }
  }

  return v6;
}

- (void)addRecordWithKeyPath:(id)path domainID:(id)d recordClassName:(id)name value:(id)value
{
  pathCopy = path;
  dCopy = d;
  nameCopy = name;
  valueCopy = value;
  v14 = qword_10001FA10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002824;
  block[3] = &unk_100018850;
  block[4] = self;
  v20 = dCopy;
  v21 = pathCopy;
  v22 = nameCopy;
  v23 = valueCopy;
  v15 = valueCopy;
  v16 = nameCopy;
  v17 = pathCopy;
  v18 = dCopy;
  dispatch_async(v14, block);
}

- (void)removeRecordWithKeyPath:(id)path domainID:(id)d
{
  pathCopy = path;
  dCopy = d;
  v8 = qword_10001FA10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B78;
  block[3] = &unk_100018878;
  block[4] = self;
  v12 = dCopy;
  v13 = pathCopy;
  v9 = pathCopy;
  v10 = dCopy;
  dispatch_async(v8, block);
}

@end