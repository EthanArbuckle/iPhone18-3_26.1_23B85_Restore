@interface SESConfigDCK
+ (BOOL)evaluateCondition:(id)a3 operator:(id)a4 value:(id)a5 brand:(id)a6 uuid:(id)a7 deviceClass:(id)a8 productVersion:(id)a9 error:(id *)a10;
+ (BOOL)evaluateOperator:(id)a3 valueFromDevice:(id)a4 valueFromConfig:(id)a5 error:(id *)a6;
+ (BOOL)isConfigurationApplicable:(id)a3 brand:(id)a4 uuid:(id)a5 deviceClass:(id)a6 productVersion:(id)a7 error:(id *)a8;
+ (id)getResolvedSettingsFrom:(id)a3 brand:(id)a4 uuid:(id)a5 deviceClass:(id)a6 productVersion:(id)a7 error:(id *)a8;
- (BOOL)isDCKConfigurationAvailableFor:(id)a3 error:(id *)a4;
- (SESConfigDCK)init;
- (id)BOOLValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7;
- (id)arrayValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7;
- (id)dictValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7;
- (id)getCertificate:(id)a3 manufacturer:(id)a4 environment:(id)a5 region:(id)a6 prodSE:(id)a7 keyID:(id)a8 error:(id *)a9;
- (id)getSettingForKey:(id)a3 error:(id *)a4;
- (id)getSettingsFor:(id)a3 brand:(id)a4 uuid:(id)a5 error:(id *)a6;
- (id)initAtPath:(id)a3 deviceClass:(id)a4 productVersion:(id)a5;
- (id)intValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7;
@end

@implementation SESConfigDCK

- (SESConfigDCK)init
{
  v31 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = SESConfigDCK;
  v2 = [(SESConfigDCK *)&v28 init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = MGGetStringAnswer();
  mgDeviceClass = v2->_mgDeviceClass;
  v2->_mgDeviceClass = v3;

  if (!v2->_mgDeviceClass)
  {
    v10 = SESDefaultLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Failed to read DeviceClass from device";
LABEL_13:
    _os_log_impl(&dword_1E0FCB000, v10, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_14;
  }

  v5 = MGGetStringAnswer();
  mgProductVersion = v2->_mgProductVersion;
  v2->_mgProductVersion = v5;

  v7 = v2->_mgProductVersion;
  if (!v7)
  {
    v10 = SESDefaultLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Failed to read ProductVersion from device";
    goto LABEL_13;
  }

  v27 = 0;
  [SESConfigUtilities getVersion:v7 error:&v27];
  v9 = v8;
  v10 = v27;
  if (!v10)
  {
    v18 = [SESConfig alloc];
    LODWORD(v19) = v9;
    v20 = [(SESConfig *)v18 initWithDeviceClass:v2->_mgDeviceClass productVersion:v19];
    config = v2->_config;
    v2->_config = v20;

    if (!v2->_config)
    {
      v11 = SESDefaultLogObject();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v13 = "Failed to initialize SESConfig";
      v14 = v11;
      v15 = 2;
      goto LABEL_7;
    }

    vehicleBrand = v2->_vehicleBrand;
    v2->_vehicleBrand = 0;

    vehicleUUID = v2->_vehicleUUID;
    v2->_vehicleUUID = 0;

    settings = v2->_settings;
    v2->_settings = 0;

LABEL_17:
    v17 = v2;
    goto LABEL_18;
  }

  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v2->_mgProductVersion;
    *buf = 138412290;
    v30 = v12;
    v13 = "Invalid ProductVersion value %@";
    v14 = v11;
    v15 = 12;
LABEL_7:
    _os_log_impl(&dword_1E0FCB000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
  }

LABEL_8:

LABEL_14:
  v17 = 0;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)initAtPath:(id)a3 deviceClass:(id)a4 productVersion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SESConfigDCK *)self init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v11->_mgDeviceClass, a4);
  objc_storeStrong(&v12->_mgProductVersion, a5);
  v27 = 0;
  [SESConfigUtilities getVersion:v10 error:&v27];
  v14 = v13;
  v15 = v27;
  if (!v15)
  {
    v21 = [SESConfig alloc];
    LODWORD(v22) = v14;
    v23 = [(SESConfig *)v21 initWithDeviceClass:v9 productVersion:v8 path:v22];
    config = v12->_config;
    v12->_config = v23;

    if (!v12->_config)
    {
      v16 = SESDefaultLogObject();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      *buf = 0;
      v17 = "Failed to initialize SESConfig";
      v18 = v16;
      v19 = 2;
      goto LABEL_5;
    }

LABEL_8:
    v20 = v12;
    goto LABEL_9;
  }

  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v10;
    v17 = "Invalid ProductVersion value %@";
    v18 = v16;
    v19 = 12;
