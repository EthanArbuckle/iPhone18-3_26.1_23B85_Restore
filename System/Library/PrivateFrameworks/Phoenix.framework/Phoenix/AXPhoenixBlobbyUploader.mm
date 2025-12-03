@interface AXPhoenixBlobbyUploader
+ (id)_getStringforDate:(id)date;
+ (id)sharedUploader;
- (AXPhoenixBlobbyUploader)init;
- (id)_dateStringForHeaderForDate:(id)date;
- (id)_getAuthorizationForRequest:(id)request headers:(id)headers;
- (id)_hmacSHA1WithKey:(id)key forData:(id)data;
- (id)_md5OfData:(id)data;
- (id)_prefixFromPackageFilePath:(id)path;
- (id)_urlRequestForFileAtPath:(id)path bucket:(id)bucket prefix:(id)prefix error:(id *)error;
- (void)_completeUploadRequestWithData:(id)data urlResponse:(id)response error:(id)error forPackagePath:(id)path withCompletion:(id)completion;
- (void)_uploadPackage:(id)package bucket:(id)bucket prefix:(id)prefix withCompletion:(id)completion;
- (void)_uploadPackagePath:(id)path bucket:(id)bucket prefix:(id)prefix withCompletion:(id)completion;
- (void)uploadPackages:(id)packages toBucket:(id)bucket withCompletion:(id)completion;
@end

@implementation AXPhoenixBlobbyUploader

- (id)_hmacSHA1WithKey:(id)key forData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v16 = 0;
  objc_storeStrong(&v16, data);
  if (v16)
  {
    v8 = location[0];
    v4 = location[0];
    key = [v8 bytes];
    keyLength = [location[0] length];
    v9 = v16;
    v5 = v16;
    data = [v9 bytes];
    CCHmac(0, key, keyLength, data, [v16 length], macOut);
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:20];
    v18 = MEMORY[0x277D82BE0](v14);
    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v18 = 0;
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v18;

  return v6;
}

- (id)_getAuthorizationForRequest:(id)request headers:(id)headers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v27 = 0;
  objc_storeStrong(&v27, headers);
  array = [MEMORY[0x277CBEB18] array];
  hTTPMethod = [location[0] HTTPMethod];
  [array addObject:?];
  MEMORY[0x277D82BD8](hTTPMethod);
  v25 = [v27 objectForKey:@"Content-MD5"];
  if (v25)
  {
    v18 = v25;
  }

  else
  {
    v18 = &stru_287032B48;
  }

  [array addObject:v18];
  v24 = [v27 objectForKey:@"Content-Type"];
  if (v24)
  {
    v17 = v24;
  }

  else
  {
    v17 = &stru_287032B48;
  }

  [array addObject:v17];
  v23 = [v27 objectForKey:@"Date"];
  if (v23)
  {
    v16 = v23;
  }

  else
  {
    v16 = &stru_287032B48;
  }

  [array addObject:v16];
  v5 = array;
  v7 = [location[0] URL];
  path = [v7 path];
  [v5 addObject:?];
  MEMORY[0x277D82BD8](path);
  MEMORY[0x277D82BD8](v7);
  v22 = [array componentsJoinedByString:@"\n"];
  v8 = selfCopy;
  v11 = [(NSDictionary *)selfCopy->_bucketInfo objectForKeyedSubscript:@"SecretKey"];
  v10 = [v11 dataUsingEncoding:4];
  v9 = [v22 dataUsingEncoding:134217984];
  v21 = [(AXPhoenixBlobbyUploader *)v8 _hmacSHA1WithKey:v10 forData:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = MEMORY[0x277CCACA8];
  v14 = [(NSDictionary *)selfCopy->_bucketInfo objectForKeyedSubscript:@"AccessIdentifier"];
  v13 = [v21 base64EncodedStringWithOptions:0];
  v15 = [v12 stringWithFormat:@"AWS %@:%@", v14, v13];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&array, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);

  return v15;
}

