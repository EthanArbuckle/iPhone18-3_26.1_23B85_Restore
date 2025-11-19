@interface PCSServiceItemsGetAllManateeServices
@end

@implementation PCSServiceItemsGetAllManateeServices

uint64_t ___PCSServiceItemsGetAllManateeServices_block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if (PCSServiceItemTypeIsManatee(v3))
    {
      if (([a1[4] containsObject:v5] & 1) == 0 && (objc_msgSend(a1[5], "containsObject:", v5) & 1) == 0)
      {
        [a1[6] addObject:v5];
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

@end