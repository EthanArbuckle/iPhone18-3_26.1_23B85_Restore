@interface PKPlugInCore
- (BOOL)hasEntitlement:(id)a3;
- (BOOL)isAppExtension;
- (BOOL)isData;
- (BOOL)isDedicated;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHybrid;
- (BOOL)oldStyle;
- (BOOL)setDictionaries:(id)a3;
- (BOOL)setupWithForm:(id)a3;
- (BOOL)setupWithName:(id)a3 extensionPointPlatform:(unsigned int)a4 url:(id)a5 bundleInfo:(id)a6 uuid:(id)a7 discoveryInstanceUUID:(id)a8 extensionPointCache:(id)a9;
- (BOOL)shouldTerminateOnHold;
- (BOOL)usesHostPersona;
- (NSDate)timestamp;
- (NSDictionary)attributes;
- (NSDictionary)localizedFileProviderActionNames;
- (NSString)bootInstance;
- (NSString)containingPath;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSString)path;
- (NSString)principalSpec;
- (NSString)sdkSpec;
- (NSString)version;
- (PKPlugInCore)init;
- (PKPlugInCore)initWithExternalProviders:(id)a3;
- (PKPlugInCore)initWithForm:(id)a3 externalProviders:(id)a4;
- (id)_localizedFileProviderActionNamesForPKDict:(id)a3 fromBundle:(id)a4;
- (id)attribute:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)diagnose;
- (id)embeddedProtocolSpec;
- (id)export:(id *)a3;
- (id)infoKey:(id)a3;
- (id)mergeSDKDictionary:(id)a3 intoExtensionDictionary:(id)a4;
- (id)mergeSharedResources:(id)a3 into:(id)a4;
- (id)pluginKey:(id)a3;
- (id)protocolSpec;
- (id)resolveSDKWithInfoPlist:(id)a3 extensionPointCache:(id)a4;
- (id)sdkOnlyKeyPaths;
- (id)valueForEntitlement:(id)a3;
- (unint64_t)hash;
- (void)_loadLocalizedFileProviderActionNames;
- (void)_loadLocalizedNames;
- (void)canonicalize;
- (void)localizedInfoDictionaryForKeys:(id)a3 completion:(id)a4;
- (void)setAnnotation:(id)a3 value:(id)a4;
- (void)updateFromForm:(id)a3;
@end

@implementation PKPlugInCore

- (NSString)version
{
  v2 = [(PKPlugInCore *)self attribute:@"NSExtensionVersion"];

  return v2;
}

- (NSDictionary)attributes
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionAttributes"];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(PKPlugInCore *)self uuid];
  if (!v3)
  {
    sub_1C68B5A78();
  }

  v4 = [(PKPlugInCore *)self uuid];
  v5 = [v4 hash];

  return v5;
}

- (NSString)containingPath
{
  v2 = [(PKPlugInCore *)self containingUrl];
  v3 = [v2 path];

  return v3;
}

