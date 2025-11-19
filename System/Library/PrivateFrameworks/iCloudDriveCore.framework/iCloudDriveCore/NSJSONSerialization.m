@interface NSJSONSerialization
@end

@implementation NSJSONSerialization

uint64_t __51__NSJSONSerialization_BRAdditions___jsonifyObject___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _jsonifyObject__dateFormatter;
  _jsonifyObject__dateFormatter = v0;

  v2 = _jsonifyObject__dateFormatter;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
}

void __51__NSJSONSerialization_BRAdditions___jsonifyObject___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _jsonifyObject:a3];
  [v4 setObject:v7 forKey:v6];
}

void __51__NSJSONSerialization_BRAdditions___jsonifyObject___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _jsonifyObject:a2];
  [v2 addObject:v3];
}

@end