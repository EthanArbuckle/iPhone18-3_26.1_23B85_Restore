@interface SXSpecVersionConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
- (SXSpecVersionConditionValidator)initWithSpecVersion:(id)version;
@end

@implementation SXSpecVersionConditionValidator

- (SXSpecVersionConditionValidator)initWithSpecVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = SXSpecVersionConditionValidator;
  v5 = [(SXSpecVersionConditionValidator *)&v9 init];
  if (v5)
  {
    v6 = [versionCopy copy];
    specVersion = v5->_specVersion;
    v5->_specVersion = v6;
  }

  return v5;
}

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  minSpecVersion = [conditionCopy minSpecVersion];
  maxSpecVersion = [conditionCopy maxSpecVersion];

  if (minSpecVersion && ([(SXSpecVersionConditionValidator *)self specVersion], v8 = objc_claimAutoreleasedReturnValue(), v9 = SXSpecVersionCompare(minSpecVersion, v8), v8, v9 == 1))
  {
    v10 = 0;
  }

  else if (maxSpecVersion)
  {
    specVersion = [(SXSpecVersionConditionValidator *)self specVersion];
    v10 = SXSpecVersionCompare(maxSpecVersion, specVersion) != -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end