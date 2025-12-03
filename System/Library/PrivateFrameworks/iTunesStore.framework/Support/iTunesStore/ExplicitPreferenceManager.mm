@interface ExplicitPreferenceManager
+ (id)sharedManager;
- (ExplicitPreferenceManager)init;
- (void)setExplicitPreferencesDisabled:(BOOL)disabled;
- (void)setLastChangeInducingBagExplicitOff:(BOOL)off;
@end

@implementation ExplicitPreferenceManager

- (ExplicitPreferenceManager)init
{
  v9.receiver = self;
  v9.super_class = ExplicitPreferenceManager;
  v2 = [(ExplicitPreferenceManager *)&v9 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = ISURLBagDidLoadNotification;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001E4318;
    v7[3] = &unk_10032BEA0;
    v8 = v2;
    v5 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  }

  return v2;
}

- (void)setLastChangeInducingBagExplicitOff:(BOOL)off
{
  v3 = [NSNumber numberWithBool:off];
  v4 = kITunesStoreDaemonDefaultsID;

  CFPreferencesSetAppValue(@"ExplicitPreferenceManagerDefaultsKeyExplicitOff", v3, v4);
}

- (void)setExplicitPreferencesDisabled:(BOOL)disabled
{
  v3 = [NSNumber numberWithBool:disabled];
  v4 = kITunesStoreDaemonDefaultsID;

  CFPreferencesSetAppValue(@"ExplicitPreferenceManagerDefaultsKeyExplicitPreferencesDisabled", v3, v4);
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4C90;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_1003840E8 != -1)
  {
    dispatch_once(&qword_1003840E8, block);
  }

  v2 = qword_1003840E0;

  return v2;
}

@end