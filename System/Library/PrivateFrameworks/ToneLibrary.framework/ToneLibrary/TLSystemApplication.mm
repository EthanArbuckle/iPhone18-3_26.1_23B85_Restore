@interface TLSystemApplication
+ (TLSystemApplication)defaultSystemApplication;
- (TLSystemApplication)initWithBundleIdentifier:(id)identifier name:(id)name;
@end

@implementation TLSystemApplication

+ (TLSystemApplication)defaultSystemApplication
{
  if (defaultSystemApplication__TLSystemApplicationSharedInstanceOnceToken != -1)
  {
    +[TLSystemApplication defaultSystemApplication];
  }

  v3 = defaultSystemApplication__TLSystemApplicationSharedInstance;

  return v3;
}

uint64_t __47__TLSystemApplication_defaultSystemApplication__block_invoke()
{
  defaultSystemApplication__TLSystemApplicationSharedInstance = [[TLSystemApplication alloc] initWithBundleIdentifier:@"com.apple.springboard" name:@"SpringBoard"];

  return MEMORY[0x1EEE66BB8]();
}

- (TLSystemApplication)initWithBundleIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TLSystemApplication;
  v8 = [(TLSystemApplication *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v11;
  }

  return v8;
}

@end