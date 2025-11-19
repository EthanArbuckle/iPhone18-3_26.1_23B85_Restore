@interface PKDPlugIn
+ (id)nullPlugIn;
+ (id)sandboxOverrideForExtensionPoint:(id)a3 attributes:(id)a4;
- (BOOL)enableForClient:(id)a3 environment:(id)a4 languages:(id)a5 oneShotUUID:(id)a6 persona:(id)a7 sandbox:(id)a8 pid:(int *)a9 error:(id *)a10;
- (BOOL)match:(id)a3 discoveryInstanceUUID:(id)a4 server:(id)a5 withError:(id *)a6;
- (BOOL)matchDictionary:(id)a3 pattern:(id)a4 discoveryInstanceUUID:(id)a5 withError:(id *)a6;
- (BOOL)matchKey:(id)a3 pattern:(id)a4 discoveryInstanceUUID:(id)a5 server:(id)a6 withError:(id *)a7;
- (BOOL)matchValue:(id)a3 pattern:(id)a4;
- (BOOL)matchValue:(id)a3 patterns:(id)a4;
- (NSString)annotationKey;
- (NSString)sandboxProfile;
- (PKDPlugIn)initWithLSData:(id)a3 personaCache:(id)a4 discoveryInstanceUUID:(id)a5 extensionPointCache:(id)a6 externalProviders:(id)a7;
- (id)_dataContainerURLForPersona:(id)a3;
- (id)_personaIDForClient:(id)a3 requestedPersona:(id)a4;
- (id)allowForClient:(id)a3 discoveryInstanceUUID:(id)a4;
- (id)allowedTCCServices;
- (id)checkBusy;
- (id)dataContainerURLForPersona:(id)a3;
- (id)debugDescription;
- (id)diagnose;
- (id)issueResourceExtensions:(id)a3 auditToken:(id *)a4;
- (id)launchdIdentifier;
- (id)launchdVersion;
- (id)prunedInfoDictionaryFor:(id)a3;
- (id)viewServiceIdentifier;
- (void)augmentForm:(id)a3 host:(id)a4;
- (void)dealloc;
@end

@implementation PKDPlugIn

+ (id)nullPlugIn
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __23__PKDPlugIn_nullPlugIn__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v4 = v3;
  }

  else
  {
    v4 = [(PKDPlugIn *)self identifier];
  }

  v5 = v4;

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
      v8 = self->_sandboxProfile;
      self->_sandboxProfile = v7;
    }

    else
    {
      v8 = [(PKDPlugIn *)self attributes];
      v11 = [PKDPlugIn sandboxOverrideForExtensionPoint:v3 attributes:v8];
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
      v14 = [(PKDPlugIn *)self allowedTCCServices];
      v15 = [v14 containsObject:kTCCServiceKeyboardNetwork];
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

- (PKDPlugIn)initWithLSData:(id)a3 personaCache:(id)a4 discoveryInstanceUUID:(id)a5 extensionPointCache:(id)a6 externalProviders:(id)a7
{
  v12 = a3;
  v67 = a4;
  v71 = a5;
  v68 = a6;
  v69 = a7;
  v70 = [v12 pluginUUID];
  v13 = pklog_handle_for_category();
  v14 = os_signpost_id_make_with_pointer(v13, v12);

  v15 = pklog_handle_for_category();
  v16 = v15;
  v17 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    v75 = v70;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LSPlugInKitProxy", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
  }

  v72 = [v12 bundleURL];
  if (!v72)
  {
    v33 = pklog_handle_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:];
    }

    v34 = pklog_handle_for_category();
    v22 = v34;
    if (v17 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
    }

    goto LABEL_36;
  }

  v18 = [v12 extensionPoint];
  v19 = [v18 platform];
  v20 = [v19 unsignedIntValue];

  if (!v20)
  {
    v53 = pklog_handle_for_category();
    v54 = v53;
    if (v17 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v54, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
    }

    v22 = pklog_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PKDPlugIn initWithLSData:personaCache:discoveryInstanceUUID:extensionPointCache:externalProviders:];
    }

