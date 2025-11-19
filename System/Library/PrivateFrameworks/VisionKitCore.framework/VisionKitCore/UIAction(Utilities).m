@interface UIAction(Utilities)
+ (id)vk_itemWithTitle:()Utilities subtitle:;
@end

@implementation UIAction(Utilities)

+ (id)vk_itemWithTitle:()Utilities subtitle:
{
  v5 = &stru_1F2C04538;
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = a4;
  v8 = [MEMORY[0x1E69DC628] actionWithTitle:v6 image:0 identifier:0 handler:&__block_literal_global_20];

  [v8 setDiscoverabilityTitle:v7];

  return v8;
}

@end