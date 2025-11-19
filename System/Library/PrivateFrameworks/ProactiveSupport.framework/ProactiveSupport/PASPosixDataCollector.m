@interface PASPosixDataCollector
@end

@implementation PASPosixDataCollector

void __36___PASPosixDataCollector_handleData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    v3 = v8;
    v4 = *(*(a1 + 32) + 8);
  }

  [v4 addObject:v3];
  *(*(a1 + 32) + 16) += [v8 length];
}

@end