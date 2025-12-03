@interface NSPersistentStore
- (BOOL)saveVoiceMemosMetadata:(id)metadata error:(id *)error;
- (BOOL)saveVoiceMemosMetadataValue:(id)value forKey:(id)key error:(id *)error;
- (NSCloudKitMirroringDelegate)rc_mirroringDelegate;
- (NSDictionary)voiceMemosMetadata;
@end

@implementation NSPersistentStore

- (NSCloudKitMirroringDelegate)rc_mirroringDelegate
{
  options = [(NSPersistentStore *)self options];
  v3 = [options objectForKeyedSubscript:NSPersistentStoreMirroringOptionsKey];

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
  metadata = [(NSPersistentStore *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"com.apple.VoiceMemos.DatabaseProperties"];
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

- (BOOL)saveVoiceMemosMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  persistentStoreCoordinator = [(NSPersistentStore *)self persistentStoreCoordinator];
  [v7 setPersistentStoreCoordinator:persistentStoreCoordinator];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100008DA8;
  v12[3] = &unk_100055548;
  v12[4] = self;
  v13 = metadataCopy;
  v14 = v7;
  v9 = v7;
  v10 = metadataCopy;
  LOBYTE(error) = [v9 rc_performAndWaitReturningError:error block:v12];

  return error;
}

- (BOOL)saveVoiceMemosMetadataValue:(id)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  voiceMemosMetadata = [(NSPersistentStore *)self voiceMemosMetadata];
  v11 = [voiceMemosMetadata mutableCopy];

  [v11 setObject:valueCopy forKeyedSubscript:keyCopy];
  LOBYTE(error) = [(NSPersistentStore *)self saveVoiceMemosMetadata:v11 error:error];

  return error;
}

@end