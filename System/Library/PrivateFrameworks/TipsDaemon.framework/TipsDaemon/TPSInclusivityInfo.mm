@interface TPSInclusivityInfo
- (TPSInclusivityInfo)initWithTargetValues:(id)a3 excludeValues:(id)a4;
- (id)debugDescription;
@end

@implementation TPSInclusivityInfo

- (TPSInclusivityInfo)initWithTargetValues:(id)a3 excludeValues:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TPSInclusivityInfo;
  v9 = [(TPSInclusivityInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetValues, a3);
    objc_storeStrong(&v10->_excludeValues, a4);
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

  v6 = [(TPSInclusivityInfo *)self targetValues];
  [v5 appendFormat:@" %@ = %@", @"include", v6];

  v7 = [(TPSInclusivityInfo *)self excludeValues];
  [v5 appendFormat:@"; %@ = %@", @"exclude", v7];

  return v5;
}

@end