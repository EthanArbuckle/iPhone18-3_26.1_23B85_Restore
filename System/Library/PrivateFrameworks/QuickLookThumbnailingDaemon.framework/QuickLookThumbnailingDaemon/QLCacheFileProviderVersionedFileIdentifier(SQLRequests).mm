@interface QLCacheFileProviderVersionedFileIdentifier(SQLRequests)
- (uint64_t)initWithSteppedStatement:()SQLRequests database:;
- (uint64_t)statementToInsertIntoDatabase:()SQLRequests;
- (uint64_t)statementToUpdateRecordWithCacheIdentifier:()SQLRequests inDatabase:;
@end

@implementation QLCacheFileProviderVersionedFileIdentifier(SQLRequests)

- (uint64_t)statementToInsertIntoDatabase:()SQLRequests
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAB0];
  version = [self version];
  v15 = 0;
  v7 = [v5 archivedDataWithRootObject:version requiringSecureCoding:1 error:&v15];

  fileIdentifier = [self fileIdentifier];
  v9 = [v4 prepareStatement:{"INSERT INTO provider_files (fileProviderId, itemId, version) VALUES (?, ?, ?)"}];
  if (v9)
  {
    itemID = [fileIdentifier itemID];
    providerDomainID = [itemID providerDomainID];
    [v4 bindObject:providerDomainID atIndex:1 inStatement:v9];

    itemID2 = [fileIdentifier itemID];
    identifier = [itemID2 identifier];
    [v4 bindObject:identifier atIndex:2 inStatement:v9];

    [v4 bindObject:v7 atIndex:3 inStatement:v9];
  }

  return v9;
}

- (uint64_t)statementToUpdateRecordWithCacheIdentifier:()SQLRequests inDatabase:
{
  v6 = a4;
  v7 = MEMORY[0x277CCAAB0];
  version = [self version];
  v17 = 0;
  v9 = [v7 archivedDataWithRootObject:version requiringSecureCoding:1 error:&v17];

  fileIdentifier = [self fileIdentifier];
  v11 = [v6 prepareStatement:{"UPDATE provider_files SET fileProviderId=?, itemId=?, version=? WHERE rowid=?"}];
  if (v11)
  {
    itemID = [fileIdentifier itemID];
    providerDomainID = [itemID providerDomainID];
    [v6 bindObject:providerDomainID atIndex:1 inStatement:v11];

    itemID2 = [fileIdentifier itemID];
    identifier = [itemID2 identifier];
    [v6 bindObject:identifier atIndex:2 inStatement:v11];

    [v6 bindObject:v9 atIndex:3 inStatement:v11];
    [v6 bindUnsignedLongLong:a3 atIndex:4 inStatement:v11];
  }

  return v11;
}

- (uint64_t)initWithSteppedStatement:()SQLRequests database:
{
  v6 = MEMORY[0x277CDAA90];
  v7 = a4;
  knownFileProviderIdentifiersSoFar = [v6 knownFileProviderIdentifiersSoFar];
  v9 = [v7 newStringFromColumn:1 inStatement:a3 uniqueInStringTable:knownFileProviderIdentifiersSoFar];

  knownFileProviderIdentifiersSoFar2 = [MEMORY[0x277CDAA90] knownFileProviderIdentifiersSoFar];
  v11 = [v7 newStringFromColumn:2 inStatement:a3 uniqueInStringTable:knownFileProviderIdentifiersSoFar2];

  v12 = [v7 newDataFromColumn:3 inStatement:a3 copyBytes:0];
  v21 = 0;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v21];
  v14 = v21;
  if (!v13)
  {
    v15 = _log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [QLCacheFileProviderVersionedFileIdentifier(SQLRequests) initWithSteppedStatement:database:];
    }
  }

  v16 = objc_alloc(MEMORY[0x277CDAA90]);
  v17 = [objc_alloc(MEMORY[0x277CC6400]) initWithProviderDomainID:v9 itemIdentifier:v11];
  v18 = [v16 initWithItemID:v17];
  v19 = [self initWithFileIdentifier:v18 version:v13];

  return v19;
}

- (void)initWithSteppedStatement:()SQLRequests database:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end