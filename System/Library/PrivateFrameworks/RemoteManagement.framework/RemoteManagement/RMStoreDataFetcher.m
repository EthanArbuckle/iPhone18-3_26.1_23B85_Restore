@interface RMStoreDataFetcher
- (BOOL)_moveDownloadedFile:(id)a3 downloadURL:(id)a4 error:(id *)a5;
- (BOOL)_validateResponseForURL:(id)a3 statusCode:(id)a4 headers:(id)a5 fetchedData:(id)a6 downloadURL:(id)a7 error:(id *)a8;
- (id)_createRequestWithURL:(id)a3 additionalHeaders:(id)a4;
- (id)_dataTaskWithURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5;
- (id)_dictionaryForResponse:(id)a3 downloadedData:(id)a4 downloadedURL:(id)a5;
- (id)_downloadTaskWithURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5;
- (id)_makeSession;
- (id)_userAgent;
- (void)_downloadDataAtURL:(id)a3 downloadURL:(id)a4 additionalHeaders:(id)a5 completionHandler:(id)a6;
- (void)_downloadMDMDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5;
- (void)_fetchDataAtURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5;
- (void)_fetchMDMDataAtURL:(id)a3 completionHandler:(id)a4;
- (void)_processDataResponseWithURL:(id)a3 response:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)_processDownloadResponseWithURL:(id)a3 downloadURL:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)downloadResponseDataAtURL:(id)a3 downloadURL:(id)a4 extensionToken:(id)a5 useDDM:(BOOL)a6 additionalHeaders:(id)a7 completionHandler:(id)a8;
- (void)fetchResponseDataAtURL:(id)a3 useDDM:(BOOL)a4 additionalHeaders:(id)a5 completionHandler:(id)a6;
@end

@implementation RMStoreDataFetcher

- (void)fetchResponseDataAtURL:(id)a3 useDDM:(BOOL)a4 additionalHeaders:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[RMLog storeDataFetcher];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100083DA0();
  }

  if (([RMStoreUtility isValidURL:v10]& 1) != 0)
  {
    if (v8 && ([v10 scheme], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "caseInsensitiveCompare:", @"https"), v14, !v15))
    {
      [(RMStoreDataFetcher *)self _fetchMDMDataAtURL:v10 completionHandler:v12];
    }

    else
    {
      [(RMStoreDataFetcher *)self _fetchDataAtURL:v10 additionalHeaders:v11 completionHandler:v12];
    }
  }

  else
  {
    v16 = [RMErrorUtilities createAssetInvalidURLError:v10];
    v17 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100083E08();
    }

    v12[2](v12, 0, v16);
  }
}

- (void)downloadResponseDataAtURL:(id)a3 downloadURL:(id)a4 extensionToken:(id)a5 useDDM:(BOOL)a6 additionalHeaders:(id)a7 completionHandler:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = +[RMLog storeDataFetcher];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100083FDC();
  }

  if (([RMStoreUtility isValidURL:v14]& 1) == 0)
  {
    v25 = [RMErrorUtilities createAssetInvalidURLError:v14];
    v26 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100084044();
    }

    goto LABEL_13;
  }

  if (v16)
  {
    v20 = [RMSandbox consumeToken:v16];
    v21 = +[RMLog storeDataFetcher];
    v22 = v21;
    if (v20 != -1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100083E7C();
      }

      if (v10)
      {
        goto LABEL_9;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100083EE4();
    }

    v25 = +[RMErrorUtilities createInternalError];
LABEL_13:
    v18[2](v18, 0, v25);

    goto LABEL_20;
  }

  v20 = -1;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_9:
  v23 = [v14 scheme];
  v24 = [v23 caseInsensitiveCompare:@"https"] == 0;

