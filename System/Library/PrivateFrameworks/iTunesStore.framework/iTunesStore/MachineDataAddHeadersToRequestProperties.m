@interface MachineDataAddHeadersToRequestProperties
@end

@implementation MachineDataAddHeadersToRequestProperties

void __MachineDataAddHeadersToRequestProperties_V1_5_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    [*(a1 + 32) setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A140]];
  }

  if (v5)
  {
    [*(a1 + 32) setValue:v5 forHTTPHeaderField:*MEMORY[0x277D6A138]];
  }
}

@end