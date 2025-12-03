@interface PKDPlugIn
+ (id)nullPlugIn;
+ (id)sandboxOverrideForExtensionPoint:(id)point attributes:(id)attributes;
- (BOOL)enableForClient:(id)client environment:(id)environment languages:(id)languages oneShotUUID:(id)d persona:(id)persona sandbox:(id)sandbox pid:(int *)pid error:(id *)self0;
- (BOOL)match:(id)match discoveryInstanceUUID:(id)d server:(id)server withError:(id *)error;
- (BOOL)matchDictionary:(id)dictionary pattern:(id)pattern discoveryInstanceUUID:(id)d withError:(id *)error;
- (BOOL)matchKey:(id)key pattern:(id)pattern discoveryInstanceUUID:(id)d server:(id)server withError:(id *)error;
- (BOOL)matchValue:(id)value pattern:(id)pattern;
- (BOOL)matchValue:(id)value patterns:(id)patterns;
- (NSString)annotationKey;
- (NSString)sandboxProfile;
- (PKDPlugIn)initWithLSData:(id)data personaCache:(id)cache discoveryInstanceUUID:(id)d extensionPointCache:(id)pointCache externalProviders:(id)providers;
- (id)_dataContainerURLForPersona:(id)persona;
- (id)_personaIDForClient:(id)client requestedPersona:(id)persona;
- (id)allowForClient:(id)client discoveryInstanceUUID:(id)d;
- (id)allowedTCCServices;
- (id)checkBusy;
- (id)dataContainerURLForPersona:(id)persona;
- (id)debugDescription;
- (id)diagnose;
- (id)issueResourceExtensions:(id)extensions auditToken:(id *)token;
- (id)launchdIdentifier;
- (id)launchdVersion;
- (id)prunedInfoDictionaryFor:(id)for;
- (id)viewServiceIdentifier;
- (void)augmentForm:(id)form host:(id)host;
- (void)dealloc;
@end

@implementation PKDPlugIn

+ (id)nullPlugIn
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__PKDPlugIn_nullPlugIn__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (nullPlugIn_onceToken != -1)
  {
    dispatch_once(&nullPlugIn_onceToken, block);
  }

  v2 = nullPlugIn_nullPlugIn;

  return v2;
}

- (NSString)annotationKey
{
  v3 = [(PKDPlugIn *)self valueForEntitlement:PKOverrideEntitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = v3;
  }

  else
  {
    identifier = [(PKDPlugIn *)self identifier];
  }

  v5 = identifier;

  return v5;
}

- (NSString)sandboxProfile
{
  v3 = [(PKDPlugIn *)self pluginKey:PKSDKInfoKey];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sandboxProfile = self->_sandboxProfile;
    self->_sandboxProfile = @"plugin";
LABEL_12:

    sandboxProfile = @"plugin";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"com.apple.usernotifications.service"] && -[PKDPlugIn hasEntitlement:](self, "hasEntitlement:", @"com.apple.developer.usernotifications.filtering"))
  {
    v4 = self->_sandboxProfile;
    self->_sandboxProfile = @"silent-nse";
  }

  if (!self->_sandboxProfile)
  {
    v5 = [(PKDPlugIn *)self pluginKey:PKSandboxProfileKey];
    v6 = self->_sandboxProfile;
    self->_sandboxProfile = @"plugin";

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 length])
    {
      v7 = v5;
      attributes = self->_sandboxProfile;
      self->_sandboxProfile = v7;
    }

    else
    {
      attributes = [(PKDPlugIn *)self attributes];
      v11 = [PKDPlugIn sandboxOverrideForExtensionPoint:v3 attributes:attributes];
      v12 = v11;
      if (!v11)
      {
        v12 = self->_sandboxProfile;
      }

      objc_storeStrong(&self->_sandboxProfile, v12);
    }
  }

  sandboxProfile = self->_sandboxProfile;
  if ([(NSString *)self->_sandboxProfile isEqualToString:@"keyboard"])
  {
    v13 = [(PKDPlugIn *)self attribute:@"RequestsOpenAccess"];
    if ([v13 isEqual:&__kCFBooleanTrue])
    {
      allowedTCCServices = [(PKDPlugIn *)self allowedTCCServices];
      v15 = [allowedTCCServices containsObject:kTCCServiceKeyboardNetwork];
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return sandboxProfile;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKDPlugIn;
  [(PKDPlugIn *)&v2 dealloc];
}

void __23__PKDPlugIn_nullPlugIn__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = nullPlugIn_nullPlugIn;
  nullPlugIn_nullPlugIn = v2;

  v4 = [[NSUUID alloc] initWithUUIDBytes:&UUID_NULL];
  [nullPlugIn_nullPlugIn setUuid:v4];
}

- (PKDPlugIn)initWithLSData:(id)data personaCache:(id)cache discoveryInstanceUUID:(id)d extensionPointCache:(id)pointCache externalProviders:(id)providers
{
  dataCopy = data;
  cacheCopy = cache;
  dCopy = d;
  pointCacheCopy = pointCache;
  providersCopy = providers;
  pluginUUID = [dataCopy pluginUUID];
  v13 = pklog_handle_for_category();
  v14 = os_signpost_id_make_with_pointer(v13, dataCopy);

  v15 = pklog_handle_for_category();
  v16 = v15;
  v17 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v75 = pluginUUID;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LSPlugInKitProxy", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
  }

  bundleURL = [dataCopy bundleURL];
  if (!bundleURL)
  {
    v33 = pklog_handle_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:];
    }

    v34 = pklog_handle_for_category();
    pluginIdentifier = v34;
    if (v17 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, pluginIdentifier, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
    }

    goto LABEL_36;
  }

  extensionPoint = [dataCopy extensionPoint];
  platform = [extensionPoint platform];
  unsignedIntValue = [platform unsignedIntValue];

  if (!unsignedIntValue)
  {
    v53 = pklog_handle_for_category();
    v54 = v53;
    if (v17 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v54, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
    }

    pluginIdentifier = pklog_handle_for_category();
    if (os_log_type_enabled(pluginIdentifier, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:];
    }

LABEL_36:
    selfCopy = 0;
    goto LABEL_37;
  }

  v21 = v17 < 0xFFFFFFFFFFFFFFFELL;
  pluginIdentifier = [dataCopy pluginIdentifier];
  registrationDate = [dataCopy registrationDate];
  isOnSystemPartition = [dataCopy isOnSystemPartition];
  obj = [dataCopy originalIdentifier];
  entitlements = [dataCopy entitlements];
  dataContainerURL = [dataCopy dataContainerURL];
  infoPlist = [dataCopy infoPlist];
  containingBundle = [dataCopy containingBundle];
  bundleURL2 = [containingBundle bundleURL];
  bundleIdentifier = [containingBundle bundleIdentifier];
  localizedName = [containingBundle localizedName];
  platform2 = [dataCopy platform];
  unsignedIntValue2 = [platform2 unsignedIntValue];

  v26 = pklog_handle_for_category();
  v27 = v26;
  if (v21 && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v27, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
  }

  v73.receiver = self;
  v73.super_class = PKDPlugIn;
  v28 = [(PKDPlugIn *)&v73 initWithName:pluginIdentifier extensionPointPlatform:unsignedIntValue url:bundleURL bundleInfo:infoPlist uuid:pluginUUID discoveryInstanceUUID:dCopy extensionPointCache:pointCacheCopy externalProviders:providersCopy];
  if (v28)
  {
    [registrationDate timeIntervalSince1970];
    *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__lastModified] = v29;
    v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__onSystemVolume] = isOnSystemPartition;
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__originalIdentifier], obj);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__entitlements], entitlements);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__dataContainerURL], dataContainerURL);
    v28->_platform = unsignedIntValue2;
    v30 = [*&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__plugInDictionary] objectForKeyedSubscript:PKHubProtocolVersionInfoKey];
    v31 = v30;
    if (v30)
    {
      unsignedIntegerValue = [v30 unsignedIntegerValue];
      *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__hubProtocolVersion] = unsignedIntegerValue;
    }

    else
    {
      v35 = [(PKDPlugIn *)v28 infoKey:PKPlugInKitInfoKey_L];

      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__hubProtocolVersion] = v36;
    }

    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__containingUrl], bundleURL2);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__containingBundleIdentifier], bundleIdentifier);
    objc_storeStrong(&v28->_personaCache, cache);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__localizedContainingName], localizedName);
    launchPersonas = [dataCopy launchPersonas];
    v38 = *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__launchPersonas];
    *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__launchPersonas] = launchPersonas;

    fileID = v28->_fileID;
    v28->_fileID = 0;

    sandboxProfile = v28->_sandboxProfile;
    v28->_sandboxProfile = 0;

    v28->_isRBManaged = objc_opt_class() != 0;
    diagnose = [(PKDPlugIn *)v28 diagnose];
    if (diagnose)
    {
      v42 = pklog_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        uuid = [(PKDPlugIn *)v28 uuid];
        identifier = [(PKDPlugIn *)v28 identifier];
        version = [(PKDPlugIn *)v28 version];
        bundleURL3 = [dataCopy bundleURL];
        path = [bundleURL3 path];
        localizedDescription = [diagnose localizedDescription];
        *buf = 138413570;
        v75 = dCopy;
        v76 = 2114;
        v77 = uuid;
        v78 = 2112;
        v79 = identifier;
        v80 = 2112;
        v81 = version;
        v82 = 2114;
        v83 = path;
        v84 = 2112;
        v85 = localizedDescription;
        _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] rejecting; Ignoring mis-configured plugin at [%{public}@]: %@", buf, 0x3Eu);
      }

      v28 = 0;
    }

    v43 = pklog_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(PKDPlugIn *)v28 uuid];
      identifier2 = [(PKDPlugIn *)v28 identifier];
      version2 = [(PKDPlugIn *)v28 version];
      *buf = 138413058;
      v75 = dCopy;
      v76 = 2114;
      v77 = uuid2;
      v78 = 2112;
      v79 = identifier2;
      v80 = 2112;
      v81 = version2;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] Created plugin", buf, 0x2Au);
    }

    v47 = pklog_handle_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v75 = dCopy;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "[d %@] %@", buf, 0x16u);
    }
  }

  self = v28;

  selfCopy = self;
