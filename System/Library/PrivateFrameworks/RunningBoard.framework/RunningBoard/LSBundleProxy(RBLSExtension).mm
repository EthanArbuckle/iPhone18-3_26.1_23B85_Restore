@interface LSBundleProxy(RBLSExtension)
- (id)_rb_extensionPointIdentifier;
@end

@implementation LSBundleProxy(RBLSExtension)

- (id)_rb_extensionPointIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extensionPoint = [self extensionPoint];
    identifier = [extensionPoint identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

@end