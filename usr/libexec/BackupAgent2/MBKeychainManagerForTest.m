@interface MBKeychainManagerForTest
+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
+ (BOOL)removeKeybagSecretsWithError:(id *)a3;
+ (BOOL)removeLocalBackupPassword:(id *)a3;
+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5;
@end

@implementation MBKeychainManagerForTest

+ (BOOL)removeLocalBackupPassword:(id *)a3
{
  v3 = qword_10011E510;
  qword_10011E510 = 0;

  return 1;
}

+ (BOOL)addKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = qword_10011E518;
  if (!qword_10011E518)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_10011E518;
    qword_10011E518 = v9;

    v8 = qword_10011E518;
  }

  [v8 setObject:v6 forKeyedSubscript:v7];

  return 1;
}

+ (BOOL)updateKeybagSecret:(id)a3 forUUID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = qword_10011E518;
  if (!qword_10011E518)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_10011E518;
    qword_10011E518 = v9;

    v8 = qword_10011E518;
  }

  [v8 setObject:v6 forKeyedSubscript:v7];

  return 1;
}

+ (BOOL)removeKeybagSecretsWithError:(id *)a3
{
  v3 = qword_10011E518;
  qword_10011E518 = 0;

  return 1;
}

@end