- (BOOL)isDedicated
{
  v2 = [(PKPlugInCore *)self pluginKey:@"Dedicated"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)path
{
  v2 = [(PKPlugInCore *)self url];
  v3 = [v2 path];

  return v3;
}

- (BOOL)isAppExtension
{
  v2 = [(PKPlugInCore *)self url];
  v3 = [v2 path];
  v4 = [v3 hasSuffix:@".appex"];

  return v4;
}

- (BOOL)isData
{
  v2 = [(PKPlugInCore *)self protocolSpec];
  v3 = [@"#Data" isEqual:v2];

  return v3;
}

- (id)protocolSpec
{
  v3 = [(PKPlugInCore *)self pluginKey:@"NSExtensionProtocol"];
  if (!v3)
  {
    if ([(PKPlugInCore *)self isAppExtension])
    {
      v3 = @"NSObject";
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)localizedName
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_localizedName)
  {
    [(PKPlugInCore *)v2 _loadLocalizedNames];
  }

  objc_sync_exit(v2);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PKPlugInCore *)v2 uuid];
    v5 = [(PKPlugInCore *)v2 identifier];
    v6 = [(PKPlugInCore *)v2 version];
    localizedName = v2->_localizedName;
    v11 = 138544130;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = localizedName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized name: %@", &v11, 0x2Au);
  }

  v8 = v2->_localizedName;
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSString)localizedShortName
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_localizedShortName)
  {
    [(PKPlugInCore *)v2 _loadLocalizedNames];
  }

  objc_sync_exit(v2);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PKPlugInCore *)v2 uuid];
    v5 = [(PKPlugInCore *)v2 identifier];
    v6 = [(PKPlugInCore *)v2 version];
    localizedShortName = v2->_localizedShortName;
    v11 = 138544130;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = localizedShortName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized short name: %@", &v11, 0x2Au);
  }

  v8 = v2->_localizedShortName;
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_loadLocalizedNames
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(PKPlugInCore *)self external];
  v5 = [v4 ls];
  v6 = [v5 hasLSDatabaseAccess];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(PKPlugInCore *)self external];
  v8 = [v7 ls];
  v9 = [(PKPlugInCore *)self uuid];
  v10 = [v8 plugInRecordForUUID:v9];

  if (v10)
  {
    v11 = [v10 localizedName];
    localizedName = self->_localizedName;
    self->_localizedName = v11;

    v13 = [v10 localizedShortName];
    localizedShortName = self->_localizedShortName;
    self->_localizedShortName = v13;
  }

  else
  {
    localizedShortName = pklog_handle_for_category(3);
    if (os_log_type_enabled(localizedShortName, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6068();
    }
  }

  if (!v10)
  {
LABEL_7:
    v33 = 0;
    v15 = [(PKPlugInCore *)self useBundle:@"." error:&v33];
    v16 = v33;
    if (v15)
    {
      v17 = [(PKPlugInCore *)self external];
      v18 = [v17 filesystem];
      v19 = [(PKPlugInCore *)self url];
      v20 = [v18 bundleWithURL:v19];

      v21 = [v20 localizedInfoDictionary];
      v22 = [v21 objectForKeyedSubscript:@"CFBundleDisplayName"];
      v23 = v22;
      if (!v22)
      {
        v19 = [(PKPlugInCore *)self bundleInfoDictionary];
        v23 = [v19 objectForKeyedSubscript:@"CFBundleDisplayName"];
      }

      objc_storeStrong(&self->_localizedName, v23);
      if (!v22)
      {
      }

      v24 = [v21 objectForKeyedSubscript:@"CFBundleName"];
      v25 = v24;
      if (!v24)
      {
        v19 = [(PKPlugInCore *)self bundleInfoDictionary];
        v25 = [v19 objectForKeyedSubscript:@"CFBundleName"];
      }

      objc_storeStrong(&self->_localizedShortName, v25);
      if (!v24)
      {
      }

      v26 = pklog_handle_for_category(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(PKPlugInCore *)self uuid];
        v29 = [(PKPlugInCore *)self identifier];
        v30 = [(PKPlugInCore *)self version];
        v31 = self->_localizedName;
        v32 = self->_localizedShortName;
        *buf = 138544386;
        v35 = v28;
        v36 = 2112;
        v37 = v29;
        v38 = 2112;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        _os_log_debug_impl(&dword_1C6892000, v26, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] BundleInfo[BundleDisplayName] is [%@], BundleInfo[BundleName] is [%@]", buf, 0x34u);
      }
    }

    else
    {
      v20 = pklog_handle_for_category(4);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1C68B611C();
      }
    }
  }

  objc_autoreleasePoolPop(v3);
  v27 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PKPlugInCore *)self uuid];
  v5 = [(PKPlugInCore *)self identifier];
  v6 = [(PKPlugInCore *)self version];
  v7 = [(PKPlugInCore *)self discoveryInstanceUUID];
  v8 = [(PKPlugInCore *)self path];
  v9 = [v3 initWithFormat:@"<[u %@] [%@(%@)], [d %@] [%@]>", v4, v5, v6, v7, v8];

  return v9;
}

- (void)canonicalize
{
  v3 = MEMORY[0x1E695DF90];
  v4 = [(PKPlugInCore *)self attributes];
  v11 = [v3 dictionaryWithDictionary:v4];

  v5 = MEMORY[0x1E695DF90];
  v6 = [(PKPlugInCore *)self plugInDictionary];
  v7 = [v5 dictionaryWithDictionary:v6];

  [v7 setObject:v11 forKeyedSubscript:@"NSExtensionAttributes"];
  [(PKPlugInCore *)self setPlugInDictionary:v7];
  v8 = [(PKPlugInCore *)self attribute:@"NSExtensionVersion"];

  if (!v8)
  {
    v9 = [(PKPlugInCore *)self infoKey:@"CFBundleShortVersionString"];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"1";
    }

    [v11 setObject:v10 forKeyedSubscript:@"NSExtensionVersion"];
  }
}

