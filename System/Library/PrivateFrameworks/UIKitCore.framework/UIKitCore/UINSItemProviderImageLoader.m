@interface UINSItemProviderImageLoader
@end

@implementation UINSItemProviderImageLoader

void __50___UINSItemProviderImageLoader__really_loadImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(a1 + 32) _setProgress:0];
  if (v10)
  {
    v6 = [UIImage imageWithData:v10];
    v7 = 16;
  }

  else
  {
    v6 = [v5 copy];
    v7 = 24;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + v7);
  *(v8 + v7) = v6;

  (*(*(a1 + 40) + 16))();
}

@end