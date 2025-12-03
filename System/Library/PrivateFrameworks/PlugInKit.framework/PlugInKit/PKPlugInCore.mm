@interface PKPlugInCore
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)isAppExtension;
- (BOOL)isData;
- (BOOL)isDedicated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHybrid;
- (BOOL)oldStyle;
- (BOOL)setDictionaries:(id)dictionaries;
- (BOOL)setupWithForm:(id)form;
- (BOOL)setupWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache;
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
- (PKPlugInCore)initWithExternalProviders:(id)providers;
- (PKPlugInCore)initWithForm:(id)form externalProviders:(id)providers;
- (id)_localizedFileProviderActionNamesForPKDict:(id)dict fromBundle:(id)bundle;
- (id)attribute:(id)attribute;
- (id)debugDescription;
- (id)description;
- (id)diagnose;
- (id)embeddedProtocolSpec;
- (id)export:(id *)export;
- (id)infoKey:(id)key;
- (id)mergeSDKDictionary:(id)dictionary intoExtensionDictionary:(id)extensionDictionary;
- (id)mergeSharedResources:(id)resources into:(id)into;
- (id)pluginKey:(id)key;
- (id)protocolSpec;
- (id)resolveSDKWithInfoPlist:(id)plist extensionPointCache:(id)cache;
- (id)sdkOnlyKeyPaths;
- (id)valueForEntitlement:(id)entitlement;
- (unint64_t)hash;
- (void)_loadLocalizedFileProviderActionNames;
- (void)_loadLocalizedNames;
- (void)canonicalize;
- (void)localizedInfoDictionaryForKeys:(id)keys completion:(id)completion;
- (void)setAnnotation:(id)annotation value:(id)value;
- (void)updateFromForm:(id)form;
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
  uuid = [(PKPlugInCore *)self uuid];
  if (!uuid)
  {
    sub_1C68B5A78();
  }

  uuid2 = [(PKPlugInCore *)self uuid];
  v5 = [uuid2 hash];

  return v5;
}

- (NSString)containingPath
{
  containingUrl = [(PKPlugInCore *)self containingUrl];
  path = [containingUrl path];

  return path;
}