- (id)_dateStringForHeaderForDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  if (location[0])
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v9 setDateFormat:@"EEE', ' dd' 'MMM' 'yyyy HH':'mm':'ss Z"];
    v5 = v9;
    v6 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
    [v5 setTimeZone:?];
    MEMORY[0x277D82BD8](v6);
    v7 = v9;
    v8 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v7 setLocale:?];
    MEMORY[0x277D82BD8](v8);
    v12 = [v9 stringFromDate:location[0]];
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v12 = 0;
    v10 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v12;

  return v3;
}

- (id)_md5OfData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v5 = location[0];
  v3 = location[0];
  data = [v5 bytes];
  CC_MD5(data, [location[0] length], md);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_getStringforDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateFormat:@"yyyyMMdd"];
  v5 = [v6 stringFromDate:location[0]];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_urlRequestForFileAtPath:(id)path bucket:(id)bucket prefix:(id)prefix error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v45 = 0;
  objc_storeStrong(&v45, bucket);
  v44 = 0;
  objc_storeStrong(&v44, prefix);
  errorCopy = error;
  v42 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:location[0] options:8 error:error];
  if (*error)
  {
    v41 = AXLogBackTap();
    v40 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v51, "[AXPhoenixBlobbyUploader _urlRequestForFileAtPath:bucket:prefix:error:]", location[0], *errorCopy);
      _os_log_error_impl(&dword_25E4AC000, v41, v40, "[PHOENIX] %s Unable to memory map %@ %@", v51, 0x20u);
    }

    objc_storeStrong(&v41, 0);
    v48 = 0;
    v39 = 1;
  }

  else
  {
    lastPathComponent = [location[0] lastPathComponent];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v45, v44, lastPathComponent];
    v20 = MEMORY[0x277CBEBC0];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v37];
    uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v23 = [v25 stringByAddingPercentEncodingWithAllowedCharacters:?];
    v19 = MEMORY[0x277CBEBC0];
    v22 = [(NSDictionary *)selfCopy->_bucketInfo objectForKeyedSubscript:@"Endpoint"];
    v21 = [v19 URLWithString:?];
    v36 = [v20 URLWithString:v23 relativeToURL:?];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](uRLPathAllowedCharacterSet);
    MEMORY[0x277D82BD8](v25);
    v35 = AXLogBackTap();
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v50, "[AXPhoenixBlobbyUploader _urlRequestForFileAtPath:bucket:prefix:error:]", v36);
      _os_log_impl(&dword_25E4AC000, v35, v34, "[PHOENIX] %s Blobby upload URL: %@", v50, 0x16u);
    }

    objc_storeStrong(&v35, 0);
    v6 = objc_alloc(MEMORY[0x277CCAB70]);
    v33 = [v6 initWithURL:v36];
    [v33 setHTTPMethod:@"PUT"];
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v32 setObject:@"application/octet-stream" forKeyedSubscript:@"Content-Type"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v42, "length")];
    [v32 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v12);
    v14 = [(AXPhoenixBlobbyUploader *)selfCopy _md5OfData:v42];
    v13 = [v14 base64EncodedStringWithOptions:0];
    [v32 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    v15 = selfCopy;
    date = [MEMORY[0x277CBEAA8] date];
    v16 = [(AXPhoenixBlobbyUploader *)v15 _dateStringForHeaderForDate:?];
    [v32 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](date);
    [v32 setObject:@"100-continue" forKeyedSubscript:@"Expect"];
    v18 = [(AXPhoenixBlobbyUploader *)selfCopy _getAuthorizationForRequest:v33 headers:v32];
    [v32 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v18);
    [v33 setAllHTTPHeaderFields:v32];
    [v33 setCachePolicy:1];
    [v33 setHTTPShouldHandleCookies:0];
    [v33 setTimeoutInterval:kRequestTimeout];
    oslog = AXLogBackTap();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      v10 = v30;
      allHTTPHeaderFields = [v33 allHTTPHeaderFields];
      v29 = MEMORY[0x277D82BE0](allHTTPHeaderFields);
      __os_log_helper_16_2_2_8_32_8_64(v49, "[AXPhoenixBlobbyUploader _urlRequestForFileAtPath:bucket:prefix:error:]", v29);
      _os_log_impl(&dword_25E4AC000, v9, v10, "[PHOENIX] %s URL request: %@", v49, 0x16u);
      MEMORY[0x277D82BD8](allHTTPHeaderFields);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&oslog, 0);
    v48 = MEMORY[0x277D82BE0](v33);
    v39 = 1;
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&lastPathComponent, 0);
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v48;

  return v7;
}

