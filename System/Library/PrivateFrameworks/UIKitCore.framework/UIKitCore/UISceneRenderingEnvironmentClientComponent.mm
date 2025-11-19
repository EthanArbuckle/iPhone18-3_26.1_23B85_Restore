@interface UISceneRenderingEnvironmentClientComponent
@end

@implementation UISceneRenderingEnvironmentClientComponent

void __75___UISceneRenderingEnvironmentClientComponent_setPrefersContentProtection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4 != [v3 prefersContentProtection])
  {
    [v5 setPrefersContentProtection:*(a1 + 32)];
  }
}

@end