@interface REUIDonatedElementDemoProperties
+ (id)createWithIntent:(id)intent bundleIdentifier:(id)identifier appName:(id)name appIcon:(id)icon;
@end

@implementation REUIDonatedElementDemoProperties

+ (id)createWithIntent:(id)intent bundleIdentifier:(id)identifier appName:(id)name appIcon:(id)icon
{
  intentCopy = intent;
  identifierCopy = identifier;
  nameCopy = name;
  iconCopy = icon;
  v13 = objc_alloc_init(REUIDonatedElementDemoProperties);
  demoIntent = v13->_demoIntent;
  v13->_demoIntent = intentCopy;
  v15 = intentCopy;

  demoBundleIdentifier = v13->_demoBundleIdentifier;
  v13->_demoBundleIdentifier = identifierCopy;
  v17 = identifierCopy;

  demoAppName = v13->_demoAppName;
  v13->_demoAppName = nameCopy;
  v19 = nameCopy;

  demoAppIcon = v13->_demoAppIcon;
  v13->_demoAppIcon = iconCopy;

  return v13;
}

@end