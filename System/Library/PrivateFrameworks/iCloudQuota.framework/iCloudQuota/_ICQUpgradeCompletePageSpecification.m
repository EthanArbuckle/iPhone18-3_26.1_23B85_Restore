@interface _ICQUpgradeCompletePageSpecification
+ (id)upgradeCompletePageSpecificationSampleForLevel:(int64_t)a3;
@end

@implementation _ICQUpgradeCompletePageSpecification

+ (id)upgradeCompletePageSpecificationSampleForLevel:(int64_t)a3
{
  v3 = objc_opt_new();
  [v3 setTitle:@"Storage Upgraded"];
  [v3 setMessage:{@"You now have 50 GB of total storage.\niCloud will continue to backup your iPhone and keep your photos, documents, contacts and more up to date across all your devices.\n[ENG: LOCAL SAMPLE UI]"}];
  v4 = [ICQLink linkWithText:@"Done" action:5 parameters:MEMORY[0x277CBEC10]];
  [v3 setDoneLink:v4];

  return v3;
}

@end