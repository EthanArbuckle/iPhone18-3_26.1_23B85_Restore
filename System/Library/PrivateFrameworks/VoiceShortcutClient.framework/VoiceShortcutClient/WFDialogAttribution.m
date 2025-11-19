@interface WFDialogAttribution
+ (WFDialogAttribution)attributionWithAppBundleIdentifier:(id)a3;
+ (WFDialogAttribution)attributionWithTitle:(id)a3 icon:(id)a4;
- (WFDialogAttribution)initWithCoder:(id)a3;
- (WFDialogAttribution)initWithTitle:(id)a3 icon:(id)a4 workflowIcon:(id)a5 appBundleIdentifier:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogAttribution

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogAttribution *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(WFDialogAttribution *)self icon];
  [v4 encodeObject:v6 forKey:@"icon"];

  v7 = [(WFDialogAttribution *)self workflowIcon];
  [v4 encodeObject:v7 forKey:@"workflowIcon"];

  v8 = [(WFDialogAttribution *)self appBundleIdentifier];
  [v4 encodeObject:v8 forKey:@"appBundleIdentifier"];
}

- (WFDialogAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowIcon"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];

  v9 = INIsHomepod();
  v10 = 0;
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
    v10 = self;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(WFDialogAttribution *)self title];
  v6 = [(WFDialogAttribution *)self icon];
  v7 = [(WFDialogAttribution *)self workflowIcon];
  v8 = [v4 initWithTitle:v5 icon:v6 workflowIcon:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogAttribution *)self title];
  v7 = [(WFDialogAttribution *)self icon];
  v8 = [v3 stringWithFormat:@"<%@: %p, title: %@, icon: %@>", v5, self, v6, v7];

  return v8;
}

- (WFDialogAttribution)initWithTitle:(id)a3 icon:(id)a4 workflowIcon:(id)a5 appBundleIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = WFDialogAttribution;
  v14 = [(WFDialogAttribution *)&v21 init];
  if (v14)
  {
    if ([v10 length])
    {
      v15 = [v10 copy];
    }

    else
    {
      v15 = WFLocalizedString(@"Shortcuts");
    }

    title = v14->_title;
    v14->_title = v15;

    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = [[WFAppIcon alloc] initWithBundleIdentifier:@"com.apple.shortcuts"];
    }

    icon = v14->_icon;
    v14->_icon = &v17->super;

    objc_storeStrong(&v14->_workflowIcon, a5);
    objc_storeStrong(&v14->_appBundleIdentifier, a6);
    v19 = v14;
  }

  return v14;
}

+ (WFDialogAttribution)attributionWithAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v11];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedName];
    v8 = [[WFAppIcon alloc] initWithBundleIdentifier:v4];
    v9 = [a1 attributionWithTitle:v7 icon:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (WFDialogAttribution)attributionWithTitle:(id)a3 icon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 icon:v6];

  return v8;
}

@end