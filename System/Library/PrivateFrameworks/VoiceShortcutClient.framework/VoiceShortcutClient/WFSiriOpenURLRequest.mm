@interface WFSiriOpenURLRequest
- (WFSiriOpenURLRequest)initWithCoder:(id)a3;
- (WFSiriOpenURLRequest)initWithURL:(id)a3 andBundleIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriOpenURLRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFSiriOpenURLRequest;
  v4 = a3;
  [(WFSiriActionRequest *)&v7 encodeWithCoder:v4];
  v5 = [(WFSiriOpenURLRequest *)self URL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(WFSiriOpenURLRequest *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];
}

- (WFSiriOpenURLRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFSiriOpenURLRequest;
  v5 = [(WFSiriActionRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = v5;
  }

  return v5;
}

- (WFSiriOpenURLRequest)initWithURL:(id)a3 andBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFSiriOpenURLRequest;
  v9 = [(WFSiriActionRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
    v11 = v10;
  }

  return v10;
}

@end