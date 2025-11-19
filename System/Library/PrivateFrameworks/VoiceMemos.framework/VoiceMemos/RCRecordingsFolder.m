@interface RCRecordingsFolder
- (BOOL)containsRecording:(id)a3;
- (RCRecordingsFolder)initWithContext:(id)a3 name:(id)a4 rank:(int64_t)a5 uuid:(id)a6;
@end

@implementation RCRecordingsFolder

- (RCRecordingsFolder)initWithContext:(id)a3 name:(id)a4 rank:(int64_t)a5 uuid:(id)a6
{
  v10 = a4;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = RCRecordingsFolder;
  v12 = [(RCRecordingsFolder *)&v17 initWithContext:a3];
  v13 = v12;
  if (v12)
  {
    [(RCRecordingsFolder *)v12 setEncryptedName:v10];
    [(RCRecordingsFolder *)v13 setRank:a5];
    if (v11)
    {
      [(RCRecordingsFolder *)v13 setUuid:v11];
    }

    else
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [v14 UUIDString];
      [(RCRecordingsFolder *)v13 setUuid:v15];
    }
  }

  return v13;
}

- (BOOL)containsRecording:(id)a3
{
  v4 = [a3 userFolderUUID];
  v5 = [(RCRecordingsFolder *)self uuid];
  v6 = [v4 isEqual:v5];

  return v6;
}

@end