@interface RCRecordingsFolder
- (BOOL)containsRecording:(id)recording;
- (RCRecordingsFolder)initWithContext:(id)context name:(id)name rank:(int64_t)rank uuid:(id)uuid;
@end

@implementation RCRecordingsFolder

- (RCRecordingsFolder)initWithContext:(id)context name:(id)name rank:(int64_t)rank uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = RCRecordingsFolder;
  v12 = [(RCRecordingsFolder *)&v17 initWithContext:context];
  v13 = v12;
  if (v12)
  {
    [(RCRecordingsFolder *)v12 setEncryptedName:nameCopy];
    [(RCRecordingsFolder *)v13 setRank:rank];
    if (uuidCopy)
    {
      [(RCRecordingsFolder *)v13 setUuid:uuidCopy];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [(RCRecordingsFolder *)v13 setUuid:uUIDString];
    }
  }

  return v13;
}

- (BOOL)containsRecording:(id)recording
{
  userFolderUUID = [recording userFolderUUID];
  uuid = [(RCRecordingsFolder *)self uuid];
  v6 = [userFolderUUID isEqual:uuid];

  return v6;
}

@end