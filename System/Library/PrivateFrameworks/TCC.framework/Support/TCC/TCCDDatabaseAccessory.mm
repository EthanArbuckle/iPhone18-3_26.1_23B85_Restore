@interface TCCDDatabaseAccessory
+ (id)getAccessoryDBFullPath;
- (TCCDDatabaseAccessory)init;
- (id)getDeviceID;
- (int)eval:(id)a3 bind:(id)a4 step:(id)a5;
- (int)evalLocked:(id)a3 bind:(id)a4 step:(id)a5;
- (int)setDeviceID:(id)a3;
- (int)transaction:(id)a3;
@end

@implementation TCCDDatabaseAccessory

+ (id)getAccessoryDBFullPath
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 stateDirectory];

  if (!v4)
  {
    v8 = +[TCCDPlatform currentPlatform];
    v9 = [v8 server];
    v10 = [v9 logHandle];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000363A0(v10);
    }

LABEL_10:

    abort();
  }

  v5 = [v4 stringByAppendingString:@"/TCCAccessory.db"];
  if (!v5)
  {
    v11 = +[TCCDPlatform currentPlatform];
    v12 = [v11 server];
    v10 = [v12 logHandle];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003635C(v10);
    }

    goto LABEL_10;
  }

  v6 = v5;

  return v6;
}

- (TCCDDatabaseAccessory)init
{
  v11.receiver = self;
  v11.super_class = TCCDDatabaseAccessory;
  v2 = [(TCCDDatabaseAccessory *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(TCCDDatabaseAccessory *)v2 setUpMigration];
    v4 = [TCCDSQLDatabase alloc];
    v5 = +[TCCDDatabaseAccessory getAccessoryDBFullPath];
    v6 = +[TCCDDatabaseAccessory getInitialSetupQuery];
    v7 = [(TCCDDatabaseAccessory *)v3 migration];
    v8 = [(TCCDSQLDatabase *)v4 initWithPathToDatabase:v5 initialSetup:v6 migration:v7];
    delegate = v3->_delegate;
    v3->_delegate = v8;
  }

  return v3;
}

- (int)eval:(id)a3 bind:(id)a4 step:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TCCDDatabaseAccessory *)self delegate];
  v12 = [v11 eval];
  v13 = [v10 UTF8String];

  LODWORD(v10) = (v12)[2](v12, v13, v9, v8);
  return v10;
}

- (int)evalLocked:(id)a3 bind:(id)a4 step:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TCCDDatabaseAccessory *)self delegate];
  v12 = [v11 evalLocked];
  v13 = [v10 UTF8String];

  LODWORD(v10) = (v12)[2](v12, v13, v9, v8);
  return v10;
}

- (int)transaction:(id)a3
{
  v4 = a3;
  v5 = [(TCCDDatabaseAccessory *)self delegate];
  v6 = [v5 transaction:v4];

  return v6;
}

- (int)setDeviceID:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10003603C;
  v10 = &unk_1000A5318;
  v11 = a3;
  v12 = self;
  v4 = v11;
  v5 = objc_retainBlock(&v7);
  LODWORD(self) = [(TCCDDatabaseAccessory *)self eval:@"INSERT OR REPLACE INTO tccd_attributes (key bind:value) VALUES ('device_id' step:?)", v5, 0, v7, v8, v9, v10];

  return self;
}

- (id)getDeviceID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100007520;
  v12 = sub_100007590;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003624C;
  v7[3] = &unk_1000A52A8;
  v7[4] = &v8;
  if ([(TCCDDatabaseAccessory *)self evalLocked:@"SELECT value FROM tccd_attributes WHERE key='device_id'" bind:0 step:v7])
  {
    v3 = [(TCCDDatabaseAccessory *)self delegate];
    _generic_db_error(1, 174, v3);

LABEL_3:
    v4 = 0;
    goto LABEL_6;
  }

  v5 = v9[5];
  if (!v5)
  {
    goto LABEL_3;
  }

  v4 = v5;
LABEL_6:
  _Block_object_dispose(&v8, 8);

  return v4;
}

@end