LABEL_16:
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000824B4;
  v37[3] = &unk_1000D3078;
  v41 = v24;
  v37[4] = self;
  v27 = v15;
  v38 = v27;
  v40 = v20;
  v39 = v18;
  v28 = objc_retainBlock(v37);
  v29 = v28;
  if (v24)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000825DC;
    v35[3] = &unk_1000D30A0;
    v30 = &v36;
    v36 = v28;
    v31 = v28;
    [(RMStoreDataFetcher *)self _downloadMDMDataAtURL:v14 downloadURL:v27 completionHandler:v35];
  }

  else
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000825EC;
    v33[3] = &unk_1000D30A0;
    v30 = &v34;
    v34 = v28;
    v32 = v28;
    [(RMStoreDataFetcher *)self _downloadDataAtURL:v14 downloadURL:v27 additionalHeaders:v17 completionHandler:v33];
  }

LABEL_20:
}

- (id)_makeSession
{
  v2 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v3 = [NSURLSession sessionWithConfiguration:v2 delegate:0 delegateQueue:0];

  return v3;
}

- (void)_fetchMDMDataAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100082740;
  v9[3] = &unk_1000D30C8;
  v10 = os_transaction_create();
  v11 = v5;
  v7 = v10;
  v8 = v5;
  [RMMCAdapter fetchDataAtURL:v6 completionHandler:v9];
}

- (void)_fetchDataAtURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = os_transaction_create();
  v12 = [(RMStoreDataFetcher *)self _makeSession];
  [(RMStoreDataFetcher *)self setURLSession:v12];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000828D0;
  v18[3] = &unk_1000D30F0;
  v13 = v8;
  v19 = v13;
  v14 = v9;
  v21 = v14;
  v15 = v11;
  v20 = v15;
  v16 = [(RMStoreDataFetcher *)self _dataTaskWithURL:v13 additionalHeaders:v10 completionHandler:v18];

  v17 = +[RMLog storeDataFetcher];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100084128();
  }

  [v16 resume];
}

- (id)_dataTaskWithURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(RMStoreDataFetcher *)self _createRequestWithURL:a3 additionalHeaders:a4];
  v10 = [(RMStoreDataFetcher *)self URLSession];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100082A80;
  v14[3] = &unk_1000D3118;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  v12 = [v10 dataTaskWithRequest:v9 completionHandler:v14];

  return v12;
}

- (void)_processDataResponseWithURL:(id)a3 response:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = a6;
    v14 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000842DC();
    }

    v15 = v12;
    v16 = 0;
  }

  else
  {
    v17 = HTTPResponseKeyBody;
    v18 = a6;
    v19 = [v11 objectForKeyedSubscript:v17];
    v20 = [v11 objectForKeyedSubscript:HTTPResponseKeyStatusCode];
    v21 = [v11 objectForKeyedSubscript:HTTPResponseKeyHeaders];
    v29 = 0;
    v22 = [(RMStoreDataFetcher *)self _validateResponseForURL:v10 statusCode:v20 headers:v21 fetchedData:v19 downloadURL:0 error:&v29];
    v23 = v29;

    if (v22)
    {
      v24 = +[RMLog storeDataFetcher];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100084404(v10);
      }

      v15 = 0;
      v25 = v19;
      v16 = v19;
    }

    else
    {
      v26 = [v23 code];
      v24 = +[RMLog storeDataFetcher];
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v26 == 1000)
      {
        if (v27)
        {
          sub_100072FDC();
        }
      }

      else if (v27)
      {
        sub_100084370();
      }

      v16 = 0;
      v25 = v23;
      v15 = v23;
    }

    v28 = v25;
  }

  (*(a6 + 2))(a6, v16, v15);
}

- (void)_downloadMDMDataAtURL:(id)a3 downloadURL:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082E54;
  v12[3] = &unk_1000D30C8;
  v13 = os_transaction_create();
  v14 = v7;
  v10 = v13;
  v11 = v7;
  [RMMCAdapter downloadDataAtURL:v9 downloadURL:v8 completionHandler:v12];
}

