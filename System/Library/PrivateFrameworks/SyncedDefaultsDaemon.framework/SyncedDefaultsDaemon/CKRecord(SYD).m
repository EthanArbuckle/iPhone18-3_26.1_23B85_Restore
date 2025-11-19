@interface CKRecord(SYD)
- (id)syd_shortDescription;
@end

@implementation CKRecord(SYD)

- (id)syd_shortDescription
{
  if (os_variant_has_internal_content())
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [a1 modifiedByDevice];
    v4 = [v2 stringWithFormat:@" modifiedBy='%@'", v3];
  }

  else
  {
    v4 = &stru_287CEF040;
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 recordType];
  v7 = [a1 recordID];
  v8 = [v7 recordName];
  v9 = [a1 recordID];
  v10 = [v9 zoneID];
  v11 = [v10 zoneName];
  v12 = [a1 recordChangeTag];
  v13 = [v5 stringWithFormat:@"<CKRecord type=%@ recordName=%@ zone=%@ etag=%@%@>", v6, v8, v11, v12, v4];

  return v13;
}

@end