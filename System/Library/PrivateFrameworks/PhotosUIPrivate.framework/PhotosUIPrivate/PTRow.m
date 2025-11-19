@interface PTRow
@end

@implementation PTRow

void __64__PTRow_PhotosUI__pu_rowWithTitle_settingsProvider_isTransient___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v7 = v4(v3);
  v6 = [MEMORY[0x1E69DD258] px_viewControllerWithSettings:v7];
  [v6 pu_debugSetTransient:*(a1 + 40)];
  [v5 pushViewController:v6 animated:1];
}

void __62__PTRow_PhotosUI__pu_rowWithTitle_asynchronousOutputProducer___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DD258];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 px_viewControllerWithAsynchronousOutputProducer:v3];
  [v5 pu_debugSetTransient:1];
  [v4 pushViewController:v5 animated:1];
}

void __42__PTRow_PhotosUI__pu_rowWithTitle_output___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2);
  v4[2](v4, v5);
}

@end