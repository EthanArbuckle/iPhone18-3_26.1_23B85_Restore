@interface SXRenderingConfigurationOptionsManager
- (BOOL)validateConfigurationOption:(id)option;
- (BOOL)validateConfigurationOption:(id)option documentSpecVersion:(id)version clientSpecVersion:(id)specVersion;
- (SXHintsConfigurationOption)hints;
- (SXRenderingConfigurationOptionsManager)initWithDocumentProvider:(id)provider configurationProvider:(id)configurationProvider;
@end

@implementation SXRenderingConfigurationOptionsManager

- (SXRenderingConfigurationOptionsManager)initWithDocumentProvider:(id)provider configurationProvider:(id)configurationProvider
{
  providerCopy = provider;
  configurationProviderCopy = configurationProvider;
  v12.receiver = self;
  v12.super_class = SXRenderingConfigurationOptionsManager;
  v9 = [(SXRenderingConfigurationOptionsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_documentProvider, provider);
    objc_storeStrong(&v10->_configurationProvider, configurationProvider);
  }

  return v10;
}

- (SXHintsConfigurationOption)hints
{
  os_unfair_lock_lock_with_options();
  hints = self->_hints;
  os_unfair_lock_unlock(&self->_lock);
  if (!hints)
  {
    configuration = [(SXRenderingConfigurationProvider *)self->_configurationProvider configuration];
    hints = [configuration hints];

    if ([(SXRenderingConfigurationOptionsManager *)self validateConfigurationOption:hints])
    {
      if (hints)
      {
LABEL_7:
        os_unfair_lock_lock_with_options();
        objc_storeStrong(&self->_hints, hints);
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_8;
      }
    }

    else
    {
    }

    hints = objc_alloc_init(SXDefaultHintsConfigurationOption);
    goto LABEL_7;
  }

LABEL_8:
  v5 = hints;

  return v5;
}

- (BOOL)validateConfigurationOption:(id)option
{
  selfCopy = self;
  documentProvider = self->_documentProvider;
  optionCopy = option;
  document = [(SXDocumentProviding *)documentProvider document];
  specVersion = [document specVersion];
  LOBYTE(selfCopy) = [(SXRenderingConfigurationOptionsManager *)selfCopy validateConfigurationOption:optionCopy documentSpecVersion:specVersion clientSpecVersion:@"1.30"];

  return selfCopy;
}

- (BOOL)validateConfigurationOption:(id)option documentSpecVersion:(id)version clientSpecVersion:(id)specVersion
{
  optionCopy = option;
  versionCopy = version;
  specVersionCopy = specVersion;
  if (versionCopy)
  {
    minDocumentSpecVersion = [optionCopy minDocumentSpecVersion];
    if (minDocumentSpecVersion)
    {
      v11 = minDocumentSpecVersion;
      minDocumentSpecVersion2 = [optionCopy minDocumentSpecVersion];
      v13 = SXSpecVersionCompare(versionCopy, minDocumentSpecVersion2);

      if (v13 == -1)
      {
        goto LABEL_11;
      }
    }

    maxDocumentSpecVersion = [optionCopy maxDocumentSpecVersion];
    if (maxDocumentSpecVersion)
    {
      v15 = maxDocumentSpecVersion;
      maxDocumentSpecVersion2 = [optionCopy maxDocumentSpecVersion];
      v17 = SXSpecVersionCompare(versionCopy, maxDocumentSpecVersion2);

      if (v17 == 1)
      {
        goto LABEL_11;
      }
    }
  }

  if (!specVersionCopy)
  {
LABEL_12:
    v25 = 1;
    goto LABEL_13;
  }

  minClientSpecVersion = [optionCopy minClientSpecVersion];
  if (minClientSpecVersion)
  {
    v19 = minClientSpecVersion;
    minClientSpecVersion2 = [optionCopy minClientSpecVersion];
    v21 = SXSpecVersionCompare(versionCopy, minClientSpecVersion2);

    if (v21 == -1)
    {
LABEL_11:
      v25 = 0;
      goto LABEL_13;
    }
  }

  maxClientSpecVersion = [optionCopy maxClientSpecVersion];
  if (!maxClientSpecVersion)
  {
    goto LABEL_12;
  }

  v23 = maxClientSpecVersion;
  maxClientSpecVersion2 = [optionCopy maxClientSpecVersion];
  v25 = SXSpecVersionCompare(specVersionCopy, maxClientSpecVersion2) != 1;

LABEL_13:
  return v25;
}

@end