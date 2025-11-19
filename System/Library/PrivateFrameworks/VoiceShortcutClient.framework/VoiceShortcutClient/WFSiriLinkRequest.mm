@interface WFSiriLinkRequest
- (WFSiriLinkRequest)initWithAction:(id)a3 bundleIdentifier:(id)a4 nameOverride:(id)a5 showWhenRun:(BOOL)a6;
- (WFSiriLinkRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriLinkRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFSiriLinkRequest;
  v4 = a3;
  [(WFSiriActionRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFSiriLinkRequest *)self action:v8.receiver];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(WFSiriLinkRequest *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(WFSiriLinkRequest *)self nameOverride];
  [v4 encodeObject:v7 forKey:@"nameOverride"];

  [v4 encodeBool:-[WFSiriLinkRequest showWhenRun](self forKey:{"showWhenRun"), @"showWhenRun"}];
}

- (WFSiriLinkRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFSiriLinkRequest;
  v5 = [(WFSiriActionRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameOverride"];
    nameOverride = v5->_nameOverride;
    v5->_nameOverride = v10;

    v5->_showWhenRun = [v4 decodeBoolForKey:@"showWhenRun"];
    v12 = v5;
  }

  return v5;
}

- (WFSiriLinkRequest)initWithAction:(id)a3 bundleIdentifier:(id)a4 nameOverride:(id)a5 showWhenRun:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = WFSiriLinkRequest;
  v14 = [(WFSiriActionRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_action, a3);
    objc_storeStrong(&v15->_bundleIdentifier, a4);
    objc_storeStrong(&v15->_nameOverride, a5);
    v15->_showWhenRun = a6;
    v16 = v15;
  }

  return v15;
}

@end