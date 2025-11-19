@interface UIViewController
@end

@implementation UIViewController

IMP __41__UIViewController_Metrics___rewriteOnce__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__UIViewController_Metrics___rewriteOnce__block_invoke_2;
  v6[3] = &__block_descriptor_48_e29_v20__0__UIViewController_8B16l;
  v2 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v2;
  v3 = _Block_copy(v6);
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

IMP __41__UIViewController_Metrics___rewriteOnce__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__UIViewController_Metrics___rewriteOnce__block_invoke_4;
  v6[3] = &__block_descriptor_48_e29_v20__0__UIViewController_8B16l;
  v2 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v2;
  v3 = _Block_copy(v6);
  v4 = imp_implementationWithBlock(v3);

  return v4;
}

void __41__UIViewController_Metrics___rewriteOnce__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  [v5 timeIntervalSinceReferenceDate];
  [v6 setViewWillAppearTime:?];
  (*(a1 + 32))(v6, *(a1 + 40), a3);
}

void __41__UIViewController_Metrics___rewriteOnce__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 recordViewDidAppearEvent];
  (*(a1 + 32))(v5, *(a1 + 40), a3);
}

@end