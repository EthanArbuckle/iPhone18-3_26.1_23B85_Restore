@interface WFCloudKitFolder
+ (BOOL)isFolderRecordID:(id)d;
+ (NSDictionary)properties;
+ (id)collectionIdentifierForRecordID:(id)d;
+ (id)encryptedNameProperty;
+ (id)nameProperty;
+ (id)recordIDWithZoneID:(id)d collectionIdentifier:(id)identifier;
- (WFCloudKitFolder)initWithIdentifier:(id)identifier name:(id)name icon:(unsigned __int16)icon encryptedSchemaVersion:(int64_t)version;
@end

@implementation WFCloudKitFolder

+ (id)collectionIdentifierForRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", @"WFFolder"];
  if ([recordName hasPrefix:v4])
  {
    v5 = [recordName substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isFolderRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName hasPrefix:@"WFFolder"];

  return v4;
}

+ (id)recordIDWithZoneID:(id)d collectionIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (dCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitFolder.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCloudKitFolder.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"collectionIdentifier"}];

LABEL_3:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"WFFolder", v9];
  v11 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v10 zoneID:dCopy];

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
  nameProperty = [self nameProperty];
  v11[1] = nameProperty;
  v10[2] = @"encryptedSchemaVersion";
  v5 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v11[2] = v5;
  v10[3] = @"encryptedName";
  encryptedNameProperty = [self encryptedNameProperty];
  v11[3] = encryptedNameProperty;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFCloudKitFolder)initWithIdentifier:(id)identifier name:(id)name icon:(unsigned __int16)icon encryptedSchemaVersion:(int64_t)version
{
  identifierCopy = identifier;
  nameCopy = name;
  v13 = [(WFCloudKitFolder *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_name, name);
    v14->_icon = icon;
    v14->_encryptedSchemaVersion = version;
    v15 = v14;
  }

  return v14;
}

@end