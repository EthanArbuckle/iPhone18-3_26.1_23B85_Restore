@interface _DPMLRuntimePlugin
+ (id)performWithTrialClient:(id)client outError:(id *)error;
- (id)performTask:(id)task outError:(id *)error;
- (id)performTrialTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation _DPMLRuntimePlugin

- (id)performTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v6 = objc_opt_new();
  parameters = [taskCopy parameters];
  v8 = [parameters stringValueForKey:@"namespaceID" defaultValue:&stru_10002D560];
  [v6 setNamespaceIdentifier:v8];

  namespaceIdentifier = [v6 namespaceIdentifier];
  v10 = [namespaceIdentifier isEqualToString:&stru_10002D560];

  if (v10)
  {
    v11 = +[_PFLLog extension];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001C8C4(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    parameters2 = [taskCopy parameters];
    v21 = [parameters2 stringValueForKey:@"recipeURL" defaultValue:&stru_10002D560];

    if ([v21 isEqualToString:&stru_10002D560])
    {
      v22 = +[_PFLLog extension];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001C84C(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      if (error)
      {
        *error = v19 = 0;
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

      v31 = [objc_opt_class() performWithTrialClient:v6 outError:error];
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

- (id)performTrialTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v6 = +[_PFLLog extension];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C93C(taskCopy, v6);
  }

  v7 = [[_DPMLRuntimeTrialClient alloc] initWithTask:taskCopy error:error];
  if (v7)
  {
    v8 = [objc_opt_class() performWithTrialClient:v7 outError:error];
  }

  else
  {
    v9 = +[_PFLLog extension];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001C9B4();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)performWithTrialClient:(id)client outError:(id *)error
{
  clientCopy = client;
  recipeURL = [clientCopy recipeURL];

  v7 = +[_PFLLog extension];
  v8 = v7;
  if (recipeURL)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001C9F4();
    }

    v46 = 0;
    v9 = [_DPMLRuntimeRecipe recipeWithTrialClient:clientCopy error:&v46];
    v10 = v46;
    v11 = +[_PFLLog extension];
    v12 = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001CA28();
      }

      clientIdentifier = [v9 clientIdentifier];
      if ([clientIdentifier containsString:@"com.apple.insights.iconic-scenes"])
      {
        v14 = +[CLLocationManager locationServicesEnabled];

        if ((v14 & 1) == 0)
        {
          recipeIdentifier = [v9 recipeIdentifier];
          v16 = [NSString stringWithFormat:@"Location service is not enabled for recipe: %@", recipeIdentifier];
          v17 = [_DPMLRuntimeError errorWithCode:300 description:v16];

          if (error)
          {
            v18 = v17;
            *error = v17;
          }

          v19 = +[_PFLLog extension];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10001CA5C(v17, v19, v20, v21, v22, v23, v24, v25);
          }

          [_DPMLRuntimeTelemetry reportPluginForTrialClient:clientCopy withError:v17];
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
          sub_10001CAC8(v41, v42, v43);
        }

        [_DPMLRuntimeTelemetry reportPluginSucceedForTrialClient:clientCopy];
        v33 = objc_opt_new();
      }

      else
      {
        if (error)
        {
          *error = [_DPMLRuntimeError errorWithCode:400 underlyingError:v42 description:@"Cannot record data"];
        }

        [_DPMLRuntimeTelemetry reportPluginForTrialClient:clientCopy withError:v42];
        v33 = 0;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001CB7C(v10, v12, v34, v35, v36, v37, v38, v39);
    }

    if (error)
    {
      v40 = v10;
      *error = v10;
    }

    [_DPMLRuntimeTelemetry reportPluginForTrialClient:clientCopy withError:v10];
    goto LABEL_22;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10001CBE8(v8, v26, v27, v28, v29, v30, v31, v32);
  }

  v10 = [_DPMLRuntimeError errorWithCode:100 description:@"Could not fetch recipeAttachment from Trial Client for registered namespaces"];
  [_DPMLRuntimeTelemetry reportPluginForTrialClient:clientCopy withError:v10];
  v33 = 0;
LABEL_33:

  return v33;
}

- (void)stop
{
  v2 = +[_PFLLog extension];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001CC60();
  }
}

@end