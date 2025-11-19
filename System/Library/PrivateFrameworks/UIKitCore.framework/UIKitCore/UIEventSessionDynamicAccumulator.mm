@interface UIEventSessionDynamicAccumulator
@end

@implementation UIEventSessionDynamicAccumulator

void __64___UIEventSessionDynamicAccumulator_performIncreaseWithActions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 typeEncoding];
  [v5 appendString:v7];

  v8 = *(a1 + 40);
  v10 = [v6 metadata];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ActionData%lu", objc_msgSend(*(a1 + 48), "count") + ~a3];
  [v8 setObject:v10 forKey:v9];
}

@end