- (void)_downloadDataAtURL:(id)a3 downloadURL:(id)a4 additionalHeaders:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = os_transaction_create();
  v13 = [(RMStoreDataFetcher *)self _makeSession];
  [(RMStoreDataFetcher *)self setURLSession:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100082FE4;
  v19[3] = &unk_1000D30F0;
  v14 = v9;
  v20 = v14;
  v15 = v10;
  v22 = v15;
  v16 = v12;
  v21 = v16;
  v17 = [(RMStoreDataFetcher *)self _downloadTaskWithURL:v14 additionalHeaders:v11 completionHandler:v19];

  v18 = +[RMLog storeDataFetcher];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100084490();
  }

  [v17 resume];
}

- (id)_downloadTaskWithURL:(id)a3 additionalHeaders:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(RMStoreDataFetcher *)self _createRequestWithURL:a3 additionalHeaders:a4];
  v10 = [(RMStoreDataFetcher *)self URLSession];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100083194;
  v14[3] = &unk_1000D3140;
  v14[4] = self;
  v15 = v8;
  v11 = v8;
  v12 = [v10 downloadTaskWithRequest:v9 completionHandler:v14];

  return v12;
}

- (BOOL)_moveDownloadedFile:(id)a3 downloadURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = HTTPResponseKeyStatusCode;
  v9 = a3;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 integerValue];

  v12 = [v9 objectForKeyedSubscript:HTTPResponseKeyDownloadURL];

  if (v12)
  {
    v13 = +[NSFileManager defaultManager];
    v35 = 0;
    v14 = [v13 removeItemAtURL:v7 error:&v35];
    v15 = v35;

    if (v14)
    {
      v16 = +[RMLog storeDataFetcher];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1000846D8(v7);
      }

      goto LABEL_6;
    }

    v24 = [v15 domain];
    if ([v24 isEqualToString:NSCocoaErrorDomain])
    {
      v25 = [v15 code];

      if (v25 == 4)
      {
LABEL_6:
        v17 = +[NSFileManager defaultManager];
        v34 = v15;
        v18 = [v17 moveItemAtURL:v12 toURL:v7 error:&v34];
        v19 = v34;

        v20 = +[RMLog storeDataFetcher];
        v21 = v20;
        if (v18)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_100084764();
          }

          v22 = 1;
          goto LABEL_33;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v32 = [v12 path];
          v33 = [v7 path];
          *buf = 138543874;
          v37 = v32;
          v38 = 2114;
          v39 = v33;
          v40 = 2114;
          v41 = v19;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to relocate downloaded asset file from %{public}@ to %{public}@: %{public}@", buf, 0x20u);
        }

        if (a5)
        {
          v26 = [RMErrorUtilities createAssetCannotProcessFileErrorWithUnderlyingError:v19];
          v21 = v26;
          if (v26)
          {
            v27 = v26;
            v22 = 0;
            *a5 = v21;
          }

          else
          {
            v22 = 0;
          }

LABEL_33:
          v15 = v19;
LABEL_34:

          goto LABEL_35;
        }

        v22 = 0;
        v15 = v19;
LABEL_35:

        goto LABEL_36;
      }
    }

    else
    {
    }

    v28 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100084644();
    }

    if (a5)
    {
      v29 = [RMErrorUtilities createAssetCannotProcessFileErrorWithUnderlyingError:v15];
      v21 = v29;
      if (v29)
      {
        v30 = v29;
        v22 = 0;
        *a5 = v21;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_34;
    }

    v22 = 0;
    goto LABEL_35;
  }

  if (a5)
  {
    v23 = [RMErrorUtilities createHTTPErrorWithStatusCode:v11 reason:&stru_1000D3680];
    if (v23)
    {
      v23 = v23;
      *a5 = v23;
    }
  }

  v22 = 0;
LABEL_36:

  return v22;
}