LABEL_36:
    v48 = 0;
    goto LABEL_37;
  }

  v21 = v17 < 0xFFFFFFFFFFFFFFFELL;
  v22 = [v12 pluginIdentifier];
  v64 = [v12 registrationDate];
  v23 = [v12 isOnSystemPartition];
  obj = [v12 originalIdentifier];
  v62 = [v12 entitlements];
  v61 = [v12 dataContainerURL];
  v65 = [v12 infoPlist];
  v66 = [v12 containingBundle];
  v60 = [v66 bundleURL];
  v59 = [v66 bundleIdentifier];
  v58 = [v66 localizedName];
  v24 = [v12 platform];
  v25 = [v24 unsignedIntValue];

  v26 = pklog_handle_for_category();
  v27 = v26;
  if (v21 && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v27, OS_SIGNPOST_INTERVAL_END, v14, "LSPlugInKitProxy", &unk_2111E, buf, 2u);
  }

  v73.receiver = self;
  v73.super_class = PKDPlugIn;
  v28 = [(PKDPlugIn *)&v73 initWithName:v22 extensionPointPlatform:v20 url:v72 bundleInfo:v65 uuid:v70 discoveryInstanceUUID:v71 extensionPointCache:v68 externalProviders:v69];
  if (v28)
  {
    [v64 timeIntervalSince1970];
    *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__lastModified] = v29;
    v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__onSystemVolume] = v23;
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__originalIdentifier], obj);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__entitlements], v62);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__dataContainerURL], v61);
    v28->_platform = v25;
    v30 = [*&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__plugInDictionary] objectForKeyedSubscript:PKHubProtocolVersionInfoKey];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 unsignedIntegerValue];
      *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__hubProtocolVersion] = v32;
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

    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__containingUrl], v60);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__containingBundleIdentifier], v59);
    objc_storeStrong(&v28->_personaCache, a4);
    objc_storeStrong(&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__localizedContainingName], v58);
    v37 = [v12 launchPersonas];
    v38 = *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__launchPersonas];
    *&v28->PKPlugInCore_opaque[OBJC_IVAR___PKPlugInCore__launchPersonas] = v37;

    fileID = v28->_fileID;
    v28->_fileID = 0;

    sandboxProfile = v28->_sandboxProfile;
    v28->_sandboxProfile = 0;

    v28->_isRBManaged = objc_opt_class() != 0;
    v41 = [(PKDPlugIn *)v28 diagnose];
    if (v41)
    {
      v42 = pklog_handle_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v49 = [(PKDPlugIn *)v28 uuid];
        v50 = [(PKDPlugIn *)v28 identifier];
        v56 = [(PKDPlugIn *)v28 version];
        v57 = [v12 bundleURL];
        v51 = [v57 path];
        v52 = [v41 localizedDescription];
        *buf = 138413570;
        v75 = v71;
        v76 = 2114;
        v77 = v49;
        v78 = 2112;
        v79 = v50;
        v80 = 2112;
        v81 = v56;
        v82 = 2114;
        v83 = v51;
        v84 = 2112;
        v85 = v52;
        _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "[d %@] [u %{public}@] [%@(%@)] rejecting; Ignoring mis-configured plugin at [%{public}@]: %@", buf, 0x3Eu);
      }

      v28 = 0;
    }

    v43 = pklog_handle_for_category();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(PKDPlugIn *)v28 uuid];
      v45 = [(PKDPlugIn *)v28 identifier];
      v46 = [(PKDPlugIn *)v28 version];
      *buf = 138413058;
      v75 = v71;
      v76 = 2114;
      v77 = v44;
      v78 = 2112;
      v79 = v45;
      v80 = 2112;
      v81 = v46;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "[d %@] [u %{public}@] [%@(%@)] Created plugin", buf, 0x2Au);
    }

    v47 = pklog_handle_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v75 = v71;
      v76 = 2112;
      v77 = v28;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "[d %@] %@", buf, 0x16u);
    }
  }

  self = v28;

  v48 = self;
LABEL_37:

  return v48;
}

