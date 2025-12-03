@interface WFSiriLinkRequest
- (WFSiriLinkRequest)initWithAction:(id)action bundleIdentifier:(id)identifier nameOverride:(id)override showWhenRun:(BOOL)run;
- (WFSiriLinkRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriLinkRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFSiriLinkRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFSiriLinkRequest *)self action:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"action"];

  bundleIdentifier = [(WFSiriLinkRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  nameOverride = [(WFSiriLinkRequest *)self nameOverride];
  [coderCopy encodeObject:nameOverride forKey:@"nameOverride"];

  [coderCopy encodeBool:-[WFSiriLinkRequest showWhenRun](self forKey:{"showWhenRun"), @"showWhenRun"}];
}

- (WFSiriLinkRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFSiriLinkRequest;
  v5 = [(WFSiriActionRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nameOverride"];
    nameOverride = v5->_nameOverride;
    v5->_nameOverride = v10;

    v5->_showWhenRun = [coderCopy decodeBoolForKey:@"showWhenRun"];
    v12 = v5;
  }

  return v5;
}

- (WFSiriLinkRequest)initWithAction:(id)action bundleIdentifier:(id)identifier nameOverride:(id)override showWhenRun:(BOOL)run
{
  actionCopy = action;
  identifierCopy = identifier;
  overrideCopy = override;
  v18.receiver = self;
  v18.super_class = WFSiriLinkRequest;
  v14 = [(WFSiriActionRequest *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_action, action);
    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v15->_nameOverride, override);
    v15->_showWhenRun = run;
    v16 = v15;
  }

  return v15;
}

@end