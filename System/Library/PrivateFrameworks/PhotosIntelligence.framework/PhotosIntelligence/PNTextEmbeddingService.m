@interface PNTextEmbeddingService
- (PNTextEmbeddingService)init;
- (void)prewarmWithCompletionHandler:(id)a3;
- (void)requestTextEmbeddings:(id)a3 completionHandler:(id)a4;
@end

@implementation PNTextEmbeddingService

- (void)requestTextEmbeddings:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_alloc_init(getMADTextEmbeddingRequestClass());
    if (v8)
    {
      os_unfair_lock_lock(&self->_madServiceLock);
      if (!self->_madService)
      {
        v9 = [getMADServiceClass() service];
        madService = self->_madService;
        self->_madService = v9;
      }

      os_unfair_lock_unlock(&self->_madServiceLock);
      [v8 setComputeThreshold:1];
      v11 = self->_madService;
      v20[0] = v8;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __66__PNTextEmbeddingService_requestTextEmbeddings_completionHandler___block_invoke;
      v16[3] = &unk_1E82A20F0;
      v17 = v8;
      v18 = v6;
      v13 = v7;
      v19 = v13;
      LODWORD(v11) = [(MADService *)v11 performRequests:v12 text:v18 identifier:0 completionHandler:v16];

      if (v11 == -1)
      {
        v14 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"[PNTextEmbeddingService] Text embedding generation service request failed."];
        (*(v13 + 2))(v13, 0, v14);
      }
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"[PNTextEmbeddingService] Failed to create MADTextEmbeddingRequest."];
      (*(v7 + 2))(v7, 0, v15);
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v7 + 2))(v7, v8, 0);
  }
}

void __66__PNTextEmbeddingService_requestTextEmbeddings_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 != -1)
  {
    v6 = [*(a1 + 32) embeddingResults];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) embeddingResults];
      v9 = [v8 count];
      v10 = [*(a1 + 40) count];

      if (v9 == v10)
      {
        v50 = v5;
        v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v49 = a1;
        obj = [*(a1 + 32) embeddingResults];
        v54 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v54)
        {
          v52 = v11;
          v53 = *v56;
LABEL_6:
          v12 = 0;
          while (1)
          {
            if (*v56 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v55 + 1) + 8 * v12);
            v14 = [v13 embedding];
            if (!v14)
            {
              break;
            }

            v15 = v14;
            v16 = [v14 data];
            v17 = [v15 count];
            v18 = [v15 type];
            v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v17];
            if (v18 == 2)
            {
              v31 = [v16 bytes];
              if (v17)
              {
                v32 = v31;
                for (i = 0; i != v17; ++i)
                {
                  v34 = objc_alloc(MEMORY[0x1E696AD98]);
                  LODWORD(v35) = *(v32 + 4 * i);
                  v36 = [v34 initWithFloat:v35];
                  [v19 insertObject:v36 atIndex:i];
                }
              }
            }

            else
            {
              if (v18 != 1)
              {
                v48 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:{@"[PNTextEmbeddingService] Found unknown element type in generation result: (%lu).", 0}];
                (*(*(v49 + 48) + 16))();

                goto LABEL_31;
              }

              v20 = [v16 bytes];
              if (v17)
              {
                v21 = v20;
                for (j = 0; j != v17; ++j)
                {
                  v23 = objc_alloc(MEMORY[0x1E696AD98]);
                  _H0 = *(v21 + 2 * j);
                  __asm { FCVT            S0, H0 }

                  v30 = [v23 initWithFloat:_D0];
                  [v19 insertObject:v30 atIndex:j];
                }
              }
            }

            v37 = [v13 calibrationVersion];
            v38 = [PNTextEmbeddingResultWithBiasScale alloc];
            v39 = [v13 bias];
            v40 = [v13 scale];
            v41 = [(PNTextEmbeddingResultWithBiasScale *)v38 initWithEmbedding:v19 calibrationVersion:v37 bias:v39 scale:v40];

            v11 = v52;
            [v52 addObject:v41];

            if (++v12 == v54)
            {
              v54 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
              if (v54)
              {
                goto LABEL_6;
              }

              goto LABEL_21;
            }
          }

          v15 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"[PNTextEmbeddingService] Found empty text embedding generation result."];
          (*(*(v49 + 48) + 16))();
LABEL_31:

          goto LABEL_32;
        }

LABEL_21:

        (*(*(v49 + 48) + 16))();
LABEL_32:
        v5 = v50;
        goto LABEL_33;
      }
    }

    v42 = MEMORY[0x1E696ABC0];
    if (v5)
    {
      v43 = [v5 localizedDescription];
      v44 = [v42 pn_genericErrorWithUnderlyingError:v5 localizedDescription:{@"[PNTextEmbeddingService] Text embedding generation failed: %@", v43}];
    }

    else
    {
      v43 = [*(a1 + 32) embeddingResults];
      if (v43)
      {
        v45 = MEMORY[0x1E696AD98];
        v46 = [*(a1 + 32) embeddingResults];
        v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(v46, "count")}];
        v11 = [v42 pn_genericErrorWithLocalizedDescription:{@"[PNTextEmbeddingService] Text embedding generation failed with no explicit underlying error with %@ embeddingResults", v47}];

        goto LABEL_27;
      }

      v44 = [v42 pn_genericErrorWithLocalizedDescription:{@"[PNTextEmbeddingService] Text embedding generation failed with no explicit underlying error with %@ embeddingResults", @"nil"}];
    }

    v11 = v44;
LABEL_27:

    (*(*(a1 + 48) + 16))();
LABEL_33:
  }
}

- (void)prewarmWithCompletionHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_madServiceLock);
  if (!self->_madService)
  {
    v5 = [getMADServiceClass() service];
    madService = self->_madService;
    self->_madService = v5;
  }

  os_unfair_lock_unlock(&self->_madServiceLock);
  v7 = objc_alloc_init(getMADTextEmbeddingRequestClass());
  v8 = v7;
  if (v7)
  {
    [v7 setComputeThreshold:1];
    v9 = self->_madService;
    v16[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__PNTextEmbeddingService_prewarmWithCompletionHandler___block_invoke;
    v14[3] = &unk_1E82A20C8;
    v11 = v4;
    v15 = v11;
    LODWORD(v9) = [(MADService *)v9 prewarmTextRequests:v10 completionHandler:v14];

    if (v9 == -1)
    {
      v12 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"[PNTextEmbeddingService] Failed to prewarm embedding model."];
      (*(v11 + 2))(v11, v12);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] pn_genericErrorWithLocalizedDescription:@"[PNTextEmbeddingService] Failed to create MADTextEmbeddingRequest for prewarming."];
    (*(v4 + 2))(v4, v13);
  }
}

- (PNTextEmbeddingService)init
{
  v6.receiver = self;
  v6.super_class = PNTextEmbeddingService;
  v2 = [(PNTextEmbeddingService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    madService = v2->_madService;
    v2->_madService = 0;

    v3->_madServiceLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

@end