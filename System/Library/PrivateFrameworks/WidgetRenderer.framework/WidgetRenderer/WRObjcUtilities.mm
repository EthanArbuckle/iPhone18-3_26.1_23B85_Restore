@interface WRObjcUtilities
+ (id)createWorkLoopWithLabel:(id)label qos:(unsigned int)qos;
+ (id)preferredLanguagesForContainerBundleIdentifier:(id)identifier;
@end

@implementation WRObjcUtilities

+ (id)createWorkLoopWithLabel:(id)label qos:(unsigned int)qos
{
  inactive = dispatch_workloop_create_inactive([label UTF8String]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);

  return inactive;
}

+ (id)preferredLanguagesForContainerBundleIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69AAE08];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];
  v7 = [v3 preferredLanguagesForBundleIDs:{v6, identifierCopy, v13}];
  v8 = [v7 objectForKeyedSubscript:identifierCopy2];

  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end