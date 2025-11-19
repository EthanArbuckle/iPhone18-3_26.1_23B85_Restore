@interface WFDatabaseLegacyOrderingRecord
- (NSArray)folders;
- (NSArray)shortcuts;
- (WFDatabaseLegacyOrderingRecord)initWithShortcuts:(id)a3 folders:(id)a4 cloudKitMetadata:(id)a5;
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

- (WFDatabaseLegacyOrderingRecord)initWithShortcuts:(id)a3 folders:(id)a4 cloudKitMetadata:(id)a5
{
  v7 = sub_1CA94C658();
  if (a4)
  {
    a4 = sub_1CA94C658();
  }

  if (a5)
  {
    v8 = a5;
    a5 = sub_1CA948C08();
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  return sub_1CA3E9BAC(v7, a4, a5, v10);
}

@end