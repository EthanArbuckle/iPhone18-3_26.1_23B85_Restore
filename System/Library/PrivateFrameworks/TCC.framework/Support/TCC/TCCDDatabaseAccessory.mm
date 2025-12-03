@interface TCCDDatabaseAccessory
+ (id)getAccessoryDBFullPath;
- (TCCDDatabaseAccessory)init;
- (id)getDeviceID;
- (int)eval:(id)eval bind:(id)bind step:(id)step;
- (int)evalLocked:(id)locked bind:(id)bind step:(id)step;
- (int)setDeviceID:(id)d;
- (int)transaction:(id)transaction;
@end

@implementation TCCDDatabaseAccessory

+ (id)getAccessoryDBFullPath
{
  v2 = +[TCCDPlatform currentPlatform];
  server = [v2 server];
  stateDirectory = [server stateDirectory];

  if (!stateDirectory)
  {
    v8 = +[TCCDPlatform currentPlatform];
    server2 = [v8 server];
    logHandle = [server2 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000363A0(logHandle);
    }

LABEL_10:

    abort();
  }

  v5 = [stateDirectory stringByAppendingString:@"/TCCAccessory.db"];
  if (!v5)
  {
    v11 = +[TCCDPlatform currentPlatform];
    server3 = [v11 server];
    logHandle = [server3 logHandle];

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_10003635C(logHandle);
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
    migration = [(TCCDDatabaseAccessory *)v3 migration];
    v8 = [(TCCDSQLDatabase *)v4 initWithPathToDatabase:v5 initialSetup:v6 migration:migration];
    delegate = v3->_delegate;
    v3->_delegate = v8;
  }

  return v3;
}

- (int)eval:(id)eval bind:(id)bind step:(id)step
{
  stepCopy = step;
  bindCopy = bind;
  evalCopy = eval;
  delegate = [(TCCDDatabaseAccessory *)self delegate];
  eval = [delegate eval];
  uTF8String = [evalCopy UTF8String];

  LODWORD(evalCopy) = (eval)[2](eval, uTF8String, bindCopy, stepCopy);
  return evalCopy;
}

- (int)evalLocked:(id)locked bind:(id)bind step:(id)step
{
  stepCopy = step;
  bindCopy = bind;
  lockedCopy = locked;
  delegate = [(TCCDDatabaseAccessory *)self delegate];
  evalLocked = [delegate evalLocked];
  uTF8String = [lockedCopy UTF8String];

  LODWORD(lockedCopy) = (evalLocked)[2](evalLocked, uTF8String, bindCopy, stepCopy);
  return lockedCopy;
}

- (int)transaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(TCCDDatabaseAccessory *)self delegate];
  v6 = [delegate transaction:transactionCopy];

  return v6;
}

- (int)setDeviceID:(id)d
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10003603C;
  v10 = &unk_1000A5318;
  dCopy = d;
  selfCopy = self;
  v4 = dCopy;
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
    delegate = [(TCCDDatabaseAccessory *)self delegate];
    _generic_db_error(1, 174, delegate);

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