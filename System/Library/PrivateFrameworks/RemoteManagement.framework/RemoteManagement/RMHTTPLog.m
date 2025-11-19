@interface RMHTTPLog
+ (id)_logDirectoryForEnrollmentToken:(id)a3;
+ (void)_writeRequestLogToURL:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7;
+ (void)logHTTPDetailsForEnrollmentToken:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7;
+ (void)logHTTPDetailsForEnrollmentToken:(id)a3 request:(id)a4 response:(id)a5 responseURL:(id)a6 responseError:(id)a7;
@end

@implementation RMHTTPLog

+ (void)logHTTPDetailsForEnrollmentToken:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[RMFeatureOverrides useHTTPLogging])
  {
    v16 = [a1 _logDirectoryForEnrollmentToken:v17];
    if (v16)
    {
      [a1 _writeRequestLogToURL:v16 request:v12 response:v13 responseData:v14 responseError:v15];
    }
  }
}

+ (void)logHTTPDetailsForEnrollmentToken:(id)a3 request:(id)a4 response:(id)a5 responseURL:(id)a6 responseError:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[RMFeatureOverrides useHTTPLogging])
  {
    v16 = [v14 absoluteString];
    v17 = [NSString stringWithFormat:@"Downloaded data to file: %@", v16];

    v18 = [v17 dataUsingEncoding:4];
    [a1 logHTTPDetailsForEnrollmentToken:v19 request:v12 response:v13 responseData:v18 responseError:v15];
  }
}

+ (void)_writeRequestLogToURL:(id)a3 request:(id)a4 response:(id)a5 responseData:(id)a6 responseError:(id)a7
{
  v11 = a3;
  v12 = a4;
  v70 = a5;
  v68 = a6;
  v69 = a7;
  v13 = objc_opt_new();
  v14 = [RMDateFormat stringLocalTimeZoneFractionalSecondsWithDate:v13];

  v71 = v12;
  v15 = [v12 HTTPMethod];
  v16 = [NSString stringWithFormat:@"%@-%@.txt", v14, v15];

  v17 = v11;
  v18 = [v11 URLByAppendingPathComponent:v16 isDirectory:0];
  for (i = 1; ; ++i)
  {
    v20 = +[NSFileManager defaultManager];
    v21 = [v18 path];
    v22 = [v20 fileExistsAtPath:v21];

    if (!v22 || (i - 1) > 0x63)
    {
      break;
    }

    v23 = [v71 HTTPMethod];
    v24 = [NSString stringWithFormat:@"%@-%@-%lu.txt", v14, v23, i];

    v25 = [v11 URLByAppendingPathComponent:v24 isDirectory:0];

    v18 = v25;
    v16 = v24;
  }

  v26 = +[NSFileManager defaultManager];
  v27 = [v18 path];
  v28 = [v26 createFileAtPath:v27 contents:0 attributes:0];

  if (v28)
  {
    v80[0] = 0;
    v29 = [NSFileHandle fileHandleForWritingToURL:v18 error:v80];
    v30 = v80[0];
    if (v29)
    {
      v31 = +[NSMutableArray array];
      [v31 addObject:@"<<<<< Request"];
      v65 = v30;
      v32 = [v71 HTTPMethod];
      v33 = [v71 URL];
      [v33 path];
      v34 = v67 = v29;
      v35 = [NSString stringWithFormat:@"%@ %@ HTTP/1.1", v32, v34];
      [v31 addObject:v35];

      v36 = [v71 allHTTPHeaderFields];
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10003E140;
      v78[3] = &unk_1000D2118;
      v37 = v31;
      v79 = v37;
      [v36 enumerateKeysAndObjectsUsingBlock:v78];

      [v37 addObject:@"\n"];
      v38 = [v37 componentsJoinedByString:@"\n"];
      v39 = [v38 dataUsingEncoding:4];
      v77 = 0;
      LOBYTE(v33) = [v67 writeData:v39 error:&v77];
      v40 = v77;

      v41 = v70;
      if ((v33 & 1) == 0)
      {
        v42 = +[RMLog httpLogging];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10003E3D0();
        }
      }

      v43 = [v71 HTTPBody];
      v66 = v43;
      if (v43)
      {
        v76 = 0;
        v44 = [v67 writeData:v43 error:&v76];
        v45 = v76;
        v46 = v40;
        v40 = v45;

        if ((v44 & 1) == 0)
        {
          v47 = +[RMLog httpLogging];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_10003E438();
          }
        }
      }

      v64 = v40;
      v48 = +[NSMutableArray array];

      [v48 addObject:@"\n>>>>> Response"];
      if (v70)
      {
        v49 = [v70 statusCode];
        v50 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [v70 statusCode]);
        v51 = [NSString stringWithFormat:@"HTTP/1.1 %ld %@", v49, v50];
        [v48 addObject:v51];

        v52 = [v70 allHeaderFields];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10003E1A8;
        v74[3] = &unk_1000D2118;
        v53 = v48;
        v75 = v53;
        [v52 enumerateKeysAndObjectsUsingBlock:v74];

        [v53 addObject:@"\n"];
      }

      else if (v69)
      {
        [v48 addObject:@"--- Error ---"];
        v56 = [v69 description];
        [v48 addObject:v56];
      }

      else
      {
        [v48 addObject:@"--- Unknown Error ---"];
      }

      v57 = [v48 componentsJoinedByString:@"\n"];
      v58 = [v57 dataUsingEncoding:4];
      v73 = 0;
      v59 = [v67 writeData:v58 error:&v73];
      v30 = v73;

      v55 = v68;
      if ((v59 & 1) == 0)
      {
        v60 = +[RMLog httpLogging];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_10003E4A0();
        }
      }

      if (v68)
      {
        v72 = 0;
        v29 = v67;
        v61 = [v67 writeData:v68 error:&v72];
        v62 = v72;

        if ((v61 & 1) == 0)
        {
          v63 = +[RMLog httpLogging];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_10003E508();
          }
        }

        v30 = v62;
        v41 = v70;
      }

      else
      {
        v29 = v67;
      }

      [v29 closeFile];
    }

    else
    {
      v48 = +[RMLog httpLogging];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10003E570();
      }

      v41 = v70;
      v55 = v68;
    }

    v54 = v69;
  }

  else
  {
    v29 = +[RMLog httpLogging];
    v54 = v69;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10003E358(v18, v29);
    }

    v30 = 0;
    v41 = v70;
    v55 = v68;
  }
}

+ (id)_logDirectoryForEnrollmentToken:(id)a3
{
  v3 = a3;
  v4 = [RMLocations httpLoggingDirectoryURLCreateIfNeeded:1];
  v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:1];

  v6 = +[NSFileManager defaultManager];
  v12 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v10 = +[RMLog httpLogging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003E5D8();
    }

    v9 = 0;
  }

  return v9;
}

@end