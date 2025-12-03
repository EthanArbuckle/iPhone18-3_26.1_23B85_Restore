@interface SESConfig
- (SESConfig)initWithDeviceClass:(id)class productVersion:(float)version;
- (SESConfig)initWithDeviceClass:(id)class productVersion:(float)version path:(id)path;
- (id)getConfigForManufacturer:(id)manufacturer component:(unint64_t)component error:(id *)error;
- (id)getContentsOfAssetFile:(id)file component:(unint64_t)component error:(id *)error;
- (id)readContentsOfPlist:(id)plist component:(id)component isProfile:(BOOL)profile error:(id *)error;
@end

@implementation SESConfig

- (SESConfig)initWithDeviceClass:(id)class productVersion:(float)version
{
  v6 = MEMORY[0x1E695DFF8];
  classCopy = class;
  v8 = [v6 fileURLWithPath:@"/private/var/mobile/Library/SecureElementService/Asset/"];
  *&v9 = version;
  v10 = [(SESConfig *)self initWithDeviceClass:classCopy productVersion:v8 path:v9];

  return v10;
}

- (SESConfig)initWithDeviceClass:(id)class productVersion:(float)version path:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  classCopy = class;
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = SESConfig;
  v10 = [(SESConfig *)&v20 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v10->_path, path);
  if ([@"iPhone" isEqualToString:classCopy])
  {
    v12 = @"MinOSPhone";
LABEL_6:
    minOSKey = v11->_minOSKey;
    v11->_minOSKey = &v12->isa;

    v11->_productVersion = version;
    v11->_cachedComponent = 0;
    cachedFileName = v11->_cachedFileName;
    v11->_cachedFileName = 0;

    cache = v11->_cache;
    v11->_cache = 0;

LABEL_7:
    v16 = v11;
    goto LABEL_8;
  }

  if ([@"Watch" isEqualToString:classCopy])
  {
    v12 = @"MinOSWatch";
    goto LABEL_6;
  }

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = classCopy;
    _os_log_impl(&dword_1E0FCB000, v19, OS_LOG_TYPE_ERROR, "Unknown device class %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)getConfigForManufacturer:(id)manufacturer component:(unint64_t)component error:(id *)error
{
  v27 = 0;
  v7 = [(SESConfig *)self getContentsOfAssetFile:manufacturer component:component error:&v27];
  v8 = v27;
  v9 = v8;
  if (!v8)
  {
    v12 = [v7 objectForKeyedSubscript:self->_minOSKey];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [SESConfigUtilities getVersion:v12 error:0];
        v14 = v13;
        if (v13 <= self->_productVersion)
        {
          v11 = v7;
          goto LABEL_17;
        }

        if (error)
        {
          v15 = SESDefaultLogObject();
          productVersion = self->_productVersion;
          SESCreateAndLogError(0, v15, SESErrorDomain, 6, @"MinOS not satisfied config %f > %f current", v16, v17, v18, COERCE__INT64(v14));
          *error = LABEL_15:;
        }

LABEL_16:
        v11 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (!error)
      {
        goto LABEL_16;
      }

      v15 = SESDefaultLogObject();
      v22 = SESErrorDomain;
      minOSKey = self->_minOSKey;
      v24 = @"Wrong class for key %@";
    }

    else
    {
      if (!error)
      {
        goto LABEL_16;
      }

      v15 = SESDefaultLogObject();
      v22 = SESErrorDomain;
      minOSKey = self->_minOSKey;
      v24 = @"Missing key %@";
    }

    SESCreateAndLogError(0, v15, v22, 0, v24, v19, v20, v21, minOSKey);
    goto LABEL_15;
  }

  if (error)
  {
    v10 = v8;
    v11 = 0;
    *error = v9;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)getContentsOfAssetFile:(id)file component:(unint64_t)component error:(id *)error
{
  fileCopy = file;
  v10 = fileCopy;
  if (self->_cachedComponent == component && [fileCopy isEqualToString:self->_cachedFileName])
  {
    v11 = self->_cache;
    goto LABEL_24;
  }

  if (component == 1)
  {
    v12 = @"DCK";
LABEL_8:
    v25 = 0;
    v13 = [(SESConfig *)self readContentsOfPlist:v10 component:v12 isProfile:1 error:&v25];
    v14 = v25;
    if (v14)
    {
      v15 = v14;
      if ([v14 code] != 4)
      {
        if (error)
        {
          v22 = v15;
          v11 = 0;
          *error = v15;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_23;
      }

      v24 = 0;
      v16 = [(SESConfig *)self readContentsOfPlist:v10 component:v12 isProfile:0 error:&v24];
      v15 = v24;

      v13 = v16;
      if (v15)
      {
        if (!error)
        {
LABEL_13:
          v11 = v16;
          v13 = v11;
LABEL_23:

          goto LABEL_24;
        }

LABEL_12:
        v17 = v15;
        *error = v15;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = v13;
    }

    objc_storeStrong(&self->_cachedFileName, file);
    self->_cachedComponent = component;
    objc_storeStrong(&self->_cache, v13);
    v15 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (component == 2)
  {
    v12 = @"Aliro";
    goto LABEL_8;
  }

  if (error)
  {
    v18 = SESDefaultLogObject();
    *error = SESCreateAndLogError(0, v18, SESErrorDomain, 1, @"Invalid component", v19, v20, v21, v24);
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (id)readContentsOfPlist:(id)plist component:(id)component isProfile:(BOOL)profile error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = &stru_1F5BEA718;
  if (profile)
  {
    v8 = @"profile_";
  }

  plist = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@%@.plist", component, v8, plist];
  v10 = [(NSURL *)self->_path URLByAppendingPathComponent:plist];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v10 path];
  v13 = [defaultManager isReadableFileAtPath:path];

  if (v13)
  {
    v32 = 0;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10 error:&v32];
    v15 = v32;
    if (v15)
    {
      if (error)
      {
        v16 = SESDefaultLogObject();
        v17 = SESErrorDomain;
        path2 = [v10 path];
        *error = SESCreateAndLogError(v15, v16, v17, 0, @"Failed to load contents from %@", v19, v20, v21, path2);

        error = 0;
      }
    }

    else
    {
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        path3 = [v10 path];
        *buf = 138412290;
        v34 = path3;
        _os_log_impl(&dword_1E0FCB000, v28, OS_LOG_TYPE_INFO, "Contents retrieved from %@", buf, 0xCu);
      }

      error = v14;
    }
  }

  else if (error)
  {
    v22 = SESDefaultLogObject();
    v23 = SESErrorDomain;
    path4 = [v10 path];
    *error = SESCreateAndLogError(0, v22, v23, 4, @"File not found %@", v25, v26, v27, path4);

    error = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return error;
}

@end