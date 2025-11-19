@interface SUCoreConnectVersion
- (SUCoreConnectVersion)initWithCoder:(id)a3;
- (SUCoreConnectVersion)initWithSelector:(SEL)a3;
- (SUCoreConnectVersion)initWithString:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCoreConnectVersion

- (SUCoreConnectVersion)initWithSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = SUCoreConnectVersion;
  v4 = [(SUCoreConnectVersion *)&v8 init];
  if (v4)
  {
    v5 = NSStringFromSelector(a3);
    selectorString = v4->_selectorString;
    v4->_selectorString = v5;
  }

  return v4;
}

- (SUCoreConnectVersion)initWithString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreConnectVersion;
  v6 = [(SUCoreConnectVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectorString, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreConnectVersion *)self selectorString];
  [v4 encodeObject:v5 forKey:@"SelectorString"];
}

- (SUCoreConnectVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCoreConnectVersion;
  v5 = [(SUCoreConnectVersion *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SelectorString"];
    selectorString = v5->_selectorString;
    v5->_selectorString = v6;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCoreConnectVersion *)self selectorString];
  v4 = [v2 stringWithFormat:@"SUCoreConnectVersion(selectorString:%@)", v3];

  return v4;
}

@end