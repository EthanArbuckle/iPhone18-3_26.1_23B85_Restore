@interface DEPowerlogEPLExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)generateBatteryUIPlistFile;
- (id)getArchives;
- (id)getBatteryUIPlists;
- (id)getPowerlog;
- (id)getQuarantinedPowerlogs;
- (id)getTimestampString:(id)string;
- (id)getUpgradeLogs;
@end

@implementation DEPowerlogEPLExtension

- (id)getTimestampString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSDateFormatter);
  v5 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setDateFormat:@"yyyy-MM-dd-HH-mm"];
  v6 = +[NSTimeZone systemTimeZone];
  [v4 setTimeZone:v6];

  v7 = [v5 objectForKey:NSLocaleCalendar];
  [v4 setCalendar:v7];

  [v4 setLocale:v5];
  v8 = [v4 stringFromDate:stringCopy];

  return v8;
}

- (id)getBatteryUIPlists
{
  v14 = @"folder";
  v3 = NSTemporaryDirectory();
  v15 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"^(%@)", @"BatteryUI", v14];
    v9 = [NSRegularExpression regularExpressionWithPattern:v8 options:1 error:0];
    v10 = [v6 objectForKeyedSubscript:@"folder"];
    v11 = [NSURL fileURLWithPath:v10];
    v12 = [(DEPowerlogEPLExtension *)self filesInDir:v11 matchingPattern:v9 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002D70();
    }

    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)getUpgradeLogs
{
  v14 = @"folder";
  v3 = NSTemporaryDirectory();
  v15 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"^(%@_)", @"UpgradeLogs", v14];
    v9 = [NSRegularExpression regularExpressionWithPattern:v8 options:1 error:0];
    v10 = [v6 objectForKeyedSubscript:@"folder"];
    v11 = [NSURL fileURLWithPath:v10];
    v12 = [(DEPowerlogEPLExtension *)self filesInDir:v11 matchingPattern:v9 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002DE0();
    }

    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (id)generateBatteryUIPlistFile
{
  PLTalkToPowerlogHelper();
  v3 = PLQueryRegistered();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"PLBatteryUIQueryTime"];
    [v5 doubleValue];
    v6 = [NSDate dateWithTimeIntervalSince1970:?];

    if (v6)
    {
      v7 = [(DEPowerlogEPLExtension *)self getTimestampString:v6];
      v8 = [NSString stringWithFormat:@"/tmp/BatteryUI-EPL-%@.plist", v7];
      v9 = [v4 writeToFile:v8 atomically:1];
      v10 = PLLogDE();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100002EC0();
        }

        PLTalkToPowerlogHelper();
        v12 = v8;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100002E50();
        }

        PLTalkToPowerlogHelper();
        v12 = 0;
      }
    }

    else
    {
      v14 = PLLogDE();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100002F28();
      }

      PLTalkToPowerlogHelper();
      v12 = 0;
    }
  }

  else
  {
    v13 = PLLogDE();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100002F68();
    }

    PLTalkToPowerlogHelper();
    v12 = 0;
  }

  return v12;
}

- (id)getArchives
{
  v15 = @"folder";
  v3 = NSTemporaryDirectory();
  v16 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"%@%@", @".PLSQL", @".gz"];
    v9 = [NSString stringWithFormat:@"(%@)$", v8];
    v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:0];
    v11 = [v6 objectForKeyedSubscript:@"folder"];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [(DEPowerlogEPLExtension *)self filesInDir:v12 matchingPattern:v10 excludingPattern:0];
  }

  else
  {
    v8 = PLLogDE();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100002FA8();
    }

    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)getPowerlog
{
  v6 = @"folder";
  v2 = NSTemporaryDirectory();
  v7 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  v4 = PLQueryRegistered();

  return v4;
}

- (id)getQuarantinedPowerlogs
{
  v15 = @"folder";
  v3 = NSTemporaryDirectory();
  v16 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];

  v5 = PLQueryRegistered();
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"folder"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [NSString stringWithFormat:@"%@", @".PLSQL", v15];
    v9 = [NSString stringWithFormat:@"(%@)$", v8];
    v10 = [NSRegularExpression regularExpressionWithPattern:v9 options:1 error:0];
    v11 = [v6 objectForKeyedSubscript:@"folder"];
    v12 = [NSURL fileURLWithPath:v11];
    v13 = [(DEPowerlogEPLExtension *)self filesInDir:v12 matchingPattern:v10 excludingPattern:0];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  return v13;
}

