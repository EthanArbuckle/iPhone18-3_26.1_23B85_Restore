@interface NSObject(Debounce)
- (uint64_t)nph_debounce:()Debounce delay:;
@end

@implementation NSObject(Debounce)

- (uint64_t)nph_debounce:()Debounce delay:
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a4 object:0];

  return [self performSelector:a4 withObject:0 afterDelay:a2];
}

@end