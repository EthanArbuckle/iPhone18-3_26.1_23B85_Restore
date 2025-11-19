@interface UpgradeFlowSpecificationSampleForLevel
@end

@implementation UpgradeFlowSpecificationSampleForLevel

void ___UpgradeFlowSpecificationSampleForLevel_block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [_ICQUpgradeOfferPageSpecification upgradeOfferPageSpecificationSampleForLevel:*(a1 + 32)];
  v3 = [_ICQUpgradeCompletePageSpecification upgradeCompletePageSpecificationSampleForLevel:*(a1 + 32)];
  v8[0] = v2;
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [(_ICQFlowSpecification *)[_ICQUpgradeFlowSpecification alloc] initWithPages:v4];
  v6 = _UpgradeFlowSpecificationSampleForLevel_sUpgradeFlowSpecification;
  _UpgradeFlowSpecificationSampleForLevel_sUpgradeFlowSpecification = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end