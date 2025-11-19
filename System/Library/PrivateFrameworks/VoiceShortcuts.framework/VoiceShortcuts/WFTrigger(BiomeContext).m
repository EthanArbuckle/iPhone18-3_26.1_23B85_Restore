@interface WFTrigger(BiomeContext)
- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:;
@end

@implementation WFTrigger(BiomeContext)

- (void)shouldFireInResponseToEvent:()BiomeContext triggerIdentifier:completion:
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = a5;
  [v5 raise:v6 format:@"-[WFTrigger shouldFireInResponseToEvent:] must be overridden"];
  v7[2](v7, 0);
}

@end