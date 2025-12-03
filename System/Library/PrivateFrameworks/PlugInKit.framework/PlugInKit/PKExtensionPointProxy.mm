@interface PKExtensionPointProxy
+ (id)extensionPointForIdentifier:(id)identifier platform:(id)platform;
- (NSDictionary)sdkEntry;
- (NSNumber)platform;
@end

@implementation PKExtensionPointProxy

+ (id)extensionPointForIdentifier:(id)identifier platform:(id)platform
{
  v4 = [MEMORY[0x1E6963660] extensionPointForIdentifier:identifier platform:platform];

  return v4;
}

- (NSNumber)platform
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (NSDictionary)sdkEntry
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end