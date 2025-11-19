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
- (PKPlugInProxy)initWithLSPlugInKitProxy:(id)a3;
- (PKPlugInProxy)initWithURL:(id)a3;
- (PKPlugInProxy)initWithUUID:(id)a3;
- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 inScope:(unint64_t)a5;
@end

@implementation PKPlugInProxy

- (PKPlugInProxy)initWithURL:(id)a3
{
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForURL:a3];
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKPlugInProxy;
    self = [(PKBundleProxy *)&v7 initWithLSBundleProxy:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPlugInProxy)initWithUUID:(id)a3
{
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForUUID:a3];
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = PKPlugInProxy;
    self = [(PKBundleProxy *)&v7 initWithLSBundleProxy:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPlugInProxy)initWithLSPlugInKitProxy:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPlugInProxy;
  return [(PKBundleProxy *)&v4 initWithLSBundleProxy:a3];
}

- (NSUUID)pluginUUID
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 pluginUUID];

  return v3;
}

- (PKBundleProxy)containingBundle
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 containingBundle];

  return v3;
}

- (NSString)pluginIdentifier
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 pluginIdentifier];

  return v3;
}

- (NSDate)registrationDate
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 registrationDate];

  return v3;
}

- (BOOL)isOnSystemPartition
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 isOnSystemPartition];

  return v3;
}

- (NSString)originalIdentifier
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 originalIdentifier];

  return v3;
}

- (NSDictionary)infoPlist
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 infoPlist];

  return v3;
}

- (NSNumber)platform
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 platform];

  return v3;
}

- (PKExtensionPointProxy)extensionPoint
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 extensionPoint];

  return v3;
}

- (NSArray)launchPersonas
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 launchPersonas];

  return v3;
}

- (NSDictionary)pluginKitDictionary
{
  v2 = [(PKBundleProxy *)self lsObject];
  v3 = [v2 pluginKitDictionary];

  return v3;
}

- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 inScope:(unint64_t)a5
{
  v8 = a3;
  v9 = [(PKBundleProxy *)self lsObject];
  v10 = [v9 objectForInfoDictionaryKey:v8 ofClass:a4 inScope:a5];

  return v10;
}

@end