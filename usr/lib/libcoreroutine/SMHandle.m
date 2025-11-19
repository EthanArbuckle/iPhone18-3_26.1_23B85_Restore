@interface SMHandle
@end

@implementation SMHandle

void __58__SMHandle_RTCoreDataTransformable__createWithSMHandleMO___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) secondaryHandles];
  v3 = [v2 array];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x277D4AAE8]);
  v11 = [*(a1 + 32) primaryHandle];
  v8 = [v7 initWithPrimaryHandle:v11 secondaryHandles:v6];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end