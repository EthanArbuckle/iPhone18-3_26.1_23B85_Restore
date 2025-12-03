@interface SCMLMADImageEncoder
+ (id)getServiceWithError:(id *)error;
+ (id)newRequestWithType:(unint64_t)type withVersion:(unint64_t)version error:(id *)error;
- (SCMLMADImageEncoder)initWithError:(id *)error;
- (void)embedPixelBufferAsynchronously:(__CVBuffer *)asynchronously requestType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler;
@end

@implementation SCMLMADImageEncoder

+ (id)newRequestWithType:(unint64_t)type withVersion:(unint64_t)version error:(id *)error
{
  if (!getMADImageEmbeddingRequestClass())
  {
    if (error)
    {
      v12 = scml::error(0x15u, "failed to get MADImageEmbeddingRequest class", 44);
LABEL_15:
      v10 = 0;
      *error = v12;
      return v10;
    }

    return 0;
  }

  v8 = objc_alloc(getMADImageEmbeddingRequestClass());
  if (!v8)
  {
    if (error)
    {
      v13 = "failed to alloc MADImageEmbeddingRequest";
      v14 = 40;
LABEL_14:
      v12 = scml::error(0x15u, v13, v14);
      goto LABEL_15;
    }

    return 0;
  }

  v9 = v8;
  v10 = [v9 init];

  if (!v10)
  {
    if (error)
    {
      v13 = "failed to init MADImageEmbeddingRequest";
      v14 = 39;
      goto LABEL_14;
    }

    return 0;
  }

  [v10 setVersion:toMADUnifiedEmbeddingVersion(version)];
  if (type - 2 >= 3)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  [v10 setEmbeddingRequestType:typeCopy];
  return v10;
}

+ (id)getServiceWithError:(id *)error
{
  if (getMADServiceClass())
  {
    service = [getMADServiceClass() service];
  }

  else if (error)
  {
    v5 = scml::error(0x15u, "failed to get MADService class", 30);
    v6 = v5;
    service = 0;
    *error = v5;
  }

  else
  {
    service = 0;
  }

  return service;
}

- (SCMLMADImageEncoder)initWithError:(id *)error
{
  v8.receiver = self;
  v8.super_class = SCMLMADImageEncoder;
  v4 = [(SCMLMADImageEncoder *)&v8 init];
  if (v4)
  {
    v5 = [SCMLMADImageEncoder getServiceWithError:error];
    service = v4->_service;
    v4->_service = v5;

    if (!v4->_service)
    {

      return 0;
    }
  }

  return v4;
}

- (void)embedPixelBufferAsynchronously:(__CVBuffer *)asynchronously requestType:(unint64_t)type version:(unint64_t)version completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v19 = 0;
  v11 = [SCMLMADImageEncoder newRequestWithType:type withVersion:version error:&v19];
  v12 = v19;
  if (v11)
  {
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    service = self->_service;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__SCMLMADImageEncoder_embedPixelBufferAsynchronously_requestType_version_completionHandler___block_invoke;
    v16[3] = &unk_1E7EB3BD0;
    v17 = v11;
    v18 = handlerCopy;
    [(MADService *)service performRequests:v13 onPixelBuffer:asynchronously withOrientation:1 andIdentifier:0 completionHandler:v16];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __92__SCMLMADImageEncoder_embedPixelBufferAsynchronously_requestType_version_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) embeddingResults];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v6 embedding];
  if (v7)
  {
    v8 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v7 type];
      v19 = [v7 count];
      v20 = [v7 shape];
      v21 = [v20 componentsJoinedByString:{@", "}];
      v22[0] = 67109634;
      v22[1] = v18;
      v23 = 1024;
      v24 = v19;
      v25 = 2112;
      v26 = v21;
      _os_log_debug_impl(&dword_1B8A3C000, v8, OS_LOG_TYPE_DEBUG, "Unified image embedding type=%d count=%d shape=[%@]", v22, 0x18u);
    }

    v9 = toSCMLMADEmbeddingType([v7 type]);
    v10 = [SCMLMADEmbeddingResult alloc];
    v11 = [v7 data];
    v12 = [v7 shape];
    v13 = [(SCMLMADEmbeddingResult *)v10 initWithType:v9 data:v11 shape:v12 bias:0 scale:0];

    (*(*(a1 + 40) + 16))();
  }

  else if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [*(a1 + 32) error];

    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 32) error];
      (*(v15 + 16))(v15, 0, v16);

      v4 = 0;
    }

    else
    {
      v4 = scml::error(0x15u, "Failed to compute unified image embedding", 41);
      (*(*(a1 + 40) + 16))();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end