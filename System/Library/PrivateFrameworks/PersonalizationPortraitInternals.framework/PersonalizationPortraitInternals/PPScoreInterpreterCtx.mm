@interface PPScoreInterpreterCtx
- (id)initWithScoreInputs:(void *)a3 previousSubscores:(uint64_t)a4 scalarSubscoreCount:(uint64_t)a5 arraySubscoreCount:(uint64_t)a6 objectSubscoreCount:;
@end

@implementation PPScoreInterpreterCtx

- (id)initWithScoreInputs:(void *)a3 previousSubscores:(uint64_t)a4 scalarSubscoreCount:(uint64_t)a5 arraySubscoreCount:(uint64_t)a6 objectSubscoreCount:
{
  v12 = a2;
  v13 = a3;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = PPScoreInterpreterCtx;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      v15 = [[PPScoreDict alloc] initWithScalarValueCount:a4 arrayValueCount:a5 objectCount:a6];
      v16 = a1[4];
      a1[4] = v15;

      operator new();
    }
  }

  return a1;
}

@end