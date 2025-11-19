@interface PKManager
+ (id)defaultManager;
- (BOOL)releaseHold:(id)a3 flags:(unint64_t)a4 withError:(id *)a5;
- (BOOL)terminatePlugInAtURL:(id)a3 withError:(id *)a4;
- (PKManager)initWithDaemon:(id)a3;
- (PKManager)initWithDaemon:(id)a3 externalProviders:(id)a4;
- (PKManager)initWithExternalProviders:(id)a3;
- (id)containingAppForExtensionProperties:(id)a3;
- (id)containingAppForPlugInConnectedTo:(id)a3;
- (id)forceHoldPlugIn:(id)a3 withError:(id *)a4;
- (id)holdPlugInsInApplication:(id)a3 withError:(id *)a4;
- (id)holdPlugInsWithExtensionPointName:(id)a3 error:(id *)a4;
- (id)holdPlugInsWithExtensionPointName:(id)a3 platforms:(id)a4 terminate:(BOOL)a5 error:(id *)a6;
- (id)initForService:(const char *)a3;
- (id)terminatePlugInsInApplication:(id)a3 options:(int64_t)a4 withError:(id *)a5;
- (void)holdPlugInsWithExtensionPointName:(id)a3 platforms:(id)a4 terminate:(BOOL)a5 result:(id)a6;
- (void)holdRequest:(id)a3 extensionPointName:(id)a4 platforms:(id)a5 flags:(unint64_t)a6 result:(id)a7;
- (void)registerPlugInAtURL:(id)a3 result:(id)a4;
- (void)registerPlugInsInBundle:(id)a3 result:(id)a4;
- (void)releaseHold:(id)a3;
- (void)releaseHold:(id)a3 reply:(id)a4;
- (void)terminatePlugInsInApplication:(id)a3 options:(int64_t)a4 result:(id)a5;
- (void)unregisterPlugInAtURL:(id)a3 result:(id)a4;
- (void)unregisterPlugInsInBundle:(id)a3 result:(id)a4;
- (void)updateExtensionStatesForPlugIns:(id)a3 result:(id)a4;
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

- (id)initForService:(const char *)a3
{
  v4 = [[PKDaemonClient alloc] initWithServiceName:a3];
  v5 = [(PKManager *)self initWithDaemon:v4];

  return v5;
}

- (PKManager)initWithDaemon:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PKManager *)self initWithDaemon:v4 externalProviders:v5];

  return v6;
}

- (PKManager)initWithDaemon:(id)a3 externalProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKManager;
  v8 = [(PKManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PKManager *)v8 setClient:v6];
    objc_storeStrong(&v9->_external, a4);
  }

  return v9;
}

- (PKManager)initWithExternalProviders:(id)a3
{
  v4 = a3;
  v5 = [[PKDaemonClient alloc] initWithServiceName:0];
  v6 = [(PKManager *)self initWithDaemon:v5 externalProviders:v4];

  return v6;
}

