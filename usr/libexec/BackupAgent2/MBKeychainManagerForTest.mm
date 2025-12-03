@interface MBKeychainManagerForTest
+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)removeKeybagSecretsWithError:(id *)error;
+ (BOOL)removeLocalBackupPassword:(id *)password;
+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
@end

@implementation MBKeychainManagerForTest

+ (BOOL)removeLocalBackupPassword:(id *)password
{
  v3 = qword_10011E510;
  qword_10011E510 = 0;

  return 1;
}

+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  secretCopy = secret;
  dCopy = d;
  v8 = qword_10011E518;
  if (!qword_10011E518)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_10011E518;
    qword_10011E518 = v9;

    v8 = qword_10011E518;
  }

  [v8 setObject:secretCopy forKeyedSubscript:dCopy];

  return 1;
}

+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  secretCopy = secret;
  dCopy = d;
  v8 = qword_10011E518;
  if (!qword_10011E518)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_10011E518;
    qword_10011E518 = v9;

    v8 = qword_10011E518;
  }

  [v8 setObject:secretCopy forKeyedSubscript:dCopy];

  return 1;
}

+ (BOOL)removeKeybagSecretsWithError:(id *)error
{
  v3 = qword_10011E518;
  qword_10011E518 = 0;

  return 1;
}

@end