- (BOOL)isDedicated
{
  v2 = [(PKPlugInCore *)self pluginKey:@"Dedicated"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)path
{
  v2 = [(PKPlugInCore *)self url];
  path = [v2 path];

  return path;
}

- (BOOL)isAppExtension
{
  v2 = [(PKPlugInCore *)self url];
  path = [v2 path];
  v4 = [path hasSuffix:@".appex"];

  return v4;
}

- (BOOL)isData
{
  protocolSpec = [(PKPlugInCore *)self protocolSpec];
  v3 = [@"#Data" isEqual:protocolSpec];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedName)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedNames];
  }

  objc_sync_exit(selfCopy);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(PKPlugInCore *)selfCopy uuid];
    identifier = [(PKPlugInCore *)selfCopy identifier];
    version = [(PKPlugInCore *)selfCopy version];
    localizedName = selfCopy->_localizedName;
    v11 = 138544130;
    v12 = uuid;
    v13 = 2112;
    v14 = identifier;
    v15 = 2112;
    v16 = version;
    v17 = 2112;
    v18 = localizedName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized name: %@", &v11, 0x2Au);
  }

  v8 = selfCopy->_localizedName;
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSString)localizedShortName
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedShortName)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedNames];
  }

  objc_sync_exit(selfCopy);

  v3 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uuid = [(PKPlugInCore *)selfCopy uuid];
    identifier = [(PKPlugInCore *)selfCopy identifier];
    version = [(PKPlugInCore *)selfCopy version];
    localizedShortName = selfCopy->_localizedShortName;
    v11 = 138544130;
    v12 = uuid;
    v13 = 2112;
    v14 = identifier;
    v15 = 2112;
    v16 = version;
    v17 = 2112;
    v18 = localizedShortName;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got localized short name: %@", &v11, 0x2Au);
  }

  v8 = selfCopy->_localizedShortName;
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_loadLocalizedNames
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  external = [(PKPlugInCore *)self external];
  v5 = [external ls];
  hasLSDatabaseAccess = [v5 hasLSDatabaseAccess];

  if (!hasLSDatabaseAccess)
  {
    goto LABEL_7;
  }

  external2 = [(PKPlugInCore *)self external];
  v8 = [external2 ls];
  uuid = [(PKPlugInCore *)self uuid];
  v10 = [v8 plugInRecordForUUID:uuid];

  if (v10)
  {
    localizedName = [v10 localizedName];
    localizedName = self->_localizedName;
    self->_localizedName = localizedName;

    localizedShortName = [v10 localizedShortName];
    localizedShortName = self->_localizedShortName;
    self->_localizedShortName = localizedShortName;
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
      external3 = [(PKPlugInCore *)self external];
      filesystem = [external3 filesystem];
      bundleInfoDictionary = [(PKPlugInCore *)self url];
      v20 = [filesystem bundleWithURL:bundleInfoDictionary];

      localizedInfoDictionary = [v20 localizedInfoDictionary];
      v22 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
      v23 = v22;
      if (!v22)
      {
        bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
        v23 = [bundleInfoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
      }

      objc_storeStrong(&self->_localizedName, v23);
      if (!v22)
      {
      }

      v24 = [localizedInfoDictionary objectForKeyedSubscript:@"CFBundleName"];
      v25 = v24;
      if (!v24)
      {
        bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
        v25 = [bundleInfoDictionary objectForKeyedSubscript:@"CFBundleName"];
      }

      objc_storeStrong(&self->_localizedShortName, v25);
      if (!v24)
      {
      }

      v26 = pklog_handle_for_category(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        uuid2 = [(PKPlugInCore *)self uuid];
        identifier = [(PKPlugInCore *)self identifier];
        version = [(PKPlugInCore *)self version];
        v31 = self->_localizedName;
        v32 = self->_localizedShortName;
        *buf = 138544386;
        v35 = uuid2;
        v36 = 2112;
        v37 = identifier;
        v38 = 2112;
        v39 = version;
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
  uuid = [(PKPlugInCore *)self uuid];
  identifier = [(PKPlugInCore *)self identifier];
  version = [(PKPlugInCore *)self version];
  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
  path = [(PKPlugInCore *)self path];
  v9 = [v3 initWithFormat:@"<[u %@] [%@(%@)], [d %@] [%@]>", uuid, identifier, version, discoveryInstanceUUID, path];

  return v9;
}

- (void)canonicalize
{
  v3 = MEMORY[0x1E695DF90];
  attributes = [(PKPlugInCore *)self attributes];
  v11 = [v3 dictionaryWithDictionary:attributes];

  v5 = MEMORY[0x1E695DF90];
  plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
  v7 = [v5 dictionaryWithDictionary:plugInDictionary];

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
  identifier = [(PKPlugInCore *)self identifier];

  if (!identifier)
  {
    v27 = @"missing identifier (no NSExtensionIdentifier, nor even CFBundleIdentifier)";
LABEL_21:
    pkErrorf(12, v27, v5, v6, v7, v8, v9, v10, v34);
    goto LABEL_22;
  }

  protocolSpec = [(PKPlugInCore *)self protocolSpec];

  if (!protocolSpec)
  {
    v28 = PKProtocolInfoKey;
LABEL_10:
    pkErrorf(12, @"missing %@ key in Info.plist or SDK", v12, v13, v14, v15, v16, v17, *v28);
    v32 = LABEL_22:;
    goto LABEL_23;
  }

  attributes = [(PKPlugInCore *)self attributes];

  if (!attributes)
  {
    v28 = PKAttributesInfoKey;
    goto LABEL_10;
  }

  isAppExtension = [(PKPlugInCore *)self isAppExtension];
  if (!isAppExtension)
  {
    v26 = 0;
    goto LABEL_17;
  }

  principalSpec = [(PKPlugInCore *)self principalSpec];
  if ([principalSpec isEqualToString:@"NSObject"])
  {
    v26 = 0;
    goto LABEL_17;
  }

  if (!pkUseInternalDiagnostics())
  {
    v26 = 1;
LABEL_17:
    if (isAppExtension)
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
  path = [v29 path];
  v26 = [path hasPrefix:@"/AppleInternal/"] ^ 1;

  if (!isAppExtension)
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

- (PKPlugInCore)initWithExternalProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = PKPlugInCore;
  v6 = [(PKPlugInCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_external, providers);
  }

  return v7;
}

- (PKPlugInCore)initWithForm:(id)form externalProviders:(id)providers
{
  formCopy = form;
  v7 = [(PKPlugInCore *)self initWithExternalProviders:providers];
  v8 = v7;
  if (v7 && ![(PKPlugInCore *)v7 setupWithForm:formCopy])
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  uuid = [(PKPlugInCore *)self uuid];
  if (!uuid)
  {
    sub_1C68B5A4C();
  }

  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid2 = [(PKPlugInCore *)self uuid];
      uuid3 = [(PKPlugInCore *)equalCopy uuid];
      v8 = [uuid2 isEqual:uuid3];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)setupWithName:(id)name extensionPointPlatform:(unsigned int)platform url:(id)url bundleInfo:(id)info uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache
{
  v43 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  urlCopy = url;
  infoCopy = info;
  uuidCopy = uuid;
  dCopy = d;
  cacheCopy = cache;
  v22 = cacheCopy;
  if (!urlCopy)
  {
    goto LABEL_22;
  }

  if (nameCopy)
  {
    self->_extensionPointPlatform = platform;
    if (!infoCopy)
    {
      goto LABEL_16;
    }

    if (cacheCopy)
    {
      v33 = dCopy;
      v23 = [(PKPlugInCore *)self normalizeInfoDictionary:infoCopy];
      v24 = [(PKPlugInCore *)self resolveSDKWithInfoPlist:v23 extensionPointCache:v22];

      v34 = v24;
      v25 = [(PKPlugInCore *)self setDictionaries:v24];
      if (v25)
      {
        [(PKPlugInCore *)self canonicalize];
        dCopy = v33;
      }

      else
      {
        log = pklog_handle_for_category(6);
        dCopy = v33;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v36 = v33;
          v37 = 2114;
          v38 = nameCopy;
          v39 = 2114;
          v40 = urlCopy;
          v41 = 2114;
          v42 = infoCopy;
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

    if ([(PKPlugInCore *)self setDictionaries:infoCopy])
    {
LABEL_16:
      objc_storeStrong(&self->_identifier, name);
      objc_storeStrong(&self->_url, url);
      uUID = uuidCopy;
      if (!uuidCopy)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      objc_storeStrong(&self->_uuid, uUID);
      if (!uuidCopy)
      {
      }

      v29 = dCopy;
      p_super = &self->_discoveryInstanceUUID->super;
      self->_discoveryInstanceUUID = v29;
      v27 = 1;
      goto LABEL_21;
    }

    p_super = pklog_handle_for_category(6);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v36 = dCopy;
      v37 = 2114;
      v38 = nameCopy;
      v39 = 2114;
      v40 = urlCopy;
      v41 = 2114;
      v42 = infoCopy;
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
      sub_1C68B5AA4(dCopy, urlCopy);
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

- (BOOL)setDictionaries:(id)dictionaries
{
  v27 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bundleInfoDictionary, dictionaries);
    v6 = [dictionariesCopy objectForKeyedSubscript:@"NSExtension"];
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
          discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
          uuid = [(PKPlugInCore *)self uuid];
          identifier = [(PKPlugInCore *)self identifier];
          [(PKPlugInCore *)self version];
          *buf = 138413314;
          v18 = discoveryInstanceUUID;
          v19 = 2114;
          v20 = uuid;
          v21 = 2112;
          v22 = identifier;
          v24 = v23 = 2112;
          v11 = v24;
          v25 = 2114;
          v26 = @"Multiple";
          _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] multiplexed plug-ins (%{public}@ key) obsolete and ignored", buf, 0x34u);
        }
      }

      plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
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

- (BOOL)setupWithForm:(id)form
{
  v50 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = objc_alloc(MEMORY[0x1E695DFF8]);
  v6 = [formCopy objectForKeyedSubscript:@"path"];
  v45 = [v5 initFileURLWithPath:v6];

  v7 = [formCopy objectForKeyedSubscript:@"discoveryInstanceUUID"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [formCopy objectForKeyedSubscript:@"epPlatform"];
  unsignedIntValue = [v9 unsignedIntValue];
  v10 = [formCopy objectForKeyedSubscript:@"identifier"];
  v11 = [formCopy objectForKeyedSubscript:@"bundleInfo"];
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = [formCopy objectForKeyedSubscript:@"uuid"];
  v14 = [v12 initWithUUIDString:v13];
  LODWORD(unsignedIntValue) = [(PKPlugInCore *)self setupWithName:v10 extensionPointPlatform:unsignedIntValue url:v45 bundleInfo:v11 uuid:v14 discoveryInstanceUUID:v8 extensionPointCache:0];

  if (unsignedIntValue)
  {
    v16 = [formCopy objectForKeyedSubscript:@"hubProtocolVersion"];
    -[PKPlugInCore setHubProtocolVersion:](self, "setHubProtocolVersion:", [v16 unsignedIntegerValue]);

    v17 = [formCopy objectForKeyedSubscript:@"hubProtocolVersion"];
    if (!v17)
    {
      [(PKPlugInCore *)self setHubProtocolVersion:1];
    }

    v18 = [formCopy objectForKeyedSubscript:@"original-identifier"];
    [(PKPlugInCore *)self setOriginalIdentifier:v18];

    v19 = [formCopy objectForKeyedSubscript:@"hash"];
    [(PKPlugInCore *)self setCdhash:v19];

    v20 = [formCopy objectForKeyedSubscript:@"requirement"];
    [(PKPlugInCore *)self setRequirement:v20];

    v21 = [formCopy objectForKeyedSubscript:@"lastmodified"];
    -[PKPlugInCore setLastModified:](self, "setLastModified:", [v21 longValue]);

    v22 = [formCopy objectForKeyedSubscript:@"entitlements"];
    [(PKPlugInCore *)self setEntitlements:v22];

    v23 = [formCopy objectForKeyedSubscript:@"containingPath"];
    if (v23)
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v23];
      [(PKPlugInCore *)self setContainingUrl:v24];
    }

    v25 = [formCopy objectForKeyedSubscript:@"containingBundleIdentifier"];
    [(PKPlugInCore *)self setContainingBundleIdentifier:v25];

    v26 = [formCopy objectForKeyedSubscript:@"systemResident"];
    -[PKPlugInCore setOnSystemVolume:](self, "setOnSystemVolume:", [v26 BOOLValue]);

    v27 = [formCopy objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v27];

    v28 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      identifier = [(PKPlugInCore *)self identifier];
      [(PKPlugInCore *)self annotations];
      v44 = v7;
      v30 = v23;
      v31 = unsignedIntValue;
      unsignedIntValue = v9;
      v32 = v8;
      v34 = v33 = v17;
      *buf = 138412546;
      v47 = identifier;
      v48 = 2112;
      v49 = v34;
      _os_log_impl(&dword_1C6892000, v28, OS_LOG_TYPE_INFO, "%@: annotations = %@", buf, 0x16u);

      v17 = v33;
      v8 = v32;
      v9 = unsignedIntValue;
      LOBYTE(unsignedIntValue) = v31;
      v23 = v30;
      v7 = v44;
    }

    v35 = [formCopy objectForKeyedSubscript:@"localizedContainingDisplayName"];
    [(PKPlugInCore *)self setLocalizedContainingName:v35];

    v36 = [formCopy objectForKeyedSubscript:@"isRBManaged"];
    -[PKPlugInCore setIsRBManaged:](self, "setIsRBManaged:", [v36 BOOLValue]);

    v37 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      identifier2 = [(PKPlugInCore *)self identifier];
      isRBManaged = [(PKPlugInCore *)self isRBManaged];
      v40 = "will not";
      if (isRBManaged)
      {
        v40 = "will";
      }

      *buf = 138412546;
      v47 = identifier2;
      v48 = 2080;
      v49 = v40;
      _os_log_impl(&dword_1C6892000, v37, OS_LOG_TYPE_INFO, "%@: %s be managed by runningboard", buf, 0x16u);
    }

    v41 = [formCopy objectForKeyedSubscript:@"launchPersonas"];
    [(PKPlugInCore *)self setLaunchPersonas:v41];
  }

  v42 = *MEMORY[0x1E69E9840];
  return unsignedIntValue;
}

- (id)resolveSDKWithInfoPlist:(id)plist extensionPointCache:(id)cache
{
  plistCopy = plist;
  cacheCopy = cache;
  if (!plistCopy)
  {
    sub_1C68B5CD8();
  }

  v8 = [(PKPlugInCore *)self sdkDictionaryWithInfoPlist:plistCopy extensionPointCache:cacheCopy];
  v9 = plistCopy;
  v10 = v9;
  if (v8)
  {
    v10 = [(PKPlugInCore *)self mergeSDKDictionary:v8 intoExtensionDictionary:v9];
  }

  return v10;
}

- (id)mergeSDKDictionary:(id)dictionary intoExtensionDictionary:(id)extensionDictionary
{
  v31[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [extensionDictionary mutableCopy];
  sdkOnlyKeyPaths = [(PKPlugInCore *)self sdkOnlyKeyPaths];
  [v7 pk_removeItemsAtKeyPaths:sdkOnlyKeyPaths];

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
  [v7 pk_overlayDictionary:dictionaryCopy existingValuesTakePrecedent:1 exceptKeyPaths:v11 exemptionHandler:v20];

  v12 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v18 = [v7 objectForKeyedSubscript:@"NSExtension"];
    v19 = [v7 objectForKeyedSubscript:@"XPCService"];
    *buf = 138544386;
    v22 = uuid;
    v23 = 2112;
    v24 = identifier;
    v25 = 2112;
    v26 = version;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_debug_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] Merged plugin dictionary; NSExtension = %@, XPCService = %@", buf, 0x34u);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mergeSharedResources:(id)resources into:(id)into
{
  v5 = MEMORY[0x1E695DFA8];
  resourcesCopy = resources;
  v7 = [v5 setWithArray:into];
  [v7 addObjectsFromArray:resourcesCopy];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)export:(id *)export
{
  v41[11] = *MEMORY[0x1E69E9840];
  bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
  v5 = [bundleInfoDictionary mutableCopy];

  [v5 removeObjectForKey:@"CFBundleInfoPlistURL"];
  v35 = MEMORY[0x1E695DF90];
  v40[0] = @"hubProtocolVersion";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPlugInCore hubProtocolVersion](self, "hubProtocolVersion")}];
  v41[0] = v38;
  v40[1] = @"path";
  path = [(PKPlugInCore *)self path];
  v41[1] = path;
  v40[2] = @"systemResident";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore onSystemVolume](self, "onSystemVolume")}];
  v41[2] = v36;
  v40[3] = @"identifier";
  identifier = [(PKPlugInCore *)self identifier];
  v41[3] = identifier;
  v40[4] = @"original-identifier";
  originalIdentifier = [(PKPlugInCore *)self originalIdentifier];
  v41[4] = originalIdentifier;
  v40[5] = @"version";
  version = [(PKPlugInCore *)self version];
  if (version)
  {
    version2 = [(PKPlugInCore *)self version];
  }

  else
  {
    version2 = @"<none>";
  }

  v41[5] = version2;
  v41[6] = v5;
  v39 = v5;
  v40[6] = @"bundleInfo";
  v40[7] = @"uuid";
  uuid = [(PKPlugInCore *)self uuid];
  uUIDString = [uuid UUIDString];
  v41[7] = uUIDString;
  v40[8] = @"lastmodified";
  v10 = [MEMORY[0x1E696AD98] numberWithLong:{-[PKPlugInCore lastModified](self, "lastModified")}];
  v41[8] = v10;
  v40[9] = @"annotations";
  annotations = [(PKPlugInCore *)self annotations];
  v12 = annotations;
  v13 = MEMORY[0x1E695E0F8];
  if (annotations)
  {
    v13 = annotations;
  }

  v41[9] = v13;
  v40[10] = @"isRBManaged";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPlugInCore isRBManaged](self, "isRBManaged")}];
  v41[10] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:11];
  v16 = [v35 dictionaryWithDictionary:v15];

  if (version)
  {
  }

  entitlements = [(PKPlugInCore *)self entitlements];

  if (entitlements)
  {
    entitlements2 = [(PKPlugInCore *)self entitlements];
    [v16 setObject:entitlements2 forKeyedSubscript:@"entitlements"];
  }

  containingPath = [(PKPlugInCore *)self containingPath];

  if (containingPath)
  {
    containingPath2 = [(PKPlugInCore *)self containingPath];
    [v16 setObject:containingPath2 forKeyedSubscript:@"containingPath"];
  }

  containingBundleIdentifier = [(PKPlugInCore *)self containingBundleIdentifier];

  if (containingBundleIdentifier)
  {
    containingBundleIdentifier2 = [(PKPlugInCore *)self containingBundleIdentifier];
    [v16 setObject:containingBundleIdentifier2 forKeyedSubscript:@"containingBundleIdentifier"];
  }

  localizedContainingName = [(PKPlugInCore *)self localizedContainingName];

  if (localizedContainingName)
  {
    localizedContainingName2 = [(PKPlugInCore *)self localizedContainingName];
    [v16 setObject:localizedContainingName2 forKeyedSubscript:@"localizedContainingDisplayName"];
  }

  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];

  if (discoveryInstanceUUID)
  {
    discoveryInstanceUUID2 = [(PKPlugInCore *)self discoveryInstanceUUID];
    uUIDString2 = [discoveryInstanceUUID2 UUIDString];
    [v16 setObject:uUIDString2 forKeyedSubscript:@"discoveryInstanceUUID"];
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PKPlugInCore extensionPointPlatform](self, "extensionPointPlatform")}];
  [v16 setObject:v28 forKeyedSubscript:@"epPlatform"];

  launchPersonas = [(PKPlugInCore *)self launchPersonas];

  if (launchPersonas)
  {
    launchPersonas2 = [(PKPlugInCore *)self launchPersonas];
    [v16 setObject:launchPersonas2 forKeyedSubscript:@"launchPersonas"];
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

- (void)updateFromForm:(id)form
{
  v38 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v5 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1C68B5DA0(self, formCopy, v5);
  }

  if (![(PKPlugInCore *)self annotationTimestamp])
  {
    goto LABEL_21;
  }

  v6 = [formCopy objectForKeyedSubscript:@"annotations"];
  v7 = [v6 objectForKeyedSubscript:@"bootuuid"];

  bootInstance = [formCopy objectForKeyedSubscript:@"annotations"];
  v9 = [bootInstance objectForKeyedSubscript:@"timestamp"];

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

  bootInstance = [(PKPlugInCore *)self bootInstance];
  if ([v7 isEqualToString:bootInstance])
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    v13 = unsignedLongLongValue <= [(PKPlugInCore *)self annotationTimestamp];
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
    v18 = [formCopy objectForKeyedSubscript:@"annotations"];
    [(PKPlugInCore *)self setAnnotations:v18];

    goto LABEL_22;
  }

  v14 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    unsignedLongLongValue2 = [v9 unsignedLongLongValue];
    bootInstance2 = [(PKPlugInCore *)self bootInstance];
    *buf = 138545154;
    v23 = uuid;
    v24 = 2112;
    v25 = identifier;
    v26 = 2112;
    v27 = version;
    v28 = 2080;
    v29 = "[PKPlugInCore updateFromForm:]";
    v30 = 2112;
    v31 = v7;
    v32 = 2048;
    v33 = unsignedLongLongValue2;
    v34 = 2112;
    v35 = bootInstance2;
    v36 = 2048;
    annotationTimestamp = [(PKPlugInCore *)self annotationTimestamp];
    _os_log_impl(&dword_1C6892000, v14, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] %s ignoring annotation update (%@, %llu) vs. (%@, %llu)", buf, 0x52u);
  }

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)setAnnotation:(id)annotation value:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  annotationCopy = annotation;
  valueCopy = value;
  [(PKPlugInCore *)self setAnnotationTimestamp:mach_continuous_time()];
  annotations = [(PKPlugInCore *)self annotations];
  v9 = [valueCopy copy];
  v10 = [annotations dictionaryChanging:annotationCopy to:v9];
  [(PKPlugInCore *)self setAnnotations:v10];

  v11 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v16 = 138544642;
    v17 = uuid;
    v18 = 2112;
    v19 = identifier;
    v20 = 2112;
    v22 = 2080;
    v21 = version;
    v23 = "[PKPlugInCore setAnnotation:value:]";
    v24 = 2112;
    v25 = annotationCopy;
    v26 = 2112;
    v27 = valueCopy;
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
  protocolSpec = [(PKPlugInCore *)self pluginKey:@"EmbeddedProtocol"];
  if (!protocolSpec)
  {
    protocolSpec = [(PKPlugInCore *)self protocolSpec];
  }

  return protocolSpec;
}

