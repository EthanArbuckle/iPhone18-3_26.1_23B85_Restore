@interface WFCloudKitFolder
+ (BOOL)isFolderRecordID:(id)a3;
+ (NSDictionary)properties;
+ (id)collectionIdentifierForRecordID:(id)a3;
+ (id)encryptedNameProperty;
+ (id)nameProperty;
+ (id)recordIDWithZoneID:(id)a3 collectionIdentifier:(id)a4;
- (WFCloudKitFolder)initWithIdentifier:(id)a3 name:(id)a4 icon:(unsigned __int16)a5 encryptedSchemaVersion:(int64_t)a6;
@end

@implementation WFCloudKitFolder

+ (id)collectionIdentifierForRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", @"WFFolder"];
  if ([v3 hasPrefix:v4])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isFolderRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 hasPrefix:@"WFFolder"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)a3 collectionIdentifier:(id)a4
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
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitFolder.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"WFCloudKitFolder.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"collectionIdentifier"}];

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"WFFolder", v9];
  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:v7];

  return v11;
}

+ (id)encryptedNameProperty
{
  if (+[WFCloudKitSyncSession isWalrusEnabled])
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" ignoredByDefault:0 encrypted:1];
  }

  else
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" constantValue:0 encrypted:1];
  }
  v2 = ;

  return v2;
}

+ (id)nameProperty
{
  if (+[WFCloudKitSyncSession isWalrusEnabled])
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" constantValue:0];
  }

  else
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name"];
  }
  v2 = ;

  return v2;
}

+ (NSDictionary)properties
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"icon";
  v3 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v11[0] = v3;
  v10[1] = @"name";
  v4 = [a1 nameProperty];
  v11[1] = v4;
  v10[2] = @"encryptedSchemaVersion";
  v5 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v11[2] = v5;
  v10[3] = @"encryptedName";
  v6 = [a1 encryptedNameProperty];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFCloudKitFolder)initWithIdentifier:(id)a3 name:(id)a4 icon:(unsigned __int16)a5 encryptedSchemaVersion:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = [(WFCloudKitFolder *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_name, a4);
    v14->_icon = a5;
    v14->_encryptedSchemaVersion = a6;
    v15 = v14;
  }

  return v14;
}

@end