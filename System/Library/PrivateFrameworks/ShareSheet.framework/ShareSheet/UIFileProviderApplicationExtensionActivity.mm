@interface UIFileProviderApplicationExtensionActivity
- (BOOL)_sharesGroupContainerWithURL:(id)l;
- (BOOL)canPerformWithActivityItems:(id)items;
- (UIFileProviderApplicationExtensionActivity)initWithApplicationExtension:(id)extension;
@end

@implementation UIFileProviderApplicationExtensionActivity

- (UIFileProviderApplicationExtensionActivity)initWithApplicationExtension:(id)extension
{
  extensionCopy = extension;
  v17.receiver = self;
  v17.super_class = UIFileProviderApplicationExtensionActivity;
  v5 = [(UIApplicationExtensionActivity *)&v17 initWithApplicationExtension:extensionCopy];
  if (v5)
  {
    identifier = [extensionCopy identifier];

    if (identifier)
    {
      v7 = MEMORY[0x1E6963678];
      identifier2 = [extensionCopy identifier];
      v9 = [v7 pluginKitProxyForIdentifier:identifier2];
      pluginProxy = v5->_pluginProxy;
      v5->_pluginProxy = v9;

      v11 = v5->_pluginProxy;
      if (v11)
      {
        groupContainerURLs = [(LSPlugInKitProxy *)v11 groupContainerURLs];
        allValues = [groupContainerURLs allValues];
        groupContainerURLs = v5->_groupContainerURLs;
        v5->_groupContainerURLs = allValues;
      }
    }

    v15 = v5;
  }

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  pluginProxy = [(UIFileProviderApplicationExtensionActivity *)self pluginProxy];

  if (pluginProxy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = itemsCopy;
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

- (BOOL)_sharesGroupContainerWithURL:(id)l
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  groupContainerURLs = [(UIFileProviderApplicationExtensionActivity *)self groupContainerURLs];
  v6 = [groupContainerURLs countByEnumeratingWithState:&v18 objects:v28 count:16];
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
          objc_enumerationMutation(groupContainerURLs);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v17 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v16 = 0;
        [defaultManager getRelationship:&v17 ofDirectoryAtURL:v10 toItemAtURL:lCopy error:&v16];
        v12 = v16;

        if (v12)
        {
          v13 = share_sheet_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v23 = lCopy;
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

      v6 = [groupContainerURLs countByEnumeratingWithState:&v18 objects:v28 count:16];
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