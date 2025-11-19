@interface SCMLMADTextEncoder
+ (id)getServiceWithError:(id *)a3;
+ (id)newRequestWithError:(id *)a3 withVersion:(unint64_t)a4;
- (SCMLMADTextEncoder)initWithError:(id *)a3;
- (void)embedTextAsynchronously:(id)a3 version:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation SCMLMADTextEncoder

+ (id)newRequestWithError:(id *)a3 withVersion:(unint64_t)a4
{
  if (!getMADTextEmbeddingRequestClass())
  {
    if (a3)
    {
      v9 = scml::error(0x15u, "failed to get MADTextEmbeddingRequest class", 43);
LABEL_12:
      v8 = 0;
      *a3 = v9;
      return v8;
    }

    return 0;
  }

  v6 = objc_alloc(getMADTextEmbeddingRequestClass());
  if (!v6)
  {
    if (a3)
    {
      v10 = "failed to alloc MADTextEmbeddingRequest";
      v11 = 39;
LABEL_11:
      v9 = scml::error(0x15u, v10, v11);
      goto LABEL_12;
    }

    return 0;
  }

  v7 = v6;
  v8 = [v7 init];

  if (!v8)
  {
    if (a3)
    {
      v10 = "failed to init MADTextEmbeddingRequest";
      v11 = 38;
      goto LABEL_11;
    }

    return 0;
  }

  [v8 setVersion:toMADUnifiedEmbeddingVersion(a4)];
  [v8 setComputeThreshold:1];
  return v8;
}

+ (id)getServiceWithError:(id *)a3
{
  if (getMADServiceClass())
  {
    v4 = [getMADServiceClass() service];
  }

  else if (a3)
  {
    v5 = scml::error(0x15u, "failed to get MADService class", 30);
    v6 = v5;
    v4 = 0;
    *a3 = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SCMLMADTextEncoder)initWithError:(id *)a3
{
  v8.receiver = self;
  v8.super_class = SCMLMADTextEncoder;
  v4 = [(SCMLMADTextEncoder *)&v8 init];
  if (v4)
  {
    v5 = [SCMLMADTextEncoder getServiceWithError:a3];
    service = v4->_service;
    v4->_service = v5;

    if (!v4->_service)
    {

      return 0;
    }
  }

  return v4;
}

- (void)embedTextAsynchronously:(id)a3 version:(unint64_t)a4 completionHandler:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v10 = [SCMLMADTextEncoder newRequestWithError:&v19 withVersion:a4];
  v11 = v19;
  if (v10)
  {
    v21[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    service = self->_service;
    v20 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__SCMLMADTextEncoder_embedTextAsynchronously_version_completionHandler___block_invoke;
    v16[3] = &unk_1E7EB3BD0;
    v17 = v10;
    v18 = v9;
    [(MADService *)service performRequests:v12 text:v14 identifier:0 completionHandler:v16];
  }

  else
  {
    (*(v9 + 2))(v9, 0, v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __72__SCMLMADTextEncoder_embedTextAsynchronously_version_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) embeddingResults];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v6 embedding];
  if (v7)
  {
    v8 = +[SCMLLog textAnalyzer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v7 type];
      v21 = [v7 count];
      v22 = [v7 shape];
      v23 = [v22 componentsJoinedByString:{@", "}];
      v24[0] = 67109634;
      v24[1] = v20;
      v25 = 1024;
      v26 = v21;
      v27 = 2112;
      v28 = v23;
      _os_log_debug_impl(&dword_1B8A3C000, v8, OS_LOG_TYPE_DEBUG, "Unified text embedding type=%d count=%d shape=[%@]", v24, 0x18u);
    }

    v9 = toSCMLMADEmbeddingType([v7 type]);
    v10 = [SCMLMADEmbeddingResult alloc];
    v11 = [v7 data];
    v12 = [v7 shape];
    v13 = [v6 bias];
    v14 = [v6 scale];
    v15 = [(SCMLMADEmbeddingResult *)v10 initWithType:v9 data:v11 shape:v12 bias:v13 scale:v14];

    (*(*(a1 + 40) + 16))();
  }

  else if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v16 = [*(a1 + 32) error];

    if (v16)
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) error];
      (*(v17 + 16))(v17, 0, v18);
    }

    else
    {
      v18 = scml::error(0x15u, "Failed to compute bridge embedding", 34);
      (*(*(a1 + 40) + 16))();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end