LABEL_37:

  return selfCopy;
}

+ (id)sandboxOverrideForExtensionPoint:(id)point attributes:(id)attributes
{
  pointCopy = point;
  attributesCopy = attributes;
  if ([pointCopy isEqualToString:@"com.apple.keyboard-service"])
  {
    v4 = @"keyboard";
    goto LABEL_29;
  }

  if ([pointCopy isEqualToString:@"com.apple.app.non-ui-extension"] & 1) != 0 || (objc_msgSend(pointCopy, "isEqualToString:", @"com.apple.app.non-ui-extension.multiple-instances"))
  {
    v4 = @"playground-devtools";
    goto LABEL_29;
  }

  if (![pointCopy isEqualToString:@"com.apple.AudioUnit"])
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = [attributesCopy objectForKeyedSubscript:@"AudioComponents"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    v4 = 0;
    goto LABEL_27;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v10)
  {
    v17 = 1;
    goto LABEL_26;
  }

  v11 = *v21;
  v4 = @"keyboard";
  v19 = v8;
  while (2)
  {
    v12 = 0;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    do
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = 0;
        v4 = 0;
LABEL_25:
        v8 = v19;
        goto LABEL_26;
      }

      v15 = [v14 objectForKeyedSubscript:@"type"];
      v16 = [v15 isEqual:@"ausp"];

      if (v16)
      {
        v17 = 0;
        goto LABEL_25;
      }

      ++v12;
    }

    while (v13 != v12);
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    v17 = 1;
    v8 = v19;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  if (v17)
  {
LABEL_28:
    v4 = 0;
  }

LABEL_29:

  return v4;
}

- (id)prunedInfoDictionaryFor:(id)for
{
  forCopy = for;
  v4 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = forCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v8);
        if (([v10 hasPrefix:{@"DT", v13}] & 1) == 0)
        {
          v11 = [v5 objectForKeyedSubscript:v10];
          [v4 setObject:v11 forKeyedSubscript:v10];
        }

        ++v8;
      }

      while (v9 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)augmentForm:(id)form host:(id)host
{
  formCopy = form;
  hostCopy = host;
  if ([hostCopy isSandboxed])
  {
    v8 = [(PKDPlugIn *)self pluginKey:PKSharedResourcesInfoKey];
    if (([(PKDPlugIn *)self isAppExtension]& 1) != 0)
    {
      v9 = v8;
      v8 = &off_2A270;
    }

    else
    {
      v9 = pklog_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(PKDPlugIn *)self uuid];
        identifier = [(PKDPlugIn *)self identifier];
        version = [(PKDPlugIn *)self version];
        LODWORD(v17[0]) = 138543874;
        *(v17 + 4) = uuid;
        WORD6(v17[0]) = 2112;
        *(v17 + 14) = identifier;
        WORD3(v17[1]) = 2112;
        *(&v17[1] + 1) = version;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Not issuing file extension registered as [.] because this is not an app extension; this is unusual.", v17, 0x20u);
      }
    }

    if (v8)
    {
      if (hostCopy)
      {
        [hostCopy auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v13 = [(PKDPlugIn *)self issueResourceExtensions:v8 auditToken:v17];
      if (v13)
      {
        [formCopy setObject:v13 forKeyedSubscript:PKExtensionsFormKey];
      }
    }

    if (([(PKDPlugIn *)self isData:v17[0]]& 1) == 0)
    {
      v14 = [(PKDPlugIn *)self infoKey:@"CFBundleIdentifier"];
      if (hostCopy)
      {
        [hostCopy auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v15 = pkIssueSandboxExtensionForMachService();
      if (v15)
      {
        [formCopy setObject:v15 forKeyedSubscript:PKServiceExtensionFormKey];
      }

      else
      {
        v16 = pklog_handle_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PKDPlugIn augmentForm:host:];
        }
      }
    }
  }
}

- (id)issueResourceExtensions:(id)extensions auditToken:(id *)token
{
  extensionsCopy = extensions;
  v7 = &MGGetBoolAnswer_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = extensionsCopy;
    v8 = [NSArray arrayWithObjects:&v39 count:1];

    extensionsCopy = v8;
  }

  v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [extensionsCopy count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = extensionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v10)
  {
    v11 = *v28;
    do
    {
      v12 = 0;
      if (v10 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }

      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * v12);
        v15 = v7[292];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(PKDPlugIn *)self url];
          if (([v14 isEqualToString:@"."] & 1) == 0)
          {
            v17 = [v16 URLByAppendingPathComponent:v14];

            v16 = v17;
            v7 = &MGGetBoolAnswer_ptr;
          }

          v18 = *&token->var0[4];
          *buf = *token->var0;
          *&buf[16] = v18;
          v19 = pkIssueSandboxExtensionForURL();
          if (v19)
          {
            [v26 setObject:v19 forKeyedSubscript:v14];
          }

          else
          {
            v20 = pklog_handle_for_category();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              uuid = [(PKDPlugIn *)self uuid];
              identifier = [(PKDPlugIn *)self identifier];
              version = [(PKDPlugIn *)self version];
              v21 = *__error();
              *buf = 138544642;
              *&buf[4] = uuid;
              *&buf[12] = 2112;
              *&buf[14] = identifier;
              *&buf[22] = 2112;
              *&buf[24] = version;
              v32 = 2112;
              v33 = v16;
              v34 = 2112;
              v35 = v14;
              v36 = 1024;
              v37 = v21;
              _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] failed to make file extension for [%@] identified as [%@]: %{darwin.errno}d", buf, 0x3Au);
            }

            v7 = &MGGetBoolAnswer_ptr;
          }
        }

        ++v12;
      }

      while (v13 != v12);
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v10);
  }

  return v26;
}

