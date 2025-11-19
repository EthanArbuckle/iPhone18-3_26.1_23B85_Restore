@interface NSPersistentStore
- (BOOL)saveVoiceMemosMetadata:(id)a3 error:(id *)a4;
- (BOOL)saveVoiceMemosMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (NSCloudKitMirroringDelegate)rc_mirroringDelegate;
- (NSDictionary)voiceMemosMetadata;
@end

@implementation NSPersistentStore

- (NSCloudKitMirroringDelegate)rc_mirroringDelegate
{
  v2 = [(NSPersistentStore *)self options];
  v3 = [v2 objectForKeyedSubscript:NSPersistentStoreMirroringOptionsKey];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:NSPersistentStoreMirroringDelegateOptionKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)voiceMemosMetadata
{
  v2 = [(NSPersistentStore *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.VoiceMemos.DatabaseProperties"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

- (BOOL)saveVoiceMemosMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v8 = [(NSPersistentStore *)self persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008DA8;
  v12[3] = &unk_100055548;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  LOBYTE(a4) = [v9 rc_performAndWaitReturningError:a4 block:v12];

  return a4;
}

- (BOOL)saveVoiceMemosMetadataValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NSPersistentStore *)self voiceMemosMetadata];
  v11 = [v10 mutableCopy];

  [v11 setObject:v9 forKeyedSubscript:v8];
  LOBYTE(a5) = [(NSPersistentStore *)self saveVoiceMemosMetadata:v11 error:a5];

  return a5;
}

@end