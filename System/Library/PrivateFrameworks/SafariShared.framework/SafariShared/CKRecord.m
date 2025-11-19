@interface CKRecord
@end

@implementation CKRecord

void __63__CKRecord_SafariSharedExtras__safari_folderTypeForRecordName___block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C8B20];
  v3[0] = *MEMORY[0x1E69C8B28];
  v3[1] = v0;
  v4[0] = &unk_1F3A9A9D0;
  v4[1] = &unk_1F3A9A9E8;
  v3[2] = *MEMORY[0x1E69C8B30];
  v4[2] = &unk_1F3A9AA00;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = safari_folderTypeForRecordName__builtInRecordNamesToRecordTypes;
  safari_folderTypeForRecordName__builtInRecordNamesToRecordTypes = v1;
}

@end