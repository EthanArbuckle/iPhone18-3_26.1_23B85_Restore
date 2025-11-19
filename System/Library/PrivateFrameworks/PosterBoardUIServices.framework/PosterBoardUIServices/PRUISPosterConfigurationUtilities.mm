@interface PRUISPosterConfigurationUtilities
+ (id)titleStyleAttributesForConfiguration:(id)a3 error:(id *)a4;
@end

@implementation PRUISPosterConfigurationUtilities

+ (id)titleStyleAttributesForConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v40 = 0;
  v6 = [v5 pr_loadTitleStyleConfigurationWithError:&v40];
  v7 = v40;
  if (v6)
  {
    v8 = [v5 pr_posterProvider];
    if (v8)
    {
      v39 = v7;
      v9 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v8 error:&v39];
      v10 = v39;

      v11 = [v9 URL];
      if (v11)
      {
        v12 = v11;

        v13 = [PRUISPosterTitleStyleAttributes alloc];
        v14 = [v5 role];
        v15 = [(PRUISPosterTitleStyleAttributes *)v13 initWithPRPosterTitleStyleConfiguration:v6 extensionBundleURL:v12 role:v14];

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
        if (a4 && v10)
        {
          v37 = v10;
          v15 = 0;
          *a4 = v10;
        }
      }

      v7 = v10;
    }

    else
    {
      v9 = PRUISLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterConfigurationUtilities *)v5 titleStyleAttributesForConfiguration:v9 error:v24, v25, v26, v27, v28, v29];
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
    if (a4 && v7)
    {
      v23 = v7;
      v15 = 0;
      *a4 = v7;
    }
  }

  return v15;
}

@end