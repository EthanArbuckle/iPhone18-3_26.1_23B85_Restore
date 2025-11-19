@interface QLCacheBasicVersionedFileIdentifier(SQLRequests)
- (uint64_t)initWithSteppedStatement:()SQLRequests database:;
- (uint64_t)statementToInsertIntoDatabase:()SQLRequests;
- (uint64_t)statementToUpdateRecordWithCacheIdentifier:()SQLRequests inDatabase:;
@end

@implementation QLCacheBasicVersionedFileIdentifier(SQLRequests)

- (uint64_t)statementToInsertIntoDatabase:()SQLRequests
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAB0];
  v6 = [a1 version];
  v12 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];

  v8 = [a1 fileIdentifier];
  v9 = [v4 prepareStatement:{"INSERT INTO basic_files (fileId, fsid, version) VALUES (?, ?, ?)"}];
  if (v9)
  {
    v10 = __ROR8__([v8 fsid], 32);
    [v4 bindUnsignedLongLong:objc_msgSend(v8 atIndex:"fileId") inStatement:{1, v9}];
    [v4 bindUnsignedLongLong:v10 atIndex:2 inStatement:v9];
    [v4 bindObject:v7 atIndex:3 inStatement:v9];
  }

  return v9;
}

- (uint64_t)statementToUpdateRecordWithCacheIdentifier:()SQLRequests inDatabase:
{
  v6 = a4;
  v7 = MEMORY[0x277CCAAB0];
  v8 = [a1 version];
  v15 = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v15];

  v10 = [v6 prepareStatement:{"UPDATE basic_files SET fileId=?, fsid=?, version=? WHERE rowid=?"}];
  v11 = [a1 fileIdentifier];
  v12 = v11;
  if (v10)
  {
    v13 = __ROR8__([v11 fsid], 32);
    [v6 bindUnsignedLongLong:objc_msgSend(v12 atIndex:"fileId") inStatement:{1, v10}];
    [v6 bindUnsignedLongLong:v13 atIndex:2 inStatement:v10];
    [v6 bindObject:v9 atIndex:3 inStatement:v10];
    [v6 bindUnsignedLongLong:objc_msgSend(MEMORY[0x277CDAA80] atIndex:"rowIdFromCacheId:" inStatement:{a3), 4, v10}];
  }

  return v10;
}

- (uint64_t)initWithSteppedStatement:()SQLRequests database:
{
  v6 = a4;
  v7 = [v6 unsignedLongLongFromColumn:1 inStatement:a3];
  v8 = [v6 unsignedLongLongFromColumn:2 inStatement:a3];
  v9 = [v6 newDataFromColumn:3 inStatement:a3 copyBytes:0];

  v15 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v15];
  if (!v10)
  {
    v11 = _log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [QLCacheBasicVersionedFileIdentifier(SQLRequests) initWithSteppedStatement:database:];
    }
  }

  v12 = [objc_alloc(MEMORY[0x277CDAA80]) initWithFileId:v7 fsid:{__ROR8__(v8, 32)}];
  v13 = [a1 initWithFileIdentifier:v12 version:v10];

  return v13;
}

- (void)initWithSteppedStatement:()SQLRequests database:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end