@interface NSArray
@end

@implementation NSArray

void __57__NSArray_UserNotificationsCore__unc_map_usingLibrarian___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = (*(a1[6] + 16))(a1[6], a2, a1[5]);
  v5 = v3;
  if (v3)
  {
    [v2 addObject:v3];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [v2 addObject:v4];
  }
}

@end