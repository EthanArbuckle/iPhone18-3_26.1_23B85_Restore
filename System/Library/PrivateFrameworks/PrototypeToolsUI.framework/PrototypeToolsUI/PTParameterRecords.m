@interface PTParameterRecords
- (PTParameterRecords)initWithDictionary:(id)a3;
- (void)addRecordWithKeyPath:(id)a3 domainID:(id)a4 recordClassName:(id)a5 value:(id)a6;
- (void)removeRecordWithKeyPath:(id)a3 domainID:(id)a4;
@end

@implementation PTParameterRecords

- (PTParameterRecords)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PTParameterRecords;
  v5 = [(PTParameterRecords *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PTParameterRecords *)v5 setRecordDictionary:v4];
    if (!qword_10001FA10)
    {
      v7 = dispatch_queue_create("com.apple.PrototypeTools.PTParameterRecords", 0);
      v8 = qword_10001FA10;
      qword_10001FA10 = v7;
    }
  }

  return v6;
}

- (void)addRecordWithKeyPath:(id)a3 domainID:(id)a4 recordClassName:(id)a5 value:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = qword_10001FA10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002824;
  block[3] = &unk_100018850;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
}

- (void)removeRecordWithKeyPath:(id)a3 domainID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_10001FA10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002B78;
  block[3] = &unk_100018878;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

@end