+ (id)sandboxOverrideForExtensionPoint:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.keyboard-service"])
  {
    v4 = @"keyboard";
    goto LABEL_29;
  }

  if ([v6 isEqualToString:@"com.apple.app.non-ui-extension"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.app.non-ui-extension.multiple-instances"))
  {
    v4 = @"playground-devtools";
    goto LABEL_29;
  }

  if (![v6 isEqualToString:@"com.apple.AudioUnit"])
  {
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = [v7 objectForKeyedSubscript:@"AudioComponents"];
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

- (id)prunedInfoDictionaryFor:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (void)augmentForm:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSandboxed])
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
        v10 = [(PKDPlugIn *)self uuid];
        v11 = [(PKDPlugIn *)self identifier];
        v12 = [(PKDPlugIn *)self version];
        LODWORD(v17[0]) = 138543874;
        *(v17 + 4) = v10;
        WORD6(v17[0]) = 2112;
        *(v17 + 14) = v11;
        WORD3(v17[1]) = 2112;
        *(&v17[1] + 1) = v12;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Not issuing file extension registered as [.] because this is not an app extension; this is unusual.", v17, 0x20u);
      }
    }

    if (v8)
    {
      if (v7)
      {
        [v7 auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v13 = [(PKDPlugIn *)self issueResourceExtensions:v8 auditToken:v17];
      if (v13)
      {
        [v6 setObject:v13 forKeyedSubscript:PKExtensionsFormKey];
      }
    }

    if (([(PKDPlugIn *)self isData:v17[0]]& 1) == 0)
    {
      v14 = [(PKDPlugIn *)self infoKey:@"CFBundleIdentifier"];
      if (v7)
      {
        [v7 auditToken];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v15 = pkIssueSandboxExtensionForMachService();
      if (v15)
      {
        [v6 setObject:v15 forKeyedSubscript:PKServiceExtensionFormKey];
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

- (id)issueResourceExtensions:(id)a3 auditToken:(id *)a4
{
  v6 = a3;
  v7 = &MGGetBoolAnswer_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v6;
    v8 = [NSArray arrayWithObjects:&v39 count:1];

    v6 = v8;
  }

  v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
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

          v18 = *&a4->var0[4];
          *buf = *a4->var0;
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
              v25 = [(PKDPlugIn *)self uuid];
              v24 = [(PKDPlugIn *)self identifier];
              v23 = [(PKDPlugIn *)self version];
              v21 = *__error();
              *buf = 138544642;
              *&buf[4] = v25;
              *&buf[12] = 2112;
              *&buf[14] = v24;
              *&buf[22] = 2112;
              *&buf[24] = v23;
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
  v3 = [(PKDPlugIn *)&v14 diagnose];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_3:
    v6 = v5;
    goto LABEL_9;
  }

  if (([(PKDPlugIn *)self isData]& 1) == 0)
  {
    v7 = [(PKDPlugIn *)self dataContainerURL];

    if (!v7)
    {
      pkUseInternalDiagnostics();
LABEL_15:
      v5 = pkError();
      goto LABEL_3;
    }
  }

  v8 = [(PKDPlugIn *)self containingUrl];

  if (!v8)
  {
    v9 = [(PKDPlugIn *)self path];
    v10 = [v9 hasPrefix:@"/System/"];

    if ((v10 & 1) == 0)
    {
      if (!pkUseInternalDiagnostics())
      {
        goto LABEL_15;
      }

      v12 = [(PKDPlugIn *)self path];
      v13 = [v12 hasPrefix:@"/AppleInternal/Library/Frameworks/"];

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

- (BOOL)match:(id)a3 discoveryInstanceUUID:(id)a4 server:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v28 = a4;
  v11 = a5;
  if (!v10)
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
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v13)
  {
    v14 = 0;

    goto LABEL_21;
  }

  v26 = a6;
  v27 = v10;
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
      v20 = [v12 objectForKeyedSubscript:{v19, v26}];
      v29 = v18;
      v21 = [(PKDPlugIn *)self matchKey:v19 pattern:v20 discoveryInstanceUUID:v28 server:v11 withError:&v29];
      v14 = v29;

      if ((v21 & 1) == 0)
      {
        if (v26)
        {
          v23 = v14;
          v22 = 0;
          *v26 = v14;
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
  v10 = v27;

  if (v22)
  {
    goto LABEL_21;
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (BOOL)matchKey:(id)a3 pattern:(id)a4 discoveryInstanceUUID:(id)a5 server:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([v12 hasPrefix:@"ENTITLEMENT:"])
  {
    v16 = [v12 substringFromIndex:12];

    v17 = [(PKDPlugIn *)self valueForEntitlement:v16];
    v12 = v16;
  }

  else
  {
    if ([v12 hasPrefix:@"LS:"])
    {
      v18 = 0;
      v17 = 0;
      goto LABEL_45;
    }

    if ([v12 isEqualToString:PKIdentifierAttribute])
    {
      v17 = [(PKDPlugIn *)self identifier];
    }

    else
    {
      v17 = 0;
    }

    if ([v12 isEqualToString:PKUUIDAttribute])
    {
      v19 = [(PKDPlugIn *)self uuid];
      v20 = [v19 UUIDString];

      v17 = v20;
    }

    if ([v12 isEqualToString:PKUserElectionAttribute])
    {
      v21 = [v15 annotationForPlugIn:self];
      v22 = [v21 objectForKeyedSubscript:PKAnnotationElectionKey];
      v23 = [v22 integerValue];

      v24 = [NSNumber numberWithInteger:v23 & 0xFFFFFFFFFFFF00FFLL];
      v25 = [NSString stringWithFormat:@"%@", v24];

      v17 = v25;
    }

    if ([v12 isEqualToString:PKContainingAppAttribute])
    {
      v26 = [(PKDPlugIn *)self containingPath];

      v17 = v26;
      if (!v26)
      {
        goto LABEL_42;
      }
    }

    if (!v17)
    {
      v17 = [(PKDPlugIn *)self attribute:v12];
      if (!v17)
      {
        v17 = [(PKDPlugIn *)self infoKey:v12];
      }
    }
  }

  if ([v13 isEqual:&__kCFBooleanTrue])
  {
    if (v17)
    {
      v27 = [v17 isEqual:&__kCFBooleanFalse];
      v18 = 0;
      v28 = v27 ^ 1;
      goto LABEL_46;
    }

LABEL_42:
    v18 = 0;
    v28 = 0;
    goto LABEL_46;
  }

  if ([v13 isEqual:&__kCFBooleanFalse])
  {
    if (v17)
    {
      v29 = [v17 isEqual:&__kCFBooleanFalse];
      goto LABEL_21;
    }

LABEL_44:
    v18 = 0;
LABEL_45:
    v28 = 1;
    goto LABEL_46;
  }

  if (!v17)
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
        v17 = v17;
        v30 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
                objc_enumerationMutation(v17);
              }

              if ([(PKDPlugIn *)self matchValue:*(*(&v35 + 1) + 8 * v32) patterns:v13])
              {

                goto LABEL_44;
              }

              ++v32;
            }

            while (v33 != v32);
            v30 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
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

    v29 = [(PKDPlugIn *)self matchValue:v17 patterns:v13];
LABEL_21:
    v28 = v29;
    v18 = 0;
    goto LABEL_46;
  }

  v39 = 0;
  v28 = [(PKDPlugIn *)self matchDictionary:v17 pattern:v13 discoveryInstanceUUID:v14 withError:&v39];
  v18 = v39;
  if (a7)
  {
    v18 = v18;
    *a7 = v18;
  }

LABEL_46:

  return v28;
}

- (BOOL)matchValue:(id)a3 patterns:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PKDPlugIn *)self matchValue:v6 pattern:v7];
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
      v9 = v7;
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

            if ([(PKDPlugIn *)self matchValue:v6 pattern:*(*(&v15 + 1) + 8 * v12), v15])
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

- (BOOL)matchValue:(id)a3 pattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 hasPrefix:@"?"])
  {
    if ([v6 hasPrefix:@"<>"])
    {
      v10 = 0;
      v11 = 1;
      v12 = 2;
    }

    else if ([v6 hasPrefix:@"<="])
    {
      v10 = 1;
      v12 = 2;
      v11 = 1;
    }

    else if ([v6 hasPrefix:@">="])
    {
      v11 = 1;
      v10 = -1;
      v12 = 2;
    }

    else if ([v6 hasPrefix:@"="])
    {
      v10 = 0;
      v11 = 0;
      v12 = 1;
    }

    else if ([v6 hasPrefix:@"<"])
    {
      v11 = 0;
      v10 = -1;
      v12 = 1;
    }

    else
    {
      v11 = 0;
      if (![v6 hasPrefix:@">"])
      {
        v10 = 0;
        goto LABEL_23;
      }

      v12 = 1;
      v10 = 1;
    }

    v15 = [v6 substringFromIndex:v12];

    v6 = v15;
LABEL_23:
    v13 = v11 ^ (v10 == [(__CFString *)v5 compare:v6 options:64]);
    goto LABEL_24;
  }

  if ([v6 hasPrefix:@"?UT-CONFORMS:"])
  {
    v7 = [v6 substringFromIndex:13];

    v8 = v5;
    v9 = v7;
LABEL_8:
    v13 = UTTypeConformsTo(v8, v9) != 0;
    v6 = v7;
    goto LABEL_24;
  }

  if ([v6 hasPrefix:@"?UT-IS:"])
  {
    v7 = [v6 substringFromIndex:7];

    v8 = v7;
    v9 = v5;
    goto LABEL_8;
  }

  v14 = pklog_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PKDPlugIn matchValue:v6 pattern:v14];
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (BOOL)matchDictionary:(id)a3 pattern:(id)a4 discoveryInstanceUUID:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = pklog_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v25 = [(PKDPlugIn *)self uuid];
    v26 = [(PKDPlugIn *)self identifier];
    v27 = [(PKDPlugIn *)self version];
    *buf = 138544386;
    v29 = v25;
    v30 = 2112;
    v31 = v26;
    v32 = 2112;
    v33 = v27;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v10;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] evaluating NSExtension filter: %@ value: %@", buf, 0x34u);
  }

  v14 = pklog_handle_for_category();
  v15 = os_signpost_id_make_with_pointer(v14, v10);

  v16 = pklog_handle_for_category();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = [(PKDPlugIn *)self uuid];
    v19 = [(PKDPlugIn *)self identifier];
    *buf = 138543875;
    v29 = v12;
    v30 = 2114;
    v31 = v18;
    v32 = 2113;
    v33 = v19;
    _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "NSExtensionDiscoveryFilter", " discoveryUUID=%{public, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@  identifier=%{private, signpost.description:attribute}@ ", buf, 0x20u);
  }

  v20 = [NSExtension evaluateActivationRule:v10 withExtensionItemsRepresentation:v11];
  v21 = pklog_handle_for_category();
  v22 = v21;
  if (v15 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
  {
    *buf = 67240192;
    LODWORD(v29) = v20;
    _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, v15, "NSExtensionDiscoveryFilter", " success=%{public, signpost.description:attribute}d ", buf, 8u);
  }

  if (a6)
  {
    v23 = 0;
    *a6 = 0;
  }

  return v20;
}

