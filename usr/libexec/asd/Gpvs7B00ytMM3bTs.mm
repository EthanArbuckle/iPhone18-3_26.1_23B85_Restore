@interface Gpvs7B00ytMM3bTs
- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)n Po0NnEfbQHpSgzj7:(id)sgzj7 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)b X5iUjoUzZPsj1b68:(int64_t)psj1b68;
@end

@implementation Gpvs7B00ytMM3bTs

- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)n Po0NnEfbQHpSgzj7:(id)sgzj7 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)b X5iUjoUzZPsj1b68:(int64_t)psj1b68
{
  nCopy = n;
  sgzj7Copy = sgzj7;
  v23.receiver = self;
  v23.super_class = Gpvs7B00ytMM3bTs;
  v12 = [(Gpvs7B00ytMM3bTs *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_create("smc", 0);
    v14 = [[PGiTJtLgUnKcxckL alloc] initWithdEyUJuqYjUufZYGN:nCopy];
    bindingsEvaluator = v12->_bindingsEvaluator;
    v12->_bindingsEvaluator = v14;

    v16 = [[Hc1u6WJuVM53BcQE alloc] initWithdEyUJuqYjUufZYGN:sgzj7Copy];
    kernelInfoEvaluator = v12->_kernelInfoEvaluator;
    v12->_kernelInfoEvaluator = v16;

    v18 = [[KII4PpQSDEXNXgDb alloc] initWithSmoothFunctions:b X5iUjoUzZPsj1b68:psj1b68 queue:v13];
    smoothFunctionEvaluator = v12->_smoothFunctionEvaluator;
    v12->_smoothFunctionEvaluator = v18;

    v20 = dispatch_workloop_create("evalpool");
    evaluationQueue = v12->_evaluationQueue;
    v12->_evaluationQueue = v20;
  }

  return v12;
}

@end