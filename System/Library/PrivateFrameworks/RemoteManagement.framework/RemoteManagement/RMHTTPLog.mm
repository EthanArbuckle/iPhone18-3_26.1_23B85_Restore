@interface RMHTTPLog
+ (id)_logDirectoryForEnrollmentToken:(id)token;
+ (void)_writeRequestLogToURL:(id)l request:(id)request response:(id)response responseData:(id)data responseError:(id)error;
+ (void)logHTTPDetailsForEnrollmentToken:(id)token request:(id)request response:(id)response responseData:(id)data responseError:(id)error;
+ (void)logHTTPDetailsForEnrollmentToken:(id)token request:(id)request response:(id)response responseURL:(id)l responseError:(id)error;
@end

@implementation RMHTTPLog

+ (void)logHTTPDetailsForEnrollmentToken:(id)token request:(id)request response:(id)response responseData:(id)data responseError:(id)error
{
  tokenCopy = token;
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  if (+[RMFeatureOverrides useHTTPLogging])
  {
    v16 = [self _logDirectoryForEnrollmentToken:tokenCopy];
    if (v16)
    {
      [self _writeRequestLogToURL:v16 request:requestCopy response:responseCopy responseData:dataCopy responseError:errorCopy];
    }
  }
}

+ (void)logHTTPDetailsForEnrollmentToken:(id)token request:(id)request response:(id)response responseURL:(id)l responseError:(id)error
{
  tokenCopy = token;
  requestCopy = request;
  responseCopy = response;
  lCopy = l;
  errorCopy = error;
  if (+[RMFeatureOverrides useHTTPLogging])
  {
    absoluteString = [lCopy absoluteString];
    v17 = [NSString stringWithFormat:@"Downloaded data to file: %@", absoluteString];

    v18 = [v17 dataUsingEncoding:4];
    [self logHTTPDetailsForEnrollmentToken:tokenCopy request:requestCopy response:responseCopy responseData:v18 responseError:errorCopy];
  }
}

+ (void)_writeRequestLogToURL:(id)l request:(id)request response:(id)response responseData:(id)data responseError:(id)error
{
  lCopy = l;
  requestCopy = request;
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  v13 = objc_opt_new();
  v14 = [RMDateFormat stringLocalTimeZoneFractionalSecondsWithDate:v13];

  v71 = requestCopy;
  hTTPMethod = [requestCopy HTTPMethod];
  v16 = [NSString stringWithFormat:@"%@-%@.txt", v14, hTTPMethod];

  v17 = lCopy;
  v18 = [lCopy URLByAppendingPathComponent:v16 isDirectory:0];
  for (i = 1; ; ++i)
  {
    v20 = +[NSFileManager defaultManager];
    path = [v18 path];
    v22 = [v20 fileExistsAtPath:path];

    if (!v22 || (i - 1) > 0x63)
    {
      break;
    }

    hTTPMethod2 = [v71 HTTPMethod];
    v24 = [NSString stringWithFormat:@"%@-%@-%lu.txt", v14, hTTPMethod2, i];

    v25 = [lCopy URLByAppendingPathComponent:v24 isDirectory:0];

    v18 = v25;
    v16 = v24;
  }

  v26 = +[NSFileManager defaultManager];
  path2 = [v18 path];
  v28 = [v26 createFileAtPath:path2 contents:0 attributes:0];

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
      hTTPMethod3 = [v71 HTTPMethod];
      v33 = [v71 URL];
      [v33 path];
      v34 = v67 = v29;
      v35 = [NSString stringWithFormat:@"%@ %@ HTTP/1.1", hTTPMethod3, v34];
      [v31 addObject:v35];

      allHTTPHeaderFields = [v71 allHTTPHeaderFields];
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10003E140;
      v78[3] = &unk_1000D2118;
      v37 = v31;
      v79 = v37;
      [allHTTPHeaderFields enumerateKeysAndObjectsUsingBlock:v78];

      [v37 addObject:@"\n"];
      v38 = [v37 componentsJoinedByString:@"\n"];
      v39 = [v38 dataUsingEncoding:4];
      v77 = 0;
      LOBYTE(v33) = [v67 writeData:v39 error:&v77];
      v40 = v77;

      v41 = responseCopy;
      if ((v33 & 1) == 0)
      {
        v42 = +[RMLog httpLogging];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10003E3D0();
        }
      }

      hTTPBody = [v71 HTTPBody];
      v66 = hTTPBody;
      if (hTTPBody)
      {
        v76 = 0;
        v44 = [v67 writeData:hTTPBody error:&v76];
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
      if (responseCopy)
      {
        statusCode = [responseCopy statusCode];
        v50 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [responseCopy statusCode]);
        v51 = [NSString stringWithFormat:@"HTTP/1.1 %ld %@", statusCode, v50];
        [v48 addObject:v51];

        allHeaderFields = [responseCopy allHeaderFields];
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10003E1A8;
        v74[3] = &unk_1000D2118;
        v53 = v48;
        v75 = v53;
        [allHeaderFields enumerateKeysAndObjectsUsingBlock:v74];

        [v53 addObject:@"\n"];
      }

      else if (errorCopy)
      {
        [v48 addObject:@"--- Error ---"];
        v56 = [errorCopy description];
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

      v55 = dataCopy;
      if ((v59 & 1) == 0)
      {
        v60 = +[RMLog httpLogging];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          sub_10003E4A0();
        }
      }

      if (dataCopy)
      {
        v72 = 0;
        v29 = v67;
        v61 = [v67 writeData:dataCopy error:&v72];
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
        v41 = responseCopy;
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

      v41 = responseCopy;
      v55 = dataCopy;
    }

    v54 = errorCopy;
  }

  else
  {
    v29 = +[RMLog httpLogging];
    v54 = errorCopy;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10003E358(v18, v29);
    }

    v30 = 0;
    v41 = responseCopy;
    v55 = dataCopy;
  }
}

+ (id)_logDirectoryForEnrollmentToken:(id)token
{
  tokenCopy = token;
  v4 = [RMLocations httpLoggingDirectoryURLCreateIfNeeded:1];
  v5 = [v4 URLByAppendingPathComponent:tokenCopy isDirectory:1];

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