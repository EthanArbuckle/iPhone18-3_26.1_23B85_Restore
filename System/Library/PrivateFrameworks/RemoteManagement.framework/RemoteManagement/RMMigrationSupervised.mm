@interface RMMigrationSupervised
- (BOOL)_changeDeviceEnrollmentTypeReturningError:(id *)error;
- (BOOL)executeReturningError:(id *)error;
- (id)_context;
@end

@implementation RMMigrationSupervised

- (BOOL)executeReturningError:(id *)error
{
  v5 = +[RMManagedDevice currentManagedDevice];
  isSupervised = [v5 isSupervised];

  v7 = +[RMLog migrationSupervised];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isSupervised)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Checking migration - is supervised", buf, 2u);
    }

    return [(RMMigrationSupervised *)self _changeDeviceEnrollmentTypeReturningError:error];
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Ignoring migration - not supervised", v10, 2u);
    }

    return 1;
  }
}

- (BOOL)_changeDeviceEnrollmentTypeReturningError:(id *)error
{
  [(RMMigrationSupervised *)self _context];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100055704;
  v15 = sub_100055714;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005571C;
  v8[3] = &unk_1000D2518;
  v4 = v10 = &v11;
  v9 = v4;
  [v4 performBlockAndWait:v8];
  if (error)
  {
    v5 = v12[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = v12[5] == 0;

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)_context
{
  v2 = +[RMPersistentController sharedController];
  persistentContainer = [v2 persistentContainer];

  newBackgroundContext = [persistentContainer newBackgroundContext];

  return newBackgroundContext;
}

@end