- (void)_completeUploadRequestWithData:(id)data urlResponse:(id)response error:(id)error forPackagePath:(id)path withCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v29 = 0;
  objc_storeStrong(&v29, response);
  v28 = 0;
  objc_storeStrong(&v28, error);
  v27 = 0;
  objc_storeStrong(&v27, path);
  v26 = 0;
  objc_storeStrong(&v26, completion);
  if (v28)
  {
    v25 = AXLogBackTap();
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v33, "[AXPhoenixBlobbyUploader _completeUploadRequestWithData:urlResponse:error:forPackagePath:withCompletion:]", v28);
      _os_log_error_impl(&dword_25E4AC000, v25, v24, "[PHOENIX] %s Upload task error: %@", v33, 0x16u);
    }

    objc_storeStrong(&v25, 0);
    (*(v26 + 2))(v26, 0, v28);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = MEMORY[0x277D82BE0](v29);
      if ([v23 statusCode] == 200)
      {
        v22 = AXLogBackTap();
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v22;
          v11 = v21;
          lastPathComponent = [v27 lastPathComponent];
          v20 = MEMORY[0x277D82BE0](lastPathComponent);
          __os_log_helper_16_2_2_8_32_8_64(v32, "[AXPhoenixBlobbyUploader _completeUploadRequestWithData:urlResponse:error:forPackagePath:withCompletion:]", v20);
          _os_log_impl(&dword_25E4AC000, v10, v11, "[PHOENIX] %s Upload successful for %@.", v32, 0x16u);
          MEMORY[0x277D82BD8](lastPathComponent);
          objc_storeStrong(&v20, 0);
        }

        objc_storeStrong(&v22, 0);
        (*(v26 + 2))(v26, 1, 0);
      }

      else
      {
        oslog = AXLogBackTap();
        v18 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = oslog;
          v8 = v18;
          v9 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(v23, "statusCode")}];
          v17 = MEMORY[0x277D82BE0](v9);
          __os_log_helper_16_2_2_8_32_8_64(v31, "[AXPhoenixBlobbyUploader _completeUploadRequestWithData:urlResponse:error:forPackagePath:withCompletion:]", v17);
          _os_log_impl(&dword_25E4AC000, v7, v8, "[PHOENIX] %s Upload task response message: %@", v31, 0x16u);
          MEMORY[0x277D82BD8](v9);
          objc_storeStrong(&v17, 0);
        }

        objc_storeStrong(&oslog, 0);
      }

      objc_storeStrong(&v23, 0);
    }
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_uploadPackage:(id)package bucket:(id)bucket prefix:(id)prefix withCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, package);
  v35 = 0;
  objc_storeStrong(&v35, bucket);
  v34 = 0;
  objc_storeStrong(&v34, prefix);
  v33 = 0;
  objc_storeStrong(&v33, completion);
  v32 = 0;
  v30 = 0;
  v15 = [(AXPhoenixBlobbyUploader *)selfCopy _urlRequestForFileAtPath:location[0] bucket:v35 prefix:v34 error:&v30];
  objc_storeStrong(&v32, v30);
  v31 = v15;
  if (v32)
  {
    (*(v33 + 2))(v33, 0, v32);
    v29 = 1;
  }

  else
  {
    v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:location[0]];
    session = selfCopy->_session;
    v9 = v31;
    v10 = v28;
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __71__AXPhoenixBlobbyUploader__uploadPackage_bucket_prefix_withCompletion___block_invoke;
    v23 = &unk_279A20800;
    v24 = MEMORY[0x277D82BE0](selfCopy);
    v25 = MEMORY[0x277D82BE0](location[0]);
    v26 = MEMORY[0x277D82BE0](v33);
    v27 = [(NSURLSession *)session uploadTaskWithRequest:v9 fromFile:v10 completionHandler:&v19];
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v7 = type;
      lastPathComponent = [location[0] lastPathComponent];
      v16 = MEMORY[0x277D82BE0](lastPathComponent);
      __os_log_helper_16_2_2_8_32_8_64(v38, "[AXPhoenixBlobbyUploader _uploadPackage:bucket:prefix:withCompletion:]", v16);
      _os_log_impl(&dword_25E4AC000, log, v7, "[PHOENIX] %s Uploading package: %@", v38, 0x16u);
      MEMORY[0x277D82BD8](lastPathComponent);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(NSURLSessionUploadTask *)v27 resume];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v28, 0);
    v29 = 0;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__AXPhoenixBlobbyUploader__uploadPackage_bucket_prefix_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [*(a1 + 32) _completeUploadRequestWithData:location[0] urlResponse:v8 error:v7 forPackagePath:*(a1 + 40) withCompletion:*(a1 + 48)];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_uploadPackagePath:(id)path bucket:(id)bucket prefix:(id)prefix withCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v25 = 0;
  objc_storeStrong(&v25, bucket);
  v24 = 0;
  objc_storeStrong(&v24, prefix);
  v23 = 0;
  objc_storeStrong(&v23, completion);
  v22 = AXLogBackTap();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v28, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]", location[0], v25, v24);
    _os_log_impl(&dword_25E4AC000, v22, v21, "[PHOENIX] %s Blobby uploader called with file:%@ bucket:%@ prefix:%@", v28, 0x2Au);
  }

  objc_storeStrong(&v22, 0);
  objc_initWeak(&v20, selfCopy);
  queue = selfCopy->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __75__AXPhoenixBlobbyUploader__uploadPackagePath_bucket_prefix_withCompletion___block_invoke;
  v14 = &unk_279A20850;
  objc_copyWeak(&v19, &v20);
  v15 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](v25);
  v17 = MEMORY[0x277D82BE0](v24);
  v18 = MEMORY[0x277D82BE0](v23);
  dispatch_async(queue, &v10);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v20);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __75__AXPhoenixBlobbyUploader__uploadPackagePath_bucket_prefix_withCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 64));
  location = AXLogBackTap();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v24, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]_block_invoke", *(a1 + 32), *(a1 + 40), *(a1 + 48));
    _os_log_impl(&dword_25E4AC000, location, v20, "[PHOENIX] %s Blobby uploader starting to upload %@ to %@/%@", v24, 0x2Au);
  }

  objc_storeStrong(&location, 0);
  dsema = *(v22[0] + 2);
  v1 = dispatch_time(0, 1000000000 * kSemaphoreTimeoutInSeconds);
  dispatch_semaphore_wait(dsema, v1);
  v19 = AXLogBackTap();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_64(v23, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]_block_invoke", *(a1 + 32));
    _os_log_impl(&dword_25E4AC000, v19, v18, "[PHOENIX] %s Blobby uploader semaphore wait completed for %@", v23, 0x16u);
  }

  objc_storeStrong(&v19, 0);
  v5 = v22[0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__AXPhoenixBlobbyUploader__uploadPackagePath_bucket_prefix_withCompletion___block_invoke_85;
  v12 = &unk_279A20828;
  v13 = MEMORY[0x277D82BE0](*(a1 + 32));
  v14 = MEMORY[0x277D82BE0](*(a1 + 40));
  v15 = MEMORY[0x277D82BE0](*(a1 + 48));
  v16 = MEMORY[0x277D82BE0](v22[0]);
  v17 = MEMORY[0x277D82BE0](*(a1 + 56));
  [v5 _uploadPackage:v2 bucket:v3 prefix:v4 withCompletion:&v8];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v22, 0);
  *MEMORY[0x277D85DE8];
}

