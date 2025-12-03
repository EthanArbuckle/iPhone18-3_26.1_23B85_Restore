@interface WFCloudKitLibrary
+ (BOOL)isLibraryRecordID:(id)d;
+ (NSDictionary)properties;
+ (id)libraryIdentifierFromRecordID:(id)d error:(id *)error;
+ (id)recordIDWithZoneID:(id)d libraryIdentifier:(id)identifier;
- (WFCloudKitLibrary)init;
- (WFCloudKitLibrary)initWithIdentifier:(id)identifier version:(id)version data:(id)data syncHash:(int64_t)hash;
- (WFCloudKitLibrary)initWithLibraryRecord:(id)record zoneID:(id)d;
- (id)libraryIdentifierWithError:(id *)error;
@end

@implementation WFCloudKitLibrary

- (id)libraryIdentifierWithError:(id *)error
{
  identifier = [(WFCloudKitLibrary *)self identifier];

  if (identifier)
  {
    v6 = objc_opt_class();
    identifier2 = [(WFCloudKitLibrary *)self identifier];
    v8 = [v6 libraryIdentifierFromRecordID:identifier2 error:error];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitLibraryErrorDomain" code:0 userInfo:0];
    *error = v8 = 0;
  }

  return v8;
}

- (WFCloudKitLibrary)initWithLibraryRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v9 = dCopy;
  if (recordCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

LABEL_3:
  v10 = [(WFCloudKitLibrary *)self init];
  if (v10)
  {
    v11 = objc_opt_class();
    identifier = [recordCopy identifier];
    v13 = [v11 recordIDWithZoneID:v9 libraryIdentifier:identifier];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    version = v10->_version;
    v10->_version = 0;

    v16 = MEMORY[0x1E6996E20];
    data = [recordCopy data];
    v18 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    v19 = [v16 fileWithData:data ofType:v18 proposedFilename:0];
    dataFileRepresentation = v10->_dataFileRepresentation;
    v10->_dataFileRepresentation = v19;

    v10->_syncHash = [recordCopy syncHash];
    v21 = v10;
  }

  return v10;
}

- (WFCloudKitLibrary)initWithIdentifier:(id)identifier version:(id)version data:(id)data syncHash:(int64_t)hash
{
  identifierCopy = identifier;
  versionCopy = version;
  dataCopy = data;
  v15 = dataCopy;
  if (identifierCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v16 = [(WFCloudKitLibrary *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    version = v17->_version;
    v17->_version = 0;

    v19 = MEMORY[0x1E6996E20];
    v20 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    v21 = [v19 fileWithData:v15 ofType:v20 proposedFilename:0];
    dataFileRepresentation = v17->_dataFileRepresentation;
    v17->_dataFileRepresentation = v21;

    v17->_syncHash = hash;
    v23 = v17;
  }

  return v17;
}

- (WFCloudKitLibrary)init
{
  v9.receiver = self;
  v9.super_class = WFCloudKitLibrary;
  v2 = [(WFCloudKitLibrary *)&v9 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = 0;

    version = v3->_version;
    v3->_version = 0;

    dataFileRepresentation = v3->_dataFileRepresentation;
    v3->_dataFileRepresentation = 0;

    v7 = v3;
  }

  return v3;
}

+ (BOOL)isLibraryRecordID:(id)d
{
  recordName = [d recordName];
  recordType = [self recordType];
  v6 = [recordName hasPrefix:recordType];

  return v6;
}

+ (id)libraryIdentifierFromRecordID:(id)d error:(id *)error
{
  recordName = [d recordName];
  v7 = MEMORY[0x1E696AEC0];
  recordType = [self recordType];
  v9 = [v7 stringWithFormat:@"%@-", recordType];

  if ([recordName hasPrefix:v9])
  {
    v10 = [recordName substringFromIndex:{objc_msgSend(v9, "length")}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitLibraryErrorDomain" code:1 userInfo:0];
    *error = v10 = 0;
  }

  return v10;
}

+ (id)recordIDWithZoneID:(id)d libraryIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  dCopy = d;
  recordType = [self recordType];
  identifierCopy = [v6 stringWithFormat:@"%@-%@", recordType, identifierCopy];

  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:identifierCopy zoneID:dCopy];

  return v11;
}

+ (NSDictionary)properties
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"data";
  v2 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v3 = [WFCloudKitItemProperty assetPropertyWithName:@"dataFileRepresentation" fileType:v2];
  v10[0] = v3;
  v9[1] = @"version";
  v4 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v10[1] = v4;
  v9[2] = @"syncHash";
  v5 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:ignoredByDefault:encrypted:" nilValue:? ignoredByDefault:? encrypted:?];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end