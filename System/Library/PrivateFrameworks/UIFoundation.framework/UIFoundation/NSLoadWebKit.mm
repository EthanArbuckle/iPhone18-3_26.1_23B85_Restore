@interface NSLoadWebKit
@end

@implementation NSLoadWebKit

void ____NSLoadWebKit_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AF00] isMainThread];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[2];
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E96A0];

    dispatch_sync(v6, v3);
  }
}

@end