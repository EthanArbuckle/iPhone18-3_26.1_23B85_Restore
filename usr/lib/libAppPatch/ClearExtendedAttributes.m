@interface ClearExtendedAttributes
@end

@implementation ClearExtendedAttributes

BOOL ___ClearExtendedAttributes_block_invoke(uint64_t a1, int fd, char *name)
{
  v5 = fremovexattr(fd, name, 0);
  if (v5)
  {
    v6 = *__error();
    v7 = *MEMORY[0x29EDB9EF8];
    v8 = v6;
    v14 = *(a1 + 40);
    strerror(v6);
    v10 = _CreateError("_ClearExtendedAttributes_block_invoke", 2057, v7, v8, 0, 0, @"Failed to remove attribute %s from %s: %s", v9, name);
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return v5 == 0;
}

@end