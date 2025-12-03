@interface SESConfigAliro
- (SESConfigAliro)init;
- (id)getConfiguration:(id *)configuration;
@end

@implementation SESConfigAliro

- (SESConfigAliro)init
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = SESConfigAliro;
  v2 = [(SESConfigAliro *)&v19 init];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = MGGetStringAnswer();
  mgDeviceClass = v2->_mgDeviceClass;
  v2->_mgDeviceClass = v3;

  if (!v2->_mgDeviceClass)
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Failed to read DeviceClass from device";
LABEL_13:
      _os_log_impl(&dword_1E0FCB000, v11, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v5 = MGGetStringAnswer();
  mgProductVersion = v2->_mgProductVersion;
  v2->_mgProductVersion = v5;

  v7 = v2->_mgProductVersion;
  if (!v7)
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Failed to read ProductVersion from device";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v18 = 0;
  [SESConfigUtilities getVersion:v7 error:&v18];
  v9 = v8;
  v10 = v18;
  v2->_productVersion = v9;
  if (v10)
  {
    v11 = v10;
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v2->_mgProductVersion;
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_1E0FCB000, v12, OS_LOG_TYPE_ERROR, "Invalid ProductVersion value %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

LABEL_8:
  v14 = v2;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)getConfiguration:(id *)configuration
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [SESConfig alloc];
  *&v6 = self->_productVersion;
  v7 = [(SESConfig *)v5 initWithDeviceClass:self->_mgDeviceClass productVersion:v6];
  v51 = 0;
  v8 = [(SESConfig *)v7 getContentsOfAssetFile:@"_settings" component:2 error:&v51];
  v9 = v51;
  v10 = v9;
  if (v9)
  {
    if (configuration)
    {
      v11 = v9;
      v12 = 0;
      *configuration = v10;
      goto LABEL_51;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    v15 = SESDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0FCB000, v15, OS_LOG_TYPE_INFO, "No asset available", buf, 2u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_51;
  }

  v13 = [v8 objectForKeyedSubscript:@"Configurations"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 count])
      {
        if ([@"iPhone" isEqualToString:self->_mgDeviceClass])
        {
          v44 = v8;
          v45 = v7;
          v14 = @"MinOSPhone";
LABEL_21:
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v43 = v13;
          v16 = v13;
          v23 = [v16 countByEnumeratingWithState:&v47 objects:v54 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v48;
LABEL_23:
            v26 = 0;
            while (1)
            {
              if (*v48 != v25)
              {
                objc_enumerationMutation(v16);
              }

              v27 = *(*(&v47 + 1) + 8 * v26);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v28 = [v27 objectForKeyedSubscript:v14];
                if (v28)
                {
                  v29 = v28;
                  v46 = 0;
                  [SESConfigUtilities getVersion:v28 error:&v46];
                  v31 = v30;
                  v32 = v46;
                  if (v32)
                  {
                    v33 = SESDefaultLogObject();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v53 = v32;
                      _os_log_impl(&dword_1E0FCB000, v33, OS_LOG_TYPE_ERROR, "Failed to retrieve version %@", buf, 0xCu);
                    }
                  }

                  else if (v31 <= self->_productVersion)
                  {
                    v12 = v27;

                    goto LABEL_45;
                  }

                  goto LABEL_39;
                }

                v29 = SESDefaultLogObject();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v53 = v14;
                  v34 = v29;
                  v35 = "Missing key %@";
                  v36 = 12;
                  goto LABEL_36;
                }
              }

              else
              {
                v29 = SESDefaultLogObject();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v34 = v29;
                  v35 = "Wrong class for configuration";
                  v36 = 2;
LABEL_36:
                  _os_log_impl(&dword_1E0FCB000, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
                }
              }

LABEL_39:

              if (v24 == ++v26)
              {
                v24 = [v16 countByEnumeratingWithState:&v47 objects:v54 count:16];
                if (v24)
                {
                  goto LABEL_23;
                }

                break;
              }
            }
          }

          v16 = SESDefaultLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1E0FCB000, v16, OS_LOG_TYPE_INFO, "No applicable configuration found", buf, 2u);
          }

          v12 = 0;
LABEL_45:
          v8 = v44;
          v7 = v45;
          v13 = v43;
          v10 = 0;
          goto LABEL_46;
        }

        if ([@"Watch" isEqualToString:self->_mgDeviceClass])
        {
          v44 = v8;
          v45 = v7;
          v14 = @"MinOSWatch";
          goto LABEL_21;
        }

        if (configuration)
        {
          v16 = SESDefaultLogObject();
          SESCreateAndLogError(0, v16, SESErrorDomain, 0, @"Unknown device class %@", v37, v38, v39, self->_mgDeviceClass);
          goto LABEL_18;
        }
      }

LABEL_49:
      v12 = 0;
      goto LABEL_50;
    }

    if (!configuration)
    {
      goto LABEL_49;
    }

    v16 = SESDefaultLogObject();
    SESCreateAndLogError(0, v16, SESErrorDomain, 0, @"Wrong class for configurations", v20, v21, v22, v42);
  }

  else
  {
    if (!configuration)
    {
      goto LABEL_49;
    }

    v16 = SESDefaultLogObject();
    SESCreateAndLogError(0, v16, SESErrorDomain, 0, @"Missing key %@", v17, v18, v19, @"Configurations");
  }

LABEL_18:
  *configuration = v12 = 0;
LABEL_46:

LABEL_50:
LABEL_51:

  v40 = *MEMORY[0x1E69E9840];

  return v12;
}

@end