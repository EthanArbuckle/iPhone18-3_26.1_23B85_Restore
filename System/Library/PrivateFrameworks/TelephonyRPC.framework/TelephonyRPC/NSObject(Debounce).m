@interface NSObject(Debounce)
- (uint64_t)nph_debounce:()Debounce delay:;
@end

@implementation NSObject(Debounce)

- (uint64_t)nph_debounce:()Debounce delay:
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:a1 selector:a4 object:0];

  return [a1 performSelector:a4 withObject:0 afterDelay:a2];
}

@end