- (id)allowForClient:(id)a3 discoveryInstanceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 entitlementValueForKey:PKAllowedPlugInsEntitlement];
  if (!v8)
  {
    v11 = 0;
LABEL_9:
    v12 = [(PKDPlugIn *)self pluginKey:PKHostEntitlementInfoKey];
    if (v12 && ([v6 hasEntitlement:v12] & 1) == 0)
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

  v9 = [v6 server];
  v15 = 0;
  v10 = [(PKDPlugIn *)self match:v8 discoveryInstanceUUID:v7 server:v9 withError:&v15];
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
  v4 = [(PKDPlugIn *)self containingUrl];

  if (v4)
  {
    v5 = [(PKDPlugIn *)self containingUrl];
    v6 = CFBundleCreate(kCFAllocatorDefault, v5);

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
          v19 = [(PKDPlugIn *)self uuid];
          v20 = [(PKDPlugIn *)self identifier];
          v21 = [(PKDPlugIn *)self version];
          v23 = 138544130;
          v24 = v19;
          v25 = 2112;
          v26 = v20;
          v27 = 2112;
          v28 = v21;
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
        v13 = [(PKDPlugIn *)self uuid];
        v14 = [(PKDPlugIn *)self identifier];
        v15 = [(PKDPlugIn *)self version];
        v16 = [(PKDPlugIn *)self url];
        v17 = [v16 path];
        v23 = 138544130;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] failed to create bundle for %@", &v23, 0x2Au);
      }
    }
  }

  return v3;
}

- (id)_dataContainerURLForPersona:(id)a3
{
  v4 = a3;
  container_query_create();
  if (v4)
  {
    v5 = [v4 personaUniqueString];
    [v5 UTF8String];
    container_query_set_persona_unique_string();
  }

  v6 = [(PKDPlugIn *)self identifier];
  v7 = xpc_string_create([v6 UTF8String]);
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

- (id)dataContainerURLForPersona:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = voucher_adopt();
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PKDPlugIn *)self _dataContainerURLForPersona:v4];
  if (v4)
  {
    v7 = v5;
  }

  return v6;
}