- (id)sdkOnlyKeyPaths
{
  if (qword_1ED6EF090 != -1)
  {
    sub_1C6896BD4();
  }

  v3 = qword_1ED6EF080;

  return v3;
}

- (NSString)principalSpec
{
  v3 = [(PKPlugInCore *)self pluginKey:@"PrincipalClass"];
  if (!v3)
  {
    if ([(PKPlugInCore *)self isAppExtension])
    {
      v3 = @"NSObject";
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)usesHostPersona
{
  v2 = [(PKPlugInCore *)self valueForEntitlement:@"com.apple.private.pluginkit.persona"];
  if (!v2)
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5F20();
    }

    goto LABEL_7;
  }

  v3 = [v2 isEqualToString:@"host"];
LABEL_8:

  return v3;
}

- (id)diagnose
{
  v4 = [(PKPlugInCore *)self identifier];

  if (!v4)
  {
    v27 = @"missing identifier (no NSExtensionIdentifier, nor even CFBundleIdentifier)";
LABEL_21:
    pkErrorf(12, v27, v5, v6, v7, v8, v9, v10, v34);
    goto LABEL_22;
  }

  v11 = [(PKPlugInCore *)self protocolSpec];

  if (!v11)
  {
    v28 = PKProtocolInfoKey;
LABEL_10:
    pkErrorf(12, @"missing %@ key in Info.plist or SDK", v12, v13, v14, v15, v16, v17, *v28);
    v32 = LABEL_22:;
    goto LABEL_23;
  }

  v18 = [(PKPlugInCore *)self attributes];

  if (!v18)
  {
    v28 = PKAttributesInfoKey;
    goto LABEL_10;
  }

  v25 = [(PKPlugInCore *)self isAppExtension];
  if (!v25)
  {
    v26 = 0;
    goto LABEL_17;
  }

  v2 = [(PKPlugInCore *)self principalSpec];
  if ([v2 isEqualToString:@"NSObject"])
  {
    v26 = 0;
    goto LABEL_17;
  }

  if (!pkUseInternalDiagnostics())
  {
    v26 = 1;
LABEL_17:
    if (v25)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (!v26)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v29 = [(PKPlugInCore *)self url];
  v30 = [v29 path];
  v26 = [v30 hasPrefix:@"/AppleInternal/"] ^ 1;

  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_18:

  if (v26)
  {
LABEL_14:
    pkErrorf(12, @"Application Extensions may not use the %@ key", v19, v20, v21, v22, v23, v24, @"PrincipalClass");
    goto LABEL_22;
  }

LABEL_19:
  v31 = [(PKPlugInCore *)self pluginKey:@"PassProxy"];

  if (v31)
  {
    v34 = @"PassProxy";
    v27 = @"the %@ key is not supported on this platform";
    goto LABEL_21;
  }

  if ([(PKPlugInCore *)self isHybrid])
  {
    v32 = pkError(12, @"hybrid plug-ins are not supported on this platform");
  }

  else
  {
    v32 = 0;
  }

LABEL_23:

  return v32;
}

- (BOOL)isHybrid
{
  v2 = [(PKPlugInCore *)self pluginKey:@"EmbeddedCode"];
  v3 = v2 != 0;

  return v3;
}

- (PKPlugInCore)init
{
  v3 = objc_opt_new();
  v4 = [(PKPlugInCore *)self initWithExternalProviders:v3];

  return v4;
}

- (PKPlugInCore)initWithExternalProviders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPlugInCore;
  v6 = [(PKPlugInCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, a3);
  }

  return v7;
}

