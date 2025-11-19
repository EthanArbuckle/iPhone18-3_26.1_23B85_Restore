@interface TVRUIAvatarGenerator
@end

@implementation TVRUIAvatarGenerator

void __74___TVRUIAvatarGenerator_generateAvatarForText_size_identifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___TVRUIAvatarGenerator_generateAvatarForText_size_identifier_completion___block_invoke_2;
  block[3] = &unk_279D886F0;
  v8 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end