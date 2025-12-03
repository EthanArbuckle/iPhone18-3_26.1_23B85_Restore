@interface PKManager
+ (id)defaultManager;
- (BOOL)releaseHold:(id)hold flags:(unint64_t)flags withError:(id *)error;
- (BOOL)terminatePlugInAtURL:(id)l withError:(id *)error;
- (PKManager)initWithDaemon:(id)daemon;
- (PKManager)initWithDaemon:(id)daemon externalProviders:(id)providers;
- (PKManager)initWithExternalProviders:(id)providers;
- (id)containingAppForExtensionProperties:(id)properties;
- (id)containingAppForPlugInConnectedTo:(id)to;
- (id)forceHoldPlugIn:(id)in withError:(id *)error;
- (id)holdPlugInsInApplication:(id)application withError:(id *)error;
- (id)holdPlugInsWithExtensionPointName:(id)name error:(id *)error;
- (id)holdPlugInsWithExtensionPointName:(id)name platforms:(id)platforms terminate:(BOOL)terminate error:(id *)error;
- (id)initForService:(const char *)service;
- (id)terminatePlugInsInApplication:(id)application options:(int64_t)options withError:(id *)error;
- (void)holdPlugInsWithExtensionPointName:(id)name platforms:(id)platforms terminate:(BOOL)terminate result:(id)result;
- (void)holdRequest:(id)request extensionPointName:(id)name platforms:(id)platforms flags:(unint64_t)flags result:(id)result;
- (void)registerPlugInAtURL:(id)l result:(id)result;
- (void)registerPlugInsInBundle:(id)bundle result:(id)result;
- (void)releaseHold:(id)hold;
- (void)releaseHold:(id)hold reply:(id)reply;
- (void)terminatePlugInsInApplication:(id)application options:(int64_t)options result:(id)result;
- (void)unregisterPlugInAtURL:(id)l result:(id)result;
- (void)unregisterPlugInsInBundle:(id)bundle result:(id)result;
- (void)updateExtensionStatesForPlugIns:(id)ins result:(id)result;
@end

@implementation PKManager

+ (id)defaultManager
{
  if (qword_1ED6EF050 != -1)
  {
    sub_1C68B75D8();
  }

  v3 = qword_1ED6EF048;

  return v3;
}

- (id)initForService:(const char *)service
{
  v4 = [[PKDaemonClient alloc] initWithServiceName:service];
  v5 = [(PKManager *)self initWithDaemon:v4];

  return v5;
}

- (PKManager)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = objc_opt_new();
  v6 = [(PKManager *)self initWithDaemon:daemonCopy externalProviders:v5];

  return v6;
}

- (PKManager)initWithDaemon:(id)daemon externalProviders:(id)providers
{
  daemonCopy = daemon;
  providersCopy = providers;
  v11.receiver = self;
  v11.super_class = PKManager;
  v8 = [(PKManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKManager *)v8 setClient:daemonCopy];
    objc_storeStrong(&v9->_external, providers);
  }

  return v9;
}

- (PKManager)initWithExternalProviders:(id)providers
{
  providersCopy = providers;
  v5 = [[PKDaemonClient alloc] initWithServiceName:0];
  v6 = [(PKManager *)self initWithDaemon:v5 externalProviders:providersCopy];

  return v6;
}

