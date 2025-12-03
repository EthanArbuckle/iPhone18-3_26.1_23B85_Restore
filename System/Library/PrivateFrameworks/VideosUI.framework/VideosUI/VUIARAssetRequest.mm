@interface VUIARAssetRequest
- (VUIARAssetRequest)initWithRemoteURL:(id)l shareURL:(id)rL fileName:(id)name;
- (id)_prefixForString:(id)string;
- (id)cacheDownloadedFileFromLocation:(id)location;
- (id)cachePath;
- (void)cancelDownload;
- (void)recordLog:(id)log;
- (void)startDownloadWithSession:(id)session completionHandler:(id)handler;
@end

@implementation VUIARAssetRequest

- (VUIARAssetRequest)initWithRemoteURL:(id)l shareURL:(id)rL fileName:(id)name
{
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = VUIARAssetRequest;
  v11 = [(VUIARAssetRequest *)&v20 init];
  v12 = v11;
  if (v11)
  {
    [(VUIARAssetRequest *)v11 setFileName:nameCopy];
    [(VUIARAssetRequest *)v12 setRemoteURL:lCopy];
    [(VUIARAssetRequest *)v12 setShareURL:rLCopy];
    relativePath = [lCopy relativePath];
    v14 = [(VUIARAssetRequest *)v12 _prefixForString:relativePath];

    fileName = v12->_fileName;
    if (fileName)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = fileName;
    }

    else
    {
      v17 = [v14 stringByAppendingString:?];
    }

    v18 = v17;
    [(VUIARAssetRequest *)v12 setCacheKey:v17];
  }

  return v12;
}

- (void)startDownloadWithSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  [(VUIARAssetRequest *)self setCompletionHandler:handler];
  v7 = [sessionCopy downloadTaskWithURL:self->_remoteURL];

  [(VUIARAssetRequest *)self setTask:v7];
  [(VUIARAssetRequest *)self setIsDownloading:1];
  [v7 resume];
}

- (void)cancelDownload
{
  [(VUIARAssetRequest *)self setIsDownloading:0];
  task = [(VUIARAssetRequest *)self task];
  [task cancel];
}

- (id)cachePath
{
  VUIRequireMainThread();
  mEMORY[0x1E69DF688] = [MEMORY[0x1E69DF688] sharedInstance];
  v4 = [mEMORY[0x1E69DF688] assetPathForKey:self->_cacheKey inGroupOfType:3];

  return v4;
}

- (id)cacheDownloadedFileFromLocation:(id)location
{
  v17 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  VUIRequireMainThread();
  if (locationCopy && self->_cacheKey)
  {
    mEMORY[0x1E69DF688] = [MEMORY[0x1E69DF688] sharedInstance];
    relativePath = [locationCopy relativePath];
    [mEMORY[0x1E69DF688] setImageAssetFromPath:relativePath forKey:self->_cacheKey inGroupOfType:3 expiryDate:0];

    v7 = [mEMORY[0x1E69DF688] assetPathForKey:self->_cacheKey inGroupOfType:3];
    v8 = VUIDefaultLogObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIARAssetRequest - Downloaded file is successfully cached: %@", &v13, 0xCu);
      }

      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    }

    else
    {
      if (v9)
      {
        cacheKey = self->_cacheKey;
        v13 = 138412546;
        v14 = cacheKey;
        v15 = 2112;
        v16 = locationCopy;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIARAssetRequest - Unable to cache the downloaded file with VUIAssetLibrary: %@, %@", &v13, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)recordLog:(id)log
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (log)
  {
    v13[0] = @"AR download failure";
    v12[0] = @"message";
    v12[1] = @"errorCode";
    v3 = MEMORY[0x1E696AD98];
    logCopy = log;
    v5 = [v3 numberWithLong:{objc_msgSend(logCopy, "code")}];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_1F5DB25C0;
    }

    v13[1] = v7;
    v12[2] = @"errorDomain";
    domain = [logCopy domain];

    if (domain)
    {
      v9 = domain;
    }

    else
    {
      v9 = &stru_1F5DB25C0;
    }

    v13[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

    v11 = +[VUIMetricsController sharedInstance];
    [v11 recordLog:v10];
  }
}

- (id)_prefixForString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    if ([stringCopy length])
    {
      v4 = 0;
      v5 = 1;
      v6 = 0x7FFFFFFFLL;
      do
      {
        v6 ^= [stringCopy characterAtIndex:v4];
        v4 = v5;
      }

      while ([stringCopy length] > v5++);
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld_", v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end