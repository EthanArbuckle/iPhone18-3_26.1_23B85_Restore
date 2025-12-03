@interface WFSiriUserActivityRequest
- (NSUserActivity)userActivity;
- (WFSiriUserActivityRequest)initWithCoder:(id)coder;
- (WFSiriUserActivityRequest)initWithUserActivityData:(id)data andBundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriUserActivityRequest

- (NSUserActivity)userActivity
{
  v2 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:self->_userActivityData];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFSiriUserActivityRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFSiriUserActivityRequest *)self userActivityData:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"userActivityData"];

  bundleIdentifier = [(WFSiriUserActivityRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (WFSiriUserActivityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFSiriUserActivityRequest;
  v5 = [(WFSiriActionRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivityData"];
    userActivityData = v5->_userActivityData;
    v5->_userActivityData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = v5;
  }

  return v5;
}

- (WFSiriUserActivityRequest)initWithUserActivityData:(id)data andBundleIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = WFSiriUserActivityRequest;
  v9 = [(WFSiriActionRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userActivityData, data);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

@end