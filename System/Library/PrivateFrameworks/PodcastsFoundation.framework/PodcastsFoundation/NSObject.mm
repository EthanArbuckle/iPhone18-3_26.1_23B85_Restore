@interface NSObject
@end

@implementation NSObject

id __77__NSObject_NSKeyValueCoding_MTAdditions__mt_dictionaryWithValuesForKeyPaths___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) valueForKeyPath:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

@end