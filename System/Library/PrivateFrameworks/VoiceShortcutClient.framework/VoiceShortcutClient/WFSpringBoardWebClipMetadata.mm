@interface WFSpringBoardWebClipMetadata
- (WFSpringBoardWebClipMetadata)initWithCoder:(id)coder;
- (WFSpringBoardWebClipMetadata)initWithShortcutIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier appIsInstalled:(BOOL)installed;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSpringBoardWebClipMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shortcutIdentifier = [(WFSpringBoardWebClipMetadata *)self shortcutIdentifier];
  [coderCopy encodeObject:shortcutIdentifier forKey:@"shortcutIdentifier"];

  applicationIdentifier = [(WFSpringBoardWebClipMetadata *)self applicationIdentifier];
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];

  [coderCopy encodeBool:-[WFSpringBoardWebClipMetadata appIsInstalled](self forKey:{"appIsInstalled"), @"appIsInstalled"}];
}

- (WFSpringBoardWebClipMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFSpringBoardWebClipMetadata;
  v5 = [(WFSpringBoardWebClipMetadata *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutIdentifier"];
    shortcutIdentifier = v5->_shortcutIdentifier;
    v5->_shortcutIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v8;

    v5->_appIsInstalled = [coderCopy decodeBoolForKey:@"appIsInstalled"];
    v10 = v5;
  }

  return v5;
}

- (WFSpringBoardWebClipMetadata)initWithShortcutIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier appIsInstalled:(BOOL)installed
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  v17.receiver = self;
  v17.super_class = WFSpringBoardWebClipMetadata;
  v10 = [(WFSpringBoardWebClipMetadata *)&v17 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    shortcutIdentifier = v10->_shortcutIdentifier;
    v10->_shortcutIdentifier = v11;

    v13 = [applicationIdentifierCopy copy];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v13;

    v10->_appIsInstalled = installed;
    v15 = v10;
  }

  return v10;
}

@end