- (id)attachmentsForParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  getPowerlog = [(DEPowerlogEPLExtension *)self getPowerlog];
  v6 = PLLogDE();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003018();
  }

  if (getPowerlog)
  {
    v7 = [getPowerlog objectForKeyedSubscript:@"path"];

    if (v7)
    {
      v8 = [getPowerlog objectForKeyedSubscript:@"path"];
      v9 = [DEAttachmentItem attachmentWithPath:v8];

      [v9 setDeleteOnAttach:&__kCFBooleanTrue];
      [v9 setShouldCompress:&__kCFBooleanTrue];
      [v4 addObject:v9];
    }
  }

  v10 = PLLogDE();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100003080();
  }

  v55 = getPowerlog;

  getQuarantinedPowerlogs = [(DEPowerlogEPLExtension *)self getQuarantinedPowerlogs];
  v12 = PLLogDE();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000030E8();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v13 = getQuarantinedPowerlogs;
  v14 = [v13 countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v69;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v69 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v68 + 1) + 8 * i);
        [v18 setDeleteOnAttach:&__kCFBooleanTrue];
        [v18 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v68 objects:v79 count:16];
    }

    while (v15);
  }

  v19 = PLLogDE();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100003150();
  }

  getArchives = [(DEPowerlogEPLExtension *)self getArchives];
  v21 = PLLogDE();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000031B8();
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v22 = getArchives;
  v23 = [v22 countByEnumeratingWithState:&v64 objects:v78 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v65;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v65 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v64 + 1) + 8 * j);
        [v27 setDeleteOnAttach:&__kCFBooleanTrue];
        [v27 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v64 objects:v78 count:16];
    }

    while (v24);
  }

  v28 = PLLogDE();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_100003220();
  }

  generateBatteryUIPlistFile = [(DEPowerlogEPLExtension *)self generateBatteryUIPlistFile];
  v30 = PLLogDE();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_100003288();
  }

  if (generateBatteryUIPlistFile)
  {
    v31 = [DEAttachmentItem attachmentWithPath:generateBatteryUIPlistFile];
    [v31 setDeleteOnAttach:&__kCFBooleanTrue];
    [v31 setShouldCompress:&__kCFBooleanTrue];
    [v4 addObject:v31];
  }

  v32 = PLLogDE();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1000032F0();
  }

  v54 = generateBatteryUIPlistFile;

  getBatteryUIPlists = [(DEPowerlogEPLExtension *)self getBatteryUIPlists];
  v34 = PLLogDE();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    sub_100003358();
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v35 = getBatteryUIPlists;
  v36 = [v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v61;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v60 + 1) + 8 * k);
        [v40 setDeleteOnAttach:{&__kCFBooleanTrue, v54, v55}];
        [v40 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v40];
      }

      v37 = [v35 countByEnumeratingWithState:&v60 objects:v77 count:16];
    }

    while (v37);
  }

  v41 = PLLogDE();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    sub_1000033C0();
  }

  getUpgradeLogs = [(DEPowerlogEPLExtension *)self getUpgradeLogs];
  v43 = PLLogDE();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    sub_100003428();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v44 = getUpgradeLogs;
  v45 = [v44 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v57;
    do
    {
      for (m = 0; m != v46; m = m + 1)
      {
        if (*v57 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v56 + 1) + 8 * m);
        [v49 setDeleteOnAttach:{&__kCFBooleanTrue, v54}];
        [v49 setShouldCompress:&__kCFBooleanTrue];
        [v4 addObject:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v46);
  }

  v50 = PLLogDE();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    sub_100003490();
  }

  v51 = PLLogDE();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v4 count];
    *buf = 134218242;
    v73 = v52;
    v74 = 2112;
    v75 = v4;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Attachment contents are %lu and as follows - %@", buf, 0x16u);
  }

  return v4;
}

@end