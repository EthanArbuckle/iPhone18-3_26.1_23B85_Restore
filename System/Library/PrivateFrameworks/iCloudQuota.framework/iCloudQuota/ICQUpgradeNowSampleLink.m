@interface ICQUpgradeNowSampleLink
@end

@implementation ICQUpgradeNowSampleLink

void ___ICQUpgradeNowSampleLink_block_invoke()
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upgrade%CStorage%C>", 160, 160];
  v0 = [ICQLink linkWithText:v2 options:2 action:3 parameters:MEMORY[0x277CBEC10]];
  v1 = _ICQUpgradeNowSampleLink_sUpgradeNowSampleLink;
  _ICQUpgradeNowSampleLink_sUpgradeNowSampleLink = v0;
}

@end