- (id)diagnose
{
  v14.receiver = self;
  v14.super_class = PKDPlugIn;
  diagnose = [(PKDPlugIn *)&v14 diagnose];
  v4 = diagnose;
  if (diagnose)
  {
    v5 = diagnose;
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if (([(PKDPlugIn *)self isData]& 1) == 0)
  {
    dataContainerURL = [(PKDPlugIn *)self dataContainerURL];

    if (!dataContainerURL)
    {
      pkUseInternalDiagnostics();
LABEL_15:
      v5 = pkError();
      goto LABEL_3;
    }
  }

  containingUrl = [(PKDPlugIn *)self containingUrl];

  if (!containingUrl)
  {
    path = [(PKDPlugIn *)self path];
    v10 = [path hasPrefix:@"/System/"];

    if ((v10 & 1) == 0)
    {
      if (!pkUseInternalDiagnostics())
      {
        goto LABEL_15;
      }

      path2 = [(PKDPlugIn *)self path];
      v13 = [path2 hasPrefix:@"/AppleInternal/Library/Frameworks/"];

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)match:(id)match discoveryInstanceUUID:(id)d server:(id)server withError:(id *)error
{
  matchCopy = match;
  dCopy = d;
  serverCopy = server;
  if (!matchCopy)
  {
    v14 = 0;
LABEL_21:
    v24 = 1;
    goto LABEL_22;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = matchCopy;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {
    v14 = 0;

    goto LABEL_21;
  }

  errorCopy = error;
  v27 = matchCopy;
  v14 = 0;
  v15 = *v31;
  while (2)
  {
    v16 = 0;
    if (v13 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v13;
    }

    v18 = v14;
    do
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v30 + 1) + 8 * v16);
      v20 = [v12 objectForKeyedSubscript:{v19, errorCopy}];
      v29 = v18;
      v21 = [(PKDPlugIn *)self matchKey:v19 pattern:v20 discoveryInstanceUUID:dCopy server:serverCopy withError:&v29];
      v14 = v29;

      if ((v21 & 1) == 0)
      {
        if (errorCopy)
        {
          v23 = v14;
          v22 = 0;
          *errorCopy = v14;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_20;
      }

      ++v16;
      v18 = v14;
    }

    while (v17 != v16);
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v22 = 1;
LABEL_20:
  matchCopy = v27;

  if (v22)
  {
    goto LABEL_21;
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (BOOL)matchKey:(id)key pattern:(id)pattern discoveryInstanceUUID:(id)d server:(id)server withError:(id *)error
{
  keyCopy = key;
  patternCopy = pattern;
  dCopy = d;
  serverCopy = server;
  if ([keyCopy hasPrefix:@"ENTITLEMENT:"])
  {
    v16 = [keyCopy substringFromIndex:12];

    identifier = [(PKDPlugIn *)self valueForEntitlement:v16];
    keyCopy = v16;
  }

  else
  {
    if ([keyCopy hasPrefix:@"LS:"])
    {
      v18 = 0;
      identifier = 0;
      goto LABEL_45;
    }

    if ([keyCopy isEqualToString:PKIdentifierAttribute])
    {
      identifier = [(PKDPlugIn *)self identifier];
    }

    else
    {
      identifier = 0;
    }

    if ([keyCopy isEqualToString:PKUUIDAttribute])
    {
      uuid = [(PKDPlugIn *)self uuid];
      uUIDString = [uuid UUIDString];

      identifier = uUIDString;
    }

    if ([keyCopy isEqualToString:PKUserElectionAttribute])
    {
      v21 = [serverCopy annotationForPlugIn:self];
      v22 = [v21 objectForKeyedSubscript:PKAnnotationElectionKey];
      integerValue = [v22 integerValue];

      0xFFFFFFFFFFFF00FFLL = [NSNumber numberWithInteger:integerValue & 0xFFFFFFFFFFFF00FFLL];
      v25 = [NSString stringWithFormat:@"%@", 0xFFFFFFFFFFFF00FFLL];

      identifier = v25;
    }

    if ([keyCopy isEqualToString:PKContainingAppAttribute])
    {
      containingPath = [(PKDPlugIn *)self containingPath];

      identifier = containingPath;
      if (!containingPath)
      {
        goto LABEL_42;
      }
    }

    if (!identifier)
    {
      identifier = [(PKDPlugIn *)self attribute:keyCopy];
      if (!identifier)
      {
        identifier = [(PKDPlugIn *)self infoKey:keyCopy];
      }
    }
  }

  if ([patternCopy isEqual:&__kCFBooleanTrue])
  {
    if (identifier)
    {
      v27 = [identifier isEqual:&__kCFBooleanFalse];
      v18 = 0;
      v28 = v27 ^ 1;
      goto LABEL_46;
    }

LABEL_42:
    v18 = 0;
    v28 = 0;
    goto LABEL_46;
  }

  if ([patternCopy isEqual:&__kCFBooleanFalse])
  {
    if (identifier)
    {
      v29 = [identifier isEqual:&__kCFBooleanFalse];
      goto LABEL_21;
    }

LABEL_44:
    v18 = 0;
LABEL_45:
    v28 = 1;
    goto LABEL_46;
  }

  if (!identifier)
  {
    goto LABEL_42;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        identifier = identifier;
        v30 = [identifier countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v30)
        {
          v31 = *v36;
          while (2)
          {
            v32 = 0;
            if (v30 <= 1)
            {
              v33 = 1;
            }

            else
            {
              v33 = v30;
            }

            do
            {
              if (*v36 != v31)
              {
                objc_enumerationMutation(identifier);
              }

              if ([(PKDPlugIn *)self matchValue:*(*(&v35 + 1) + 8 * v32) patterns:patternCopy])
              {

                goto LABEL_44;
              }

              ++v32;
            }

            while (v33 != v32);
            v30 = [identifier countByEnumeratingWithState:&v35 objects:v40 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }
      }

      goto LABEL_42;
    }

    v29 = [(PKDPlugIn *)self matchValue:identifier patterns:patternCopy];
LABEL_21:
    v28 = v29;
    v18 = 0;
    goto LABEL_46;
  }

  v39 = 0;
  v28 = [(PKDPlugIn *)self matchDictionary:identifier pattern:patternCopy discoveryInstanceUUID:dCopy withError:&v39];
  v18 = v39;
  if (error)
  {
    v18 = v18;
    *error = v18;
  }

LABEL_46:

  return v28;
}

- (BOOL)matchValue:(id)value patterns:(id)patterns
{
  valueCopy = value;
  patternsCopy = patterns;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PKDPlugIn *)self matchValue:valueCopy pattern:patternsCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = patternsCopy;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        while (2)
        {
          v12 = 0;
          if (v10 <= 1)
          {
            v13 = 1;
          }

          else
          {
            v13 = v10;
          }

          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if ([(PKDPlugIn *)self matchValue:valueCopy pattern:*(*(&v15 + 1) + 8 * v12), v15])
            {

              v8 = 1;
              goto LABEL_17;
            }

            ++v12;
          }

          while (v13 != v12);
          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (BOOL)matchValue:(id)value pattern:(id)pattern
{
  valueCopy = value;
  patternCopy = pattern;
  if (![patternCopy hasPrefix:@"?"])
  {
    if ([patternCopy hasPrefix:@"<>"])
    {
      v10 = 0;
      v11 = 1;
      v12 = 2;
    }

    else if ([patternCopy hasPrefix:@"<="])
    {
      v10 = 1;
      v12 = 2;
      v11 = 1;
    }

    else if ([patternCopy hasPrefix:@">="])
    {
      v11 = 1;
      v10 = -1;
      v12 = 2;
    }

    else if ([patternCopy hasPrefix:@"="])
    {
      v10 = 0;
      v11 = 0;
      v12 = 1;
    }

    else if ([patternCopy hasPrefix:@"<"])
    {
      v11 = 0;
      v10 = -1;
      v12 = 1;
    }

    else
    {
      v11 = 0;
      if (![patternCopy hasPrefix:@">"])
      {
        v10 = 0;
        goto LABEL_23;
      }

      v12 = 1;
      v10 = 1;
    }

    v15 = [patternCopy substringFromIndex:v12];

    patternCopy = v15;
LABEL_23:
    v13 = v11 ^ (v10 == [(__CFString *)valueCopy compare:patternCopy options:64]);
    goto LABEL_24;
  }

  if ([patternCopy hasPrefix:@"?UT-CONFORMS:"])
  {
    v7 = [patternCopy substringFromIndex:13];

    v8 = valueCopy;
    v9 = v7;
LABEL_8:
    v13 = UTTypeConformsTo(v8, v9) != 0;
    patternCopy = v7;
    goto LABEL_24;
  }

  if ([patternCopy hasPrefix:@"?UT-IS:"])
  {
    v7 = [patternCopy substringFromIndex:7];

    v8 = v7;
    v9 = valueCopy;
    goto LABEL_8;
  }

  v14 = pklog_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PKDPlugIn matchValue:patternCopy pattern:v14];
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (BOOL)matchDictionary:(id)dictionary pattern:(id)pattern discoveryInstanceUUID:(id)d withError:(id *)error
{
  dictionaryCopy = dictionary;
  patternCopy = pattern;
  dCopy = d;
  v13 = pklog_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(PKDPlugIn *)self uuid];
    identifier = [(PKDPlugIn *)self identifier];
    version = [(PKDPlugIn *)self version];
    *buf = 138544386;
    v29 = uuid;
    v30 = 2112;
    v31 = identifier;
    v32 = 2112;
    v33 = version;
    v34 = 2112;
    v35 = patternCopy;
    v36 = 2112;
    v37 = dictionaryCopy;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] evaluating NSExtension filter: %@ value: %@", buf, 0x34u);
  }

  v14 = pklog_handle_for_category();
  v15 = os_signpost_id_make_with_pointer(v14, dictionaryCopy);

  v16 = pklog_handle_for_category();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    uuid2 = [(PKDPlugIn *)self uuid];
    identifier2 = [(PKDPlugIn *)self identifier];
    *buf = 138543875;
    v29 = dCopy;
    v30 = 2114;
    v31 = uuid2;
    v32 = 2113;
    v33 = identifier2;
    _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "NSExtensionDiscoveryFilter", " discoveryUUID=%{public, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@ ", buf, 0x20u);
  }

  v20 = [NSExtension evaluateActivationRule:dictionaryCopy withExtensionItemsRepresentation:patternCopy];
  v21 = pklog_handle_for_category();
  v22 = v21;
  if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    *buf = 67240192;
    LODWORD(v29) = v20;
    _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, v15, "NSExtensionDiscoveryFilter", " success=%{public, signpost.description:attribute}d ", buf, 8u);
  }

  if (error)
  {
    v23 = 0;
    *error = 0;
  }

  return v20;
}

