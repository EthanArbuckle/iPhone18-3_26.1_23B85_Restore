@interface PPScoreInterpreterCtx
- (id)initWithScoreInputs:(void *)inputs previousSubscores:(uint64_t)subscores scalarSubscoreCount:(uint64_t)count arraySubscoreCount:(uint64_t)subscoreCount objectSubscoreCount:;
@end

@implementation PPScoreInterpreterCtx

- (id)initWithScoreInputs:(void *)inputs previousSubscores:(uint64_t)subscores scalarSubscoreCount:(uint64_t)count arraySubscoreCount:(uint64_t)subscoreCount objectSubscoreCount:
{
  v12 = a2;
  inputsCopy = inputs;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = PPScoreInterpreterCtx;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 2, a2);
      objc_storeStrong(self + 3, inputs);
      v15 = [[PPScoreDict alloc] initWithScalarValueCount:subscores arrayValueCount:count objectCount:subscoreCount];
      v16 = self[4];
      self[4] = v15;

      operator new();
    }
  }

  return self;
}

@end