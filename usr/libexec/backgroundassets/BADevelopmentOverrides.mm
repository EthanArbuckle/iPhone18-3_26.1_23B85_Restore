@interface BADevelopmentOverrides
+ (id)URLForApplicationRecord:(id)record;
@end

@implementation BADevelopmentOverrides

+ (id)URLForApplicationRecord:(id)record
{
  recordCopy = record;
  v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.backgroundassets.managed"];
  v5 = v4;
  if (!v4)
  {
    v7 = sub_1000104FC();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = "The Managed Background Assets defaults suite is unavailable.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_15;
  }

  v6 = [v4 URLForKey:@"MBAURLOverride"];
  v7 = sub_1000104FC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = "No development override is set.";
    goto LABEL_14;
  }

  if (v8)
  {
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A development-override URL, “%{public}@”, is set.", buf, 0xCu);
  }

  if ((os_variant_has_internal_content() & 1) != 0 || [recordCopy isProfileValidated] && !objc_msgSend(recordCopy, "isBeta"))
  {
    host = [v6 host];

    if (host)
    {
      v7 = v6;
LABEL_8:
      v10 = [recordCopy platform] - 1;
      if (v10 > 0xB)
      {
        v11 = 0;
      }

      else
      {
        v11 = off_10007A1C0[v10];
      }

      v19 = [NSURLComponents componentsWithURL:v7 resolvingAgainstBaseURL:1];
      [v19 setPath:@"/manifest"];
      v20 = [NSURLQueryItem queryItemWithName:@"platform" value:v11];
      v25 = v20;
      v21 = [NSArray arrayWithObjects:&v25 count:1];
      [v19 setQueryItems:v21];

      v13 = [v19 URL];

      goto LABEL_29;
    }

    v16 = sub_1000104FC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "The development-override URL “%{public}@” lacks a host component; reinterpreting it as a string and constructing a URL explicitly…", buf, 0xCu);
    }

    v7 = [v5 stringForKey:@"MBAURLOverride"];
    if (v7)
    {
      v17 = [NSURL URLWithString:v7];

      if (v17)
      {
        host2 = [v17 host];

        if (host2)
        {

          v7 = v17;
          goto LABEL_8;
        }

        v24 = sub_1000104FC();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "The development-override URL “%{public}@” lacks a host component.", buf, 0xCu);
        }

        v6 = v17;
      }

      else
      {
        v6 = sub_1000104FC();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v27 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "The string “%{public}@” couldn’t be converted into a URL.", buf, 0xCu);
        }
      }
    }

    else
    {
      v23 = sub_1000104FC();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "The the development-override URL’s value couldn’t be interpreted as a string.", buf, 2u);
      }
    }

LABEL_15:
    v13 = 0;
    goto LABEL_29;
  }

  v14 = sub_1000104FC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    applicationIdentifier = [recordCopy applicationIdentifier];
    *buf = 138543362;
    v27 = applicationIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Development overrides aren’t permitted for the application with the identifier “%{public}@”.", buf, 0xCu);
  }

  v13 = 0;
  v7 = v6;
LABEL_29:

  return v13;
}

@end