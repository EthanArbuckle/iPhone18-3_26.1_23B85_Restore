@interface WFDatabaseLegacyFolderRecord
- (NSString)name;
- (WFDatabaseLegacyFolderRecord)initWithName:(id)name icon:(unsigned __int16)icon encryptedSchemaVersion:(int64_t)version cloudKitMetadata:(id)metadata;
@end

@implementation WFDatabaseLegacyFolderRecord

- (NSString)name
{
  sub_1CA3E978C();
  v2 = sub_1CA94C368();

  return v2;
}

- (WFDatabaseLegacyFolderRecord)initWithName:(id)name icon:(unsigned __int16)icon encryptedSchemaVersion:(int64_t)version cloudKitMetadata:(id)metadata
{
  v9 = sub_1CA94C3A8();
  v11 = v10;
  if (metadata)
  {
    metadataCopy = metadata;
    metadata = sub_1CA948C08();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  return sub_1CA3E9880(v9, v11, icon, version, metadata, v14);
}

@end