- (id)viewServiceIdentifier
{
  v2 = [(PKDPlugIn *)self originalIdentifier];
  v3 = [v2 stringByAppendingString:@".viewservice"];

  return v3;
}

- (BOOL)enableForClient:(id)a3 environment:(id)a4 languages:(id)a5 oneShotUUID:(id)a6 persona:(id)a7 sandbox:(id)a8 pid:(int *)a9 error:(id *)a10
{
  v197 = a3;
  v198 = a4;
  v192 = a5;
  v191 = a6;
  v16 = a7;
  v17 = a8;
  v180 = objc_opt_class();
  v18 = +[NSMutableDictionary dictionary];
  v19 = +[NSMutableDictionary dictionary];
  v20 = v17;
  if (!v17)
  {
    v20 = [(PKDPlugIn *)self sandboxProfile];
  }

  v21 = v20;
  if (!v17)
  {
  }

  v22 = v198;
  if (v198)
  {
    [v18 addEntriesFromDictionary:v198];
  }

  v23 = [(PKDPlugIn *)self usesHostPersona];
  if (v16)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if (v24 == 1)
  {
    [(PKDPlugIn *)self dataContainerURLForPersona:v16];
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
    v26 = [v25 path];
    [v18 setObject:v26 forKeyedSubscript:@"HOME"];

    v27 = [v25 path];
    [v18 setObject:v27 forKeyedSubscript:@"CFFIXED_USER_HOME"];

    v28 = [v25 URLByAppendingPathComponent:@"tmp"];
    v29 = [v28 path];
    [v18 setObject:v29 forKeyedSubscript:@"TMPDIR"];

    if (!v24)
    {
      goto LABEL_21;
    }

    v30 = pklog_handle_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(PKDPlugIn *)self uuid];
      v32 = [(PKDPlugIn *)self identifier];
      v33 = [(PKDPlugIn *)self version];
      [v196 path];
      v177 = v21;
      v34 = v19;
      v35 = v18;
      v36 = v17;
      v38 = v37 = v16;
      *buf = 138544130;
      v202 = v31;
      v203 = 2112;
      v204 = v32;
      v205 = 2112;
      v206 = v33;
      v207 = 2112;
      *v208 = v38;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] setting sandbox container to %@", buf, 0x2Au);

      v16 = v37;
      v17 = v36;
      v18 = v35;
      v19 = v34;
      v21 = v177;

      v22 = v198;
    }

    v39 = [v196 path];
    [v19 setObject:v39 forKeyedSubscript:@"_SandboxContainer"];
  }

  else
  {
    v39 = pklog_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
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
      v46 = [(PKDPlugIn *)self uuid];
      v47 = [(PKDPlugIn *)self identifier];
      v48 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = v46;
      v203 = 2112;
      v204 = v47;
      v205 = 2112;
      v206 = v48;
      v207 = 2112;
      *v208 = v193;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] no XPCService for plug-in; database returned %@", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
      v22 = v198;
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
      v51 = [(PKDPlugIn *)self uuid];
      v52 = [(PKDPlugIn *)self identifier];
      v53 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = v51;
      v203 = 2112;
      v204 = v52;
      v205 = 2112;
      v206 = v53;
      v207 = 2112;
      *v208 = v21;
      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] assigning plug-in to [%@] sandbox", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
      v22 = v198;
    }
  }

  v54 = [(PKDPlugIn *)self _personaIDForClient:v197 requestedPersona:v16];
  v188 = v54;
  if (!v54)
  {
LABEL_38:
    v179 = v18;
    v56 = v17;
    v190 = v16;
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
      v61 = [(PKDPlugIn *)self uuid];
      v62 = [(PKDPlugIn *)self identifier];
      v63 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = v61;
      v203 = 2112;
      v204 = v62;
      v205 = 2112;
      v206 = v63;
      v207 = 2080;
      *v208 = v59;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] %s multi-instance", buf, 0x2Au);

      v41 = &MGGetBoolAnswer_ptr;
    }

    v19 = v182;
    v64 = [v182 objectForKeyedSubscript:@"ServiceType"];
    v186 = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v41[292];
      objc_opt_class();
      v22 = v198;
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
      v22 = v198;
    }

    v67 = pklog_handle_for_category();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = [(PKDPlugIn *)self uuid];
      [(PKDPlugIn *)self identifier];
      v70 = v69 = v22;
      v71 = [(PKDPlugIn *)self version];
      v72 = v71;
      *buf = 138544130;
      v202 = v68;
      v73 = "is";
      if (!v194)
      {
        v73 = "is not";
      }

      v203 = 2112;
      v204 = v70;
      v205 = 2112;
      v206 = v71;
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

      v17 = v56;
      if (!a10)
      {
        v80 = 0;
        v18 = v179;
        v81 = v193;
LABEL_141:

        goto LABEL_142;
      }

      v75 = v56;
      v76 = v21;
      v77 = [(PKDPlugIn *)self identifier];
      v78 = [(PKDPlugIn *)self uuid];
      v79 = [v78 UUIDString];
      v184 = v77;
      pkErrorf();
      *a10 = v80 = 0;
      v18 = v179;
      v81 = v193;
      goto LABEL_139;
    }

    v178 = v21;
    v82 = v56;
    v18 = v179;
    if (v180)
    {
      v83 = [v182 objectForKeyedSubscript:@"_AdditionalSubServices"];
      if (!v83)
      {
        goto LABEL_85;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_85;
      }

      v84 = [v83 objectForKey:@"viewservice"];
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
          v90 = [(PKDPlugIn *)self uuid];
          v91 = [(PKDPlugIn *)self identifier];
          v92 = [(PKDPlugIn *)self version];
          *buf = 138543874;
          v202 = v90;
          v203 = 2112;
          v204 = v91;
          v205 = 2112;
          v206 = v92;
          _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] adding LaunchRequestEndpointIdentifiers and _ManagedBy_Services for viewservice subservice", buf, 0x20u);
        }

        v83 = [(PKDPlugIn *)self viewServiceIdentifier];
        v93 = [NSArray arrayWithObject:v83];
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
        [v100 setObject:v83 forKey:v83];
        [v101 setObject:v83 forKey:@"com.apple.frontboard.workspace-service"];
        v102 = [v101 copy];
        [v98 setObject:v102 forKeyedSubscript:@"LaunchRequestEndpointIdentifiers"];

        v103 = [v98 copy];
        [v175 setObject:v103 forKeyedSubscript:@"RunningBoard"];

        v104 = [v175 copy];
        [v182 setObject:v104 forKeyedSubscript:@"_AdditionalProperties"];

        v16 = v190;
        v22 = v198;
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
      v107 = [(PKDPlugIn *)self uuid];
      [(PKDPlugIn *)self identifier];
      v109 = v108 = v22;
      v110 = [(PKDPlugIn *)self version];
      v111 = [(PKDPlugIn *)self isRBManaged];
      v112 = "not be";
      *buf = 138544130;
      v202 = v107;
      v203 = 2112;
      v204 = v109;
      if (v111)
      {
        v112 = "be";
      }

      v205 = 2112;
      v206 = v110;
      v207 = 2080;
      *v208 = v112;
      _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] will %s managed by runningboard", buf, 0x2Au);

      v16 = v190;
      v22 = v108;
      v41 = &MGGetBoolAnswer_ptr;
    }

    v174 = [(PKDPlugIn *)self url];
    v172 = [[PKBundle alloc] initWithURL:v174];
    v176 = [v172 executablePath];
    if (!v176)
    {
      v75 = v82;
      v128 = pklog_handle_for_category();
      v76 = v21;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        [PKDPlugIn enableForClient:environment:languages:oneShotUUID:persona:sandbox:pid:error:];
      }

      if (a10)
      {
        v129 = [(PKDPlugIn *)self identifier];
        v130 = [(PKDPlugIn *)self uuid];
        v167 = [v130 UUIDString];
        *a10 = pkErrorf();
      }

      v80 = 0;
      v81 = v193;
      goto LABEL_138;
    }

    if ((v194 & 1) == 0 && [v192 count])
    {
      v113 = objc_opt_new();
      v114 = objc_alloc(v41[292]);
      v115 = [v192 componentsJoinedByString:{@", "}];
      v116 = [v114 initWithFormat:@"(\"%@\"", v115];

      [v113 setObject:v176 atIndexedSubscript:0];
      [v113 setObject:@"-AppleLanguages" atIndexedSubscript:1];
      [v113 setObject:v116 atIndexedSubscript:2];
      [v182 setObject:v113 forKeyedSubscript:@"ProgramArguments"];
    }

    v117 = pklog_handle_for_category();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [(PKDPlugIn *)self uuid];
      v119 = [(PKDPlugIn *)self identifier];
      v120 = [(PKDPlugIn *)self version];
      v121 = [v197 pid];
      v122 = [(PKDPlugIn *)self path];
      *buf = 138544386;
      v202 = v118;
      v203 = 2112;
      v204 = v119;
      v205 = 2112;
      v206 = v120;
      v207 = 1024;
      *v208 = v121;
      v21 = v178;
      *&v208[4] = 2112;
      *&v208[6] = v122;
      _os_log_impl(&dword_0, v117, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Allowing host pid %d to use plugin [%@]", buf, 0x30u);

      v16 = v190;
    }

    v123 = pklog_handle_for_category();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      v124 = [(PKDPlugIn *)self uuid];
      v125 = [(PKDPlugIn *)self identifier];
      v126 = [(PKDPlugIn *)self version];
      *buf = 138544130;
      v202 = v124;
      v203 = 2112;
      v204 = v125;
      v205 = 2112;
      v206 = v126;
      v207 = 2112;
      *v208 = v184;
      _os_log_impl(&dword_0, v123, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] Overlay: %@", buf, 0x2Au);

      v16 = v190;
    }

    if (v180)
    {
      if (v194)
      {
        v127 = 0;
      }

      else
      {
        v127 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v197 pid]);
      }

      v137 = v127;
      if ((v194 & 1) == 0)
      {
      }

      v181 = v82;
      v138 = _os_feature_enabled_impl();
      v139 = [(PKDPlugIn *)self identifier];
      v171 = v137;
      if (v138)
      {
        v140 = [(PKDPlugIn *)self containingUrl];
        v141 = [RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:v139 bundledURL:v140 hostIdentifier:v137 UUID:v191];
      }

      else
      {
        v141 = [RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:v139 hostIdentifier:v137 UUID:v191];
      }

      v170 = v141;
      v142 = [RBSLaunchContext contextWithIdentity:v141];
      [v142 setHostPid:{objc_msgSend(v197, "pid")}];
      [v142 setExtensionOverlay:v184];
      [v142 _setOverrideExecutablePath:v176];
      v143 = objc_alloc(v41[292]);
      v144 = [(PKDPlugIn *)self identifier];
      v145 = [(PKDPlugIn *)self uuid];
      v146 = [v143 initWithFormat:@"Launching extension %@(%@) for host %d", v144, v145, objc_msgSend(v197, "pid")];
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
        if (a9)
        {
          *a9 = [v152 pid];
        }

        v153 = pklog_handle_for_category();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
        {
          v154 = [(PKDPlugIn *)self uuid];
          v155 = [(PKDPlugIn *)self identifier];
          v156 = [(PKDPlugIn *)self version];
          *buf = 138544130;
          v202 = v154;
          v203 = 2112;
          v204 = v155;
          v205 = 2112;
          v206 = v156;
          v207 = 2112;
          *v208 = v152;
          _os_log_impl(&dword_0, v153, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] launched request for plug-in, process handle: %@", buf, 0x2Au);

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

        if (!a10)
        {
LABEL_129:
          v75 = v181;

          v16 = v190;
          if (v151)
          {
LABEL_130:
            v76 = v21;
            v80 = 1;
LABEL_137:
            v22 = v198;
            v19 = v182;
            v81 = v193;
LABEL_138:
            v78 = v174;

            v79 = v172;
LABEL_139:

            v21 = v76;
            v17 = v75;
            v87 = v184;
            goto LABEL_140;
          }

LABEL_136:
          v76 = v21;
          v80 = 0;
          goto LABEL_137;
        }

        v153 = [(PKDPlugIn *)self identifier];
        v169 = [(PKDPlugIn *)self uuid];
        *a10 = pkErrorf();
      }

      goto LABEL_129;
    }

    v131 = _CFXPCCreateXPCObjectFromCFObject();
    [v197 pid];
    [v176 UTF8String];
    v132 = launch_add_external_service();
    v133 = pklog_handle_for_category();
    v134 = v133;
    if (v132)
    {
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        [(PKDPlugIn *)self uuid];
        v163 = v162 = v131;
        v164 = [(PKDPlugIn *)self identifier];
        v165 = [(PKDPlugIn *)self version];
        v166 = [v197 pid];
        *buf = 138544386;
        v202 = v163;
        v203 = 2112;
        v204 = v164;
        v205 = 2112;
        v206 = v165;
        v207 = 1024;
        *v208 = v132;
        *&v208[4] = 1024;
        *&v208[6] = v166;
        _os_log_error_impl(&dword_0, v134, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] launchd error %d trying to allow host pid %d to use plugin", buf, 0x2Cu);

        v16 = v190;
        v131 = v162;
      }

      if (!a10)
      {
LABEL_135:
        v75 = v82;

        if (!v132)
        {
          goto LABEL_130;
        }

        goto LABEL_136;
      }

      v134 = [(PKDPlugIn *)self identifier];
      [(PKDPlugIn *)self uuid];
      v136 = v135 = v131;
      v168 = [v136 UUIDString];
      *a10 = pkErrorf();
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
      v158 = [(PKDPlugIn *)self identifier];
      v159 = [(PKDPlugIn *)self version];
      v160 = [v197 pid];
      *buf = 138544130;
      v202 = v136;
      v203 = 2112;
      v204 = v158;
      v205 = 2112;
      v206 = v159;
      v207 = 1024;
      *v208 = v160;
      _os_log_impl(&dword_0, v134, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] launch_add_external_service() for host %d succeeded", buf, 0x26u);
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

  if (a10)
  {
    v86 = [(PKDPlugIn *)self identifier];
    v186 = [(PKDPlugIn *)self uuid];
    v87 = [v186 UUIDString];
    v187 = v86;
    pkErrorf();
    *a10 = v80 = 0;
    v81 = v193;
LABEL_140:

    goto LABEL_141;
  }

  v80 = 0;
  v81 = v193;