- (void)registerPlugInAtURL:(id)a3 result:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKManager *)self client];
  objc_initWeak(&location, v8);

  objc_initWeak(&from, self);
  v9 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 path];
    *buf = 134218242;
    v26 = self;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugin at [%@]", buf, 0x16u);
  }

  v11 = [(PKManager *)self client];
  v12 = MEMORY[0x1E695DEC8];
  v13 = [v6 path];
  v14 = [v12 arrayWithObject:v13];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C68B04FC;
  v18[3] = &unk_1E827FE00;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v15 = v6;
  v19 = v15;
  v16 = v7;
  v20 = v16;
  [v11 addPlugIns:v14 reply:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPlugInAtURL:(id)a3 result:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKManager *)self client];
  objc_initWeak(&location, v8);

  objc_initWeak(&from, self);
  v9 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 path];
    *buf = 134218242;
    v26 = self;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1C6892000, v9, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugin at [%@]", buf, 0x16u);
  }

  v11 = [(PKManager *)self client];
  v12 = MEMORY[0x1E695DEC8];
  v13 = [v6 path];
  v14 = [v12 arrayWithObject:v13];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1C68B0888;
  v18[3] = &unk_1E827FE00;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v15 = v6;
  v19 = v15;
  v16 = v7;
  v20 = v16;
  [v11 removePlugIns:v14 reply:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)registerPlugInsInBundle:(id)a3 result:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = a4;
  if (v6)
  {
    [MEMORY[0x1E696AAE8] bundleWithURL:v6];
  }

  else
  {
    [MEMORY[0x1E696AAE8] mainBundle];
  }
  v7 = ;
  v8 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 path];
    v10 = [v7 bundlePath];
    *buf = 134218498;
    v44 = self;
    v45 = 2112;
    v46 = v9;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugins in bundle at [%@] resolved to [%@]", buf, 0x20u);
  }

  v30 = [v7 builtInPlugInsURL];
  v11 = [(PKManager *)self external];
  v12 = [v11 filesystem];
  v41 = 0;
  v13 = [v12 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:4 error:&v41];
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

          v20 = [*(*(&v37 + 1) + 8 * v18) path];
          [v14 addObject:v20];

          ++v18;
        }

        while (v19 != v18);
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    if ([v14 count])
    {
      v21 = [(PKManager *)self client];
      objc_initWeak(buf, v21);

      objc_initWeak(&location, self);
      v22 = [(PKManager *)self client];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1C68B0EA8;
      v31[3] = &unk_1E827FE00;
      objc_copyWeak(&v34, buf);
      objc_copyWeak(&v35, &location);
      v32 = v7;
      v33 = v29;
      [v22 addPlugIns:v14 reply:v31];

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
        v25 = [v7 bundlePath];
        *buf = 134218242;
        v44 = self;
        v45 = 2112;
        v46 = v25;
        _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugins in bundle at [%@] completed, there were no plugins in that bundle", buf, 0x16u);
      }

      (*(v29 + 2))(v29, 0);
    }
  }

  else
  {
    v23 = pklog_handle_for_category(12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = [v7 bundlePath];
      *buf = 134218498;
      v44 = self;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      _os_log_error_impl(&dword_1C6892000, v23, OS_LOG_TYPE_ERROR, "<PKManager:%p> register plugins in bundle at [%@] failed to fetch candidates: %@", buf, 0x20u);
    }

    (*(v29 + 2))(v29, v28);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPlugInsInBundle:(id)a3 result:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = a4;
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v7 bundleURL];
  }

  v8 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 path];
    *buf = 134218242;
    v40 = self;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugins in bundle at [%@]", buf, 0x16u);
  }

  v10 = [(PKManager *)self external];
  v11 = [v10 ls];
  v12 = [v11 applicationProxyForBundleURL:v6];

  v13 = [v12 plugInKitPlugins];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v13;
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

        v20 = [*(*(&v34 + 1) + 8 * v18) bundleURL];
        v21 = [v20 path];
        [v14 addObject:v21];

        ++v18;
      }

      while (v19 != v18);
      v16 = [v15 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    v22 = [(PKManager *)self client];
    objc_initWeak(buf, v22);

    objc_initWeak(&location, self);
    v23 = [(PKManager *)self client];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1C68B13EC;
    v28[3] = &unk_1E827FE00;
    objc_copyWeak(&v31, buf);
    objc_copyWeak(&v32, &location);
    v29 = v6;
    v30 = v27;
    [v23 removePlugIns:v14 reply:v28];

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
      v25 = [v6 path];
      *buf = 134218242;
      v40 = self;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugins in bundle at [%@] completed, there were plugins in that bundle registered with LaunchServices", buf, 0x16u);
    }

    (*(v27 + 2))(v27, 0);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)containingAppForPlugInConnectedTo:(id)a3
{
  v4 = a3;
  v5 = [(PKManager *)self external];
  v6 = [v5 launch];
  v7 = [v6 copy_extension_properties:v4];

  v8 = [(PKManager *)self containingAppForExtensionProperties:v7];

  return v8;
}

- (id)containingAppForExtensionProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9F30]);
  if (!string)
  {
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0];
  v8 = [(PKManager *)self external];
  v9 = [v8 ls];
  v10 = [v9 plugInKitProxyForURL:v7];

  v11 = [v10 containingBundle];
  v12 = v11;
  if (v11)
  {
    v8 = [v11 bundleIdentifier];
  }

  if (!v12)
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

- (void)holdPlugInsWithExtensionPointName:(id)a3 platforms:(id)a4 terminate:(BOOL)a5 result:(id)a6
{
  if (a5)
  {
    v7 = 36;
  }

  else
  {
    v7 = 32;
  }

  [(PKManager *)self holdRequest:0 extensionPointName:a3 platforms:a4 flags:v7 result:a6];
}

- (void)terminatePlugInsInApplication:(id)a3 options:(int64_t)a4 result:(id)a5
{
  v10 = a3;
  v8 = a5;
  if (a4)
  {
    v9 = pkError(18, @"unrecognized option to terminatePlugInsInApplication");
    v8[2](v8, 0, v9);
  }

  [(PKManager *)self holdRequest:v10 flags:4 result:v8];
}

