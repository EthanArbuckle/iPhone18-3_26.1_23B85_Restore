@interface PRControlIcon
- (PRControlIcon)initWithControlIdentity:(id)a3 controlType:(unint64_t)a4 leafIdentifier:(id)a5;
@end

@implementation PRControlIcon

- (PRControlIcon)initWithControlIdentity:(id)a3 controlType:(unint64_t)a4 leafIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 extensionIdentity];
  v12 = [v11 containerBundleIdentifier];

  v15.receiver = self;
  v15.super_class = PRControlIcon;
  v13 = [(SBLeafIcon *)&v15 initWithLeafIdentifier:v10 applicationBundleID:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_controlIdentity, a3);
    v13->_controlType = a4;
  }

  return v13;
}

@end