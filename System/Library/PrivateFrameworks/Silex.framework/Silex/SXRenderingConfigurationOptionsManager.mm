@interface SXRenderingConfigurationOptionsManager
- (BOOL)validateConfigurationOption:(id)a3;
- (BOOL)validateConfigurationOption:(id)a3 documentSpecVersion:(id)a4 clientSpecVersion:(id)a5;
- (SXHintsConfigurationOption)hints;
- (SXRenderingConfigurationOptionsManager)initWithDocumentProvider:(id)a3 configurationProvider:(id)a4;
@end

@implementation SXRenderingConfigurationOptionsManager

- (SXRenderingConfigurationOptionsManager)initWithDocumentProvider:(id)a3 configurationProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXRenderingConfigurationOptionsManager;
  v9 = [(SXRenderingConfigurationOptionsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_documentProvider, a3);
    objc_storeStrong(&v10->_configurationProvider, a4);
  }

  return v10;
}

- (SXHintsConfigurationOption)hints
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hints;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {
    v4 = [(SXRenderingConfigurationProvider *)self->_configurationProvider configuration];
    v3 = [v4 hints];

    if ([(SXRenderingConfigurationOptionsManager *)self validateConfigurationOption:v3])
    {
      if (v3)
      {
LABEL_7:
        os_unfair_lock_lock_with_options();
        objc_storeStrong(&self->_hints, v3);
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_8;
      }
    }

    else
    {
    }

    v3 = objc_alloc_init(SXDefaultHintsConfigurationOption);
    goto LABEL_7;
  }

LABEL_8:
  v5 = v3;

  return v5;
}

- (BOOL)validateConfigurationOption:(id)a3
{
  v3 = self;
  documentProvider = self->_documentProvider;
  v5 = a3;
  v6 = [(SXDocumentProviding *)documentProvider document];
  v7 = [v6 specVersion];
  LOBYTE(v3) = [(SXRenderingConfigurationOptionsManager *)v3 validateConfigurationOption:v5 documentSpecVersion:v7 clientSpecVersion:@"1.30"];

  return v3;
}

- (BOOL)validateConfigurationOption:(id)a3 documentSpecVersion:(id)a4 clientSpecVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v7 minDocumentSpecVersion];
    if (v10)
    {
      v11 = v10;
      v12 = [v7 minDocumentSpecVersion];
      v13 = SXSpecVersionCompare(v8, v12);

      if (v13 == -1)
      {
        goto LABEL_11;
      }
    }

    v14 = [v7 maxDocumentSpecVersion];
    if (v14)
    {
      v15 = v14;
      v16 = [v7 maxDocumentSpecVersion];
      v17 = SXSpecVersionCompare(v8, v16);

      if (v17 == 1)
      {
        goto LABEL_11;
      }
    }
  }

  if (!v9)
  {
LABEL_12:
    v25 = 1;
    goto LABEL_13;
  }

  v18 = [v7 minClientSpecVersion];
  if (v18)
  {
    v19 = v18;
    v20 = [v7 minClientSpecVersion];
    v21 = SXSpecVersionCompare(v8, v20);

    if (v21 == -1)
    {
LABEL_11:
      v25 = 0;
      goto LABEL_13;
    }
  }

  v22 = [v7 maxClientSpecVersion];
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v7 maxClientSpecVersion];
  v25 = SXSpecVersionCompare(v9, v24) != 1;

LABEL_13:
  return v25;
}

@end