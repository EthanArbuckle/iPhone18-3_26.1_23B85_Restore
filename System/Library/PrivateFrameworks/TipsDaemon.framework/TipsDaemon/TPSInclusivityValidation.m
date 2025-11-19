@interface TPSInclusivityValidation
- (TPSInclusivityValidation)initWithTargetValues:(id)a3 excludeValues:(id)a4;
- (id)description;
@end

@implementation TPSInclusivityValidation

- (TPSInclusivityValidation)initWithTargetValues:(id)a3 excludeValues:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPSInclusivityValidation;
  v9 = [(TPSInclusivityValidation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetValues, a3);
    objc_storeStrong(&v10->_excludeValues, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TPSInclusivityValidation *)self targetValues];
  v7 = [(TPSInclusivityValidation *)self excludeValues];
  v8 = [v3 stringWithFormat:@"<%@: %p include = %@; exclude: %@>", v5, self, v6, v7];;

  return v8;
}

@end