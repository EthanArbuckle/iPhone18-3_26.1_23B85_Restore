@interface PRUISPosterConfigurationUtilities
+ (id)titleStyleAttributesForConfiguration:(id)configuration error:(id *)error;
@end

@implementation PRUISPosterConfigurationUtilities

+ (id)titleStyleAttributesForConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v40 = 0;
  v6 = [configurationCopy pr_loadTitleStyleConfigurationWithError:&v40];
  v7 = v40;
  if (v6)
  {
    pr_posterProvider = [configurationCopy pr_posterProvider];
    if (pr_posterProvider)
    {
      v39 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:pr_posterProvider error:&v39];
      v10 = v39;

      v11 = [v9 URL];
      if (v11)
      {
        v12 = v11;

        v13 = [PRUISPosterTitleStyleAttributes alloc];
        role = [configurationCopy role];
        v15 = [(PRUISPosterTitleStyleAttributes *)v13 initWithPRPosterTitleStyleConfiguration:v6 extensionBundleURL:v12 role:role];

        v9 = v12;
      }

      else
      {
        v30 = PRUISLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(PRUISPosterConfigurationUtilities *)v10 titleStyleAttributesForConfiguration:v30 error:v31, v32, v33, v34, v35, v36];
        }

        v15 = 0;
        if (error && v10)
        {
          v37 = v10;
          v15 = 0;
          *error = v10;
        }
      }

      v7 = v10;
    }

    else
    {
      v9 = PRUISLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterConfigurationUtilities *)configurationCopy titleStyleAttributesForConfiguration:v9 error:v24, v25, v26, v27, v28, v29];
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = PRUISLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PRUISPosterConfigurationUtilities *)v7 titleStyleAttributesForConfiguration:v16 error:v17, v18, v19, v20, v21, v22];
    }

    v15 = 0;
    if (error && v7)
    {
      v23 = v7;
      v15 = 0;
      *error = v7;
    }
  }

  return v15;
}

@end