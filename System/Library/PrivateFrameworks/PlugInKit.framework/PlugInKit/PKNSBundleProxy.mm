@interface PKNSBundleProxy
- (BOOL)loadAndReturnError:(id *)error;
- (Class)principalClass;
- (NSDictionary)infoDictionary;
- (NSDictionary)localizedInfoDictionary;
- (NSString)bundleIdentifier;
- (NSURL)builtInPlugInsURL;
- (NSURL)bundleURL;
- (PKNSBundleProxy)initWithNSBundle:(id)bundle;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
@end

@implementation PKNSBundleProxy

- (NSDictionary)infoDictionary
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  infoDictionary = [_underlyingNSBundle infoDictionary];

  return infoDictionary;
}

- (NSURL)bundleURL
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  bundleURL = [_underlyingNSBundle bundleURL];

  return bundleURL;
}

- (PKNSBundleProxy)initWithNSBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = PKNSBundleProxy;
  v6 = [(PKNSBundleProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__underlyingNSBundle, bundle);
  }

  return v7;
}

- (NSString)bundleIdentifier
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  bundleIdentifier = [_underlyingNSBundle bundleIdentifier];

  return bundleIdentifier;
}

- (NSURL)builtInPlugInsURL
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  builtInPlugInsURL = [_underlyingNSBundle builtInPlugInsURL];

  return builtInPlugInsURL;
}

- (NSDictionary)localizedInfoDictionary
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  localizedInfoDictionary = [_underlyingNSBundle localizedInfoDictionary];

  return localizedInfoDictionary;
}

- (Class)principalClass
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  principalClass = [_underlyingNSBundle principalClass];

  return principalClass;
}

- (BOOL)loadAndReturnError:(id *)error
{
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  LOBYTE(error) = [_underlyingNSBundle loadAndReturnError:error];

  return error;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  tableCopy = table;
  valueCopy = value;
  keyCopy = key;
  _underlyingNSBundle = [(PKNSBundleProxy *)self _underlyingNSBundle];
  v12 = [_underlyingNSBundle localizedStringForKey:keyCopy value:valueCopy table:tableCopy];

  return v12;
}

@end