- (PKPlugInCore)initWithForm:(id)a3 externalProviders:(id)a4
{
  v6 = a3;
  v7 = [(PKPlugInCore *)self initWithExternalProviders:a4];
  v8 = v7;
  if (v7 && ![(PKPlugInCore *)v7 setupWithForm:v6])
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PKPlugInCore *)self uuid];
  if (!v5)
  {
    sub_1C68B5A4C();
  }

  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(PKPlugInCore *)self uuid];
      v7 = [(PKPlugInCore *)v4 uuid];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)setupWithName:(id)a3 extensionPointPlatform:(unsigned int)a4 url:(id)a5 bundleInfo:(id)a6 uuid:(id)a7 discoveryInstanceUUID:(id)a8 extensionPointCache:(id)a9
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v17)
  {
    goto LABEL_22;
  }

  if (v16)
  {
    self->_extensionPointPlatform = a4;
    if (!v18)
    {
      goto LABEL_16;
    }

    if (v21)
    {
      v33 = v20;
      v23 = [(PKPlugInCore *)self normalizeInfoDictionary:v18];
      v24 = [(PKPlugInCore *)self resolveSDKWithInfoPlist:v23 extensionPointCache:v22];

      v34 = v24;
      v25 = [(PKPlugInCore *)self setDictionaries:v24];
      if (v25)
      {
        [(PKPlugInCore *)self canonicalize];
        v20 = v33;
      }

      else
      {
        log = pklog_handle_for_category(6);
        v20 = v33;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v36 = v33;
          v37 = 2114;
          v38 = v16;
          v39 = 2114;
          v40 = v17;
          v41 = 2114;
          v42 = v18;
          _os_log_error_impl(&dword_1C6892000, log, OS_LOG_TYPE_ERROR, "[d %@] malformed plugin dictionary in plugin [%{public}@] at [%{public}@]: %{public}@", buf, 0x2Au);
        }
      }

      if (v25)
      {
        goto LABEL_16;
      }

LABEL_22:
      v27 = 0;
      goto LABEL_23;
    }

    if ([(PKPlugInCore *)self setDictionaries:v18])
    {
LABEL_16:
      objc_storeStrong(&self->_identifier, a3);
      objc_storeStrong(&self->_url, a5);
      v28 = v19;
      if (!v19)
      {
        v28 = [MEMORY[0x1E696AFB0] UUID];
      }

      objc_storeStrong(&self->_uuid, v28);
      if (!v19)
      {
      }

      v29 = v20;
      p_super = &self->_discoveryInstanceUUID->super;
      self->_discoveryInstanceUUID = v29;
      v27 = 1;
      goto LABEL_21;
    }

    p_super = pklog_handle_for_category(6);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v36 = v20;
      v37 = 2114;
      v38 = v16;
      v39 = 2114;
      v40 = v17;
      v41 = 2114;
      v42 = v18;
      _os_log_error_impl(&dword_1C6892000, p_super, OS_LOG_TYPE_ERROR, "[d %@] malformed plugin dictionary in plugin [%{public}@] at [%{public}@]: %{public}@", buf, 0x2Au);
      v27 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    p_super = pklog_handle_for_category(6);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5AA4(v20, v17);
      v27 = 0;
      goto LABEL_21;
    }
  }

  v27 = 0;
LABEL_21:

LABEL_23:
  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)setDictionaries:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleInfoDictionary, a3);
    v6 = [v5 objectForKeyedSubscript:@"NSExtension"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_plugInDictionary, v6);
      v7 = [v6 objectForKeyedSubscript:@"Multiple"];
      if (v7)
      {
        v8 = pklog_handle_for_category(6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(PKPlugInCore *)self discoveryInstanceUUID];
          v9 = [(PKPlugInCore *)self uuid];
          v10 = [(PKPlugInCore *)self identifier];
          [(PKPlugInCore *)self version];
          *buf = 138413314;
          v18 = v16;
          v19 = 2114;
          v20 = v9;
          v21 = 2112;
          v22 = v10;
          v24 = v23 = 2112;
          v11 = v24;
          v25 = 2114;
          v26 = @"Multiple";
          _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] multiplexed plug-ins (%{public}@ key) obsolete and ignored", buf, 0x34u);
        }
      }

      v12 = [(PKPlugInCore *)self plugInDictionary];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

