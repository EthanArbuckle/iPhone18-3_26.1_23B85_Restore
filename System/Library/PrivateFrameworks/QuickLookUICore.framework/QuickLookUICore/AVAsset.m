@interface AVAsset
@end

@implementation AVAsset

void __64__AVAsset__QLUtilities__assetIsAutoloopMedia_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CE6520];
  v3 = [*(a1 + 32) metadataForFormat:*MEMORY[0x277CE5F48]];
  v4 = [v2 metadataItemsFromArray:v3 withKey:@"LOOP" keySpace:*MEMORY[0x277CE5FB0]];

  if ([v4 count])
  {
    v8 = 0;
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 dataValue];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v8 length:4];
    [v6 isEqualToData:v7];
  }

  (*(*(a1 + 40) + 16))();
}

@end