@interface StringValuesForKeyPath
@end

@implementation StringValuesForKeyPath

void ___StringValuesForKeyPath_block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69BE408] distinctValuesForKeyPath:a1[4] inManagedObjectContext:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end