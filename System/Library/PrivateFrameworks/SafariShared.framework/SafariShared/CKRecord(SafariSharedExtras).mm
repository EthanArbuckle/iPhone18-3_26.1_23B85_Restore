@interface CKRecord(SafariSharedExtras)
+ (uint64_t)safari_folderTypeForRecordName:()SafariSharedExtras;
@end

@implementation CKRecord(SafariSharedExtras)

+ (uint64_t)safari_folderTypeForRecordName:()SafariSharedExtras
{
  v3 = safari_folderTypeForRecordName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[CKRecord(SafariSharedExtras) safari_folderTypeForRecordName:];
  }

  v5 = [safari_folderTypeForRecordName__builtInRecordNamesToRecordTypes objectForKeyedSubscript:v4];

  integerValue = [v5 integerValue];
  return integerValue;
}

@end