@interface NSArray
@end

@implementation NSArray

void __52__NSArray_TextInputAdditions___readingStringWithin___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 reading];
  [v2 appendString:v3];
}

void __52__NSArray_TextInputAdditions___surfaceStringWithin___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 surface];
  [v2 appendString:v3];
}

@end