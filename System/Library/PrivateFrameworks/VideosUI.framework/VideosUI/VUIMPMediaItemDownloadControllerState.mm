@interface VUIMPMediaItemDownloadControllerState
- (BOOL)isEqual:(id)equal;
- (VUIMPMediaItemDownloadControllerState)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMPMediaItemDownloadControllerState

- (VUIMPMediaItemDownloadControllerState)init
{
  v3.receiver = self;
  v3.super_class = VUIMPMediaItemDownloadControllerState;
  result = [(VUIMPMediaItemDownloadControllerState *)&v3 init];
  if (result)
  {
    result->_status = 3;
    result->_downloadProgress = -1.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIMPMediaItemDownloadControllerState);
  v4->_status = self->_status;
  v4->_downloadProgress = self->_downloadProgress;
  v4->_bytesDownloaded = self->_bytesDownloaded;
  v4->_bytesToDownload = self->_bytesToDownload;
  v4->_downloadSucceeded = self->_downloadSucceeded;
  objc_storeStrong(&v4->_error, self->_error);
  return v4;
}

- (unint64_t)hash
{
  status = [(VUIMPMediaItemDownloadControllerState *)self status];
  [(VUIMPMediaItemDownloadControllerState *)self downloadProgress];
  v5 = (v4 * 100.0);
  bytesToDownload = [(VUIMPMediaItemDownloadControllerState *)self bytesToDownload];
  bytesDownloaded = [(VUIMPMediaItemDownloadControllerState *)self bytesDownloaded];
  if ([(VUIMPMediaItemDownloadControllerState *)self downloadSucceeded])
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  error = [(VUIMPMediaItemDownloadControllerState *)self error];
  v10 = status ^ (4 * bytesToDownload) ^ (2 * v5) ^ (8 * bytesDownloaded);
  v11 = v8 ^ [error hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    status = [(VUIMPMediaItemDownloadControllerState *)self status];
    if (status == [(VUIMPMediaItemDownloadControllerState *)v6 status]&& ([(VUIMPMediaItemDownloadControllerState *)self downloadProgress], v9 = v8, [(VUIMPMediaItemDownloadControllerState *)v6 downloadProgress], v9 == v10) && (v11 = [(VUIMPMediaItemDownloadControllerState *)self bytesToDownload], v11 == [(VUIMPMediaItemDownloadControllerState *)v6 bytesToDownload]) && (v12 = [(VUIMPMediaItemDownloadControllerState *)self bytesDownloaded], v12 == [(VUIMPMediaItemDownloadControllerState *)v6 bytesDownloaded]) && (v13 = [(VUIMPMediaItemDownloadControllerState *)self downloadSucceeded], v13 == [(VUIMPMediaItemDownloadControllerState *)v6 downloadSucceeded]))
    {
      error = [(VUIMPMediaItemDownloadControllerState *)self error];
      error2 = [(VUIMPMediaItemDownloadControllerState *)v6 error];
      v14 = error == error2;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32.receiver = self;
  v32.super_class = VUIMPMediaItemDownloadControllerState;
  v4 = [(VUIMPMediaItemDownloadControllerState *)&v32 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  status = [(VUIMPMediaItemDownloadControllerState *)self status];
  if (status > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E8736748[status];
  }

  v8 = [v5 stringWithFormat:@"%@=%@", @"status", v7];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696AD98];
  [(VUIMPMediaItemDownloadControllerState *)self downloadProgress];
  v11 = [v10 numberWithDouble:?];
  v12 = [v9 stringWithFormat:@"%@=%@", @"downloadProgress", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMPMediaItemDownloadControllerState bytesToDownload](self, "bytesToDownload")}];
  v15 = [v13 stringWithFormat:@"%@=%@", @"bytesToDownload", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMPMediaItemDownloadControllerState bytesDownloaded](self, "bytesDownloaded")}];
  v18 = [v16 stringWithFormat:@"%@=%@", @"bytesDownloaded", v17];
  [v3 addObject:v18];

  v19 = MEMORY[0x1E696AEC0];
  [(VUIMPMediaItemDownloadControllerState *)self isDownloadInProgress];
  v20 = VUIBoolLogString();
  v21 = [v19 stringWithFormat:@"%@=%@", @"isDownloadInProgress", v20];
  [v3 addObject:v21];

  v22 = MEMORY[0x1E696AEC0];
  [(VUIMPMediaItemDownloadControllerState *)self downloadSucceeded];
  v23 = VUIBoolLogString();
  v24 = [v22 stringWithFormat:@"%@=%@", @"downloadSucceeded", v23];
  [v3 addObject:v24];

  v25 = MEMORY[0x1E696AEC0];
  error = [(VUIMPMediaItemDownloadControllerState *)self error];
  v27 = [v25 stringWithFormat:@"%@=%@", @"error", error];
  [v3 addObject:v27];

  v28 = MEMORY[0x1E696AEC0];
  v29 = [v3 componentsJoinedByString:{@", "}];
  v30 = [v28 stringWithFormat:@"<%@>", v29];

  return v30;
}

@end