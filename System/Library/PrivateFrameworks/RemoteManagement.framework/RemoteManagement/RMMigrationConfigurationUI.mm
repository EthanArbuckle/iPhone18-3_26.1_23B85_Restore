@interface RMMigrationConfigurationUI
- (BOOL)executeReturningError:(id *)a3;
- (id)_context;
@end

@implementation RMMigrationConfigurationUI

- (BOOL)executeReturningError:(id *)a3
{
  [(RMMigrationConfigurationUI *)self _context];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100052910;
  v15 = sub_100052920;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100052928;
  v4 = v8[3] = &unk_1000D2430;
  v9 = v4;
  v10 = &v11;
  [v4 performBlockAndWait:v8];
  if (a3)
  {
    v5 = v12[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = v12[5] == 0;

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)_context
{
  v2 = +[RMPersistentController sharedController];
  v3 = [v2 persistentContainer];

  v4 = [v3 newBackgroundContext];

  return v4;
}

@end