- (void)_processDownloadResponseWithURL:(id)a3 downloadURL:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = a7;
    v17 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10008480C();
    }

    v18 = [RMErrorUtilities createAssetCannotBeDownloadedErrorWithUnderlyingError:v15];
  }

  else
  {
    v19 = HTTPResponseKeyStatusCode;
    v20 = a7;
    v21 = [v14 objectForKeyedSubscript:v19];
    v22 = [v14 objectForKeyedSubscript:HTTPResponseKeyHeaders];
    v29 = 0;
    v23 = [(RMStoreDataFetcher *)self _validateResponseForURL:v12 statusCode:v21 headers:v22 fetchedData:0 downloadURL:v13 error:&v29];
    v24 = v29;

    if (v23)
    {
      v25 = +[RMLog storeDataFetcher];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        sub_1000848A0();
      }

      v18 = 0;
    }

    else
    {
      v26 = [v24 code];
      v27 = +[RMLog storeDataFetcher];
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26 == 1000)
      {
        if (v28)
        {
          sub_100072FDC();
        }
      }

      else if (v28)
      {
        sub_100084370();
      }

      v18 = v24;
    }
  }

  (*(a7 + 2))(a7, v18);
}

- (id)_dictionaryForResponse:(id)a3 downloadedData:(id)a4 downloadedURL:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [NSMutableDictionary dictionaryWithCapacity:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 statusCode]);
    [v10 setObject:v12 forKeyedSubscript:HTTPResponseKeyStatusCode];

    v13 = [v11 allHeaderFields];

    [v10 setObject:v13 forKeyedSubscript:HTTPResponseKeyHeaders];
  }

  else
  {
    [v10 setObject:&off_1000D6F28 forKeyedSubscript:HTTPResponseKeyStatusCode];
    [v10 setObject:&__NSDictionary0__struct forKeyedSubscript:HTTPResponseKeyHeaders];
  }

  [v10 setObject:v9 forKeyedSubscript:HTTPResponseKeyBody];

  [v10 setObject:v8 forKeyedSubscript:HTTPResponseKeyDownloadURL];
  v14 = [v10 copy];

  return v14;
}

- (id)_createRequestWithURL:(id)a3 additionalHeaders:(id)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = [a4 mutableCopy];
  }

  else
  {
    v9 = a3;
    v8 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v10 = v8;
  v11 = [(RMStoreDataFetcher *)self _userAgent];
  [v10 setObject:v11 forKeyedSubscript:@"User-Agent"];

  v12 = [NSMutableURLRequest requestWithURL:a3];

  [v12 setAllHTTPHeaderFields:v10];

  return v12;
}

- (id)_userAgent
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083AE4;
  block[3] = &unk_1000D0F50;
  block[4] = self;
  if (qword_1000E6B70 != -1)
  {
    dispatch_once(&qword_1000E6B70, block);
  }

  return qword_1000E6B68;
}

- (BOOL)_validateResponseForURL:(id)a3 statusCode:(id)a4 headers:(id)a5 fetchedData:(id)a6 downloadURL:(id)a7 error:(id *)a8
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = +[RMLog storeDataFetcher];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100084948(v12);
  }

  v17 = [v15 integerValue];
  v18 = (v17 - 600);
  if ((v17 - 600) >= 0xFFFFFFFFFFFFFF38)
  {
    if (v14)
    {
      v19 = [NSData dataWithContentsOfURL:v14];

      v20 = +[NSFileManager defaultManager];
      [v20 removeItemAtURL:v14 error:0];

      v13 = v19;
    }

    if (v13)
    {
      v21 = [v13 base64EncodedStringWithOptions:0];
    }

    else
    {
      v21 = @"Empty Response Body";
    }

    v22 = [RMErrorUtilities createHTTPErrorWithStatusCode:v17 reason:v21];
    v23 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1000849D4();
    }

    if (a8 && v22)
    {
      v24 = v22;
      *a8 = v22;
    }
  }

  return v18 < 0xFFFFFFFFFFFFFF38;
}

@end