- (BOOL)setupWithForm:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  v6 = [v4 objectForKeyedSubscript:@"path"];
  v45 = [v5 initFileURLWithPath:v6];

  v7 = [v4 objectForKeyedSubscript:@"discoveryInstanceUUID"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"epPlatform"];
  v15 = [v9 unsignedIntValue];
  v10 = [v4 objectForKeyedSubscript:@"identifier"];
  v11 = [v4 objectForKeyedSubscript:@"bundleInfo"];
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = [v4 objectForKeyedSubscript:@"uuid"];
  v14 = [v12 initWithUUIDString:v13];
  LODWORD(v15) = [(PKPlugInCore *)self setupWithName:v10 extensionPointPlatform:v15 url:v45 bundleInfo:v11 uuid:v14 discoveryInstanceUUID:v8 extensionPointCache:0];

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"hubProtocolVersion"];
    -[PKPlugInCore setHubProtocolVersion:](self, "setHubProtocolVersion:", [v16 unsignedIntegerValue]);

    v17 = [v4 objectForKeyedSubscript:@"hubProtocolVersion"];
    if (!v17)
    {
      [(PKPlugInCore *)self setHubProtocolVersion:1];
    }

    v18 = [v4 objectForKeyedSubscript:@"original-identifier"];
    [(PKPlugInCore *)self setOriginalIdentifier:v18];

    v19 = [v4 objectForKeyedSubscript:@"hash"];
    [(PKPlugInCore *)self setCdhash:v19];

    v20 = [v4 objectForKeyedSubscript:@"requirement"];
    [(PKPlugInCore *)self setRequirement:v20];

    v21 = [v4 objectForKeyedSubscript:@"lastmodified"];
    -[PKPlugInCore setLastModified:](self, "setLastModified:", [v21 longValue]);

    v22 = [v4 objectForKeyedSubscript:@"entitlements"];
    [(PKPlugInCore *)self setEntitlements:v22];

    v23 = [v4 objectForKeyedSubscript:@"containingPath"];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v23];
      [(PKPlugInCore *)self setContainingUrl:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"containingBundleIdentifier"];
    [(PKPlugInCore *)self setContainingBundleIdentifier:v25];

    v26 = [v4 objectForKeyedSubscript:@"systemResident"];
    -[PKPlugInCore setOnSystemVolume:](self, "setOnSystemVolume:", [v26 BOOLValue]);

    v27 = [v4 objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v27];

    v28 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [(PKPlugInCore *)self identifier];
      [(PKPlugInCore *)self annotations];
      v44 = v7;
      v30 = v23;
      v31 = v15;
      v15 = v9;
      v32 = v8;
      v34 = v33 = v17;
      *buf = 138412546;
      v47 = v29;
      v48 = 2112;
      v49 = v34;
      _os_log_impl(&dword_1C6892000, v28, OS_LOG_TYPE_INFO, "%@: annotations = %@", buf, 0x16u);

      v17 = v33;
      v8 = v32;
      v9 = v15;
      LOBYTE(v15) = v31;
      v23 = v30;
      v7 = v44;
    }

    v35 = [v4 objectForKeyedSubscript:@"localizedContainingDisplayName"];
    [(PKPlugInCore *)self setLocalizedContainingName:v35];

    v36 = [v4 objectForKeyedSubscript:@"isRBManaged"];
    -[PKPlugInCore setIsRBManaged:](self, "setIsRBManaged:", [v36 BOOLValue]);

    v37 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [(PKPlugInCore *)self identifier];
      v39 = [(PKPlugInCore *)self isRBManaged];
      v40 = "will not";
      if (v39)
      {
        v40 = "will";
      }

      *buf = 138412546;
      v47 = v38;
      v48 = 2080;
      v49 = v40;
      _os_log_impl(&dword_1C6892000, v37, OS_LOG_TYPE_INFO, "%@: %s be managed by runningboard", buf, 0x16u);
    }

    v41 = [v4 objectForKeyedSubscript:@"launchPersonas"];
    [(PKPlugInCore *)self setLaunchPersonas:v41];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)resolveSDKWithInfoPlist:(id)a3 extensionPointCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_1C68B5CD8();
  }

  v8 = [(PKPlugInCore *)self sdkDictionaryWithInfoPlist:v6 extensionPointCache:v7];
  v9 = v6;
  v10 = v9;
  if (v8)
  {
    v10 = [(PKPlugInCore *)self mergeSDKDictionary:v8 intoExtensionDictionary:v9];
  }

  return v10;
}

- (id)mergeSDKDictionary:(id)a3 intoExtensionDictionary:(id)a4
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [(PKPlugInCore *)self sdkOnlyKeyPaths];
  [v7 pk_removeItemsAtKeyPaths:v8];

  v9 = MEMORY[0x1E695DFD8];
  v31[0] = @"NSExtension";
  v31[1] = @"Shared";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v11 = [v9 setWithObjects:{v10, 0}];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1C68A7114;
  v20[3] = &unk_1E827F8E8;
  v20[4] = self;
  [v7 pk_overlayDictionary:v6 existingValuesTakePrecedent:1 exceptKeyPaths:v11 exemptionHandler:v20];

  v12 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(PKPlugInCore *)self uuid];
    v16 = [(PKPlugInCore *)self identifier];
    v17 = [(PKPlugInCore *)self version];
    v18 = [v7 objectForKeyedSubscript:@"NSExtension"];
    v19 = [v7 objectForKeyedSubscript:@"XPCService"];
    *buf = 138544386;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_debug_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] Merged plugin dictionary; NSExtension = %@, XPCService = %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mergeSharedResources:(id)a3 into:(id)a4
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a3;
  v7 = [v5 setWithArray:a4];
  [v7 addObjectsFromArray:v6];

  v8 = [v7 allObjects];

  return v8;
}

