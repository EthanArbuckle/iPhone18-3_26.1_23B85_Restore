@interface ButtonSpecificationSampleForAlmostFullLevel
@end

@implementation ButtonSpecificationSampleForAlmostFullLevel

void ___ButtonSpecificationSampleForAlmostFullLevel_block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v8[0] = @"com.apple.mobilemail";
  v1 = MEMORY[0x277CBEC10];
  v2 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:MEMORY[0x277CBEC10]];
  v9[0] = v2;
  v8[1] = @"com.apple.iCloudDriveApp";
  v3 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:v1];
  v9[1] = v3;
  v8[2] = @"com.apple.icloud.quota.ICQ-Adopt";
  v4 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:v1];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v0 setLinkForBundleIdentifier:v5];

  v6 = _ButtonSpecificationSampleForAlmostFullLevel_sButtonSpecification;
  _ButtonSpecificationSampleForAlmostFullLevel_sButtonSpecification = v0;

  v7 = *MEMORY[0x277D85DE8];
}

@end