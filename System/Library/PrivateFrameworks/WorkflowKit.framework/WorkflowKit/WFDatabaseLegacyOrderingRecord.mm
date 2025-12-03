@interface WFDatabaseLegacyOrderingRecord
- (NSArray)folders;
- (NSArray)shortcuts;
- (WFDatabaseLegacyOrderingRecord)initWithShortcuts:(id)shortcuts folders:(id)folders cloudKitMetadata:(id)metadata;
@end

@implementation WFDatabaseLegacyOrderingRecord

- (NSArray)shortcuts
{
  sub_1CA3E9A74();
  v2 = sub_1CA94C648();

  return v2;
}

- (NSArray)folders
{
  if (sub_1CA3E9AE0())
  {
    v2 = sub_1CA94C648();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (WFDatabaseLegacyOrderingRecord)initWithShortcuts:(id)shortcuts folders:(id)folders cloudKitMetadata:(id)metadata
{
  v7 = sub_1CA94C658();
  if (folders)
  {
    folders = sub_1CA94C658();
  }

  if (metadata)
  {
    metadataCopy = metadata;
    metadata = sub_1CA948C08();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  return sub_1CA3E9BAC(v7, folders, metadata, v10);
}

@end