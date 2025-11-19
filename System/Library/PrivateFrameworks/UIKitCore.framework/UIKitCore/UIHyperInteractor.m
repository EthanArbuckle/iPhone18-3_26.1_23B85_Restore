@interface UIHyperInteractor
@end

@implementation UIHyperInteractor

void __40___UIHyperInteractor__commitTranslation__block_invoke(uint64_t a1, double *__A)
{
  vDSP_vaddD(__A, 1, *(*(a1 + 32) + 16), 1, __A, 1, *(*(a1 + 32) + 200));
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6 = *(v4 + 200);

  vDSP_vaddD(__A, 1, v5, 1, __A, 1, v6);
}

uint64_t __53___UIHyperInteractor__interactionEndedMutatingState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) _commitTranslation];
  v3 = *(a1 + 32);

  return [v3 _setInteractive:0];
}

@end