void __75__AXPhoenixBlobbyUploader__uploadPackagePath_bucket_prefix_withCompletion___block_invoke_85(uint64_t a1, char a2, id obj)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v10)
  {
    oslog[0] = AXLogBackTap();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v14, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]_block_invoke", *(a1 + 32));
      _os_log_impl(&dword_25E4AC000, oslog[0], type, "[PHOENIX] %s Package %@ uploaded successfully", v14, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v6 = AXLogBackTap();
    v5 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v13, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]_block_invoke", *(a1 + 32), location);
      _os_log_error_impl(&dword_25E4AC000, v6, v5, "[PHOENIX] %s Package upload %@ failed %@", v13, 0x20u);
    }

    objc_storeStrong(&v6, 0);
  }

  v4 = AXLogBackTap();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(v12, "[AXPhoenixBlobbyUploader _uploadPackagePath:bucket:prefix:withCompletion:]_block_invoke", *(a1 + 32), *(a1 + 40), *(a1 + 48));
    _os_log_impl(&dword_25E4AC000, v4, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Blobby uploader done uploading %@ to %@/%@", v12, 0x2Au);
  }

  objc_storeStrong(&v4, 0);
  dispatch_semaphore_signal(*(*(a1 + 56) + 16));
  (*(*(a1 + 64) + 16))();
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_prefixFromPackageFilePath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  lastPathComponent = [location[0] lastPathComponent];
  v5 = [lastPathComponent componentsSeparatedByString:@"_"];
  lastObject = [v5 lastObject];
  v7 = [lastObject substringToIndex:10];
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](lastPathComponent);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)uploadPackages:(id)packages toBucket:(id)bucket withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, packages);
  v22 = 0;
  objc_storeStrong(&v22, bucket);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v17[0] = 0;
  v17[1] = v17;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  queue = selfCopy->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __66__AXPhoenixBlobbyUploader_uploadPackages_toBucket_withCompletion___block_invoke;
  v12 = &unk_279A208A0;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](v22);
  v16[1] = v17;
  v16[0] = MEMORY[0x277D82BE0](v21);
  dispatch_async(queue, &v8);
  objc_storeStrong(v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(v17, 8);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

uint64_t __66__AXPhoenixBlobbyUploader_uploadPackages_toBucket_withCompletion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(a1 + 32));
  v16 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v16)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v16;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v12);
      if (v32)
      {
        v28 = [*(a1 + 40) _prefixFromPackageFilePath:v32];
        if ([v28 length])
        {
          v5 = *(a1 + 40);
          v2 = v32;
          v3 = *(a1 + 48);
          v4 = v28;
          v17 = MEMORY[0x277D85DD0];
          v18 = -1073741824;
          v19 = 0;
          v20 = __66__AXPhoenixBlobbyUploader_uploadPackages_toBucket_withCompletion___block_invoke_91;
          v21 = &unk_279A20878;
          v22 = MEMORY[0x277D82BE0](v32);
          v23 = MEMORY[0x277D82BE0](*(a1 + 32));
          v24[1] = *(a1 + 64);
          v24[0] = MEMORY[0x277D82BE0](*(a1 + 56));
          [v5 _uploadPackagePath:v2 bucket:v3 prefix:v4 withCompletion:&v17];
          objc_storeStrong(v24, 0);
          objc_storeStrong(&v23, 0);
          objc_storeStrong(&v22, 0);
          v25 = 0;
        }

        else
        {
          v27 = AXLogBackTap();
          v26 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v6 = v27;
            v7 = v26;
            __os_log_helper_16_2_2_8_32_8_64(v35, "[AXPhoenixBlobbyUploader uploadPackages:toBucket:withCompletion:]_block_invoke", v32);
            _os_log_impl(&dword_25E4AC000, v6, v7, "[PHOENIX] %s Skipping upload of invalid prefix for %@", v35, 0x16u);
          }

          objc_storeStrong(&v27, 0);
          v25 = 3;
        }

        objc_storeStrong(&v28, 0);
      }

      else
      {
        oslog = AXLogBackTap();
        type = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          log = oslog;
          v9 = type;
          __os_log_helper_16_2_2_8_32_8_64(v36, "[AXPhoenixBlobbyUploader uploadPackages:toBucket:withCompletion:]_block_invoke", v32);
          _os_log_impl(&dword_25E4AC000, log, v9, "[PHOENIX] %s Skipping upload of invalid package file path for %@", v36, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  result = MEMORY[0x277D82BD8](obj);
  *MEMORY[0x277D85DE8];
  return result;
}

void __66__AXPhoenixBlobbyUploader_uploadPackages_toBucket_withCompletion___block_invoke_91(uint64_t a1, char a2, id obj)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14[1] = a1;
  if (!location && (v16 & 1) != 0)
  {
    v12 = AXLogBackTap();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v19, "[AXPhoenixBlobbyUploader uploadPackages:toBucket:withCompletion:]_block_invoke");
      _os_log_impl(&dword_25E4AC000, v12, v11, "[PHOENIX] %s Upload successful.", v19, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    [AXPhoenixDataCollectionUtils deleteItem:*(a1 + 32)];
    v4 = +[AXPhoenixDataCollectionManager sharedInstance];
    -[AXPhoenixDataCollectionManager updateUploadStatus:error:](v4, "updateUploadStatus:error:", [*(a1 + 40) count], 0);
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v14[0] = AXLogBackTap();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v20, "[AXPhoenixBlobbyUploader uploadPackages:toBucket:withCompletion:]_block_invoke", location);
      _os_log_impl(&dword_25E4AC000, v14[0], v13, "[PHOENIX] %s Upload task error: %@", v20, 0x16u);
    }

    objc_storeStrong(v14, 0);
    if ([location code] == -1009)
    {
      v8 = +[AXPhoenixDataCollectionManager sharedInstance];
      [(AXPhoenixDataCollectionManager *)v8 updateUploadStatus:-1 error:@"Device offline"];
      MEMORY[0x277D82BD8](v8);
    }

    else if ([location code] == -1003)
    {
      v7 = +[AXPhoenixDataCollectionManager sharedInstance];
      [(AXPhoenixDataCollectionManager *)v7 updateUploadStatus:-1 error:@"Unable to reach server."];
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v6 = +[AXPhoenixDataCollectionManager sharedInstance];
      v5 = [location localizedDescription];
      [(AXPhoenixDataCollectionManager *)v6 updateUploadStatus:-1 error:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }
  }

  v3 = ++*(*(*(a1 + 56) + 8) + 24);
  if (v3 == [*(a1 + 40) count] && *(a1 + 48))
  {
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_4_0(v18, "[AXPhoenixBlobbyUploader uploadPackages:toBucket:withCompletion:]_block_invoke", *(*(*(a1 + 56) + 8) + 24));
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s %d packages attempted to upload.", v18, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 48) + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (AXPhoenixBlobbyUploader)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = AXPhoenixBlobbyUploader;
  v16 = [(AXPhoenixBlobbyUploader *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    v2 = dispatch_queue_create("com.apple.accessibility.phoenix.blobbyUploader", 0);
    v3 = *(v16 + 1);
    *(v16 + 1) = v2;
    MEMORY[0x277D82BD8](v3);
    v4 = dispatch_semaphore_create(kMaxConcurrentUploads);
    v5 = *(v16 + 2);
    *(v16 + 2) = v4;
    MEMORY[0x277D82BD8](v5);
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setWaitsForConnectivity:1];
    [defaultSessionConfiguration setAllowsCellularAccess:1];
    [defaultSessionConfiguration setNetworkServiceType:6];
    [defaultSessionConfiguration setTimeoutIntervalForRequest:kResponseTimeout];
    v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    v7 = *(v16 + 3);
    *(v16 + 3) = v6;
    MEMORY[0x277D82BD8](v7);
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/AppleInternal/Library/Accessibility/BucketInfo.plist"];
    v9 = *(v16 + 4);
    *(v16 + 4) = v8;
    MEMORY[0x277D82BD8](v9);
    oslog = AXLogBackTap();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v17, "[AXPhoenixBlobbyUploader init]", *(v16 + 4));
      _os_log_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Loaded bucket info %@", v17, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&defaultSessionConfiguration, 0);
  }

  v11 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)sharedUploader
{
  v5 = &sharedUploader_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedUploader_blobbyUploader;

  return v2;
}

uint64_t __41__AXPhoenixBlobbyUploader_sharedUploader__block_invoke()
{
  v0 = objc_alloc_init(AXPhoenixBlobbyUploader);
  v1 = sharedUploader_blobbyUploader;
  sharedUploader_blobbyUploader = v0;
  return MEMORY[0x277D82BD8](v1);
}

@end