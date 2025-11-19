@interface NSCountedSet
@end

@implementation NSCountedSet

uint64_t __60__NSCountedSet_PSSGResourceRequestEntry__removeResourceKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resourceKey];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

uint64_t __69__NSCountedSet_PSSGResourceRequestEntry__filterMatchingResourceKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resourceKey];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __64__NSCountedSet_PSSGResourceRequestEntry__filterOutResourceKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resourceKey];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end