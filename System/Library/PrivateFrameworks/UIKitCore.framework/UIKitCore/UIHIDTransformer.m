@interface UIHIDTransformer
@end

@implementation UIHIDTransformer

void __37___UIHIDTransformer_initWithRunLoop___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"contextId"];

  if (v4)
  {
    v5 = *MEMORY[0x1E695E8D0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37___UIHIDTransformer_initWithRunLoop___block_invoke_2;
    v7[3] = &unk_1E70F35B8;
    v6 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = v4;
    CFRunLoopPerformBlock(v6, v5, v7);
  }
}

@end