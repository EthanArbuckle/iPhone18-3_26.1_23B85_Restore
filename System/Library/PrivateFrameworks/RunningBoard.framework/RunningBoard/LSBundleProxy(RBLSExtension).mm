@interface LSBundleProxy(RBLSExtension)
- (id)_rb_extensionPointIdentifier;
@end

@implementation LSBundleProxy(RBLSExtension)

- (id)_rb_extensionPointIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 extensionPoint];
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end