- (id)holdPlugInsInApplication:(id)a3 withError:(id *)a4
{
  v6 = a3;
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
  [(PKManager *)self holdRequest:v6 flags:10 result:v10];
  if (!v18[5])
  {
    if (a4)
    {
      v7 = v12[5];
      if (v7)
      {
        *a4 = v7;
      }
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)holdPlugInsWithExtensionPointName:(id)a3 platforms:(id)a4 terminate:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
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
  if (v7)
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
  [(PKManager *)self holdRequest:0 extensionPointName:v10 platforms:v11 flags:v12 result:v16];
  if (!v24[5])
  {
    if (a6)
    {
      v13 = v18[5];
      if (v13)
      {
        *a6 = v13;
      }
    }
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v14;
}

- (id)holdPlugInsWithExtensionPointName:(id)a3 error:(id *)a4
{
  v4 = [(PKManager *)self holdPlugInsWithExtensionPointName:a3 platforms:MEMORY[0x1E695E0F0] terminate:1 error:a4];

  return v4;
}

- (id)forceHoldPlugIn:(id)a3 withError:(id *)a4
{
  v6 = a3;
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
  [(PKManager *)self holdRequest:v6 flags:9 result:v10];
  if (!v18[5])
  {
    if (a4)
    {
      v7 = v12[5];
      if (v7)
      {
        *a4 = v7;
      }
    }
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

- (BOOL)terminatePlugInAtURL:(id)a3 withError:(id *)a4
{
  v6 = a3;
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
  [(PKManager *)self holdRequest:v6 flags:29 result:v14];
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
    if (a4)
    {
      v7 = v16[5];
      if (v7)
      {
LABEL_9:
        v11 = 0;
        *a4 = v7;
      }
    }
  }

  else
  {
    v11 = 0;
    if (a4 && v7)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

- (id)terminatePlugInsInApplication:(id)a3 options:(int64_t)a4 withError:(id *)a5
{
  v8 = a3;
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
  if (a4)
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
    [(PKManager *)self holdRequest:v8 flags:12 result:v14];
  }

  if (!v22[5])
  {
    if (a5)
    {
      v11 = v16[5];
      if (v11)
      {
        *a5 = v11;
      }
    }
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v12;
}

- (void)holdRequest:(id)a3 extensionPointName:(id)a4 platforms:(id)a5 flags:(unint64_t)a6 result:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(PKManager *)self client];
  objc_initWeak(&location, v16);

  if (v12)
  {
    v17 = [v12 path];
  }

  else
  {
    v17 = v13;
  }

  v18 = v17;
  if (v12)
  {
  }

  v19 = pklog_handle_for_category(11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v34 = self;
    v35 = 2112;
    v36 = v18;
    v37 = 2048;
    v38 = a6;
    _os_log_impl(&dword_1C6892000, v19, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> hold request for [%@] with flags: 0x%llx", buf, 0x20u);
  }

  if (v13)
  {
    v20 = 1;
  }

  else
  {
    v20 = v12 != 0;
  }

  if (v20)
  {
    if (v12 && v13)
    {
      v21 = pkError(18, @"Malformed hold request: only one of URL or extension point allowed");
      v15[2](v15, 0, v21);
    }

    else
    {
      if (v12)
      {
        v22 = [v12 path];
        v23 = v22 == 0;

        if (v23)
        {
          v21 = pkError(18, @"Malformed NSURL passed by the client.");
          v15[2](v15, 0, v21);
          goto LABEL_22;
        }

        v24 = [v12 path];
        v32 = v24;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      }

      else
      {
        v21 = 0;
      }

      v25 = [(PKManager *)self client];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1C68B2A34;
      v27[3] = &unk_1E827FE50;
      objc_copyWeak(v30, &location);
      v27[4] = self;
      v28 = v18;
      v30[1] = a6;
      v29 = v15;
      [v25 holdPlugins:v21 extensionPointName:v13 platforms:v14 flags:a6 reply:v27];

      objc_destroyWeak(v30);
    }
  }

  else
  {
    v21 = pkError(18, @"Malformed hold request: must supply URL or extension point");
    v15[2](v15, 0, v21);
  }

LABEL_22:

  objc_destroyWeak(&location);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)releaseHold:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B7704();
  }

  v5 = [(PKManager *)self client];
  objc_initWeak(&location, v5);

  v6 = [(PKManager *)self client];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1C68B2E4C;
  v8[3] = &unk_1E827FE78;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v6 releaseHold:v7 flags:0 reply:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)releaseHold:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B77F4();
  }

  v8 = [(PKManager *)self client];
  objc_initWeak(&location, v8);

  v9 = [(PKManager *)self client];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1C68B30D8;
  v12[3] = &unk_1E827FEA0;
  objc_copyWeak(&v15, &location);
  v12[4] = self;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 releaseHold:v10 flags:0 reply:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (BOOL)releaseHold:(id)a3 flags:(unint64_t)a4 withError:(id *)a5
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1C68B78E4();
  }

  v9 = [(PKManager *)self client];
  objc_initWeak(&location, v9);

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1C68936D4;
  v23 = sub_1C689456C;
  v24 = 0;
  v10 = [(PKManager *)self client];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1C68B33F0;
  v15[3] = &unk_1E827FEC8;
  v17 = &v19;
  objc_copyWeak(&v18, &location);
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  [v10 releaseHold:v11 flags:a4 reply:v15];

  if (a5)
  {
    v12 = v20[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v20[5] == 0;

  objc_destroyWeak(&v18);
  _Block_object_dispose(&v19, 8);

  objc_destroyWeak(&location);
  return v13;
}

- (void)updateExtensionStatesForPlugIns:(id)a3 result:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = self;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> bulk update extension states: %@", buf, 0x16u);
  }

  v9 = [(PKManager *)self client];
  objc_initWeak(buf, v9);

  v10 = [(PKManager *)self client];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C68B3700;
  v14[3] = &unk_1E827FEA0;
  objc_copyWeak(&v17, buf);
  v14[4] = self;
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [v10 bulkSetPluginAnnotations:v11 reply:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

@end