- (id)allowForClient:(id)client discoveryInstanceUUID:(id)d
{
  clientCopy = client;
  dCopy = d;
  v8 = [clientCopy entitlementValueForKey:PKAllowedPlugInsEntitlement];
  if (!v8)
  {
    v11 = 0;
LABEL_9:
    v12 = [(PKDPlugIn *)self pluginKey:PKHostEntitlementInfoKey];
    if (v12 && ([clientCopy hasEntitlement:v12] & 1) == 0)
    {
      v13 = [NSString stringWithFormat:@"the host does not have the %@ entitlement", v12];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = @"invalid host restriction entitlement";
    goto LABEL_16;
  }

  server = [clientCopy server];
  v15 = 0;
  v10 = [(PKDPlugIn *)self match:v8 discoveryInstanceUUID:dCopy server:server withError:&v15];
  v11 = v15;

  if (v10)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
    v13 = @"the host's plug-in entitlement does not allow this plug-in";
    goto LABEL_15;
  }

  v12 = pklog_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PKDPlugIn allowForClient:discoveryInstanceUUID:];
  }

  v13 = @"the host's plug-in entitlement does not allow this plug-in";
LABEL_14:

LABEL_15:
LABEL_16:

  return v13;
}

- (id)allowedTCCServices
{
  v3 = +[NSMutableSet set];
  containingUrl = [(PKDPlugIn *)self containingUrl];

  if (containingUrl)
  {
    containingUrl2 = [(PKDPlugIn *)self containingUrl];
    v6 = CFBundleCreate(kCFAllocatorDefault, containingUrl2);

    if (v6)
    {
      _CFBundleFlushBundleCaches();
      v7 = TCCAccessCopyInformationForBundle();
      if (v7)
      {
        v8 = v7;
        if (CFArrayGetCount(v7) >= 1)
        {
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
            Value = CFDictionaryGetValue(ValueAtIndex, kTCCInfoGranted);
            if (Value && CFBooleanGetValue(Value))
            {
              [v3 addObject:{CFDictionaryGetValue(ValueAtIndex, kTCCInfoService)}];
            }

            ++v9;
          }

          while (v9 < CFArrayGetCount(v8));
        }

        CFRelease(v8);
      }

      else
      {
        v18 = pklog_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          uuid = [(PKDPlugIn *)self uuid];
          identifier = [(PKDPlugIn *)self identifier];
          version = [(PKDPlugIn *)self version];
          v23 = 138544130;
          v24 = uuid;
          v25 = 2112;
          v26 = identifier;
          v27 = 2112;
          v28 = version;
          v29 = 2112;
          v30 = v6;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] TCCAccessCopyInformationForBundle failed for %@", &v23, 0x2Au);
        }
      }

      CFRelease(v6);
    }

    else
    {
      v12 = pklog_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        uuid2 = [(PKDPlugIn *)self uuid];
        identifier2 = [(PKDPlugIn *)self identifier];
        version2 = [(PKDPlugIn *)self version];
        v16 = [(PKDPlugIn *)self url];
        path = [v16 path];
        v23 = 138544130;
        v24 = uuid2;
        v25 = 2112;
        v26 = identifier2;
        v27 = 2112;
        v28 = version2;
        v29 = 2112;
        v30 = path;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] failed to create bundle for %@", &v23, 0x2Au);
      }
    }
  }

  return v3;
}

- (id)_dataContainerURLForPersona:(id)persona
{
  personaCopy = persona;
  container_query_create();
  if (personaCopy)
  {
    personaUniqueString = [personaCopy personaUniqueString];
    [personaUniqueString UTF8String];
    container_query_set_persona_unique_string();
  }

  identifier = [(PKDPlugIn *)self identifier];
  v7 = xpc_string_create([identifier UTF8String]);
  container_query_set_identifiers();

  container_query_set_class();
  container_query_set_include_other_owners();
  container_query_operation_set_flags();
  [(PKDPlugIn *)self platform];
  container_query_operation_set_platform();
  if (container_query_get_single_result())
  {
    v8 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
  }

  else
  {
    container_query_get_last_error();
    v9 = container_error_copy_unlocalized_description();
    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn _dataContainerURLForPersona:];
    }

    free(v9);
    v8 = 0;
  }

  container_query_free();

  return v8;
}

- (id)dataContainerURLForPersona:(id)persona
{
  personaCopy = persona;
  if (personaCopy)
  {
    v5 = voucher_adopt();
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKDPlugIn *)self _dataContainerURLForPersona:personaCopy];
  if (personaCopy)
  {
    v7 = v5;
  }

  return v6;
}

- (id)viewServiceIdentifier
{
  originalIdentifier = [(PKDPlugIn *)self originalIdentifier];
  v3 = [originalIdentifier stringByAppendingString:@".viewservice"];

  return v3;
}

