@interface SUPolicyApply
- (SUPolicyApply)initWithInstallOptions:(id)a3;
@end

@implementation SUPolicyApply

- (SUPolicyApply)initWithInstallOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUPolicyApply;
  v6 = [(SUPolicyApply *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_installOptions, a3);
  }

  return v7;
}

@end