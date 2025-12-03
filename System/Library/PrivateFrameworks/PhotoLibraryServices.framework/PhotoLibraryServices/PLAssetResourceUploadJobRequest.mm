@interface PLAssetResourceUploadJobRequest
+ (id)dataForURLRequest:(id)request;
+ (id)urlRequestForData:(id)data;
@end

@implementation PLAssetResourceUploadJobRequest

+ (id)urlRequestForData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v3 = MEMORY[0x1E696ACD0];
    dataCopy = data;
    v9 = 0;
    v5 = [v3 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to decode upload job destination: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dataForURLRequest:(id)request
{
  v10 = *MEMORY[0x1E69E9840];
  if (request)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:request requiringSecureCoding:1 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v9 = v4;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Unable to encode upload job destination: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end