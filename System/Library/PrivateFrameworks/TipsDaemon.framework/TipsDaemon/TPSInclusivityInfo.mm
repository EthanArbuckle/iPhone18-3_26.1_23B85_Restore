@interface TPSInclusivityInfo
- (TPSInclusivityInfo)initWithTargetValues:(id)values excludeValues:(id)excludeValues;
- (id)debugDescription;
@end

@implementation TPSInclusivityInfo

- (TPSInclusivityInfo)initWithTargetValues:(id)values excludeValues:(id)excludeValues
{
  valuesCopy = values;
  excludeValuesCopy = excludeValues;
  v12.receiver = self;
  v12.super_class = TPSInclusivityInfo;
  v9 = [(TPSInclusivityInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetValues, values);
    objc_storeStrong(&v10->_excludeValues, excludeValues);
  }

  return v10;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = TPSInclusivityInfo;
  v4 = [(TPSInclusivityInfo *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  targetValues = [(TPSInclusivityInfo *)self targetValues];
  [v5 appendFormat:@" %@ = %@", @"include", targetValues];

  excludeValues = [(TPSInclusivityInfo *)self excludeValues];
  [v5 appendFormat:@"; %@ = %@", @"exclude", excludeValues];

  return v5;
}

@end