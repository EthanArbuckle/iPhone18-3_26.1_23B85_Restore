@interface TPSInclusivityValidation
- (TPSInclusivityValidation)initWithTargetValues:(id)values excludeValues:(id)excludeValues;
- (id)description;
@end

@implementation TPSInclusivityValidation

- (TPSInclusivityValidation)initWithTargetValues:(id)values excludeValues:(id)excludeValues
{
  valuesCopy = values;
  excludeValuesCopy = excludeValues;
  v12.receiver = self;
  v12.super_class = TPSInclusivityValidation;
  v9 = [(TPSInclusivityValidation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetValues, values);
    objc_storeStrong(&v10->_excludeValues, excludeValues);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  targetValues = [(TPSInclusivityValidation *)self targetValues];
  excludeValues = [(TPSInclusivityValidation *)self excludeValues];
  v8 = [v3 stringWithFormat:@"<%@: %p include = %@; exclude: %@>", v5, self, targetValues, excludeValues];;

  return v8;
}

@end