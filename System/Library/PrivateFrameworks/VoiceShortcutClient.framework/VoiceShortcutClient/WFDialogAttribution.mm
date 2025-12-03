@interface WFDialogAttribution
+ (WFDialogAttribution)attributionWithAppBundleIdentifier:(id)identifier;
+ (WFDialogAttribution)attributionWithTitle:(id)title icon:(id)icon;
- (WFDialogAttribution)initWithCoder:(id)coder;
- (WFDialogAttribution)initWithTitle:(id)title icon:(id)icon workflowIcon:(id)workflowIcon appBundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogAttribution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(WFDialogAttribution *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  icon = [(WFDialogAttribution *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  workflowIcon = [(WFDialogAttribution *)self workflowIcon];
  [coderCopy encodeObject:workflowIcon forKey:@"workflowIcon"];

  appBundleIdentifier = [(WFDialogAttribution *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
}

- (WFDialogAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowIcon"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];

  v9 = INIsHomepod();
  selfCopy = 0;
  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (v5 && v11)
  {
    self = [(WFDialogAttribution *)self initWithTitle:v5 icon:v6 workflowIcon:v7 appBundleIdentifier:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  title = [(WFDialogAttribution *)self title];
  icon = [(WFDialogAttribution *)self icon];
  workflowIcon = [(WFDialogAttribution *)self workflowIcon];
  v8 = [v4 initWithTitle:title icon:icon workflowIcon:workflowIcon];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(WFDialogAttribution *)self title];
  icon = [(WFDialogAttribution *)self icon];
  v8 = [v3 stringWithFormat:@"<%@: %p, title: %@, icon: %@>", v5, self, title, icon];

  return v8;
}

- (WFDialogAttribution)initWithTitle:(id)title icon:(id)icon workflowIcon:(id)workflowIcon appBundleIdentifier:(id)identifier
{
  titleCopy = title;
  iconCopy = icon;
  workflowIconCopy = workflowIcon;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = WFDialogAttribution;
  v14 = [(WFDialogAttribution *)&v21 init];
  if (v14)
  {
    if ([titleCopy length])
    {
      v15 = [titleCopy copy];
    }

    else
    {
      v15 = WFLocalizedString(@"Shortcuts");
    }

    title = v14->_title;
    v14->_title = v15;

    if (iconCopy)
    {
      v17 = iconCopy;
    }

    else
    {
      v17 = [[WFAppIcon alloc] initWithBundleIdentifier:@"com.apple.shortcuts"];
    }

    icon = v14->_icon;
    v14->_icon = &v17->super;

    objc_storeStrong(&v14->_workflowIcon, workflowIcon);
    objc_storeStrong(&v14->_appBundleIdentifier, identifier);
    v19 = v14;
  }

  return v14;
}

+ (WFDialogAttribution)attributionWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v11];
  v6 = v5;
  if (v5)
  {
    localizedName = [v5 localizedName];
    v8 = [[WFAppIcon alloc] initWithBundleIdentifier:identifierCopy];
    v9 = [self attributionWithTitle:localizedName icon:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (WFDialogAttribution)attributionWithTitle:(id)title icon:(id)icon
{
  iconCopy = icon;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy icon:iconCopy];

  return v8;
}

@end