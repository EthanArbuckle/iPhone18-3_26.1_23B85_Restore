@interface CSDVoIPProcessAssertion
+ (id)processAssertionNameForBundleIdentifier:(id)a3;
+ (id)processAssertionWithBundleIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CSDVoIPProcessAssertion)initWithBundleIdentifier:(id)a3;
- (id)name;
- (unint64_t)hash;
- (void)acquireWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation CSDVoIPProcessAssertion

- (CSDVoIPProcessAssertion)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSDVoIPProcessAssertion;
  v6 = [(CSDVoIPProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (void)dealloc
{
  if (self->_processAssertion)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating process assertion for %@", buf, 0xCu);
    }

    [(BKSProcessAssertion *)self->_processAssertion invalidate];
  }

  v5.receiver = self;
  v5.super_class = CSDVoIPProcessAssertion;
  [(CSDVoIPProcessAssertion *)&v5 dealloc];
}

- (void)acquireWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [BKSProcessAssertion alloc];
  v8 = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  v6 = [(CSDVoIPProcessAssertion *)self name];
  v7 = [v5 initWithBundleIdentifier:v8 flags:11 reason:12 name:v6 withHandler:v4];

  [(CSDVoIPProcessAssertion *)self setProcessAssertion:v7];
}

+ (id)processAssertionWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [BKSProcessAssertion alloc];
  v6 = [a1 processAssertionNameForBundleIdentifier:v4];
  v7 = [v5 initWithBundleIdentifier:v4 flags:11 reason:12 name:v6];

  return v7;
}

+ (id)processAssertionNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%@-%@", objc_opt_class(), v3];

  return v4;
}

- (id)name
{
  v3 = objc_opt_class();
  v4 = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  v5 = [v3 processAssertionNameForBundleIdentifier:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end