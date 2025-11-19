@interface MBManagerPlugin
- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5;
- (id)preparingRestoreWithPolicy:(id)a3 engine:(id)a4;
@end

@implementation MBManagerPlugin

- (id)preparingRestoreWithPolicy:(id)a3 engine:(id)a4
{
  v4 = [MBPersona personalPersonaWithError:0, a4];
  [v4 setPreferencesValue:&__kCFBooleanTrue forKey:@"DriveRestoreInProgress"];
  v5 = +[MBNotificationCenter sharedNotificationCenter];
  [v5 postNotification:@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreStarted"];

  return 0;
}

- (id)endedRestoreWithPolicy:(id)a3 engine:(id)a4 error:(id)a5
{
  v5 = [MBPersona personalPersonaWithError:0, a4, a5];
  [v5 setPreferencesValue:0 forKey:@"DriveRestoreInProgress"];
  v6 = +[MBNotificationCenter sharedNotificationCenter];
  [v6 postNotification:@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreEnded"];

  return 0;
}

@end