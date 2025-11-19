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
  v8 = [v7 stringValueForKey:@"namespaceID" defaultValue:&stru_100031E10];
  [v6 setNamespaceIdentifier:v8];

  v9 = [v6 namespaceIdentifier];
  v10 = [v9 isEqualToString:&stru_100031E10];

  if (v10)
  {
    v11 = +[_PFLLog extension];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10001CCA4(v11, v12, v13, v14, v15, v16, v17, v18);
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
    v21 = [v20 stringValueForKey:@"recipeURL" defaultValue:&stru_100031E10];

    if ([v21 isEqualToString:&stru_100031E10])
    {
      v22 = +[_PFLLog extension];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10001CC2C(v22, v23, v24, v25, v26, v27, v28, v29);
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
    sub_10001CD1C();
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
      sub_10001CD8C();
    }

    v8 = 0;
  }

  return v8;
}

+ (id)performWithTrialClient:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [v6 recipeURL];

  v8 = +[_PFLLog extension];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CDCC();
    }

    v53 = 0;
    v10 = [_DPMLRuntimeRecipe recipeWithTrialClient:v6 error:&v53];
    v11 = v53;
    v12 = +[_PFLLog extension];
    v13 = v12;
    if (!v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10001CFA0();
      }

      if (a4)
      {
        v28 = v11;
        *a4 = v11;
      }

      [_DPMLRuntimeTelemetry reportPluginForTrialClient:v6 withError:v11];
      goto LABEL_22;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CE08();
    }

    v14 = [v10 clientIdentifier];
    if ([v14 containsString:@"com.apple.insights.iconic-scenes"])
    {
      v15 = +[CLLocationManager locationServicesEnabled];

      if ((v15 & 1) == 0)
      {
        v16 = [v10 recipeIdentifier];
        v17 = [NSString stringWithFormat:@"Location service is not enabled for recipe: %@", v16];
        v18 = [_DPMLRuntimeError errorWithCode:300 description:v17];

        if (a4)
        {
          v19 = v18;
          *a4 = v18;
        }

        v20 = +[_PFLLog extension];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10001CE44();
        }

        [_DPMLRuntimeTelemetry reportPluginForTrialClient:v6 withError:v18];
LABEL_22:
        v4 = 0;
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
    }

    v29 = [v10 clientIdentifier];
    v30 = [v29 containsString:@"com.apple.insights.wallet-fairness"];

    if (!v30)
    {
LABEL_35:
      v44 = 0;
      v39 = [v10 runRecipeWithError:&v44];
      v40 = v44;
      if (v39)
      {
        v41 = +[_PFLLog extension];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_10001CEE8(v39, v40, v41);
        }

        [_DPMLRuntimeTelemetry reportPluginSucceedForTrialClient:v6];
        v4 = objc_opt_new();
      }

      else
      {
        if (a4)
        {
          *a4 = [_DPMLRuntimeError errorWithCode:400 underlyingError:v40 description:@"Cannot record data"];
        }

        [_DPMLRuntimeTelemetry reportPluginForTrialClient:v6 withError:v40];
        v4 = 0;
      }

      goto LABEL_43;
    }

    v31 = +[_PFLLog extension];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_10001CEAC();
    }

    v32 = objc_alloc_init(CIDVUIIdentityProofingDataSharingFlowManager);
    v49 = 0;
    v50 = &v49;
    v51 = *"";
    v52 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100011EEC;
    v46[3] = &unk_100030880;
    v48 = &v49;
    v33 = dispatch_semaphore_create(0);
    v47 = v33;
    [v32 fetchUserConsent:v46];
    v34 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v33, v34))
    {
      v35 = [NSString stringWithFormat:@"User consent check failed after %u seconds", 15];
      v36 = +[_PFLLog extension];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10001CE44();
      }

      v37 = [_DPMLRuntimeError errorWithCode:300 description:v35];
      [_DPMLRuntimeTelemetry reportPluginForTrialClient:v6 withError:v37];

      v4 = objc_opt_new();
    }

    else
    {
      if (v50[3])
      {
        v38 = 1;
LABEL_34:

        _Block_object_dispose(&v49, 8);
        if ((v38 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      v43 = +[_PFLLog extension];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "User does not have consent for Mead use-case.", buf, 2u);
      }

      [_DPMLRuntimeTelemetry reportPluginSucceedForTrialClient:v6];
      v4 = objc_opt_new();
    }

    v38 = 0;
    goto LABEL_34;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001D008(v9, v21, v22, v23, v24, v25, v26, v27);
  }

  v11 = [_DPMLRuntimeError errorWithCode:100 description:@"Could not fetch recipeAttachment from Trial Client for registered namespaces"];
  [_DPMLRuntimeTelemetry reportPluginForTrialClient:v6 withError:v11];
  v4 = 0;
LABEL_44:

  return v4;
}

- (void)stop
{
  v2 = +[_PFLLog extension];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D0F0();
  }
}

@end