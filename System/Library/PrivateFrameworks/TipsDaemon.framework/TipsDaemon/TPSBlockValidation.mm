@interface TPSBlockValidation
+ (id)blockValidationWithBlock:(id)a3;
- (TPSBlockValidation)initWithValidationBlock:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSBlockValidation

+ (id)blockValidationWithBlock:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithValidationBlock:v3];

  return v4;
}

- (TPSBlockValidation)initWithValidationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSBlockValidation;
  v5 = [(TPSBlockValidation *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    validationBlock = v5->_validationBlock;
    v5->_validationBlock = v6;
  }

  return v5;
}

- (void)validateWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(TPSBlockValidation *)self validationBlock];

  if (v4)
  {
    v5 = [(TPSBlockValidation *)self validationBlock];
    (v5)[2](v5, v6);
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

@end