- (void)registerPlugInAtURL:(id)l result:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  resultCopy = result;
  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  objc_initWeak(&from, self);
  v9 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 134218242;
    selfCopy = self;
    v27 = 2112;
    v28 = path;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugin at [%@]", buf, 0x16u);
  }

  client2 = [(PKManager *)self client];
  v12 = MEMORY[0x1E695DEC8];
  path2 = [lCopy path];
  v14 = [v12 arrayWithObject:path2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C68B04FC;
  v18[3] = &unk_1E827FE00;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v15 = lCopy;
  v19 = v15;
  v16 = resultCopy;
  v20 = v16;
  [client2 addPlugIns:v14 reply:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPlugInAtURL:(id)l result:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  resultCopy = result;
  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  objc_initWeak(&from, self);
  v9 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    path = [lCopy path];
    *buf = 134218242;
    selfCopy = self;
    v27 = 2112;
    v28 = path;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugin at [%@]", buf, 0x16u);
  }

  client2 = [(PKManager *)self client];
  v12 = MEMORY[0x1E695DEC8];
  path2 = [lCopy path];
  v14 = [v12 arrayWithObject:path2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C68B0888;
  v18[3] = &unk_1E827FE00;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v15 = lCopy;
  v19 = v15;
  v16 = resultCopy;
  v20 = v16;
  [client2 removePlugIns:v14 reply:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)registerPlugInsInBundle:(id)bundle result:(id)result
{
  v49 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  resultCopy = result;
  if (bundleCopy)
  {
    [MEMORY[0x1E696AAE8] bundleWithURL:bundleCopy];
  }

  else
  {
    [MEMORY[0x1E696AAE8] mainBundle];
  }
  v7 = ;
  v8 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [bundleCopy path];
    bundlePath = [v7 bundlePath];
    *buf = 134218498;
    selfCopy3 = self;
    v45 = 2112;
    v46 = path;
    v47 = 2112;
    v48 = bundlePath;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugins in bundle at [%@] resolved to [%@]", buf, 0x20u);
  }

  builtInPlugInsURL = [v7 builtInPlugInsURL];
  external = [(PKManager *)self external];
  filesystem = [external filesystem];
  v41 = 0;
  v13 = [filesystem contentsOfDirectoryAtURL:builtInPlugInsURL includingPropertiesForKeys:0 options:4 error:&v41];
  v28 = v41;

  if (v13)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v16)
    {
      v17 = *v38;
      do
      {
        v18 = 0;
        if (v16 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v16;
        }

        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v15);
          }

          path2 = [*(*(&v37 + 1) + 8 * v18) path];
          [v14 addObject:path2];

          ++v18;
        }

        while (v19 != v18);
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    if ([v14 count])
    {
      client = [(PKManager *)self client];
      objc_initWeak(buf, client);

      objc_initWeak(&location, self);
      client2 = [(PKManager *)self client];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1C68B0EA8;
      v31[3] = &unk_1E827FE00;
      objc_copyWeak(&v34, buf);
      objc_copyWeak(&v35, &location);
      v32 = v7;
      v33 = resultCopy;
      [client2 addPlugIns:v14 reply:v31];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      v24 = pklog_handle_for_category(12);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        bundlePath2 = [v7 bundlePath];
        *buf = 134218242;
        selfCopy3 = self;
        v45 = 2112;
        v46 = bundlePath2;
        _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugins in bundle at [%@] completed, there were no plugins in that bundle", buf, 0x16u);
      }

      (*(resultCopy + 2))(resultCopy, 0);
    }
  }

  else
  {
    v23 = pklog_handle_for_category(12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      bundlePath3 = [v7 bundlePath];
      *buf = 134218498;
      selfCopy3 = self;
      v45 = 2112;
      v46 = bundlePath3;
      v47 = 2112;
      v48 = v28;
      _os_log_error_impl(&dword_1C6892000, v23, OS_LOG_TYPE_ERROR, "<PKManager:%p> register plugins in bundle at [%@] failed to fetch candidates: %@", buf, 0x20u);
    }

    (*(resultCopy + 2))(resultCopy, v28);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPlugInsInBundle:(id)bundle result:(id)result
{
  v43 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  resultCopy = result;
  if (!bundleCopy)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleCopy = [mainBundle bundleURL];
  }

  v8 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path = [bundleCopy path];
    *buf = 134218242;
    selfCopy2 = self;
    v41 = 2112;
    v42 = path;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugins in bundle at [%@]", buf, 0x16u);
  }

  external = [(PKManager *)self external];
  v11 = [external ls];
  v12 = [v11 applicationProxyForBundleURL:bundleCopy];

  plugInKitPlugins = [v12 plugInKitPlugins];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(plugInKitPlugins, "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = plugInKitPlugins;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v16)
  {
    v17 = *v35;
    do
    {
      v18 = 0;
      if (v16 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v16;
      }

      do
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v15);
        }

        bundleURL = [*(*(&v34 + 1) + 8 * v18) bundleURL];
        path2 = [bundleURL path];
        [v14 addObject:path2];

        ++v18;
      }

      while (v19 != v18);
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    client = [(PKManager *)self client];
    objc_initWeak(buf, client);

    objc_initWeak(&location, self);
    client2 = [(PKManager *)self client];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1C68B13EC;
    v28[3] = &unk_1E827FE00;
    objc_copyWeak(&v31, buf);
    objc_copyWeak(&v32, &location);
    v29 = bundleCopy;
    v30 = resultCopy;
    [client2 removePlugIns:v14 reply:v28];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = pklog_handle_for_category(12);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [bundleCopy path];
      *buf = 134218242;
      selfCopy2 = self;
      v41 = 2112;
      v42 = path3;
      _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugins in bundle at [%@] completed, there were plugins in that bundle registered with LaunchServices", buf, 0x16u);
    }

    (*(resultCopy + 2))(resultCopy, 0);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)containingAppForPlugInConnectedTo:(id)to
{
  toCopy = to;
  external = [(PKManager *)self external];
  launch = [external launch];
  v7 = [launch copy_extension_properties:toCopy];

  v8 = [(PKManager *)self containingAppForExtensionProperties:v7];

  return v8;
}

