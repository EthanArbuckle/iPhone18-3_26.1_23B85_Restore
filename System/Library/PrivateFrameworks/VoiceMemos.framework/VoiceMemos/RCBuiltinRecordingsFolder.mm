@interface RCBuiltinRecordingsFolder
+ (NSArray)allBuiltInFolders;
+ (id)builtInFolderWithType:(int64_t)type;
- (BOOL)containsRecording:(id)recording;
- (NSString)description;
- (NSString)name;
- (NSString)uuid;
- (RCBuiltinRecordingsFolder)initWithType:(int64_t)type;
@end

@implementation RCBuiltinRecordingsFolder

+ (NSArray)allBuiltInFolders
{
  if (allBuiltInFolders_onceToken != -1)
  {
    +[RCBuiltinRecordingsFolder allBuiltInFolders];
  }

  v3 = allBuiltInFolders_allBuiltInFolders;

  return v3;
}

void __46__RCBuiltinRecordingsFolder_allBuiltInFolders__block_invoke()
{
  v0 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  do
  {
    v1 = [RCBuiltinRecordingsFolder alloc];
    v2 = [(RCBuiltinRecordingsFolder *)v1 initWithType:v0, v8, v9];
    v3 = *(&v8 + v0);
    *(&v8 + v0) = v2;

    ++v0;
  }

  while (v0 != 4);
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:&v8 count:4];
  v5 = allBuiltInFolders_allBuiltInFolders;
  allBuiltInFolders_allBuiltInFolders = v4;

  for (i = 24; i != -8; i -= 8)
  {
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)uuid
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:self->_folderType];
  stringValue = [v2 stringValue];

  return stringValue;
}

+ (id)builtInFolderWithType:(int64_t)type
{
  if (type > 3)
  {
    v5 = 0;
  }

  else
  {
    allBuiltInFolders = [self allBuiltInFolders];
    v5 = [allBuiltInFolders objectAtIndexedSubscript:type];
  }

  return v5;
}

- (RCBuiltinRecordingsFolder)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = RCBuiltinRecordingsFolder;
  result = [(RCBuiltinRecordingsFolder *)&v5 init];
  if (result)
  {
    result->_folderType = type;
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(RCBuiltinRecordingsFolder *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p> name = %@", v4, self, name];

  return v6;
}

- (NSString)name
{
  folderType = self->_folderType;
  if (folderType > 3)
  {
    return &stru_2881A6FB8;
  }

  else
  {
    return &off_279E44F40[folderType]->isa;
  }
}

- (BOOL)containsRecording:(id)recording
{
  recordingCopy = recording;
  v5 = recordingCopy;
  folderType = self->_folderType;
  v7 = 1;
  if (folderType > 2)
  {
    if (folderType == 4)
    {
      v7 = 0;
    }

    else if (folderType == 3)
    {
      deletionDate = [recordingCopy deletionDate];
      v7 = deletionDate != 0;
    }
  }

  else
  {
    if (folderType == 1)
    {
      favorite = [recordingCopy favorite];
      goto LABEL_10;
    }

    if (folderType == 2 && ([recordingCopy recordedOnWatch] & 1) == 0)
    {
      favorite = [v5 watchOS];
LABEL_10:
      v7 = favorite;
    }
  }

  return v7;
}

@end