@interface WFSpringBoardWebClipMetadata
- (WFSpringBoardWebClipMetadata)initWithCoder:(id)a3;
- (WFSpringBoardWebClipMetadata)initWithShortcutIdentifier:(id)a3 applicationIdentifier:(id)a4 appIsInstalled:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSpringBoardWebClipMetadata

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WFSpringBoardWebClipMetadata *)self shortcutIdentifier];
  [v6 encodeObject:v4 forKey:@"shortcutIdentifier"];

  v5 = [(WFSpringBoardWebClipMetadata *)self applicationIdentifier];
  [v6 encodeObject:v5 forKey:@"applicationIdentifier"];

  [v6 encodeBool:-[WFSpringBoardWebClipMetadata appIsInstalled](self forKey:{"appIsInstalled"), @"appIsInstalled"}];
}

- (WFSpringBoardWebClipMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFSpringBoardWebClipMetadata;
  v5 = [(WFSpringBoardWebClipMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcutIdentifier"];
    shortcutIdentifier = v5->_shortcutIdentifier;
    v5->_shortcutIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v8;

    v5->_appIsInstalled = [v4 decodeBoolForKey:@"appIsInstalled"];
    v10 = v5;
  }

  return v5;
}

- (WFSpringBoardWebClipMetadata)initWithShortcutIdentifier:(id)a3 applicationIdentifier:(id)a4 appIsInstalled:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WFSpringBoardWebClipMetadata;
  v10 = [(WFSpringBoardWebClipMetadata *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    shortcutIdentifier = v10->_shortcutIdentifier;
    v10->_shortcutIdentifier = v11;

    v13 = [v9 copy];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v13;

    v10->_appIsInstalled = a5;
    v15 = v10;
  }

  return v10;
}

@end