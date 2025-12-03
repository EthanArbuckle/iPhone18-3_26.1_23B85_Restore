@interface CKRecord(CloudSettingsExtras)
- (id)safari_encodedRecordData;
- (uint64_t)safari_isCloudBackgroundImageRecord;
- (uint64_t)safari_isCloudPerSiteSettingRecord;
- (uint64_t)safari_isCloudSettingRecord;
@end

@implementation CKRecord(CloudSettingsExtras)

- (uint64_t)safari_isCloudPerSiteSettingRecord
{
  recordType = [self recordType];
  v2 = [recordType isEqualToString:@"PerSiteSetting"];

  return v2;
}

- (uint64_t)safari_isCloudSettingRecord
{
  recordType = [self recordType];
  v2 = [recordType isEqualToString:@"Setting"];

  return v2;
}

- (uint64_t)safari_isCloudBackgroundImageRecord
{
  recordID = [self recordID];
  recordName = [recordID recordName];
  v3 = [recordName isEqualToString:@"StartPageBackgroundImage"];

  return v3;
}

- (id)safari_encodedRecordData
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [self encodeWithCoder:v2];
  encodedData = [v2 encodedData];

  return encodedData;
}

@end