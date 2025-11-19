@interface WFCloudKitLibrary
+ (BOOL)isLibraryRecordID:(id)a3;
+ (NSDictionary)properties;
+ (id)libraryIdentifierFromRecordID:(id)a3 error:(id *)a4;
+ (id)recordIDWithZoneID:(id)a3 libraryIdentifier:(id)a4;
- (WFCloudKitLibrary)init;
- (WFCloudKitLibrary)initWithIdentifier:(id)a3 version:(id)a4 data:(id)a5 syncHash:(int64_t)a6;
- (WFCloudKitLibrary)initWithLibraryRecord:(id)a3 zoneID:(id)a4;
- (id)libraryIdentifierWithError:(id *)a3;
@end

@implementation WFCloudKitLibrary

- (id)libraryIdentifierWithError:(id *)a3
{
  v5 = [(WFCloudKitLibrary *)self identifier];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(WFCloudKitLibrary *)self identifier];
    v8 = [v6 libraryIdentifierFromRecordID:v7 error:a3];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitLibraryErrorDomain" code:0 userInfo:0];
    *a3 = v8 = 0;
  }

  return v8;
}

- (WFCloudKitLibrary)initWithLibraryRecord:(id)a3 zoneID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

LABEL_3:
  v10 = [(WFCloudKitLibrary *)self init];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v7 identifier];
    v13 = [v11 recordIDWithZoneID:v9 libraryIdentifier:v12];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    version = v10->_version;
    v10->_version = 0;

    v16 = MEMORY[0x1E6996E20];
    v17 = [v7 data];
    v18 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    v19 = [v16 fileWithData:v17 ofType:v18 proposedFilename:0];
    dataFileRepresentation = v10->_dataFileRepresentation;
    v10->_dataFileRepresentation = v19;

    v10->_syncHash = [v7 syncHash];
    v21 = v10;
  }

  return v10;
}

- (WFCloudKitLibrary)initWithIdentifier:(id)a3 version:(id)a4 data:(id)a5 syncHash:(int64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v12)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"WFCloudKitLibrary.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v16 = [(WFCloudKitLibrary *)self init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    version = v17->_version;
    v17->_version = 0;

    v19 = MEMORY[0x1E6996E20];
    v20 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    v21 = [v19 fileWithData:v15 ofType:v20 proposedFilename:0];
    dataFileRepresentation = v17->_dataFileRepresentation;
    v17->_dataFileRepresentation = v21;

    v17->_syncHash = a6;
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

+ (BOOL)isLibraryRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [a1 recordType];
  v6 = [v4 hasPrefix:v5];

  return v6;
}

+ (id)libraryIdentifierFromRecordID:(id)a3 error:(id *)a4
{
  v6 = [a3 recordName];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [a1 recordType];
  v9 = [v7 stringWithFormat:@"%@-", v8];

  if ([v6 hasPrefix:v9])
  {
    v10 = [v6 substringFromIndex:{objc_msgSend(v9, "length")}];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WFCloudKitLibraryErrorDomain" code:1 userInfo:0];
    *a4 = v10 = 0;
  }

  return v10;
}

+ (id)recordIDWithZoneID:(id)a3 libraryIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [a1 recordType];
  v10 = [v6 stringWithFormat:@"%@-%@", v9, v7];

  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:v8];

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