@interface UIFileProviderApplicationExtensionActivity
- (BOOL)_sharesGroupContainerWithURL:(id)a3;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (UIFileProviderApplicationExtensionActivity)initWithApplicationExtension:(id)a3;
@end

@implementation UIFileProviderApplicationExtensionActivity

- (UIFileProviderApplicationExtensionActivity)initWithApplicationExtension:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = UIFileProviderApplicationExtensionActivity;
  v5 = [(UIApplicationExtensionActivity *)&v17 initWithApplicationExtension:v4];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = MEMORY[0x1E6963678];
      v8 = [v4 identifier];
      v9 = [v7 pluginKitProxyForIdentifier:v8];
      pluginProxy = v5->_pluginProxy;
      v5->_pluginProxy = v9;

      v11 = v5->_pluginProxy;
      if (v11)
      {
        v12 = [(LSPlugInKitProxy *)v11 groupContainerURLs];
        v13 = [v12 allValues];
        groupContainerURLs = v5->_groupContainerURLs;
        v5->_groupContainerURLs = v13;
      }
    }

    v15 = v5;
  }

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIFileProviderApplicationExtensionActivity *)self pluginProxy];

  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 ui_isFileProviderURL] && -[UIFileProviderApplicationExtensionActivity _sharesGroupContainerWithURL:](self, "_sharesGroupContainerWithURL:", v11))
          {
            v12 = 1;
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_15:
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)_sharesGroupContainerWithURL:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(UIFileProviderApplicationExtensionActivity *)self groupContainerURLs];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v8 = *v19;
    *&v7 = 138543874;
    v15 = v7;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v16 = 0;
        [v11 getRelationship:&v17 ofDirectoryAtURL:v10 toItemAtURL:v4 error:&v16];
        v12 = v16;

        if (v12)
        {
          v13 = share_sheet_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v23 = v4;
            v24 = 2114;
            v25 = v10;
            v26 = 2112;
            v27 = v12;
            _os_log_error_impl(&dword_18B359000, v13, OS_LOG_TYPE_ERROR, "error getting relationship for url:%{public}@ containerURL:%{public}@ error:%@", buf, 0x20u);
          }
        }

        else if (!v17)
        {
          LOBYTE(v6) = 1;
          goto LABEL_15;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v6;
}

@end