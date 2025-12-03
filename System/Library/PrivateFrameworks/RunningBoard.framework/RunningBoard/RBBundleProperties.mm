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
- (RBBundleProperties)initWithLSProvider:(id)provider xpcProvider:(id)xpcProvider processIdentity:(id)identity processIdentifier:(id)identifier;
- (id)_bundleProperties;
- (id)_lsBundleProperties;
- (id)_xpcBundleProperties;
- (id)bundleInfoValuesForKeys:(id)keys;
- (int)preferredJetsamBand;
@end

@implementation RBBundleProperties

- (id)_bundleProperties
{
  if (self)
  {
    if (*(self + 24))
    {
      [(RBBundleProperties *)self _xpcBundleProperties];
    }

    else
    {
      [(RBBundleProperties *)self _lsBundleProperties];
    }
    self = ;
    v1 = vars8;
  }

  return self;
}

- (NSString)bundleIdentifier
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  bundleIdentifier = [_bundleProperties bundleIdentifier];

  return bundleIdentifier;
}

- (id)_xpcBundleProperties
{
  if (self)
  {
    selfCopy = self;
    v3 = self[6];
    if (!v3)
    {
      if (self[3])
      {
        v4 = [self[2] propertiesForIdentifier:?];
        v5 = selfCopy[6];
        selfCopy[6] = v4;

        v3 = selfCopy[6];
      }

      else
      {
        v3 = 0;
      }
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (BOOL)usesSocketMonitoring
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  usesSocketMonitoring = [_bundleProperties usesSocketMonitoring];

  return usesSocketMonitoring;
}

- (NSString)bundlePath
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  bundlePath = [_bundleProperties bundlePath];

  return bundlePath;
}

- (NSString)executablePath
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  executablePath = [_bundleProperties executablePath];

  return executablePath;
}

- (NSString)extensionPointIdentifier
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  extensionPointIdentifier = [_bundleProperties extensionPointIdentifier];

  return extensionPointIdentifier;
}

- (BOOL)continuousBackgroundMode
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  continuousBackgroundMode = [_bundleProperties continuousBackgroundMode];

  return continuousBackgroundMode;
}

- (BOOL)isExtension
{
  extensionPointIdentifier = [(RBBundleProperties *)self extensionPointIdentifier];
  v3 = extensionPointIdentifier != 0;

  return v3;
}

- (NSDictionary)environmentVariables
{
  _lsBundleProperties = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  environmentVariables = [_lsBundleProperties environmentVariables];

  return environmentVariables;
}

- (id)_lsBundleProperties
{
  if (self)
  {
    selfCopy = self;
    v3 = self[5];
    if (!v3)
    {
      if (self[4])
      {
        v4 = [self[1] propertiesForIdentity:?];
        v5 = selfCopy[5];
        selfCopy[5] = v4;

        v3 = selfCopy[5];
      }

      else
      {
        v3 = 0;
      }
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (NSURL)dataContainerURL
{
  _lsBundleProperties = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  dataContainerURL = [_lsBundleProperties dataContainerURL];

  return dataContainerURL;
}

- (RBBundleProperties)initWithLSProvider:(id)provider xpcProvider:(id)xpcProvider processIdentity:(id)identity processIdentifier:(id)identifier
{
  providerCopy = provider;
  xpcProviderCopy = xpcProvider;
  identityCopy = identity;
  identifierCopy = identifier;
  if (identityCopy && ([identityCopy isAnonymous] & 1) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RBBundleProperties;
    v16 = [(RBBundleProperties *)&v19 init];
    p_isa = &v16->super.isa;
    if (v16)
    {
      objc_storeStrong(&v16->_lsProvider, provider);
      objc_storeStrong(p_isa + 2, xpcProvider);
      objc_storeStrong(p_isa + 4, identity);
      objc_storeStrong(p_isa + 3, identifier);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
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
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  supportsBackgroundContentFetching = [_bundleProperties supportsBackgroundContentFetching];

  return supportsBackgroundContentFetching;
}

- (BOOL)supportsBackgroundNetworkAuthentication
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  supportsBackgroundNetworkAuthentication = [_bundleProperties supportsBackgroundNetworkAuthentication];

  return supportsBackgroundNetworkAuthentication;
}

- (BOOL)supportsBackgroundAudio
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  supportsBackgroundAudio = [_bundleProperties supportsBackgroundAudio];

  return supportsBackgroundAudio;
}

- (BOOL)supportsUnboundedTaskCompletion
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  supportsUnboundedTaskCompletion = [_bundleProperties supportsUnboundedTaskCompletion];

  return supportsUnboundedTaskCompletion;
}

- (BOOL)hasPreferredJetsamBand
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  hasPreferredJetsamBand = [_bundleProperties hasPreferredJetsamBand];

  return hasPreferredJetsamBand;
}

- (int)preferredJetsamBand
{
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  preferredJetsamBand = [_bundleProperties preferredJetsamBand];

  return preferredJetsamBand;
}

- (NSString)containerOverrideIdentifier
{
  _lsBundleProperties = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  containerOverrideIdentifier = [_lsBundleProperties containerOverrideIdentifier];

  return containerOverrideIdentifier;
}

- (NSSet)groupIdentifiers
{
  _lsBundleProperties = [(RBBundleProperties *)&self->super.isa _lsBundleProperties];
  groupIdentifiers = [_lsBundleProperties groupIdentifiers];

  return groupIdentifiers;
}

- (id)bundleInfoValuesForKeys:(id)keys
{
  keysCopy = keys;
  _bundleProperties = [(RBBundleProperties *)self _bundleProperties];
  v6 = [_bundleProperties bundleInfoValuesForKeys:keysCopy];

  return v6;
}

@end