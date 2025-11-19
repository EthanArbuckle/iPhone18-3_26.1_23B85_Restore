@interface UIStickerItemProviderWithMetadata
@end

@implementation UIStickerItemProviderWithMetadata

uint64_t ___UIStickerItemProviderWithMetadata_block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = UIImagePNGRepresentation(v3);
  (a2)[2](v4, v5, 0);

  return 0;
}

uint64_t ___UIStickerItemProviderWithMetadata_block_invoke_3(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 data];
  (a2)[2](v4, v5, 0);

  return 0;
}

uint64_t ___UIStickerItemProviderWithMetadata_block_invoke_4(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a2;
  v5 = [v3 data];
  (a2)[2](v4, v5, 0);

  return 0;
}

@end