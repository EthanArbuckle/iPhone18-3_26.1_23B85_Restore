@interface NumericalValuesForKeyPath
@end

@implementation NumericalValuesForKeyPath

void ___NumericalValuesForKeyPath_block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69BE408] distinctValuesForKeyPath:a1[4] inManagedObjectContext:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___NumericalValuesForKeyPath_block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 doubleValue];
  if (v3 > 0.0)
  {
    v4 = [*(a1 + 32) stringFromNumber:v6];
    v5 = [[PXLabeledValue alloc] initWithValue:v6 localizedLabel:v4];
    [*(a1 + 40) addObject:v5];
  }
}

@end