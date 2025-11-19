@interface RBBundleProperties
- (BOOL)continuousBackgroundMode;
- (BOOL)hasPreferredJetsamBand;
- (BOOL)isExtension;
- (BOOL)supportsBackgroundAudio;
- (BOOL)supportsBackgroundContentFetching;
- (BOOL)supportsBackgroundNetworkAuthentication;
- (BOOL)supportsUnboundedTaskCompletion;
- (BOOL)usesSocketMonitoring;
- (NSDictionary)environmentVariables;
- (NSSet)groupIdentifiers;
- (NSString)bundleIdentifier;
- (NSString)bundlePath;
- (NSString)containerOverrideIdentifier;
- (NSString)debugDescription;
- (NSString)executablePath;
- (NSString)extensionPointIdentifier;
- (NSURL)dataContainerURL;
- (RBBundleProperties)initWithLSProvider:(id)a3 xpcProvider:(id)a4 processIdentity:(id)a5 processIdentifier:(id)a6;
- (id)_bundleProperties;
- (id)_lsBundleProperties;
- (id)_xpcBundleProperties;
- (id)bundleInfoValuesForKeys:(id)a3;
- (int)preferredJetsamBand;
@end

@implementation RBBundleProperties

- (id)_bundleProperties
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      [(RBBundleProperties *)a1 _xpcBundleProperties];
    }

    else
    {
      [(RBBundleProperties *)a1 _lsBundleProperties];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

- (NSString)bundleIdentifier
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)_xpcBundleProperties
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[6];
    if (!v3)
    {
      if (a1[3])
      {
        v4 = [a1[2] propertiesForIdentifier:?];
        v5 = v2[6];
        v2[6] = v4;

        v3 = v2[6];
      }

      else
      {
        v3 = 0;
      }
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (BOOL)usesSocketMonitoring
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 usesSocketMonitoring];

  return v3;
}

- (NSString)bundlePath
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 bundlePath];

  return v3;
}

- (NSString)executablePath
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 executablePath];

  return v3;
}

- (NSString)extensionPointIdentifier
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 extensionPointIdentifier];

  return v3;
}

- (BOOL)continuousBackgroundMode
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 continuousBackgroundMode];

  return v3;
}

- (BOOL)isExtension
{
  v2 = [(RBBundleProperties *)self extensionPointIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (NSDictionary)environmentVariables
{
  v2 = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  v3 = [v2 environmentVariables];

  return v3;
}

- (id)_lsBundleProperties
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      if (a1[4])
      {
        v4 = [a1[1] propertiesForIdentity:?];
        v5 = v2[5];
        v2[5] = v4;

        v3 = v2[5];
      }

      else
      {
        v3 = 0;
      }
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (NSURL)dataContainerURL
{
  v2 = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  v3 = [v2 dataContainerURL];

  return v3;
}

- (RBBundleProperties)initWithLSProvider:(id)a3 xpcProvider:(id)a4 processIdentity:(id)a5 processIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 && ([v13 isAnonymous] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RBBundleProperties;
    v16 = [(RBBundleProperties *)&v19 init];
    p_isa = &v16->super.isa;
    if (v16)
    {
      objc_storeStrong(&v16->_lsProvider, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 4, a5);
      objc_storeStrong(p_isa + 3, a6);
    }

    self = p_isa;
    v15 = self;
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| lsBundleProperties:%@ xpcBundleProperties:%@ processIdentity:%@ processIdentifier:%@>", v4, self->_lsBundleProperties, self->_xpcBundleProperties, self->_processIdentity, self->_processIdentifier];

  return v5;
}

- (BOOL)supportsBackgroundContentFetching
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 supportsBackgroundContentFetching];

  return v3;
}

- (BOOL)supportsBackgroundNetworkAuthentication
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 supportsBackgroundNetworkAuthentication];

  return v3;
}

- (BOOL)supportsBackgroundAudio
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 supportsBackgroundAudio];

  return v3;
}

- (BOOL)supportsUnboundedTaskCompletion
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 supportsUnboundedTaskCompletion];

  return v3;
}

- (BOOL)hasPreferredJetsamBand
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 hasPreferredJetsamBand];

  return v3;
}

- (int)preferredJetsamBand
{
  v2 = [(RBBundleProperties *)self _bundleProperties];
  v3 = [v2 preferredJetsamBand];

  return v3;
}

- (NSString)containerOverrideIdentifier
{
  v2 = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  v3 = [v2 containerOverrideIdentifier];

  return v3;
}

- (NSSet)groupIdentifiers
{
  v2 = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  v3 = [v2 groupIdentifiers];

  return v3;
}

- (id)bundleInfoValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = [(RBBundleProperties *)self _bundleProperties];
  v6 = [v5 bundleInfoValuesForKeys:v4];

  return v6;
}

@end