- (BOOL)enableForClient:(id)client environment:(id)environment languages:(id)languages oneShotUUID:(id)d persona:(id)persona sandbox:(id)sandbox pid:(int *)pid error:(id *)self0
{
  clientCopy = client;
  environmentCopy = environment;
  languagesCopy = languages;
  dCopy = d;
  personaCopy = persona;
  sandboxCopy = sandbox;
  v180 = objc_opt_class();
  v18 = +[NSMutableDictionary dictionary];
  v19 = +[NSMutableDictionary dictionary];
  sandboxProfile = sandboxCopy;
  if (!sandboxCopy)
  {
    sandboxProfile = [(PKDPlugIn *)self sandboxProfile];
  }

  v21 = sandboxProfile;
  if (!sandboxCopy)
  {
  }

  v22 = environmentCopy;
  if (environmentCopy)
  {
    [v18 addEntriesFromDictionary:environmentCopy];
  }

  usesHostPersona = [(PKDPlugIn *)self usesHostPersona];
  if (personaCopy)
  {
    v24 = 1;
  }

  else
  {
    v24 = usesHostPersona;
  }

  if (v24 == 1)
  {
    [(PKDPlugIn *)self dataContainerURLForPersona:personaCopy];
  }

  else
  {
    [(PKDPlugIn *)self dataContainerURL];
  }
  v25 = ;

  v196 = v25;
  v183 = v24;
  if (v25)
  {
    path = [v25 path];
    [v18 setObject:path forKeyedSubscript:@"HOME"];

    path2 = [v25 path];
    [v18 setObject:path2 forKeyedSubscript:@"CFFIXED_USER_HOME"];

    v28 = [v25 URLByAppendingPathComponent:@"tmp"];
    path3 = [v28 path];
    [v18 setObject:path3 forKeyedSubscript:@"TMPDIR"];

    if (!v24)
    {
      goto LABEL_21;
    }

    v30 = pklog_handle_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(PKDPlugIn *)self uuid];
      identifier = [(PKDPlugIn *)self identifier];
      version = [(PKDPlugIn *)self version];
      [v196 path];
      v177 = v21;
      v34 = v19;
      v35 = v18;
      v36 = sandboxCopy;
      v38 = v37 = personaCopy;
      *buf = 138544130;
      v202 = uuid;
      v203 = 2112;
      v204 = identifier;
      v205 = 2112;
      v206 = version;
      v207 = 2112;
      *v208 = v38;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] setting sandbox container to %@", buf, 0x2Au);

      personaCopy = v37;
      sandboxCopy = v36;
      v18 = v35;
      v19 = v34;
      v21 = v177;

      v22 = environmentCopy;
    }

    path4 = [v196 path];
    [v19 setObject:path4 forKeyedSubscript:@"_SandboxContainer"];
  }

  else
  {
    path4 = pklog_handle_for_category();
    if (os_log_type_enabled(path4, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:];
    }
  }

LABEL_21:
  v40 = getenv("PKTEST_SDK");
  v41 = &MGGetBoolAnswer_ptr;
  if (v40)
  {
    v42 = [NSString stringWithUTF8String:v40];
    [v18 setObject:v42 forKeyedSubscript:@"PKTEST_SDK"];
  }

  v43 = [(PKDPlugIn *)self infoKey:@"XPCService"];
  v193 = v43;
  if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v19 addEntriesFromDictionary:v44];
  }

  else
  {
    v45 = pklog_handle_for_category();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      uuid2 = [(PKDPlugIn *)self uuid];
      identifier2 = [(PKDPlugIn *)self identifier];
      version2 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = uuid2;
      v203 = 2112;
      v204 = identifier2;
      v205 = 2112;
      v206 = version2;
      v207 = 2112;
      *v208 = v193;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] no XPCService for plug-in; database returned %@", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
      v22 = environmentCopy;
    }
  }

  v49 = [v19 objectForKeyedSubscript:@"EnvironmentVariables"];
  if (v49)
  {
    [v18 addEntriesFromDictionary:v49];
  }

  [v19 setObject:v18 forKeyedSubscript:@"EnvironmentVariables"];
  v189 = v49;
  if (v21)
  {
    [v19 setObject:v21 forKeyedSubscript:@"_SandboxProfile"];
    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:@"_OmitSandboxParameters"];
    v50 = pklog_handle_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      uuid3 = [(PKDPlugIn *)self uuid];
      identifier3 = [(PKDPlugIn *)self identifier];
      version3 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = uuid3;
      v203 = 2112;
      v204 = identifier3;
      v205 = 2112;
      v206 = version3;
      v207 = 2112;
      *v208 = v21;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] assigning plug-in to [%@] sandbox", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
      v22 = environmentCopy;
    }
  }

  v54 = [(PKDPlugIn *)self _personaIDForClient:clientCopy requestedPersona:personaCopy];
  v188 = v54;
  if (!v54)
  {
LABEL_38:
    v179 = v18;
    v56 = sandboxCopy;
    v190 = personaCopy;
    v57 = [NSNumber numberWithUnsignedInt:[(PKDPlugIn *)self platform]];
    [v19 setObject:v57 forKeyedSubscript:@"Platform"];

    v182 = v19;
    v58 = [v19 objectForKeyedSubscript:@"_MultipleInstances"];
    if (v58)
    {
      objc_opt_class();
      v59 = "is not";
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v58 BOOLValue])
      {
        v59 = "is";
      }
    }

    else
    {
      v59 = "is not";
    }

    v187 = v58;
    v60 = pklog_handle_for_category();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      uuid4 = [(PKDPlugIn *)self uuid];
      identifier4 = [(PKDPlugIn *)self identifier];
      version4 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = uuid4;
      v203 = 2112;
      v204 = identifier4;
      v205 = 2112;
      v206 = version4;
      v207 = 2080;
      *v208 = v59;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] %s multi-instance", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
    }

    v19 = v182;
    v64 = [v182 objectForKeyedSubscript:@"ServiceType"];
    uuid15 = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v41[292];
      objc_opt_class();
      v22 = environmentCopy;
      if (objc_opt_isKindOfClass())
      {
        v194 = [v65 isEqualToString:@"System"];
      }

      else
      {
        v194 = 0;
      }
    }

    else
    {
      v194 = 0;
      v22 = environmentCopy;
    }

    v67 = pklog_handle_for_category();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      uuid5 = [(PKDPlugIn *)self uuid];
      [(PKDPlugIn *)self identifier];
      v70 = v69 = v22;
      version5 = [(PKDPlugIn *)self version];
      v72 = version5;
      *buf = 138544130;
      v202 = uuid5;
      v73 = "is";
      if (!v194)
      {
        v73 = "is not";
      }

      v203 = 2112;
      v204 = v70;
      v205 = 2112;
      v206 = version5;
      v207 = 2080;
      *v208 = v73;
      _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] %s a system service", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
      v22 = v69;
    }

    if ((v183 & v194) == 1)
    {
      v74 = pklog_handle_for_category();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [PKDPlugIn enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:];
      }

      sandboxCopy = v56;
      if (!error)
      {
        v80 = 0;
        v18 = v179;
        v81 = v193;
LABEL_141:

        goto LABEL_142;
      }

      v75 = v56;
      v76 = v21;
      identifier5 = [(PKDPlugIn *)self identifier];
      uuid6 = [(PKDPlugIn *)self uuid];
      uUIDString = [uuid6 UUIDString];
      v184 = identifier5;
      pkErrorf();
      *error = v80 = 0;
      v18 = v179;
      v81 = v193;
      goto LABEL_139;
    }

    v178 = v21;
    v82 = v56;
    v18 = v179;
    if (v180)
    {
      viewServiceIdentifier = [v182 objectForKeyedSubscript:@"_AdditionalSubServices"];
      if (!viewServiceIdentifier)
      {
        goto LABEL_85;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_85;
      }

      v84 = [viewServiceIdentifier objectForKey:@"viewservice"];
      if (!v84)
      {
LABEL_84:

LABEL_85:
        v41 = &MGGetBoolAnswer_ptr;
        goto LABEL_86;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = [v84 BOOLValue];
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      v88 = isKindOfClass;

      v41 = &MGGetBoolAnswer_ptr;
      if (v88)
      {
        v89 = pklog_handle_for_category();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          uuid7 = [(PKDPlugIn *)self uuid];
          identifier6 = [(PKDPlugIn *)self identifier];
          version6 = [(PKDPlugIn *)self version];
          *buf = 138543874;
          v202 = uuid7;
          v203 = 2112;
          v204 = identifier6;
          v205 = 2112;
          v206 = version6;
          _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] adding LaunchRequestEndpointIdentifiers and _ManagedBy_Services for viewservice subservice", buf, 0x20u);
        }

        viewServiceIdentifier = [(PKDPlugIn *)self viewServiceIdentifier];
        v93 = [NSArray arrayWithObject:viewServiceIdentifier];
        [v182 setObject:v93 forKeyedSubscript:@"_ManagedBy_Services"];

        v94 = [v182 objectForKeyedSubscript:@"_AdditionalProperties"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = [v94 mutableCopy];
        }

        else
        {
          v95 = +[NSMutableDictionary dictionary];
        }

        v175 = v95;
        v96 = [v95 objectForKeyedSubscript:@"RunningBoard"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v97 = [v96 mutableCopy];
        }

        else
        {
          v97 = +[NSMutableDictionary dictionary];
        }

        v98 = v97;
        v173 = v96;
        v185 = v94;
        v99 = [v97 objectForKeyedSubscript:@"LaunchRequestEndpointIdentifiers"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = [v99 mutableCopy];
        }

        else
        {
          v100 = +[NSMutableDictionary dictionary];
        }

        v101 = v100;
        [v100 setObject:viewServiceIdentifier forKey:viewServiceIdentifier];
        [v101 setObject:viewServiceIdentifier forKey:@"com.apple.frontboard.workspace-service"];
        v102 = [v101 copy];
        [v98 setObject:v102 forKeyedSubscript:@"LaunchRequestEndpointIdentifiers"];

        v103 = [v98 copy];
        [v175 setObject:v103 forKeyedSubscript:@"RunningBoard"];

        v104 = [v175 copy];
        [v182 setObject:v104 forKeyedSubscript:@"_AdditionalProperties"];

        personaCopy = v190;
        v22 = environmentCopy;
        v84 = v185;
        goto LABEL_84;
      }
    }

