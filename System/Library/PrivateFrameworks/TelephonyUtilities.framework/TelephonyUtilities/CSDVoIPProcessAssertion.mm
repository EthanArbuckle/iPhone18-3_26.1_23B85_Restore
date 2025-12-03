@interface CSDVoIPProcessAssertion
+ (id)processAssertionNameForBundleIdentifier:(id)identifier;
+ (id)processAssertionWithBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CSDVoIPProcessAssertion)initWithBundleIdentifier:(id)identifier;
- (id)name;
- (unint64_t)hash;
- (void)acquireWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation CSDVoIPProcessAssertion

- (CSDVoIPProcessAssertion)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CSDVoIPProcessAssertion;
  v6 = [(CSDVoIPProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
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
      bundleIdentifier = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
      *buf = 138412290;
      v7 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating process assertion for %@", buf, 0xCu);
    }

    [(BKSProcessAssertion *)self->_processAssertion invalidate];
  }

  v5.receiver = self;
  v5.super_class = CSDVoIPProcessAssertion;
  [(CSDVoIPProcessAssertion *)&v5 dealloc];
}

- (void)acquireWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [BKSProcessAssertion alloc];
  bundleIdentifier = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  name = [(CSDVoIPProcessAssertion *)self name];
  v7 = [v5 initWithBundleIdentifier:bundleIdentifier flags:11 reason:12 name:name withHandler:handlerCopy];

  [(CSDVoIPProcessAssertion *)self setProcessAssertion:v7];
}

+ (id)processAssertionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [BKSProcessAssertion alloc];
  v6 = [self processAssertionNameForBundleIdentifier:identifierCopy];
  v7 = [v5 initWithBundleIdentifier:identifierCopy flags:11 reason:12 name:v6];

  return v7;
}

+ (id)processAssertionNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@-%@", objc_opt_class(), identifierCopy];

  return identifierCopy;
}

- (id)name
{
  v3 = objc_opt_class();
  bundleIdentifier = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  v5 = [v3 processAssertionNameForBundleIdentifier:bundleIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:bundleIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  bundleIdentifier = [(CSDVoIPProcessAssertion *)self bundleIdentifier];
  v3 = [bundleIdentifier hash];

  return v3;
}

@end