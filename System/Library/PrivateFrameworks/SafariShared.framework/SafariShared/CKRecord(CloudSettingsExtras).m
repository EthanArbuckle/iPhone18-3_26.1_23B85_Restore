@interface CKRecord(CloudSettingsExtras)
- (id)safari_encodedRecordData;
- (uint64_t)safari_isCloudBackgroundImageRecord;
- (uint64_t)safari_isCloudPerSiteSettingRecord;
- (uint64_t)safari_isCloudSettingRecord;
@end

@implementation CKRecord(CloudSettingsExtras)

- (uint64_t)safari_isCloudPerSiteSettingRecord
{
  v1 = [a1 recordType];
  v2 = [v1 isEqualToString:@"PerSiteSetting"];

  return v2;
}

- (uint64_t)safari_isCloudSettingRecord
{
  v1 = [a1 recordType];
  v2 = [v1 isEqualToString:@"Setting"];

  return v2;
}

- (uint64_t)safari_isCloudBackgroundImageRecord
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  v3 = [v2 isEqualToString:@"StartPageBackgroundImage"];

  return v3;
}

- (id)safari_encodedRecordData
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [a1 encodeWithCoder:v2];
  v3 = [v2 encodedData];

  return v3;
}

@end