LABEL_86:
    v105 = objc_opt_new();
    [v105 setObject:v182 forKeyedSubscript:@"XPCService"];
    v184 = v105;
    [v105 setObject:@"XPC!" forKeyedSubscript:@"CFBundlePackageType"];
    if ([(PKDPlugIn *)self isRBManaged])
    {
      [v105 setObject:&off_2A288 forKeyedSubscript:@"RunningBoard"];
    }

    v106 = pklog_handle_for_category();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      uuid8 = [(PKDPlugIn *)self uuid];
      [(PKDPlugIn *)self identifier];
      v109 = v108 = v22;
      version7 = [(PKDPlugIn *)self version];
      isRBManaged = [(PKDPlugIn *)self isRBManaged];
      v112 = "not be";
      *buf = 138544130;
      v202 = uuid8;
      v203 = 2112;
      v204 = v109;
      if (isRBManaged)
      {
        v112 = "be";
      }

      v205 = 2112;
      v206 = version7;
      v207 = 2080;
      *v208 = v112;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] will %s managed by runningboard", buf, 0x2Au);

      personaCopy = v190;
      v22 = v108;
      v41 = &MGGetBoolAnswer_ptr;
    }

    v174 = [(PKDPlugIn *)self url];
    v172 = [[PKBundle alloc] initWithURL:v174];
    executablePath = [v172 executablePath];
    if (!executablePath)
    {
      v75 = v82;
      v128 = pklog_handle_for_category();
      v76 = v21;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        [PKDPlugIn enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:];
      }

      if (error)
      {
        identifier7 = [(PKDPlugIn *)self identifier];
        uuid9 = [(PKDPlugIn *)self uuid];
        uUIDString2 = [uuid9 UUIDString];
        *error = pkErrorf();
      }

      v80 = 0;
      v81 = v193;
      goto LABEL_138;
    }

    if ((v194 & 1) == 0 && [languagesCopy count])
    {
      v113 = objc_opt_new();
      v114 = objc_alloc(v41[292]);
      v115 = [languagesCopy componentsJoinedByString:{@", "}];
      v115 = [v114 initWithFormat:@"(\"%@\"", v115];

      [v113 setObject:executablePath atIndexedSubscript:0];
      [v113 setObject:@"-AppleLanguages" atIndexedSubscript:1];
      [v113 setObject:v115 atIndexedSubscript:2];
      [v182 setObject:v113 forKeyedSubscript:@"ProgramArguments"];
    }

    v117 = pklog_handle_for_category();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      uuid10 = [(PKDPlugIn *)self uuid];
      identifier8 = [(PKDPlugIn *)self identifier];
      version8 = [(PKDPlugIn *)self version];
      v121 = [clientCopy pid];
      path5 = [(PKDPlugIn *)self path];
      *buf = 138544386;
      v202 = uuid10;
      v203 = 2112;
      v204 = identifier8;
      v205 = 2112;
      v206 = version8;
      v207 = 1024;
      *v208 = v121;
      v21 = v178;
      *&v208[4] = 2112;
      *&v208[6] = path5;
      _os_log_impl(&dword_0, v117, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Allowing host pid %d to use plugin [%@]", buf, 0x30u);

      personaCopy = v190;
    }

    v123 = pklog_handle_for_category();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      uuid11 = [(PKDPlugIn *)self uuid];
      identifier9 = [(PKDPlugIn *)self identifier];
      version9 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = uuid11;
      v203 = 2112;
      v204 = identifier9;
      v205 = 2112;
      v206 = version9;
      v207 = 2112;
      *v208 = v184;
      _os_log_impl(&dword_0, v123, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] Overlay: %@", buf, 0x2Au);

      personaCopy = v190;
    }

    if (v180)
    {
      if (v194)
      {
        v127 = 0;
      }

      else
      {
        v127 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [clientCopy pid]);
      }

      v137 = v127;
      if ((v194 & 1) == 0)
      {
      }

      v181 = v82;
      v138 = _os_feature_enabled_impl();
      identifier10 = [(PKDPlugIn *)self identifier];
      v171 = v137;
      if (v138)
      {
        containingUrl = [(PKDPlugIn *)self containingUrl];
        v141 = [RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:identifier10 bundledURL:containingUrl hostIdentifier:v137 UUID:dCopy];
      }

      else
      {
        v141 = [RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:identifier10 hostIdentifier:v137 UUID:dCopy];
      }

      v170 = v141;
      v142 = [RBSLaunchContext contextWithIdentity:v141];
      [v142 setHostPid:{objc_msgSend(clientCopy, "pid")}];
      [v142 setExtensionOverlay:v184];
      [v142 _setOverrideExecutablePath:executablePath];
      v143 = objc_alloc(v41[292]);
      identifier11 = [(PKDPlugIn *)self identifier];
      uuid12 = [(PKDPlugIn *)self uuid];
      v146 = [v143 initWithFormat:@"Launching extension %@(%@) for host %d", identifier11, uuid12, objc_msgSend(clientCopy, "pid")];
      [v142 setExplanation:v146];

      v147 = [[RBSLaunchRequest alloc] initWithContext:v142];
      v148 = [v184 copy];
      rb_launchOverlay = self->_rb_launchOverlay;
      self->_rb_launchOverlay = v148;

      v199 = 0;
      v200 = 0;
      v150 = v147;
      v151 = [v147 execute:&v200 error:&v199];
      v152 = v200;
      v195 = v199;
      if (v151)
      {
        if (pid)
        {
          *pid = [v152 pid];
        }

        identifier13 = pklog_handle_for_category();
        if (os_log_type_enabled(identifier13, OS_LOG_TYPE_INFO))
        {
          uuid13 = [(PKDPlugIn *)self uuid];
          identifier12 = [(PKDPlugIn *)self identifier];
          version10 = [(PKDPlugIn *)self version];
          *buf = 138544130;
          v202 = uuid13;
          v203 = 2112;
          v204 = identifier12;
          v205 = 2112;
          v206 = version10;
          v207 = 2112;
          *v208 = v152;
          _os_log_impl(&dword_0, identifier13, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] launched request for plug-in, process handle: %@", buf, 0x2Au);

          v21 = v178;
        }
      }

      else
      {
        v157 = pklog_handle_for_category();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          [PKDPlugIn enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:];
        }

        if (!error)
        {
LABEL_129:
          v75 = v181;

          personaCopy = v190;
          if (v151)
          {
LABEL_130:
            v76 = v21;
            v80 = 1;
LABEL_137:
            v22 = environmentCopy;
            v19 = v182;
            v81 = v193;
LABEL_138:
            uuid6 = v174;

            uUIDString = v172;
LABEL_139:

            v21 = v76;
            sandboxCopy = v75;
            uUIDString4 = v184;
            goto LABEL_140;
          }

LABEL_136:
          v76 = v21;
          v80 = 0;
          goto LABEL_137;
        }

        identifier13 = [(PKDPlugIn *)self identifier];
        uuid14 = [(PKDPlugIn *)self uuid];
        *error = pkErrorf();
      }

      goto LABEL_129;
    }

    v131 = _CFXPCCreateXPCObjectFromCFObject();
    [clientCopy pid];
    [executablePath UTF8String];
    v132 = launch_add_external_service();
    v133 = pklog_handle_for_category();
    identifier15 = v133;
    if (v132)
    {
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        [(PKDPlugIn *)self uuid];
        v163 = v162 = v131;
        identifier14 = [(PKDPlugIn *)self identifier];
        version11 = [(PKDPlugIn *)self version];
        v166 = [clientCopy pid];
        *buf = 138544386;
        v202 = v163;
        v203 = 2112;
        v204 = identifier14;
        v205 = 2112;
        v206 = version11;
        v207 = 1024;
        *v208 = v132;
        *&v208[4] = 1024;
        *&v208[6] = v166;
        _os_log_error_impl(&dword_0, identifier15, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] launchd error %d trying to allow host pid %d to use plugin", buf, 0x2Cu);

        personaCopy = v190;
        v131 = v162;
      }

      if (!error)
      {
LABEL_135:
        v75 = v82;

        if (!v132)
        {
          goto LABEL_130;
        }

        goto LABEL_136;
      }

      identifier15 = [(PKDPlugIn *)self identifier];
      [(PKDPlugIn *)self uuid];
      v136 = v135 = v131;
      uUIDString3 = [v136 UUIDString];
      *error = pkErrorf();
    }

    else
    {
      if (!os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
      {
LABEL_134:

        goto LABEL_135;
      }

      [(PKDPlugIn *)self uuid];
      v136 = v135 = v131;
      identifier16 = [(PKDPlugIn *)self identifier];
      version12 = [(PKDPlugIn *)self version];
      v160 = [clientCopy pid];
      *buf = 138544130;
      v202 = v136;
      v203 = 2112;
      v204 = identifier16;
      v205 = 2112;
      v206 = version12;
      v207 = 1024;
      *v208 = v160;
      _os_log_impl(&dword_0, identifier15, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] launch_add_external_service() for host %d succeeded", buf, 0x26u);
    }

    v131 = v135;
    goto LABEL_134;
  }

  v55 = v54;
  if ([v54 unsignedIntValue] != -1)
  {
    [v19 setObject:v55 forKeyedSubscript:@"PersonaEnterprise"];
    goto LABEL_38;
  }

  if (error)
  {
    identifier17 = [(PKDPlugIn *)self identifier];
    uuid15 = [(PKDPlugIn *)self uuid];
    uUIDString4 = [uuid15 UUIDString];
    v187 = identifier17;
    pkErrorf();
    *error = v80 = 0;
    v81 = v193;
LABEL_140:

    goto LABEL_141;
  }

  v80 = 0;
  v81 = v193;
