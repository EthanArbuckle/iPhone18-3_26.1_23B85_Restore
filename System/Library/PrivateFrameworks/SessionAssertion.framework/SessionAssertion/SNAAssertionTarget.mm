@interface SNAAssertionTarget
- (SNAAssertionTarget)initWithBundleIdentifier:(id)identifier;
@end

@implementation SNAAssertionTarget

- (SNAAssertionTarget)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SNAAssertionTarget;
  v6 = [(SNAAssertionTarget *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

@end