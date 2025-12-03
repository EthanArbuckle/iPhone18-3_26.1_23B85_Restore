@interface PKPlugInProxy
- (BOOL)isOnSystemPartition;
- (NSArray)launchPersonas;
- (NSDate)registrationDate;
- (NSDictionary)infoPlist;
- (NSDictionary)pluginKitDictionary;
- (NSNumber)platform;
- (NSString)originalIdentifier;
- (NSString)pluginIdentifier;
- (NSUUID)pluginUUID;
- (PKBundleProxy)containingBundle;
- (PKExtensionPointProxy)extensionPoint;
- (PKPlugInProxy)initWithLSPlugInKitProxy:(id)proxy;
- (PKPlugInProxy)initWithURL:(id)l;
- (PKPlugInProxy)initWithUUID:(id)d;
- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class inScope:(unint64_t)scope;
@end

@implementation PKPlugInProxy

- (PKPlugInProxy)initWithURL:(id)l
{
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForURL:l];
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKPlugInProxy;
    self = [(PKBundleProxy *)&v7 initWithLSBundleProxy:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPlugInProxy)initWithUUID:(id)d
{
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForUUID:d];
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKPlugInProxy;
    self = [(PKBundleProxy *)&v7 initWithLSBundleProxy:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPlugInProxy)initWithLSPlugInKitProxy:(id)proxy
{
  v4.receiver = self;
  v4.super_class = PKPlugInProxy;
  return [(PKBundleProxy *)&v4 initWithLSBundleProxy:proxy];
}

- (NSUUID)pluginUUID
{
  lsObject = [(PKBundleProxy *)self lsObject];
  pluginUUID = [lsObject pluginUUID];

  return pluginUUID;
}

- (PKBundleProxy)containingBundle
{
  lsObject = [(PKBundleProxy *)self lsObject];
  containingBundle = [lsObject containingBundle];

  return containingBundle;
}

- (NSString)pluginIdentifier
{
  lsObject = [(PKBundleProxy *)self lsObject];
  pluginIdentifier = [lsObject pluginIdentifier];

  return pluginIdentifier;
}

- (NSDate)registrationDate
{
  lsObject = [(PKBundleProxy *)self lsObject];
  registrationDate = [lsObject registrationDate];

  return registrationDate;
}

- (BOOL)isOnSystemPartition
{
  lsObject = [(PKBundleProxy *)self lsObject];
  isOnSystemPartition = [lsObject isOnSystemPartition];

  return isOnSystemPartition;
}

- (NSString)originalIdentifier
{
  lsObject = [(PKBundleProxy *)self lsObject];
  originalIdentifier = [lsObject originalIdentifier];

  return originalIdentifier;
}

- (NSDictionary)infoPlist
{
  lsObject = [(PKBundleProxy *)self lsObject];
  infoPlist = [lsObject infoPlist];

  return infoPlist;
}

- (NSNumber)platform
{
  lsObject = [(PKBundleProxy *)self lsObject];
  platform = [lsObject platform];

  return platform;
}

- (PKExtensionPointProxy)extensionPoint
{
  lsObject = [(PKBundleProxy *)self lsObject];
  extensionPoint = [lsObject extensionPoint];

  return extensionPoint;
}

- (NSArray)launchPersonas
{
  lsObject = [(PKBundleProxy *)self lsObject];
  launchPersonas = [lsObject launchPersonas];

  return launchPersonas;
}

- (NSDictionary)pluginKitDictionary
{
  lsObject = [(PKBundleProxy *)self lsObject];
  pluginKitDictionary = [lsObject pluginKitDictionary];

  return pluginKitDictionary;
}

- (id)objectForInfoDictionaryKey:(id)key ofClass:(Class)class inScope:(unint64_t)scope
{
  keyCopy = key;
  lsObject = [(PKBundleProxy *)self lsObject];
  v10 = [lsObject objectForInfoDictionaryKey:keyCopy ofClass:class inScope:scope];

  return v10;
}

@end