- (id)containingAppForExtensionProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (!propertiesCopy)
  {
    goto LABEL_7;
  }

  string = xpc_dictionary_get_string(propertiesCopy, *MEMORY[0x1E69E9F30]);
  if (!string)
  {
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0];
  external = [(PKManager *)self external];
  v9 = [external ls];
  v10 = [v9 plugInKitProxyForURL:v7];

  containingBundle = [v10 containingBundle];
  v12 = containingBundle;
  if (containingBundle)
  {
    external = [containingBundle bundleIdentifier];
  }

  if (!v12)
  {
LABEL_7:
    external = 0;
  }

  return external;
}

- (void)holdPlugInsWithExtensionPointName:(id)name platforms:(id)platforms terminate:(BOOL)terminate result:(id)result
{
  if (terminate)
  {
    v7 = 36;
  }

  else
  {
    v7 = 32;
  }

  [(PKManager *)self holdRequest:0 extensionPointName:name platforms:platforms flags:v7 result:result];
}

- (void)terminatePlugInsInApplication:(id)application options:(int64_t)options result:(id)result
{
  applicationCopy = application;
  resultCopy = result;
  if (options)
  {
    v9 = pkError(18, @"unrecognized option to terminatePlugInsInApplication");
    resultCopy[2](resultCopy, 0, v9);
  }

  [(PKManager *)self holdRequest:applicationCopy flags:4 result:resultCopy];
}

