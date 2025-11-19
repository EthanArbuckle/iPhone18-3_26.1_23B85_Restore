@interface UILoadingHandlerImageLoader
@end

@implementation UILoadingHandlerImageLoader

void __50___UILoadingHandlerImageLoader__really_loadImage___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50___UILoadingHandlerImageLoader__really_loadImage___block_invoke_2;
    v9[3] = &unk_1E70F98F0;
    v9[4] = v3;
    v10 = v2;
    (*(v4 + 16))(v4, v9);
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
  }
}

void __50___UILoadingHandlerImageLoader__really_loadImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  objc_storeStrong((*(a1 + 32) + 24), v8);
  (*(*(a1 + 40) + 16))();
}

@end