LABEL_5:
    _os_log_impl(&dword_1E0FCB000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_6:

  v20 = 0;
LABEL_9:

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)getSettingForKey:(id)a3 error:(id *)a4
{
  config = self->_config;
  v13 = 0;
  v6 = a3;
  v7 = [(SESConfig *)config getContentsOfAssetFile:@"_settings" component:1 error:&v13];
  v8 = v13;
  v9 = v8;
  if (a4)
  {
    v10 = v8;
    *a4 = v9;
  }

  v11 = [v7 objectForKeyedSubscript:v6];

  return v11;
}

- (BOOL)isDCKConfigurationAvailableFor:(id)a3 error:(id *)a4
{
  config = self->_config;
  v15 = 0;
  v6 = [(SESConfig *)config getConfigForManufacturer:a3 component:1 error:&v15];
  v7 = v15;
  v8 = v7;
  if (a4 && v7)
  {
    v9 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError(v8, v9, SESErrorDomain, 0, @"Failed to retrieve configuration", v10, v11, v12, v14);
  }

  return v6 != 0;
}

- (id)getCertificate:(id)a3 manufacturer:(id)a4 environment:(id)a5 region:(id)a6 prodSE:(id)a7 keyID:(id)a8 error:(id *)a9
{
  v81 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  config = self->_config;
  v79 = 0;
  v21 = [(SESConfig *)config getConfigForManufacturer:a4 component:1 error:&v79];
  v22 = v79;
  if (v22)
  {
    v23 = v22;
    if (a9)
    {
      v24 = SESDefaultLogObject();
      *a9 = SESCreateAndLogError(v23, v24, SESErrorDomain, 0, @"Failed to retrieve configuration", v25, v26, v27, v64);
    }

    goto LABEL_4;
  }

  v31 = [SESConfigUtilities validateKey:@"Certificates" expectedClass:objc_opt_class() dictionary:v21];
  if (v31)
  {
    v23 = v31;
    if (a9)
    {
      v32 = v31;
      v28 = 0;
      *a9 = v23;
      goto LABEL_5;
    }

LABEL_4:
    v28 = 0;
    goto LABEL_5;
  }

  v33 = [v21 objectForKeyedSubscript:@"Certificates"];
  v34 = [SESConfigUtilities validateKey:v15 expectedClass:objc_opt_class() dictionary:v33];
  if (v34)
  {
    v23 = v34;
    if (a9)
    {
      v35 = v34;
      v28 = 0;
      *a9 = v23;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_53;
  }

  v68 = v33;
  v36 = [v33 objectForKeyedSubscript:v15];
  v37 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v36;
  v69 = v37;
  v72 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (!v72)
  {
    goto LABEL_35;
  }

  v73 = *v76;
  v67 = v15;
  v70 = v19;
  while (2)
  {
    for (i = 0; i != v72; ++i)
    {
      if (*v76 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v75 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a9)
        {
          v54 = SESDefaultLogObject();
          *a9 = SESCreateAndLogError(0, v54, SESErrorDomain, 0, @"Wrong class for certificate", v55, v56, v57, v64);
        }

        v23 = 0;
        goto LABEL_45;
      }

      if (!v16)
      {
        goto LABEL_57;
      }

      v40 = [SESConfigUtilities validateKey:@"Environment" expectedClass:objc_opt_class() dictionary:v39];
      if (v40)
      {
        goto LABEL_40;
      }

      v41 = [v39 objectForKeyedSubscript:@"Environment"];
      v42 = [v16 isEqualToString:v41];

      if (v42)
      {
LABEL_57:
        if (!v17)
        {
          goto LABEL_26;
        }

        v40 = [SESConfigUtilities validateKey:@"Region" expectedClass:objc_opt_class() dictionary:v39];
        if (v40)
        {
          goto LABEL_40;
        }

        v43 = [v39 objectForKeyedSubscript:@"Region"];
        v44 = [v17 isEqualToString:v43];

        if (v44)
        {
LABEL_26:
          if (!v18)
          {
            goto LABEL_29;
          }

          v40 = [SESConfigUtilities validateKey:@"ProdSE" expectedClass:objc_opt_class() dictionary:v39];
          if (v40)
          {
            goto LABEL_40;
          }

          v45 = [v18 BOOLValue];
          v46 = [v39 objectForKeyedSubscript:@"ProdSE"];
          v47 = [v46 BOOLValue];

          if (v45 == v47)
          {
LABEL_29:
            if (!v70)
            {
LABEL_32:
              [v69 addObject:v39];
              continue;
            }

            v40 = [SESConfigUtilities validateKey:@"KeyID" expectedClass:objc_opt_class() dictionary:v39];
            if (!v40)
            {
              v48 = [v39 objectForKeyedSubscript:@"KeyID"];
              v49 = [v70 isEqualToData:v48];

              if (!v49)
              {
                continue;
              }

              goto LABEL_32;
            }

LABEL_40:
            v23 = v40;
            if (a9)
            {
              v53 = v40;
              v28 = 0;
              *a9 = v23;
LABEL_46:
              v19 = v70;
              v50 = obj;
              v15 = v67;
              goto LABEL_51;
            }

LABEL_45:
            v28 = 0;
            goto LABEL_46;
          }
        }
      }
    }

    v15 = v67;
    v37 = v69;
    v19 = v70;
    v72 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_35:

  if ([v37 count] == 1)
  {
    v50 = [v37 firstObject];
    v51 = [SESConfigUtilities validateKey:@"Certificate" expectedClass:objc_opt_class() dictionary:v50];
    v23 = v51;
    if (v51)
    {
      if (a9)
      {
        v52 = v51;
        v28 = 0;
        *a9 = v23;
        goto LABEL_51;
      }

LABEL_49:
      v28 = 0;
    }

    else
    {
      v28 = [v50 objectForKeyedSubscript:@"Certificate"];
    }

LABEL_51:
  }

  else
  {
    if (a9)
    {
      v50 = SESDefaultLogObject();
      v74 = SESErrorDomain;
      v58 = v19;
      v59 = v15;
      v60 = [v37 count];
      v66 = [v58 base64];
      v65 = v60;
      v15 = v59;
      v19 = v58;
      *a9 = SESCreateAndLogError(0, v50, v74, 0, @"%lu matches for type %@ environment %@ region %@ prodSE %@ keyID %@", v61, v62, v63, v65);

      v23 = 0;
      goto LABEL_49;
    }

    v23 = 0;
    v28 = 0;
  }

  v33 = v68;

LABEL_53:
LABEL_5:

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)BOOLValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7
{
  v20 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:a4 brand:a5 uuid:a6 error:&v20];
  v10 = v20;
  if (v10)
  {
    v11 = v10;
    if (a7)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *a7 = v11;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a3 >= 0xB)
  {
    if (a7)
    {
      v15 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError(0, v15, SESErrorDomain, 1, @"Invalid BOOL setting input %lu", v16, v17, v18, a3);
    }

    v11 = 0;
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v14 = off_1E86FFBA0[a3];
  v11 = [SESConfigUtilities validateKey:v14 expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (a7)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v13 = [v9 objectForKeyedSubscript:v14];
LABEL_12:

  return v13;
}

- (id)intValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7
{
  v25 = 0;
  v10 = [(SESConfigDCK *)self getSettingsFor:a4 brand:a5 uuid:a6 error:&v25];
  v11 = v25;
  if (v11)
  {
    v12 = v11;
    if (a7)
    {
LABEL_3:
      v13 = v12;
      v14 = 0;
      *a7 = v12;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a3 == 1)
  {
    if ([@"iPhone" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSIFurtherPhone";
      goto LABEL_16;
    }

    if ([@"Watch" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSIFurtherWatch";
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (a3)
  {
    if (a7)
    {
      v16 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError(0, v16, SESErrorDomain, 1, @"Invalid int setting input %lu", v17, v18, v19, a3);
    }

    goto LABEL_22;
  }

  if (([@"iPhone" isEqualToString:self->_mgDeviceClass] & 1) == 0)
  {
    if ([@"Watch" isEqualToString:self->_mgDeviceClass])
    {
      v15 = @"RSSICloserWatch";
      goto LABEL_16;
    }

LABEL_20:
    if (a7)
    {
      v20 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError(0, v20, SESErrorDomain, 1, @"Invalid DeviceClass %@", v21, v22, v23, self->_mgDeviceClass);
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v15 = @"RSSICloserPhone";
LABEL_16:
  v12 = [SESConfigUtilities validateKey:v15 expectedClass:objc_opt_class() dictionary:v10];
  if (!v12)
  {
    v14 = [v10 objectForKeyedSubscript:v15];
    goto LABEL_24;
  }

  if (a7)
  {
    goto LABEL_3;
  }

LABEL_23:
  v14 = 0;
LABEL_24:

  return v14;
}

- (id)arrayValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7
{
  v19 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:a4 brand:a5 uuid:a6 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = v10;
    if (a7)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *a7 = v11;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    if (a7)
    {
      v14 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError(0, v14, SESErrorDomain, 1, @"Invalid array setting input %lu", v15, v16, v17, a3);
    }

    v11 = 0;
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [SESConfigUtilities validateKey:@"RKEDisabledFunctions" expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (a7)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v13 = [v9 objectForKeyedSubscript:@"RKEDisabledFunctions"];
LABEL_9:

  return v13;
}

- (id)dictValueForSetting:(unint64_t)a3 manufacturer:(id)a4 brand:(id)a5 uuid:(id)a6 error:(id *)a7
{
  v19 = 0;
  v9 = [(SESConfigDCK *)self getSettingsFor:a4 brand:a5 uuid:a6 error:&v19];
  v10 = v19;
  if (v10)
  {
    v11 = v10;
    if (a7)
    {
LABEL_3:
      v12 = v11;
      v13 = 0;
      *a7 = v11;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    if (a7)
    {
      v14 = SESDefaultLogObject();
      *a7 = SESCreateAndLogError(0, v14, SESErrorDomain, 1, @"Invalid dict setting input %lu", v15, v16, v17, a3);
    }

    v11 = 0;
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = [SESConfigUtilities validateKey:@"RKETimeout" expectedClass:objc_opt_class() dictionary:v9];
  if (v11)
  {
    if (a7)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v13 = [v9 objectForKeyedSubscript:@"RKETimeout"];
LABEL_9:

  return v13;
}

- (id)getSettingsFor:(id)a3 brand:(id)a4 uuid:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  obj = a5;
  v11 = a5;
  vehicleBrand = self->_vehicleBrand;
  v13 = (v10 | vehicleBrand) == 0;
  if (v10 && vehicleBrand)
  {
    v13 = [v10 isEqualToString:?];
  }

  vehicleUUID = self->_vehicleUUID;
  v15 = (v11 | vehicleUUID) == 0;
  if (v11 && vehicleUUID)
  {
    v15 = [v11 isEqualToData:?];
  }

  v16 = [(SESConfig *)self->_config cachedFileName];
  v17 = [v16 isEqualToString:v9] & v13;

  if (v17 == 1 && v15 != 0)
  {
    v27 = self->_settings;
    goto LABEL_23;
  }

  config = self->_config;
  v38 = 0;
  v20 = [(SESConfig *)config getConfigForManufacturer:v9 component:1 error:&v38];
  v21 = v38;
  if (!v21)
  {
    mgDeviceClass = self->_mgDeviceClass;
    mgProductVersion = self->_mgProductVersion;
    v37 = 0;
    v34 = v20;
    v23 = [SESConfigDCK getResolvedSettingsFrom:v20 brand:v10 uuid:v11 deviceClass:mgDeviceClass productVersion:mgProductVersion error:&v37];
    v30 = v37;
    v22 = v30;
    if (v30)
    {
      if (a6)
      {
        v31 = v30;
        v27 = 0;
        *a6 = v22;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      objc_storeStrong(&self->_vehicleBrand, a4);
      objc_storeStrong(&self->_vehicleUUID, obj);
      objc_storeStrong(&self->_settings, v23);
      v27 = self->_settings;
    }

    goto LABEL_21;
  }

  v22 = v21;
  if (a6)
  {
    v34 = v20;
    v23 = SESDefaultLogObject();
    SESCreateAndLogError(v22, v23, SESErrorDomain, 0, @"Failed to retrieve configuration", v24, v25, v26, v33);
    *a6 = v27 = 0;
LABEL_21:

    v20 = v34;
    goto LABEL_22;
  }

  v27 = 0;
LABEL_22:

LABEL_23:

  return v27;
}

+ (id)getResolvedSettingsFrom:(id)a3 brand:(id)a4 uuid:(id)a5 deviceClass:(id)a6 productVersion:(id)a7 error:(id *)a8
{
  v82 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = SESDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v12 objectForKeyedSubscript:@"Manufacturer"];
    v19 = [v14 base64];
    *buf = 138413314;
    v73 = v18;
    v74 = 2112;
    v75 = v13;
    v76 = 2112;
    v77 = v19;
    v78 = 2112;
    v79 = v15;
    v80 = 2112;
    v81 = v16;
    _os_log_impl(&dword_1E0FCB000, v17, OS_LOG_TYPE_INFO, "Resolving settings for manufacturer %@ brand %@ uuid %@ device class %@ product version %@", buf, 0x34u);
  }

  v20 = 0x1E695D000uLL;
  v21 = [SESConfigUtilities validateKey:@"DefaultSettings" expectedClass:objc_opt_class() dictionary:v12];
  if (v21)
  {
    v22 = v21;
    if (a8)
    {
      v23 = v21;
      v24 = 0;
      *a8 = v22;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_45;
  }

  v25 = [v12 objectForKeyedSubscript:@"DefaultSettings"];
  v26 = [v25 mutableCopy];

  v27 = SESDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v73 = v26;
    _os_log_impl(&dword_1E0FCB000, v27, OS_LOG_TYPE_INFO, "Default settings %@", buf, 0xCu);
  }

  v58 = v26;

  v28 = [SESConfigUtilities validateKey:@"Configurations" expectedClass:objc_opt_class() dictionary:v12];
  v22 = v28;
  if (v28)
  {
    if (a8)
    {
      v29 = v28;
      v24 = 0;
      *a8 = v22;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_44;
  }

  v60 = v15;
  v61 = v14;
  [v12 objectForKeyedSubscript:@"Configurations"];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v70 = 0u;
  v56 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (!v56)
  {
LABEL_40:
    v40 = obj;

    v51 = SESDefaultLogObject();
    v15 = v60;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v26;
      _os_log_impl(&dword_1E0FCB000, v51, OS_LOG_TYPE_INFO, "Resolved settings %@", buf, 0xCu);
    }

    v24 = v26;
    v14 = v61;
    goto LABEL_43;
  }

  v57 = *v68;
  v62 = v16;
  v59 = v13;
LABEL_14:
  v30 = 0;
  while (1)
  {
    if (*v68 != v57)
    {
      objc_enumerationMutation(obj);
    }

    v31 = *(*(&v67 + 1) + 8 * v30);
    v32 = *(v20 + 3872);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = v59;
      v15 = v60;
      v39 = a8;
      v40 = obj;
      if (!a8)
      {
LABEL_36:

        v24 = 0;
        goto LABEL_43;
      }

      v41 = SESDefaultLogObject();
      v45 = SESCreateAndLogError(0, v41, SESErrorDomain, 0, @"Wrong class for configuration", v42, v43, v44, v54);
      goto LABEL_29;
    }

    v33 = [SESConfigUtilities validateKey:@"Conditions" expectedClass:objc_opt_class() dictionary:v31];
    if (v33)
    {
      v41 = v33;
      v39 = a8;
      if (!a8)
      {
        v13 = v59;
        v15 = v60;
        v40 = obj;
        goto LABEL_35;
      }

      v45 = v33;
      v13 = v59;
      v15 = v60;
      v40 = obj;
LABEL_29:
      *v39 = v45;
LABEL_35:

      v16 = v62;
      goto LABEL_36;
    }

    v34 = v12;
    v35 = v20;
    v36 = [v31 objectForKeyedSubscript:@"Conditions"];
    v66 = 0;
    v37 = [SESConfigDCK isConfigurationApplicable:v36 brand:v59 uuid:v14 deviceClass:v60 productVersion:v62 error:&v66];
    v38 = v66;
    if (v38)
    {
      goto LABEL_31;
    }

    if (v37)
    {
      break;
    }

    ++v30;
    v16 = v62;
    v20 = v35;
    v12 = v34;
    if (v56 == v30)
    {
      v13 = v59;
      v56 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      if (v56)
      {
        goto LABEL_14;
      }

      goto LABEL_40;
    }
  }

  v46 = *(v35 + 3872);
  v38 = [SESConfigUtilities validateKey:@"Settings" expectedClass:objc_opt_class() dictionary:v31];
  if (!v38)
  {
    v49 = [v31 objectForKeyedSubscript:@"Settings"];
    v50 = SESDefaultLogObject();
    v13 = v59;
    v12 = v34;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v49;
      _os_log_impl(&dword_1E0FCB000, v50, OS_LOG_TYPE_INFO, "Configuration overrides %@", buf, 0xCu);
    }

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke;
    v64[3] = &unk_1E86FFB80;
    v65 = v26;
    [v49 enumerateKeysAndObjectsUsingBlock:v64];

    v16 = v62;
    goto LABEL_40;
  }

LABEL_31:
  v47 = v38;
  v13 = v59;
  v40 = obj;
  v12 = v34;
  if (a8)
  {
    v48 = v38;
    *a8 = v47;
  }

  v24 = 0;
  v15 = v60;
  v16 = v62;
LABEL_43:

LABEL_44:
LABEL_45:

  v52 = *MEMORY[0x1E69E9840];

  return v24;
}

void __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 mutableCopy];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __84__SESConfigDCK_getResolvedSettingsFrom_brand_uuid_deviceClass_productVersion_error___block_invoke_2;
      v12[3] = &unk_1E86FFB80;
      v13 = v10;
      v11 = v10;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];
      [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

+ (BOOL)isConfigurationApplicable:(id)a3 brand:(id)a4 uuid:(id)a5 deviceClass:(id)a6 productVersion:(id)a7 error:(id *)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v42 = a4;
  v41 = a5;
  v40 = a6;
  v39 = a7;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v13;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v37)
  {
    v26 = 1;
    goto LABEL_24;
  }

  v14 = 0x1E86FF000uLL;
  v38 = *v44;
  v15 = @"Key";
  while (2)
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v44 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v43 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = a8;
        if (!a8)
        {
          goto LABEL_24;
        }

        v27 = SESDefaultLogObject();
        *a8 = SESCreateAndLogError(0, v27, SESErrorDomain, 0, @"Wrong class for condition", v29, v30, v31, v35);
        goto LABEL_22;
      }

      v18 = [*(v14 + 2360) validateKey:v15 expectedClass:objc_opt_class() dictionary:v17];
      if (v18 || ([*(v14 + 2360) validateKey:@"Operator" expectedClass:objc_opt_class() dictionary:v17], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v27 = v18;
        if (a8)
        {
          v28 = v18;
          *a8 = v27;
        }

        goto LABEL_22;
      }

      v19 = v14;
      v20 = v15;
      v21 = [v17 objectForKeyedSubscript:v15];
      v22 = [v17 objectForKeyedSubscript:@"Operator"];
      v23 = [v17 objectForKeyedSubscript:@"Value"];
      v35 = v39;
      v24 = [SESConfigDCK evaluateCondition:"evaluateCondition:operator:value:brand:uuid:deviceClass:productVersion:error:" operator:v21 value:v22 brand:v23 uuid:v42 deviceClass:v41 productVersion:v40 error:?];
      v25 = 0;
      if (v25)
      {
        v27 = v25;
        if (a8)
        {
          v32 = v25;
          *a8 = v27;
        }

LABEL_22:
LABEL_23:
        v26 = 0;
        goto LABEL_24;
      }

      if (!v24)
      {
        goto LABEL_23;
      }

      v14 = v19;
      v15 = v20;
    }

    v26 = 1;
    v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v37)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v33 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (BOOL)evaluateCondition:(id)a3 operator:(id)a4 value:(id)a5 brand:(id)a6 uuid:(id)a7 deviceClass:(id)a8 productVersion:(id)a9 error:(id *)a10
{
  v15 = a10;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (![v16 isEqualToString:@"DeviceClass"])
  {
    if ([v16 isEqualToString:@"DeviceProductVersion"])
    {
      if ([&unk_1F5BEB900 containsObject:v17])
      {
        v23 = v17;
        v24 = v22;
        goto LABEL_13;
      }
    }

    else if ([v16 isEqualToString:@"VehicleBrand"])
    {
      if ([&unk_1F5BEB918 containsObject:v17])
      {
        v23 = v17;
        v24 = v19;
        goto LABEL_13;
      }
    }

    else
    {
      if (![v16 isEqualToString:@"VehicleUUID"])
      {
        if (!a10)
        {
          goto LABEL_17;
        }

        v25 = SESDefaultLogObject();
        SESCreateAndLogError(0, v25, SESErrorDomain, 1, @"Invalid key for condition %@", v30, v31, v32, v16);
        goto LABEL_16;
      }

      if ([&unk_1F5BEB930 containsObject:v17])
      {
        v23 = v17;
        v24 = v20;
        goto LABEL_13;
      }
    }

LABEL_14:
    if (!a10)
    {
      goto LABEL_17;
    }

    v25 = SESDefaultLogObject();
    SESCreateAndLogError(0, v25, SESErrorDomain, 1, @"Invalid operator %@ for key %@", v26, v27, v28, v17);
    *a10 = LABEL_16:;

    v15 = 0;
    goto LABEL_17;
  }

  if (([&unk_1F5BEB8E8 containsObject:v17] & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = v17;
  v24 = v21;
LABEL_13:
  v15 = [SESConfigDCK evaluateOperator:v23 valueFromDevice:v24 valueFromConfig:v18 error:a10];
LABEL_17:

  return v15;
}

+ (BOOL)evaluateOperator:(id)a3 valueFromDevice:(id)a4 valueFromConfig:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"Eq"])
  {
    v12 = [v11 isEqual:v10];
LABEL_3:
    v13 = v12;
    goto LABEL_23;
  }

  if ([v9 isEqualToString:@"In"])
  {
    if (!v10)
    {
LABEL_22:
      v13 = 0;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 containsObject:v10];
      goto LABEL_3;
    }

LABEL_20:
    if (a6)
    {
      v20 = SESDefaultLogObject();
      *a6 = SESCreateAndLogError(0, v20, SESErrorDomain, 0, @"Invalid value %@", v21, v22, v23, v11);
    }

    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"Present"])
  {
    v13 = v10 != 0;
    goto LABEL_23;
  }

  v14 = [v9 isEqualToString:@"Absent"];
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v14;
  }

  if ((v14 & 1) == 0 && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v31 = 0;
    [SESConfigUtilities getVersion:v10 error:&v31];
    v16 = v15;
    v17 = v31;
    if (v17 || (v30 = 0, [SESConfigUtilities getVersion:v11 error:&v30], v19 = v18, (v17 = v30) != 0))
    {
      if (a6)
      {
        v17 = v17;
        v13 = 0;
        *a6 = v17;
LABEL_36:

        goto LABEL_23;
      }
    }

    else
    {
      if ([v9 isEqualToString:@"GT"])
      {
        v17 = 0;
        v13 = v16 > v19;
        goto LABEL_36;
      }

      if ([v9 isEqualToString:@"GE"])
      {
        v17 = 0;
        v13 = v16 >= v19;
        goto LABEL_36;
      }

      if ([v9 isEqualToString:@"LT"])
      {
        v17 = 0;
        v13 = v16 < v19;
        goto LABEL_36;
      }

      if ([v9 isEqualToString:@"LE"])
      {
        v17 = 0;
        v13 = v16 <= v19;
        goto LABEL_36;
      }

      if (a6)
      {
        v25 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError(0, v25, SESErrorDomain, 0, @"Invalid condition", v26, v27, v28, v29);
      }

      v17 = 0;
    }

    v13 = 0;
    goto LABEL_36;
  }

LABEL_23:

  return v13;
}

@end