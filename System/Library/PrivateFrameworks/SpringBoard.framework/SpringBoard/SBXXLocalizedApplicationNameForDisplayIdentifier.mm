@interface SBXXLocalizedApplicationNameForDisplayIdentifier
@end

@implementation SBXXLocalizedApplicationNameForDisplayIdentifier

void ___SBXXLocalizedApplicationNameForDisplayIdentifier_block_invoke(uint64_t a1)
{
  v7 = serverIconController();
  v2 = [v7 iconModel];
  v3 = [v2 bookmarkIconForWebClipIdentifier:*(a1 + 32)];
  v4 = [v3 displayNameForLocation:*MEMORY[0x277D666C8]];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end