LABEL_142:

  return v80;
}

- (id)_personaIDForClient:(id)a3 requestedPersona:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!+[PKDPersona personasAreSupported])
  {
    self = 0;
    goto LABEL_57;
  }

  if (!v8)
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
            v13 = [(PKDPlugIn *)self uuid];
            v14 = [(PKDPlugIn *)self identifier];
            v15 = [(PKDPlugIn *)self version];
            *buf = 138543874;
            *&buf[4] = v13;
            *&buf[12] = 2112;
            *&buf[14] = v14;
            *&buf[22] = 2112;
            v66 = v15;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] will launch with system-defined policy by entitlement", buf, 0x20u);
          }

          v16 = 0;
          goto LABEL_54;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementSystemValue])
        {
          v22 = [(PKDPlugIn *)self personaCache];
          v16 = [v22 systemPersonaID];

          v12 = pklog_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(PKDPlugIn *)self uuid];
            v24 = [(PKDPlugIn *)self identifier];
            v25 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v66 = v25;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = v16;
            v26 = "[u %{public}@] [%@(%@)] assigning to system persona ID %@ by entitlement";
LABEL_35:
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v26, buf, 0x2Au);

            goto LABEL_54;
          }

          goto LABEL_54;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementPersonalValue])
        {
          v27 = [(PKDPlugIn *)self personaCache];
          v16 = [v27 personalPersonaID];

          v12 = pklog_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(PKDPlugIn *)self uuid];
            v24 = [(PKDPlugIn *)self identifier];
            v25 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            *&buf[22] = 2112;
            v66 = v25;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = v16;
            v26 = "[u %{public}@] [%@(%@)] assigning to personal persona ID %@ by entitlement";
            goto LABEL_35;
          }

