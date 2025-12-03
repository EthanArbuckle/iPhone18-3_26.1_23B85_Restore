@interface SUPluginLoader
+ (BOOL)loadPlugin:(id)plugin;
@end

@implementation SUPluginLoader

+ (BOOL)loadPlugin:(id)plugin
{
  pluginCopy = plugin;
  SULogInfo(@"Attempting to load plugin", v4, v5, v6, v7, v8, v9, v10, v56);
  if (pluginCopy)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleWithPath:pluginCopy];
    v26 = v18;
    if (v18)
    {
      v58 = 0;
      v27 = [v18 loadAndReturnError:&v58];
      v35 = v58;
      if (v27)
      {
        infoDictionary = [v26 infoDictionary];
        v37 = [infoDictionary objectForKey:@"NSPrincipalClass"];

        if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v45 = NSClassFromString(v37);
          if (v45)
          {
            v53 = v45;
            if (objc_opt_respondsToSelector())
            {
              [(objc_class *)v53 awakeFromBundle];
              v54 = 1;
LABEL_16:

              goto LABEL_17;
            }
          }

          SULogInfo(@"plugin's principal class does not respond to awakeFromBundle: %@", v46, v47, v48, v49, v50, v51, v52, pluginCopy);
        }

        else
        {
          SULogInfo(@"Unable to load plugin principalClassName: %@", v38, v39, v40, v41, v42, v43, v44, pluginCopy);
        }

        v54 = 0;
        goto LABEL_16;
      }

      SULogInfo(@"Failed to load plugin bundle: %@ with error: %@", v28, v29, v30, v31, v32, v33, v34, pluginCopy);
    }

    else
    {
      SULogInfo(@"Unable to create bundle from bundle path: %@", v19, v20, v21, v22, v23, v24, v25, pluginCopy);
    }

    v54 = 0;
LABEL_17:

    goto LABEL_18;
  }

  SULogInfo(@"Unable to load bundle with nil path", v11, v12, v13, v14, v15, v16, v17, v57);
  v54 = 0;
LABEL_18:

  return v54;
}

@end