@interface SUCoreConnectVersion
- (SUCoreConnectVersion)initWithCoder:(id)coder;
- (SUCoreConnectVersion)initWithSelector:(SEL)selector;
- (SUCoreConnectVersion)initWithString:(id)string;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreConnectVersion

- (SUCoreConnectVersion)initWithSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = SUCoreConnectVersion;
  v4 = [(SUCoreConnectVersion *)&v8 init];
  if (v4)
  {
    v5 = NSStringFromSelector(selector);
    selectorString = v4->_selectorString;
    v4->_selectorString = v5;
  }

  return v4;
}

- (SUCoreConnectVersion)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SUCoreConnectVersion;
  v6 = [(SUCoreConnectVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectorString, string);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selectorString = [(SUCoreConnectVersion *)self selectorString];
  [coderCopy encodeObject:selectorString forKey:@"SelectorString"];
}

- (SUCoreConnectVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCoreConnectVersion;
  v5 = [(SUCoreConnectVersion *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SelectorString"];
    selectorString = v5->_selectorString;
    v5->_selectorString = v6;
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  selectorString = [(SUCoreConnectVersion *)self selectorString];
  v4 = [v2 stringWithFormat:@"SUCoreConnectVersion(selectorString:%@)", selectorString];

  return v4;
}

@end