@interface WFSiriOpenAppRequest
- (WFSiriOpenAppRequest)initWithBundleIdentifier:(id)identifier;
- (WFSiriOpenAppRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriOpenAppRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriOpenAppRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriOpenAppRequest *)self bundleIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (WFSiriOpenAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriOpenAppRequest;
  v5 = [(WFSiriActionRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriOpenAppRequest)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WFSiriOpenAppRequest;
  v6 = [(WFSiriActionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = v7;
  }

  return v7;
}

@end