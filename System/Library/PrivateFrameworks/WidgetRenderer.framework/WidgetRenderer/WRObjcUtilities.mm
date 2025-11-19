@interface WRObjcUtilities
+ (id)createWorkLoopWithLabel:(id)a3 qos:(unsigned int)a4;
+ (id)preferredLanguagesForContainerBundleIdentifier:(id)a3;
@end

@implementation WRObjcUtilities

+ (id)createWorkLoopWithLabel:(id)a3 qos:(unsigned int)a4
{
  inactive = dispatch_workloop_create_inactive([a3 UTF8String]);
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);

  return inactive;
}

+ (id)preferredLanguagesForContainerBundleIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69AAE08];
  v12 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:1];
  v7 = [v3 preferredLanguagesForBundleIDs:{v6, v12, v13}];
  v8 = [v7 objectForKeyedSubscript:v5];

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