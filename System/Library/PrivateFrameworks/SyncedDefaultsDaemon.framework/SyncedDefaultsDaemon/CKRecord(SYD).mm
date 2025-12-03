@interface CKRecord(SYD)
- (id)syd_shortDescription;
@end

@implementation CKRecord(SYD)

- (id)syd_shortDescription
{
  if (os_variant_has_internal_content())
  {
    v2 = MEMORY[0x277CCACA8];
    modifiedByDevice = [self modifiedByDevice];
    v4 = [v2 stringWithFormat:@" modifiedBy='%@'", modifiedByDevice];
  }

  else
  {
    v4 = &stru_287CEF040;
  }

  v5 = MEMORY[0x277CCACA8];
  recordType = [self recordType];
  recordID = [self recordID];
  recordName = [recordID recordName];
  recordID2 = [self recordID];
  zoneID = [recordID2 zoneID];
  zoneName = [zoneID zoneName];
  recordChangeTag = [self recordChangeTag];
  v13 = [v5 stringWithFormat:@"<CKRecord type=%@ recordName=%@ zone=%@ etag=%@%@>", recordType, recordName, zoneName, recordChangeTag, v4];

  return v13;
}

@end