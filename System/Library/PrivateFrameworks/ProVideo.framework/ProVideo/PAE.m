@interface PAE
@end

@implementation PAE

uint64_t __26__PAE_HLG_OETF_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  result = [v0 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"AutoColorProcessingSupport", 0}];
  [PAE_HLG_OETF properties]::sPropertiesDict = result;
  return result;
}

uint64_t __34__PAE_HLG_Inverse_OETF_properties__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  result = [v0 initWithObjectsAndKeys:{MEMORY[0x277CBEC38], @"PixelTransformSupport", v1, @"PixelIndependent", v2, @"PositionIndependent", v3, @"MayRemapTime", v4, @"SupportsLargeRenderScale", v5, @"SupportsHeliumRendering", v6, @"SDRWorkingSpace", v7, @"HDRWorkingSpace", v8, @"AutoColorProcessingSupport", 0}];
  [PAE_HLG_Inverse_OETF properties]::sPropertiesDict = result;
  return result;
}

@end