- (id)export:(id *)a3
{
  v41[11] = *MEMORY[0x1E69E9840];
  v4 = [(PKPlugInCore *)self bundleInfoDictionary];
  v5 = [v4 mutableCopy];

  [v5 removeObjectForKey:@"CFBundleInfoPlistURL"];
  v35 = MEMORY[0x1E695DF90];
  v40[0] = @"hubProtocolVersion";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
  v41[0] = v38;
  v40[1] = @"path";
  v37 = [(PKPlugInCore *)self path];
  v41[1] = v37;
  v40[2] = @"systemResident";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore onSystemVolume](self, "onSystemVolume")}];
  v41[2] = v36;
  v40[3] = @"identifier";
  v34 = [(PKPlugInCore *)self identifier];
  v41[3] = v34;
  v40[4] = @"original-identifier";
  v33 = [(PKPlugInCore *)self originalIdentifier];
  v41[4] = v33;
  v40[5] = @"version";
  v6 = [(PKPlugInCore *)self version];
  if (v6)
  {
    v7 = [(PKPlugInCore *)self version];
  }

  else
  {
    v7 = @"<none>";
  }

  v41[5] = v7;
  v41[6] = v5;
  v39 = v5;
  v40[6] = @"bundleInfo";
  v40[7] = @"uuid";
  v8 = [(PKPlugInCore *)self uuid];
  v9 = [v8 UUIDString];
  v41[7] = v9;
  v40[8] = @"lastmodified";
  v10 = [MEMORY[0x1E696AD98] numberWithLong:{-[PKPlugInCore lastModified](self, "lastModified")}];
  v41[8] = v10;
  v40[9] = @"annotations";
  v11 = [(PKPlugInCore *)self annotations];
  v12 = v11;
  v13 = MEMORY[0x1E695E0F8];
  if (v11)
  {
    v13 = v11;
  }

  v41[9] = v13;
  v40[10] = @"isRBManaged";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore isRBManaged](self, "isRBManaged")}];
  v41[10] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:11];
  v16 = [v35 dictionaryWithDictionary:v15];

  if (v6)
  {
  }

  v17 = [(PKPlugInCore *)self entitlements];

  if (v17)
  {
    v18 = [(PKPlugInCore *)self entitlements];
    [v16 setObject:v18 forKeyedSubscript:@"entitlements"];
  }

  v19 = [(PKPlugInCore *)self containingPath];

  if (v19)
  {
    v20 = [(PKPlugInCore *)self containingPath];
    [v16 setObject:v20 forKeyedSubscript:@"containingPath"];
  }

  v21 = [(PKPlugInCore *)self containingBundleIdentifier];

  if (v21)
  {
    v22 = [(PKPlugInCore *)self containingBundleIdentifier];
    [v16 setObject:v22 forKeyedSubscript:@"containingBundleIdentifier"];
  }

  v23 = [(PKPlugInCore *)self localizedContainingName];

  if (v23)
  {
    v24 = [(PKPlugInCore *)self localizedContainingName];
    [v16 setObject:v24 forKeyedSubscript:@"localizedContainingDisplayName"];
  }

  v25 = [(PKPlugInCore *)self discoveryInstanceUUID];

  if (v25)
  {
    v26 = [(PKPlugInCore *)self discoveryInstanceUUID];
    v27 = [v26 UUIDString];
    [v16 setObject:v27 forKeyedSubscript:@"discoveryInstanceUUID"];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PKPlugInCore extensionPointPlatform](self, "extensionPointPlatform")}];
  [v16 setObject:v28 forKeyedSubscript:@"epPlatform"];

  v29 = [(PKPlugInCore *)self launchPersonas];

  if (v29)
  {
    v30 = [(PKPlugInCore *)self launchPersonas];
    [v16 setObject:v30 forKeyedSubscript:@"launchPersonas"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSString)bootInstance
{
  if (qword_1EC1D1D00 != -1)
  {
    sub_1C68B5D48();
  }

  v3 = qword_1EC1D1CF8;

  return v3;
}

- (void)updateFromForm:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1C68B5DA0(self, v4, v5);
  }

  if (![(PKPlugInCore *)self annotationTimestamp])
  {
    goto LABEL_21;
  }

  v6 = [v4 objectForKeyedSubscript:@"annotations"];
  v7 = [v6 objectForKeyedSubscript:@"bootuuid"];

  v8 = [v4 objectForKeyedSubscript:@"annotations"];
  v9 = [v8 objectForKeyedSubscript:@"timestamp"];

  if (v9)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    v13 = 1;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = [(PKPlugInCore *)self bootInstance];
  if ([v7 isEqualToString:v8])
  {
    v12 = [v9 unsignedLongLongValue];
    v13 = v12 <= [(PKPlugInCore *)self annotationTimestamp];
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v13)
  {

LABEL_21:
    [(PKPlugInCore *)self setAnnotationTimestamp:0];
    v18 = [v4 objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v18];

    goto LABEL_22;
  }

  v14 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(PKPlugInCore *)self uuid];
    v15 = [(PKPlugInCore *)self identifier];
    v16 = [(PKPlugInCore *)self version];
    v20 = [v9 unsignedLongLongValue];
    v17 = [(PKPlugInCore *)self bootInstance];
    *buf = 138545154;
    v23 = v21;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    v28 = 2080;
    v29 = "[PKPlugInCore updateFromForm:]";
    v30 = 2112;
    v31 = v7;
    v32 = 2048;
    v33 = v20;
    v34 = 2112;
    v35 = v17;
    v36 = 2048;
    v37 = [(PKPlugInCore *)self annotationTimestamp];
    _os_log_impl(&dword_1C6892000, v14, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] %s ignoring annotation update (%@, %llu) vs. (%@, %llu)", buf, 0x52u);
  }

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)setAnnotation:(id)a3 value:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(PKPlugInCore *)self setAnnotationTimestamp:mach_continuous_time()];
  v8 = [(PKPlugInCore *)self annotations];
  v9 = [v7 copy];
  v10 = [v8 dictionaryChanging:v6 to:v9];
  [(PKPlugInCore *)self setAnnotations:v10];

  v11 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [(PKPlugInCore *)self uuid];
    v14 = [(PKPlugInCore *)self identifier];
    v15 = [(PKPlugInCore *)self version];
    v16 = 138544642;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v22 = 2080;
    v21 = v15;
    v23 = "[PKPlugInCore setAnnotation:value:]";
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_debug_impl(&dword_1C6892000, v11, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] %s set annotation %@ : %@", &v16, 0x3Eu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)oldStyle
{
  v3 = [(PKPlugInCore *)self infoKey:@"NSExtension"];

  if (!v3)
  {
    v4 = [(PKPlugInCore *)self infoKey:@"PlugInKit"];

    if (!v4)
    {
      sub_1C68B5EB0();
    }
  }

  return v3 == 0;
}

