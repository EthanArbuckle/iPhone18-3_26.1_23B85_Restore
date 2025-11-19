@interface Gpvs7B00ytMM3bTs
- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)a3 Po0NnEfbQHpSgzj7:(id)a4 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)a5 X5iUjoUzZPsj1b68:(int64_t)a6;
@end

@implementation Gpvs7B00ytMM3bTs

- (Gpvs7B00ytMM3bTs)initWithdEyUJuqYjUufZYGN:(id)a3 Po0NnEfbQHpSgzj7:(id)a4 jHoy3L8RogTTbjjB:(_yo6ptGgiZw8VbWk1 *)a5 X5iUjoUzZPsj1b68:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v23.receiver = self;
  v23.super_class = Gpvs7B00ytMM3bTs;
  v12 = [(Gpvs7B00ytMM3bTs *)&v23 init];
  if (v12)
  {
    v13 = dispatch_queue_create("smc", 0);
    v14 = [[PGiTJtLgUnKcxckL alloc] initWithdEyUJuqYjUufZYGN:v10];
    bindingsEvaluator = v12->_bindingsEvaluator;
    v12->_bindingsEvaluator = v14;

    v16 = [[Hc1u6WJuVM53BcQE alloc] initWithdEyUJuqYjUufZYGN:v11];
    kernelInfoEvaluator = v12->_kernelInfoEvaluator;
    v12->_kernelInfoEvaluator = v16;

    v18 = [[KII4PpQSDEXNXgDb alloc] initWithSmoothFunctions:a5 X5iUjoUzZPsj1b68:a6 queue:v13];
    smoothFunctionEvaluator = v12->_smoothFunctionEvaluator;
    v12->_smoothFunctionEvaluator = v18;

    v20 = dispatch_workloop_create("evalpool");
    evaluationQueue = v12->_evaluationQueue;
    v12->_evaluationQueue = v20;
  }

  return v12;
}

@end