- (NSDate)timestamp
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[PKPlugInCore lastModified](self, "lastModified")}];

  return v2;
}

- (BOOL)shouldTerminateOnHold
{
  v2 = [(PKPlugInCore *)self pluginKey:@"NSExtensionShouldTerminateOnHold"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)infoKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bundleInfoDictionary = [(PKPlugInCore *)self bundleInfoDictionary];
  v6 = [bundleInfoDictionary objectForKeyedSubscript:keyCopy];

  v7 = pklog_handle_for_category(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v13 = 138544386;
    v14 = uuid;
    v15 = 2112;
    v16 = identifier;
    v17 = 2112;
    v18 = version;
    v19 = 2112;
    v20 = keyCopy;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] info [%@] => [%@]", &v13, 0x34u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)pluginKey:(id)key
{
  keyCopy = key;
  plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
  v6 = [plugInDictionary objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)attribute:(id)attribute
{
  attributeCopy = attribute;
  attributes = [(PKPlugInCore *)self attributes];
  v6 = [attributes objectForKeyedSubscript:attributeCopy];

  return v6;
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  entitlements = [(PKPlugInCore *)self entitlements];
  v6 = [entitlements objectForKeyedSubscript:entitlementCopy];

  return v6;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(PKPlugInCore *)self valueForEntitlement:entitlement];
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

- (void)localizedInfoDictionaryForKeys:(id)keys completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = dictionary;
  if (self->_bundleInfoDictionary)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = keysCopy;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v11)
    {
      v28 = completionCopy;
      v29 = keysCopy;
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
            localizedShortName = [(PKPlugInCore *)self localizedShortName];
            if (!localizedShortName)
            {
              goto LABEL_14;
            }
          }

          else if (![v15 isEqualToString:@"CFBundleDisplayName"] || (-[PKPlugInCore localizedName](self, "localizedName"), (localizedShortName = objc_claimAutoreleasedReturnValue()) == 0))
          {
LABEL_14:
            localizedShortName = [(PKPlugInCore *)self infoKey:v15];
            if (!localizedShortName)
            {
              localizedShortName = [(NSDictionary *)self->_bundleInfoDictionary objectForKey:v15];
              if (!localizedShortName)
              {
                goto LABEL_18;
              }
            }
          }

          if (![localizedShortName conformsToProtocol:&unk_1F4649970])
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

          [v9 setObject:localizedShortName forKeyedSubscript:v15];
LABEL_18:

          ++v13;
        }

        while (v14 != v13);
        v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (!v11)
        {
LABEL_24:
          completionCopy = v28;
          keysCopy = v29;
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

  completionCopy[2](completionCopy, v9, v22);
  v27 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)localizedFileProviderActionNames
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedFileProviderActionNames)
  {
    [(PKPlugInCore *)selfCopy _loadLocalizedFileProviderActionNames];
  }

  objc_sync_exit(selfCopy);

  localizedFileProviderActionNames = selfCopy->_localizedFileProviderActionNames;

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
    external = [(PKPlugInCore *)self external];
    filesystem = [external filesystem];
    v8 = [(PKPlugInCore *)self url];
    v9 = [filesystem bundleWithURL:v8];

    plugInDictionary = [(PKPlugInCore *)self plugInDictionary];
    v11 = [(PKPlugInCore *)self _localizedFileProviderActionNamesForPKDict:plugInDictionary fromBundle:v9];
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

