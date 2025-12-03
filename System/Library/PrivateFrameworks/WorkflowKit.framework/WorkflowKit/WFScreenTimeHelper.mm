@interface WFScreenTimeHelper
+ (id)restrictedURLErrorWithHostname:(id)hostname;
+ (void)isContentDestinationAllowedByScreenTimeSettings:(id)settings completionHandler:(id)handler;
@end

@implementation WFScreenTimeHelper

+ (id)restrictedURLErrorWithHostname:(id)hostname
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v13[0] = *MEMORY[0x1E696A578];
  v4 = MEMORY[0x1E696AEC0];
  hostnameCopy = hostname;
  v6 = WFLocalizedString(@"The action could not run because “%@” was blocked by the Content Restrictions on this device.");
  v7 = [v4 localizedStringWithFormat:v6, hostnameCopy, v13[0]];

  v14[0] = v7;
  v13[1] = *MEMORY[0x1E696A598];
  v8 = WFLocalizedString(@"You can change this in the Screen Time settings.");
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [v3 errorWithDomain:@"WFScreenTimeHelperErrorDomain" code:1000 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)isContentDestinationAllowedByScreenTimeSettings:(id)settings completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  handlerCopy = handler;
  v7 = settingsCopy;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v8 = getWFUserSettingsClass_softClass;
    v35 = getWFUserSettingsClass_softClass;
    if (!getWFUserSettingsClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFUserSettingsClass_block_invoke;
      v38 = &unk_1E837FAC0;
      v39 = &v32;
      __getWFUserSettingsClass_block_invoke(buf);
      v8 = v33[3];
    }

    v26 = handlerCopy;
    v9 = v8;
    _Block_object_dispose(&v32, 8);
    v10 = [v8 alloc];
    v11 = NSUserName();
    v27 = [v10 initWithUserName:v11];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    hostnames = [v7 hostnames];
    v13 = [hostnames countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(hostnames);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = MEMORY[0x1E695DFF8];
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v16];
          v19 = [v17 URLWithString:v18];

          if (v19)
          {
            if (([v27 contentFilterListsAllowURL:v19] & 1) == 0)
            {
              v22 = getWFSecurityLogObject();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "+[WFScreenTimeHelper isContentDestinationAllowedByScreenTimeSettings:completionHandler:]";
                *&buf[12] = 2112;
                *&buf[14] = v7;
                _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_INFO, "%s Content destination %@ is being prohibited by Screen Time.", buf, 0x16u);
              }

              v24 = [objc_opt_class() restrictedURLErrorWithHostname:v16];
              v26[2](v26, 0, v24);

              goto LABEL_25;
            }
          }

          else
          {
            v20 = getWFSecurityLogObject();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "+[WFScreenTimeHelper isContentDestinationAllowedByScreenTimeSettings:completionHandler:]";
              *&buf[12] = 2112;
              *&buf[14] = v16;
              _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Could not verify Screen Time configuration of invalid hostname %@", buf, 0x16u);
            }
          }
        }

        v13 = [hostnames countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = getWFSecurityLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "+[WFScreenTimeHelper isContentDestinationAllowedByScreenTimeSettings:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEBUG, "%s Screen Time is allowing URL content destination: %@", buf, 0x16u);
    }

    v26[2](v26, 1, 0);
LABEL_25:

    handlerCopy = v26;
  }

  else
  {

    handlerCopy[2](handlerCopy, 1, 0);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end