LABEL_54:

          goto LABEL_55;
        }

        if ([v11 isEqualToString:PKPersonaEntitlementHostValue])
        {
          v12 = +[UMUserPersonaAttributes personaAttributes];
          v16 = [NSNumber numberWithUnsignedInt:[v12 userPersona_id]];
          v28 = pklog_handle_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [(PKDPlugIn *)self uuid];
            v30 = [(PKDPlugIn *)self identifier];
            v31 = [(PKDPlugIn *)self version];
            *buf = 138544130;
            *&buf[4] = v29;
            *&buf[12] = 2112;
            *&buf[14] = v30;
            *&buf[22] = 2112;
            v66 = v31;
            LOWORD(v67) = 2112;
            *(&v67 + 2) = v16;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to host persona ID %@ by entitlement", buf, 0x2Au);
          }

          if (([v12 isPersonalPersona]& 1) == 0 && ([v12 isDataSeparatedPersona]& 1) == 0)
          {
            v32 = [(PKDPlugIn *)self personaCache];
            v33 = [v32 personalPersonaID];

            v34 = pklog_handle_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              [PKDPlugIn _personaIDForClient:requestedPersona:];
            }

            v16 = v33;
          }

          goto LABEL_54;
        }
      }
    }

    v35 = [(PKDPlugIn *)self containingBundleIdentifier];

    if (!v35)
    {
      v46 = [(PKDPlugIn *)self personaCache];
      v16 = [v46 personalPersonaID];

      v12 = pklog_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [(PKDPlugIn *)self uuid];
        v48 = [(PKDPlugIn *)self identifier];
        v49 = [(PKDPlugIn *)self version];
        *buf = 138544130;
        *&buf[4] = v47;
        *&buf[12] = 2112;
        *&buf[14] = v48;
        *&buf[22] = 2112;
        v66 = v49;
        LOWORD(v67) = 2112;
        *(&v67 + 2) = v16;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to persona ID %@ since it has no containing bundle", buf, 0x2Au);
      }

      goto LABEL_54;
    }

    v64 = 0;
    v36 = [(PKDPlugIn *)self personaCache];
    v37 = [(PKDPlugIn *)self containingBundleIdentifier];
    v38 = [v36 personasForBundleIdentifier:v37 error:&v64];

    v39 = v64;
    if (v64)
    {
      v40 = pklog_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        [(PKDPlugIn *)self _personaIDForClient:v40 requestedPersona:v41, v42, v43, v44, v45, v60, log, v64, *buf, *&buf[16], v66, v67, *(&v67 + 1), v68, v69, v70, v71, v72, v73];
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

        v40 = [v38 anyObject];
        v16 = [v40 personaID];
        v52 = pklog_handle_for_category();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v61 = [(PKDPlugIn *)self uuid];
          [(PKDPlugIn *)self identifier];
          v53 = loga = v52;
          v54 = [(PKDPlugIn *)self version];
          v55 = [v40 personaID];
          *buf = 138544130;
          *&buf[4] = v61;
          *&buf[12] = 2112;
          *&buf[14] = v53;
          *&buf[22] = 2112;
          v66 = v54;
          LOWORD(v67) = 2112;
          *(&v67 + 2) = v55;
          v56 = v55;
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
        v16 = v16;
        self = v16;
        goto LABEL_56;
      }

      v40 = pklog_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [(PKDPlugIn *)self uuid];
        v58 = [(PKDPlugIn *)self identifier];
        v59 = [(PKDPlugIn *)self version];
        *buf = 138543874;
        *&buf[4] = v57;
        *&buf[12] = 2112;
        *&buf[14] = v58;
        *&buf[22] = 2112;
        v66 = v59;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] assigning to no specific persona", buf, 0x20u);
      }
    }

    v16 = 0;
    goto LABEL_50;
  }

  v9 = [v7 hasEntitlement:PKPersonaPropagateEntitlement];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v4 = [(PKDPlugIn *)self launchPersonas];
    if ([v4 containsObject:v8])
    {
      v10 = 1;
    }

    else
    {
      v17 = +[UMUserPersonaAttributes personaAttributes];
      v10 = [v17 isSystemPersona];
    }
  }

  if (v9)
  {
    if (v10)
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

  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_17:
  v18 = [v8 personaUniqueString];
  v19 = [UMUserPersonaAttributes personaAttributesForPersonaUniqueString:v18];

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
    v19 = self;
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
          v23 = [(PKDPlugIn *)v19 uuid];
          v22 = [(PKDPlugIn *)v19 identifier];
          v16 = [(PKDPlugIn *)v19 version];
          *buf = 138543874;
          v29 = v23;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = v16;
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
  v2 = [(PKDPlugIn *)self identifier];

  return v2;
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