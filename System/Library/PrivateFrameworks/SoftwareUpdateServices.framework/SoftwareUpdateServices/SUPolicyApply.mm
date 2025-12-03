@interface SUPolicyApply
- (SUPolicyApply)initWithInstallOptions:(id)options;
@end

@implementation SUPolicyApply

- (SUPolicyApply)initWithInstallOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SUPolicyApply;
  v6 = [(SUPolicyApply *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installOptions, options);
  }

  return v7;
}

@end