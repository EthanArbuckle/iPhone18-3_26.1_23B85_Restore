@interface WFSiriOpenURLRequest
- (WFSiriOpenURLRequest)initWithCoder:(id)coder;
- (WFSiriOpenURLRequest)initWithURL:(id)l andBundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriOpenURLRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFSiriOpenURLRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFSiriOpenURLRequest *)self URL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  bundleIdentifier = [(WFSiriOpenURLRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (WFSiriOpenURLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFSiriOpenURLRequest;
  v5 = [(WFSiriActionRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = v5;
  }

  return v5;
}

- (WFSiriOpenURLRequest)initWithURL:(id)l andBundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = WFSiriOpenURLRequest;
  v9 = [(WFSiriActionRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

@end