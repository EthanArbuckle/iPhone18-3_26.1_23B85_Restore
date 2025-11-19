@interface PKVirtualCard
@end

@implementation PKVirtualCard

void __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_2;
    v10[3] = &unk_1E8017AF0;
    v5 = &v11;
    v6 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v6;
    [v4 snapshotWithPass:a2 size:4087 suppressedContent:v10 completion:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_4;
    v8[3] = &unk_1E8010E20;
    v5 = &v9;
    v7 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_3;
  block[3] = &unk_1E8014918;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 48);

    v2(v3);
  }

  else
  {
    v4 = [*(a1 + 40) _genericCardIcon];
    (*(v1 + 16))(v1, v4);
  }
}

void __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _genericCardIcon];
  (*(v1 + 16))(v1, v2);
}

@end