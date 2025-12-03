@interface SUPolicyRollback
- (SUPolicyRollback)initWithRollbackOptions:(id)options;
@end

@implementation SUPolicyRollback

- (SUPolicyRollback)initWithRollbackOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SUPolicyRollback;
  v6 = [(SUPolicyRollback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rollbackOptions, options);
  }

  return v7;
}

@end