- (id)_localizedFileProviderActionNamesForPKDict:(id)dict fromBundle:(id)bundle
{
  dictCopy = dict;
  bundleCopy = bundle;
  v8 = objc_opt_new();
  v9 = objc_autoreleasePoolPush();
  v10 = [dictCopy objectForKeyedSubscript:@"NSExtensionFileProviderActions"];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1C68A89B8;
    v14[3] = &unk_1E827F910;
    v15 = v8;
    v16 = bundleCopy;
    selfCopy = self;
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
  uuid = [(PKPlugInCore *)self uuid];
  identifier = [(PKPlugInCore *)self identifier];
  version = [(PKPlugInCore *)self version];
  isAppExtension = [(PKPlugInCore *)self isAppExtension];
  onSystemVolume = [(PKPlugInCore *)self onSystemVolume];
  containingBundleIdentifier = [(PKPlugInCore *)self containingBundleIdentifier];
  lastModified = [(PKPlugInCore *)self lastModified];
  discoveryInstanceUUID = [(PKPlugInCore *)self discoveryInstanceUUID];
  path = [(PKPlugInCore *)self path];
  v12 = [v14 initWithFormat:@"<PKPlugInCore: %p; uuid = [%@], identifier = [%@(%@)], isAppExtension = %d, onSystemVolume = %d, containingBundle = [%@], lastModified = %ld, discoveryInstanceUUID = [%@], path = [%@]>", self, uuid, identifier, version, isAppExtension, onSystemVolume, containingBundleIdentifier, lastModified, discoveryInstanceUUID, path];

  return v12;
}

@end