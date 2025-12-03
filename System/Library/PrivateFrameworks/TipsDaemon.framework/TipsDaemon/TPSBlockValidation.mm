@interface TPSBlockValidation
+ (id)blockValidationWithBlock:(id)block;
- (TPSBlockValidation)initWithValidationBlock:(id)block;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSBlockValidation

+ (id)blockValidationWithBlock:(id)block
{
  blockCopy = block;
  v4 = [objc_alloc(objc_opt_class()) initWithValidationBlock:blockCopy];

  return v4;
}

- (TPSBlockValidation)initWithValidationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = TPSBlockValidation;
  v5 = [(TPSBlockValidation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(blockCopy);
    validationBlock = v5->_validationBlock;
    v5->_validationBlock = v6;
  }

  return v5;
}

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  validationBlock = [(TPSBlockValidation *)self validationBlock];

  if (validationBlock)
  {
    validationBlock2 = [(TPSBlockValidation *)self validationBlock];
    (validationBlock2)[2](validationBlock2, completionCopy);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end