- (id)holdPlugInsInApplication:(id)application withError:(id *)error
{
  applicationCopy = application;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1C68936D4;
  v21 = sub_1C689456C;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1C68936D4;
  v15 = sub_1C689456C;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C68B1CD4;
  v10[3] = &unk_1E827FE28;
  v10[4] = &v17;
  v10[5] = &v11;
  [(PKManager *)self holdRequest:applicationCopy flags:10 result:v10];
  if (!v18[5])
  {
    if (error)
    {
      v7 = v12[5];
      if (v7)
      {
        *error = v7;
      }
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)holdPlugInsWithExtensionPointName:(id)name platforms:(id)platforms terminate:(BOOL)terminate error:(id *)error
{
  terminateCopy = terminate;
  nameCopy = name;
  platformsCopy = platforms;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1C68936D4;
  v27 = sub_1C689456C;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1C68936D4;
  v21 = sub_1C689456C;
  v22 = 0;
  if (terminateCopy)
  {
    v12 = 44;
  }

  else
  {
    v12 = 40;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1C68B1F20;
  v16[3] = &unk_1E827FE28;
  v16[4] = &v23;
  v16[5] = &v17;
  [(PKManager *)self holdRequest:0 extensionPointName:nameCopy platforms:platformsCopy flags:v12 result:v16];
  if (!v24[5])
  {
    if (error)
    {
      v13 = v18[5];
      if (v13)
      {
        *error = v13;
      }
    }
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

- (id)holdPlugInsWithExtensionPointName:(id)name error:(id *)error
{
  v4 = [(PKManager *)self holdPlugInsWithExtensionPointName:name platforms:MEMORY[0x1E695E0F0] terminate:1 error:error];

  return v4;
}

- (id)forceHoldPlugIn:(id)in withError:(id *)error
{
  inCopy = in;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1C68936D4;
  v21 = sub_1C689456C;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1C68936D4;
  v15 = sub_1C689456C;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C68B2178;
  v10[3] = &unk_1E827FE28;
  v10[4] = &v17;
  v10[5] = &v11;
  [(PKManager *)self holdRequest:inCopy flags:9 result:v10];
  if (!v18[5])
  {
    if (error)
    {
      v7 = v12[5];
      if (v7)
      {
        *error = v7;
      }
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (BOOL)terminatePlugInAtURL:(id)l withError:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1C68936D4;
  v25 = sub_1C689456C;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1C68936D4;
  v19 = sub_1C689456C;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C68B23DC;
  v14[3] = &unk_1E827FE28;
  v14[4] = &v21;
  v14[5] = &v15;
  [(PKManager *)self holdRequest:lCopy flags:29 result:v14];
  v7 = v16[5];
  if (v22[5])
  {
    v16[5] = 0;

    v8 = v22[5];
    v9 = (v16 + 5);
    obj = v16[5];
    v10 = [(PKManager *)self releaseHold:v8 flags:24 withError:&obj];
    objc_storeStrong(v9, obj);
    if (v10)
    {
      v11 = 1;
      goto LABEL_10;
    }

    v11 = 0;
    if (error)
    {
      v7 = v16[5];
      if (v7)
      {
LABEL_9:
        v11 = 0;
        *error = v7;
      }
    }
  }

  else
  {
    v11 = 0;
    if (error && v7)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

- (id)terminatePlugInsInApplication:(id)application options:(int64_t)options withError:(id *)error
{
  applicationCopy = application;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1C68936D4;
  v25 = sub_1C689456C;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1C68936D4;
  v19 = sub_1C689456C;
  v20 = 0;
  if (options)
  {
    v9 = pkError(18, @"unrecognized option to terminatePlugInsInApplication");
    v10 = v16[5];
    v16[5] = v9;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1C68B2628;
    v14[3] = &unk_1E827FE28;
    v14[4] = &v21;
    v14[5] = &v15;
    [(PKManager *)self holdRequest:applicationCopy flags:12 result:v14];
  }

  if (!v22[5])
  {
    if (error)
    {
      v11 = v16[5];
      if (v11)
      {
        *error = v11;
      }
    }
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v12;
}

- (void)holdRequest:(id)request extensionPointName:(id)name platforms:(id)platforms flags:(unint64_t)flags result:(id)result
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  nameCopy = name;
  platformsCopy = platforms;
  resultCopy = result;
  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  if (requestCopy)
  {
    path = [requestCopy path];
  }

  else
  {
    path = nameCopy;
  }

  v18 = path;
  if (requestCopy)
  {
  }

  v19 = pklog_handle_for_category(11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v35 = 2112;
    v36 = v18;
    v37 = 2048;
    flagsCopy = flags;
    _os_log_impl(&dword_1C6892000, v19, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> hold request for [%@] with flags: 0x%llx", buf, 0x20u);
  }

  if (nameCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = requestCopy != 0;
  }

  if (v20)
  {
    if (requestCopy && nameCopy)
    {
      v21 = pkError(18, @"Malformed hold request: only one of URL or extension point allowed");
      resultCopy[2](resultCopy, 0, v21);
    }

    else
    {
      if (requestCopy)
      {
        path2 = [requestCopy path];
        v23 = path2 == 0;

        if (v23)
        {
          v21 = pkError(18, @"Malformed NSURL passed by the client.");
          resultCopy[2](resultCopy, 0, v21);
          goto LABEL_22;
        }

        path3 = [requestCopy path];
        v32 = path3;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      }

      else
      {
        v21 = 0;
      }

      client2 = [(PKManager *)self client];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1C68B2A34;
      v27[3] = &unk_1E827FE50;
      objc_copyWeak(v30, &location);
      v27[4] = self;
      v28 = v18;
      v30[1] = flags;
      v29 = resultCopy;
      [client2 holdPlugins:v21 extensionPointName:nameCopy platforms:platformsCopy flags:flags reply:v27];

      objc_destroyWeak(v30);
    }
  }

  else
  {
    v21 = pkError(18, @"Malformed hold request: must supply URL or extension point");
    resultCopy[2](resultCopy, 0, v21);
  }

LABEL_22:

  objc_destroyWeak(&location);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)releaseHold:(id)hold
{
  holdCopy = hold;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B7704();
  }

  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  client2 = [(PKManager *)self client];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C68B2E4C;
  v8[3] = &unk_1E827FE78;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = holdCopy;
  v9 = v7;
  [client2 releaseHold:v7 flags:0 reply:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)releaseHold:(id)hold reply:(id)reply
{
  holdCopy = hold;
  replyCopy = reply;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B77F4();
  }

  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  client2 = [(PKManager *)self client];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68B30D8;
  v12[3] = &unk_1E827FEA0;
  objc_copyWeak(&v15, &location);
  v12[4] = self;
  v10 = holdCopy;
  v13 = v10;
  v11 = replyCopy;
  v14 = v11;
  [client2 releaseHold:v10 flags:0 reply:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)releaseHold:(id)hold flags:(unint64_t)flags withError:(id *)error
{
  holdCopy = hold;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B78E4();
  }

  client = [(PKManager *)self client];
  objc_initWeak(&location, client);

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1C68936D4;
  v23 = sub_1C689456C;
  v24 = 0;
  client2 = [(PKManager *)self client];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1C68B33F0;
  v15[3] = &unk_1E827FEC8;
  v17 = &v19;
  objc_copyWeak(&v18, &location);
  v15[4] = self;
  v11 = holdCopy;
  v16 = v11;
  [client2 releaseHold:v11 flags:flags reply:v15];

  if (error)
  {
    v12 = v20[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v20[5] == 0;

  objc_destroyWeak(&v18);
  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&location);
  return v13;
}

- (void)updateExtensionStatesForPlugIns:(id)ins result:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  insCopy = ins;
  resultCopy = result;
  v8 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v20 = 2112;
    v21 = insCopy;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> bulk update extension states: %@", buf, 0x16u);
  }

  client = [(PKManager *)self client];
  objc_initWeak(buf, client);

  client2 = [(PKManager *)self client];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C68B3700;
  v14[3] = &unk_1E827FEA0;
  objc_copyWeak(&v17, buf);
  v14[4] = self;
  v11 = insCopy;
  v15 = v11;
  v12 = resultCopy;
  v16 = v12;
  [client2 bulkSetPluginAnnotations:v11 reply:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

@end