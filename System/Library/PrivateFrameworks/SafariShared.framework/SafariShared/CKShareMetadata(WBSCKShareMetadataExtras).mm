@interface CKShareMetadata(WBSCKShareMetadataExtras)
- (uint64_t)safari_supportsSharedTabGroups;
@end

@implementation CKShareMetadata(WBSCKShareMetadataExtras)

- (uint64_t)safari_supportsSharedTabGroups
{
  share = [self share];
  recordID = [share recordID];
  zoneID = [recordID zoneID];
  safari_isTabGroupSecondaryRecordZoneID = [zoneID safari_isTabGroupSecondaryRecordZoneID];

  return safari_isTabGroupSecondaryRecordZoneID;
}

@end