LABEL_142:

  return v80;
}

- (id)_personaIDForClient:(id)client requestedPersona:(id)persona
{
  clientCopy = client;
  personaCopy = persona;
  if (!+[PKDPersona personasAreSupported])
  {
    self = 0;
    goto LABEL_57;
  }

  if (!personaCopy)
  {
    v11 = [(PKDPlugIn *)self valueForEntitlement:PKPersonaEntitlement];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 isEqualToString:PKPersonaEntitlementNoneValue])
        {
          v12 = pklog_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(PKDPlugIn *)self uuid];
            identifier = [(PKDPlugIn *)self identifier];
            version = [(PKDPlugIn *)self version];
            *buf = 138543874;
            *&buf[4] = uuid;
            *&buf[12] = 2112;
            *&buf[14] = identifier;
            *&buf[22] = 2112;
            v66 = version;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] will launch with system-defined policy by entitlement", buf, 0x20u);
          }

          systemPersonaID = 0;
          goto LABEL_54;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementSystemValue])
        {
          personaCache = [(PKDPlugIn *)self personaCache];
          systemPersonaID = [personaCache systemPersonaID];

          v12 = pklog_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(PKDPlugIn *)self uuid];
            identifier2 = [(PKDPlugIn *)self identifier];
            version2 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = uuid2;
            *&buf[12] = 2112;
            *&buf[14] = identifier2;
            *&buf[22] = 2112;
            v66 = version2;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = systemPersonaID;
            v26 = "[u %{public}@] [%@(%@)] assigning to system persona ID %@ by entitlement";
LABEL_35:
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v26, buf, 0x2Au);

            goto LABEL_54;
          }

          goto LABEL_54;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementPersonalValue])
        {
          personaCache2 = [(PKDPlugIn *)self personaCache];
          systemPersonaID = [personaCache2 personalPersonaID];

          v12 = pklog_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(PKDPlugIn *)self uuid];
            identifier2 = [(PKDPlugIn *)self identifier];
            version2 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = uuid2;
            *&buf[12] = 2112;
            *&buf[14] = identifier2;
            *&buf[22] = 2112;
            v66 = version2;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = systemPersonaID;
            v26 = "[u %{public}@] [%@(%@)] assigning to personal persona ID %@ by entitlement";
            goto LABEL_35;
          }

LABEL_54:

          goto LABEL_55;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementHostValue])
        {
          v12 = +[UMUserPersonaAttributes personaAttributes];
          systemPersonaID = [NSNumber numberWithUnsignedInt:[v12 userPersona_id]];
          v28 = pklog_handle_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            uuid3 = [(PKDPlugIn *)self uuid];
            identifier3 = [(PKDPlugIn *)self identifier];
            version3 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = uuid3;
            *&buf[12] = 2112;
            *&buf[14] = identifier3;
            *&buf[22] = 2112;
            v66 = version3;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = systemPersonaID;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to host persona ID %@ by entitlement", buf, 0x2Au);
          }

          if (([v12 isPersonalPersona]& 1) == 0 && ([v12 isDataSeparatedPersona]& 1) == 0)
          {
            personaCache3 = [(PKDPlugIn *)self personaCache];
            personalPersonaID = [personaCache3 personalPersonaID];

            v34 = pklog_handle_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              [PKDPlugIn _personaIDForClient:requestedPersona:];
            }

            systemPersonaID = personalPersonaID;
          }

          goto LABEL_54;
        }
      }
    }

    containingBundleIdentifier = [(PKDPlugIn *)self containingBundleIdentifier];

    if (!containingBundleIdentifier)
    {
      personaCache4 = [(PKDPlugIn *)self personaCache];
      systemPersonaID = [personaCache4 personalPersonaID];

      v12 = pklog_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [(PKDPlugIn *)self uuid];
        identifier4 = [(PKDPlugIn *)self identifier];
        version4 = [(PKDPlugIn *)self version];
        *buf = 138544130;
        *&buf[4] = uuid4;
        *&buf[12] = 2112;
        *&buf[14] = identifier4;
        *&buf[22] = 2112;
        v66 = version4;
        LOWORD(v67) = 2112;
        *(&v67 + 2) = systemPersonaID;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to persona ID %@ since it has no containing bundle", buf, 0x2Au);
      }

      goto LABEL_54;
    }

    v64 = 0;
    personaCache5 = [(PKDPlugIn *)self personaCache];
    containingBundleIdentifier2 = [(PKDPlugIn *)self containingBundleIdentifier];
    v38 = [personaCache5 personasForBundleIdentifier:containingBundleIdentifier2 error:&v64];

    v39 = v64;
    if (v64)
    {
      anyObject = pklog_handle_for_category();
      if (os_log_type_enabled(anyObject, OS_LOG_TYPE_FAULT))
      {
        [(PKDPlugIn *)self _personaIDForClient:anyObject requestedPersona:v41, v42, v43, v44, v45, v60, log, v64, *buf, *&buf[16], v66, v67, *(&v67 + 1), v68, v69, v70, v71, v72, v73];
      }
    }

    else
    {
      if (v38 && [v38 count])
      {
        if ([v38 count] >= 2)
        {
          v51 = pklog_handle_for_category();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            [PKDPlugIn _personaIDForClient:v51 requestedPersona:?];
          }
        }

        anyObject = [v38 anyObject];
        systemPersonaID = [anyObject personaID];
        v52 = pklog_handle_for_category();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          uuid5 = [(PKDPlugIn *)self uuid];
          [(PKDPlugIn *)self identifier];
          v53 = loga = v52;
          version5 = [(PKDPlugIn *)self version];
          personaID = [anyObject personaID];
          *buf = 138544130;
          *&buf[4] = uuid5;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          *&buf[22] = 2112;
          v66 = version5;
          LOWORD(v67) = 2112;
          *(&v67 + 2) = personaID;
          v56 = personaID;
          _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to persona ID %@", buf, 0x2Au);

          v52 = loga;
        }

