@interface WFDatabaseLegacyFolderRecord
- (NSString)name;
- (WFDatabaseLegacyFolderRecord)initWithName:(id)a3 icon:(unsigned __int16)a4 encryptedSchemaVersion:(int64_t)a5 cloudKitMetadata:(id)a6;
@end

@implementation WFDatabaseLegacyFolderRecord

- (NSString)name
{
  sub_1CA3E978C();
  v2 = sub_1CA94C368();

  return v2;
}

- (WFDatabaseLegacyFolderRecord)initWithName:(id)a3 icon:(unsigned __int16)a4 encryptedSchemaVersion:(int64_t)a5 cloudKitMetadata:(id)a6
{
  v9 = sub_1CA94C3A8();
  v11 = v10;
  if (a6)
  {
    v12 = a6;
    a6 = sub_1CA948C08();
    v14 = v13;
  }

  else
  {
    v14 = 0xF000000000000000;
  }

  return sub_1CA3E9880(v9, v11, a4, a5, a6, v14);
}

@end