- (NSString)sdkSpec
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionPointIdentifier"];

  return v2;
}

- (id)embeddedProtocolSpec
{
  v3 = [(PKPlugInCore *)self pluginKey:@"EmbeddedProtocol"];
  if (!v3)
  {
    v3 = [(PKPlugInCore *)self protocolSpec];
  }

  return v3;
}

- (NSDate)timestamp
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[PKPlugInCore lastModified](self, "lastModified")}];

  return v2;
}

- (BOOL)shouldTerminateOnHold
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionShouldTerminateOnHold"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)infoKey:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPlugInCore *)self bundleInfoDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(PKPlugInCore *)self uuid];
    v11 = [(PKPlugInCore *)self identifier];
    v12 = [(PKPlugInCore *)self version];
    v13 = 138544386;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] info [%@] => [%@]", &v13, 0x34u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)pluginKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPlugInCore *)self plugInDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)attribute:(id)a3
{
  v4 = a3;
  v5 = [(PKPlugInCore *)self attributes];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(PKPlugInCore *)self entitlements];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(PKPlugInCore *)self valueForEntitlement:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqual:MEMORY[0x1E695E110]] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)localizedInfoDictionaryForKeys:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = v8;
  if (self->_bundleInfoDictionary)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v11)
    {
      v28 = v7;
      v29 = v6;
      v31 = 0;
      v12 = *v33;
      v30 = *MEMORY[0x1E696A578];
      while (1)
      {
        v13 = 0;
        if (v11 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * v13);
          if ([v15 isEqualToString:@"CFBundleName"])
          {
            v16 = [(PKPlugInCore *)self localizedShortName];
            if (!v16)
            {
              goto LABEL_14;
            }
          }

          else if (![v15 isEqualToString:@"CFBundleDisplayName"] || (-[PKPlugInCore localizedName](self, "localizedName"), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
          {
LABEL_14:
            v16 = [(PKPlugInCore *)self infoKey:v15];
            if (!v16)
            {
              v16 = [(NSDictionary *)self->_bundleInfoDictionary objectForKey:v15];
              if (!v16)
              {
                goto LABEL_18;
              }
            }
          }

          if (![v16 conformsToProtocol:&unk_1F4649970])
          {

            v17 = MEMORY[0x1E696ABC0];
            v38 = v30;
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Value of info dictionary key %@ for plugin %@ does not conform to secure coding!", v15, self->_identifier];
            v39 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            [v17 errorWithDomain:@"PlugInKit" code:-1 userInfo:v19];
            v21 = v20 = v10;

            v31 = v21;
            v10 = v20;
            v9 = 0;

            goto LABEL_24;
          }

          [v9 setObject:v16 forKeyedSubscript:v15];
LABEL_18:

          ++v13;
        }

        while (v14 != v13);
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (!v11)
        {
LABEL_24:
          v7 = v28;
          v6 = v29;
          v22 = v31;
          goto LABEL_27;
        }
      }
    }

    v22 = 0;
  }

  else
  {

    v23 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve plugin for %@", self->_identifier];
    v37 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v22 = [v23 errorWithDomain:@"PlugInKit" code:-1 userInfo:v25];

    v10 = v24;
    v9 = 0;
  }