LABEL_50:
        if (v39)
        {
          self = &off_2A1F8;
LABEL_56:

          goto LABEL_57;
        }

LABEL_55:
        systemPersonaID = systemPersonaID;
        self = systemPersonaID;
        goto LABEL_56;
      }

      anyObject = pklog_handle_for_category();
      if (os_log_type_enabled(anyObject, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(PKDPlugIn *)self uuid];
        identifier5 = [(PKDPlugIn *)self identifier];
        version6 = [(PKDPlugIn *)self version];
        *buf = 138543874;
        *&buf[4] = uuid6;
        *&buf[12] = 2112;
        *&buf[14] = identifier5;
        *&buf[22] = 2112;
        v66 = version6;
        _os_log_impl(&dword_0, anyObject, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to no specific persona", buf, 0x20u);
      }
    }

    systemPersonaID = 0;
    goto LABEL_50;
  }

  v9 = [clientCopy hasEntitlement:PKPersonaPropagateEntitlement];
  if (v9)
  {
    isSystemPersona = 1;
  }

  else
  {
    launchPersonas = [(PKDPlugIn *)self launchPersonas];
    if ([launchPersonas containsObject:personaCopy])
    {
      isSystemPersona = 1;
    }

    else
    {
      v17 = +[UMUserPersonaAttributes personaAttributes];
      isSystemPersona = [v17 isSystemPersona];
    }
  }

  if (v9)
  {
    if (isSystemPersona)
    {
      goto LABEL_17;
    }

LABEL_20:
    v20 = pklog_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn _personaIDForClient:requestedPersona:];
    }

    goto LABEL_27;
  }

  if (!isSystemPersona)
  {
    goto LABEL_20;
  }

LABEL_17:
  personaUniqueString = [personaCopy personaUniqueString];
  v19 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:personaUniqueString];

  if (v19)
  {
    self = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v19 userPersona_id]);
  }

  else
  {
    v21 = pklog_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn _personaIDForClient:requestedPersona:];
    }
  }

  if (!v19)
  {
LABEL_27:
    self = &off_2A1F8;
  }

LABEL_57:

  return self;
}

- (id)checkBusy
{
  if (!objc_opt_class())
  {
    goto LABEL_22;
  }

  v4 = [(PKDPlugIn *)self infoKey:@"CFBundleIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = [NSSet setWithObject:v4];
    v4 = [BKSProcess busyExtensionInstances:v6];
  }

  else
  {
    v6 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v8)
  {
    selfCopy = self;
    v20 = v6;
    v21 = v5;
    v9 = *v25;
    v10 = BKSProcessExtensionPropertyBundleID;
    v11 = launch_extension_property_bundle_id;
    do
    {
      v12 = 0;
      if (v8 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8;
      }

      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v24 + 1) + 8 * v12) objectForKeyedSubscript:v10];
        if (v14)
        {
          v2 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_string(v2, v11, [v14 UTF8String]);

          v17 = 0;
          goto LABEL_19;
        }

        v15 = pklog_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          uuid = [(PKDPlugIn *)selfCopy uuid];
          identifier = [(PKDPlugIn *)selfCopy identifier];
          version = [(PKDPlugIn *)selfCopy version];
          *buf = 138543874;
          v29 = uuid;
          v30 = 2112;
          v31 = identifier;
          v32 = 2112;
          v33 = version;
          _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] assertiond reported incomplete bundle", buf, 0x20u);
        }

        ++v12;
      }

      while (v13 != v12);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v8);
    v17 = 1;
LABEL_19:
    v6 = v20;
    v5 = v21;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_22:
    v2 = 0;
  }

  return v2;
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = PKDPlugIn;
  v3 = [(PKDPlugIn *)&v7 description];
  fileID = self->_fileID;
  v5 = [NSString stringWithFormat:@"<PKDPlugIn: %p core = %@, fileID = %@, launchFileID = %@>", self, v3, fileID, self->_launchFileID];;

  return v5;
}

- (id)launchdIdentifier
{
  identifier = [(PKDPlugIn *)self identifier];

  return identifier;
}

- (id)launchdVersion
{
  v2 = [(PKDPlugIn *)self infoKey:@"CFBundleVersion"];

  return v2;
}

- (void)initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  [v1 pluginUUID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() pluginIdentifier];
  [v2 bundleVersion];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  [v1 pluginUUID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() pluginIdentifier];
  [v2 bundleVersion];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)augmentForm:host:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8();
  [v2 uuid];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_9() identifier];
  v4 = [v1 version];
  v5 = *__error();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x30u);

  OUTLINED_FUNCTION_14();
}

- (void)matchValue:(uint64_t)a1 pattern:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "unrecognized match operator:%@", &v2, 0xCu);
}

- (void)allowForClient:discoveryInstanceUUID:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)_dataContainerURLForPersona:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:.cold.1()
{
  OUTLINED_FUNCTION_12();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_11() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:.cold.3()
{
  OUTLINED_FUNCTION_12();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_11() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:.cold.4()
{
  OUTLINED_FUNCTION_12();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_11() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_personaIDForClient:requestedPersona:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_9() identifier];
  [v2 version];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() personaUniqueString];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)_personaIDForClient:requestedPersona:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_9() identifier];
  [v2 version];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() personaUniqueString];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  OUTLINED_FUNCTION_14();
}

- (void)_personaIDForClient:requestedPersona:.cold.3()
{
  OUTLINED_FUNCTION_12();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_13() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_11() version];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_0, v0, OS_LOG_TYPE_FAULT, "[u %{public}@] [%@(%@)] pkd called with system or unusual persona from process using persona-follows-host entitlement; using personal persona instead", v5, 0x20u);
}

- (void)_personaIDForClient:(uint64_t)a3 requestedPersona:(uint64_t)a4 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_6();
  [v28 uuid];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_7() identifier];
  objc_claimAutoreleasedReturnValue();
  v29 = [OUTLINED_FUNCTION_10() version];
  v30 = *v23;
  LODWORD(a9) = 138544130;
  *(&a9 + 4) = v24;
  OUTLINED_FUNCTION_15();
  a11 = v31;
  LOWORD(a12) = v32;
  *(&a12 + 2) = v33;
  _os_log_fault_impl(&dword_0, v22, OS_LOG_TYPE_FAULT, "[u %{public}@] [%@(%@)] failed for get personas for bundle identifier: %@", &a9, 0x2Au);

  OUTLINED_FUNCTION_14();
}

@end