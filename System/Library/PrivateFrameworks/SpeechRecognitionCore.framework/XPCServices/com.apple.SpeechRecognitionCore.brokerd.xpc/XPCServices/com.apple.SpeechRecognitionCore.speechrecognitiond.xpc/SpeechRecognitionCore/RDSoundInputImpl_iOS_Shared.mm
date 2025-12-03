@interface RDSoundInputImpl_iOS_Shared
+ (BOOL)_isCarPlayConnected;
+ (BOOL)isCarPlayActive;
+ (BOOL)isSystemSleeping;
@end

@implementation RDSoundInputImpl_iOS_Shared

+ (BOOL)_isCarPlayConnected
{
  if (qword_10010E448 != -1)
  {
    sub_1000C8DD8();
  }

  currentSession = [qword_10010E440 currentSession];
  v3 = currentSession != 0;

  return v3;
}

+ (BOOL)isCarPlayActive
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {

    LOBYTE(v3) = [self _isCarPlayConnected];
  }

  return v3;
}

+ (BOOL)isSystemSleeping
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = qword_10010E450;
  v12 = qword_10010E450;
  if (!qword_10010E450)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000076DC;
    v8[3] = &unk_1000FE0C8;
    v8[4] = &v9;
    sub_1000076DC(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  server = [v3 server];
  if ([server isSystemSleeping])
  {
    v6 = [self isCarPlayActive] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end