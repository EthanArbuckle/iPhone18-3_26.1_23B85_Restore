@interface CKRecordZoneID(CKRecordZoneID)
+ (id)brc_containerMetadataZoneID;
+ (id)brc_sideCarZoneID;
+ (id)brc_zoneHealthZoneID;
@end

@implementation CKRecordZoneID(CKRecordZoneID)

+ (id)brc_containerMetadataZoneID
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:*MEMORY[0x277CFAD58] ownerName:*MEMORY[0x277CBBF28]];

  return v1;
}

+ (id)brc_zoneHealthZoneID
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:*MEMORY[0x277CFADD0] ownerName:*MEMORY[0x277CBBF28]];

  return v1;
}

+ (id)brc_sideCarZoneID
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  v1 = [v0 initWithZoneName:*MEMORY[0x277CFB070] ownerName:*MEMORY[0x277CBBF28]];

  return v1;
}

@end