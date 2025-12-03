@interface AppExtensionSupport
+ (id)supportedAppExtensionTypes;
+ (id)supportedProxyExtensionForBundleIdentifier:(id)identifier;
@end

@implementation AppExtensionSupport

+ (id)supportedAppExtensionTypes
{
  v4 = @"com.apple.message-payload-provider";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)supportedProxyExtensionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10018C824;
  v16 = sub_10018C834;
  v17 = 0;
  supportedAppExtensionTypes = [self supportedAppExtensionTypes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018C83C;
  v9[3] = &unk_10032A8D8;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [supportedAppExtensionTypes enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

@end