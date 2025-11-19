@interface _DPMLRuntimePlugin
+ (id)performWithTrialClient:(id)a3 outError:(id *)a4;
- (id)performTask:(id)a3 outError:(id *)a4;
- (id)performTrialTask:(id)a3 outError:(id *)a4;
- (void)stop;
@end

@implementation _DPMLRuntimePlugin

- (id)performTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 parameters];
  v8 = [v7 stringValueForKey:@"namespaceID" defaultValue:&stru_10002DE40];
  [v6 setNamespaceIdentifier:v8];

  v9 = [v6 namespaceIdentifier];
  v10 = [v9 isEqualToString:&stru_10002DE40];

  if (v10)
  {
    v11 = +[_PFLLog extension];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001C948(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (a4)
    {
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = [v5 parameters];
    v21 = [v20 stringValueForKey:@"recipeURL" defaultValue:&stru_10002DE40];

    if ([v21 isEqualToString:&stru_10002DE40])
    {
      v22 = +[_PFLLog extension];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001C8D0(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      if (a4)
      {
        *a4 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v30 = [NSURL URLWithString:v21];
      [v6 setRecipeURL:v30];

      v31 = [objc_opt_class() performWithTrialClient:v6 outError:a4];
      if (v31)
      {
        v19 = [[MLRTaskResult alloc] initWithJSONResult:&__NSDictionary0__struct unprivatizedVector:0];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (id)performTrialTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = +[_PFLLog extension];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C9C0(v5, v6);
  }

  v7 = [[_DPMLRuntimeTrialClient alloc] initWithTask:v5 error:a4];
  if (v7)
  {
    v8 = [objc_opt_class() performWithTrialClient:v7 outError:a4];
  }

  else
  {
    v9 = +[_PFLLog extension];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001CA38();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)performWithTrialClient:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [v5 recipeURL];

  v7 = +[_PFLLog extension];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CA78();
    }

    v46 = 0;
    v9 = [_DPMLRuntimeRecipe recipeWithTrialClient:v5 error:&v46];
    v10 = v46;
    v11 = +[_PFLLog extension];
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001CAAC();
      }

      v13 = [v9 clientIdentifier];
      if ([v13 containsString:@"com.apple.insights.iconic-scenes"])
      {
        v14 = +[CLLocationManager locationServicesEnabled];

        if ((v14 & 1) == 0)
        {
          v15 = [v9 recipeIdentifier];
          v16 = [NSString stringWithFormat:@"Location service is not enabled for recipe: %@", v15];
          v17 = [_DPMLRuntimeError errorWithCode:300 description:v16];

          if (a4)
          {
            v18 = v17;
            *a4 = v17;
          }

          v19 = +[_PFLLog extension];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10001CAE0(v17, v19, v20, v21, v22, v23, v24, v25);
          }

          [_DPMLRuntimeTelemetry reportPluginForTrialClient:v5 withError:v17];
LABEL_22:
          v33 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      v45 = 0;
      v41 = [v9 runRecipeWithError:&v45];
      v42 = v45;
      if (v41)
      {
        v43 = +[_PFLLog extension];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          sub_10001CB4C(v41, v42, v43);
        }

        [_DPMLRuntimeTelemetry reportPluginSucceedForTrialClient:v5];
        v33 = objc_opt_new();
      }

      else
      {
        if (a4)
        {
          *a4 = [_DPMLRuntimeError errorWithCode:400 underlyingError:v42 description:@"Cannot record data"];
        }

        [_DPMLRuntimeTelemetry reportPluginForTrialClient:v5 withError:v42];
        v33 = 0;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001CC00(v10, v12, v34, v35, v36, v37, v38, v39);
    }

    if (a4)
    {
      v40 = v10;
      *a4 = v10;
    }

    [_DPMLRuntimeTelemetry reportPluginForTrialClient:v5 withError:v10];
    goto LABEL_22;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10001CC6C(v8, v26, v27, v28, v29, v30, v31, v32);
  }

  v10 = [_DPMLRuntimeError errorWithCode:100 description:@"Could not fetch recipeAttachment from Trial Client for registered namespaces"];
  [_DPMLRuntimeTelemetry reportPluginForTrialClient:v5 withError:v10];
  v33 = 0;
LABEL_33:

  return v33;
}

- (void)stop
{
  v2 = +[_PFLLog extension];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001CCE4();
  }
}

@end