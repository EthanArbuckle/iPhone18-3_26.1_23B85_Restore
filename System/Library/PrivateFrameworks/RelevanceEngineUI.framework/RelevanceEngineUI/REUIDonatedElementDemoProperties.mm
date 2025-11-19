@interface REUIDonatedElementDemoProperties
+ (id)createWithIntent:(id)a3 bundleIdentifier:(id)a4 appName:(id)a5 appIcon:(id)a6;
@end

@implementation REUIDonatedElementDemoProperties

+ (id)createWithIntent:(id)a3 bundleIdentifier:(id)a4 appName:(id)a5 appIcon:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(REUIDonatedElementDemoProperties);
  demoIntent = v13->_demoIntent;
  v13->_demoIntent = v9;
  v15 = v9;

  demoBundleIdentifier = v13->_demoBundleIdentifier;
  v13->_demoBundleIdentifier = v10;
  v17 = v10;

  demoAppName = v13->_demoAppName;
  v13->_demoAppName = v11;
  v19 = v11;

  demoAppIcon = v13->_demoAppIcon;
  v13->_demoAppIcon = v12;

  return v13;
}

@end