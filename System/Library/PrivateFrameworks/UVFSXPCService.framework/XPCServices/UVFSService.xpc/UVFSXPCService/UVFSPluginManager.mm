@interface UVFSPluginManager
+ (id)getSupportedFilesystems;
+ (id)getUVFSPluginForFS:(id)s withError:(id *)error;
@end

@implementation UVFSPluginManager

+ (id)getSupportedFilesystems
{
  v2 = [[NSMutableArray alloc] initWithCapacity:6];
  v3 = [NSArray arrayWithContentsOfFile:@"/System/Library/PrivateFrameworks/UserFS.framework/PlugIns/knownPlugins.plist"];
  [v2 addObjectsFromArray:v3];

  v4 = [NSArray arrayWithContentsOfFile:@"/AppleInternal/Library/Frameworks/UserFSInternal.framework/PlugIns/knownPlugins.internal.plist"];
  [v2 addObjectsFromArray:v4];

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E3EC();
  }

  if ([v2 count])
  {
    v5 = v2;
  }

  else
  {
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001E42C();
    }

    v5 = &off_1000399F0;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E468();
  }

  return v5;
}

+ (id)getUVFSPluginForFS:(id)s withError:(id *)error
{
  sCopy = s;
  v6 = +[UVFSPluginManager getSupportedFilesystems];
  if (error)
  {
    *error = 0;
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E4D0();
  }

  if ([v6 containsObject:sCopy])
  {
    v7 = qword_10003FDF0;
    if (!qword_10003FDF0)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E5C8();
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001CC4;
      block[3] = &unk_100038668;
      v18 = v6;
      if (qword_10003FDF8 != -1)
      {
        dispatch_once(&qword_10003FDF8, block);
      }

      v7 = qword_10003FDF0;
    }

    v8 = [v7 objectForKeyedSubscript:sCopy];

    v9 = os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v9)
      {
        sub_10001E630();
      }

      v10 = [qword_10003FDF0 objectForKeyedSubscript:sCopy];
      [(UVFSPlugin *)v10 takeAReference];
    }

    else
    {
      if (v9)
      {
        sub_10001E698();
      }

      v10 = [[UVFSPlugin alloc] initWithFSName:sCopy andWithError:error];
      [qword_10003FDF0 setObject:v10 forKeyedSubscript:sCopy];
    }

    v12 = userfs_log_default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = [qword_10003FDF0 objectForKeyedSubscript:sCopy];
      v15 = v14;
      if (error)
      {
        v16 = *error;
      }

      else
      {
        v16 = 0;
      }

      *buf = 138412802;
      v20 = sCopy;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v16;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "getUVFSPluginForFS:finish:%@:%@:%@", buf, 0x20u);
    }

    v11 = [qword_10003FDF0 objectForKeyedSubscript:sCopy];
  }

  else
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001E558();
    }

    v11 = 0;
  }

  return v11;
}

@end