LABEL_27:

  v26 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_1C68B5FB8();
  }

  v7[2](v7, v9, v22);
  v27 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)localizedFileProviderActionNames
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_localizedFileProviderActionNames)
  {
    [(PKPlugInCore *)v2 _loadLocalizedFileProviderActionNames];
  }

  objc_sync_exit(v2);

  localizedFileProviderActionNames = v2->_localizedFileProviderActionNames;

  return localizedFileProviderActionNames;
}

- (void)_loadLocalizedFileProviderActionNames
{
  v3 = objc_autoreleasePoolPush();
  v14 = 0;
  v4 = [(PKPlugInCore *)self useBundle:@"." error:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [(PKPlugInCore *)self external];
    v7 = [v6 filesystem];
    v8 = [(PKPlugInCore *)self url];
    v9 = [v7 bundleWithURL:v8];

    v10 = [(PKPlugInCore *)self plugInDictionary];
    v11 = [(PKPlugInCore *)self _localizedFileProviderActionNamesForPKDict:v10 fromBundle:v9];
    localizedFileProviderActionNames = self->_localizedFileProviderActionNames;
    self->_localizedFileProviderActionNames = v11;

    v13 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B627C();
    }
  }

  else
  {
    v9 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B61CC();
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_localizedFileProviderActionNamesForPKDict:(id)a3 fromBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [v6 objectForKeyedSubscript:@"NSExtensionFileProviderActions"];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1C68A89B8;
    v14[3] = &unk_1E827F910;
    v15 = v8;
    v16 = v7;
    v17 = self;
    [v10 enumerateObjectsUsingBlock:v14];

    v11 = v15;
  }

  else
  {
    v11 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B6358();
    }
  }

  objc_autoreleasePoolPop(v9);
  v12 = [v8 copy];

  return v12;
}

- (id)debugDescription
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [(PKPlugInCore *)self uuid];
  v4 = [(PKPlugInCore *)self identifier];
  v5 = [(PKPlugInCore *)self version];
  v6 = [(PKPlugInCore *)self isAppExtension];
  v7 = [(PKPlugInCore *)self onSystemVolume];
  v8 = [(PKPlugInCore *)self containingBundleIdentifier];
  v9 = [(PKPlugInCore *)self lastModified];
  v10 = [(PKPlugInCore *)self discoveryInstanceUUID];
  v11 = [(PKPlugInCore *)self path];
  v12 = [v14 initWithFormat:@"<PKPlugInCore: %p; uuid = [%@], identifier = [%@(%@)], isAppExtension = %d, onSystemVolume = %d, containingBundle = [%@], lastModified = %ld, discoveryInstanceUUID = [%@], path = [%@]>", self, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end