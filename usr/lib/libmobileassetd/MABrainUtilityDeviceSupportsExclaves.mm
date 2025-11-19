@interface MABrainUtilityDeviceSupportsExclaves
@end

@implementation MABrainUtilityDeviceSupportsExclaves

void __MABrainUtilityDeviceSupportsExclaves_block_invoke(id a1)
{
  if (MGIsQuestionValid())
  {
    MABrainUtilityDeviceSupportsExclaves_answer = MGGetBoolAnswer();
  }
}

@end