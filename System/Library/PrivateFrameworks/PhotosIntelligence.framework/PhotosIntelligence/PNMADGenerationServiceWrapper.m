@interface PNMADGenerationServiceWrapper
- (PNMADGenerationServiceWrapper)init;
- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (void)requestAlchemistProcessingForURL:(id)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6;
@end

@implementation PNMADGenerationServiceWrapper

- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(PNMADGenerationServiceWrapper *)self generationService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__PNMADGenerationServiceWrapper_requestAlchemistProcessingForPixelBuffer_options_progressHandler_completionHandler___block_invoke;
  v15[3] = &unk_1E82A2600;
  v16 = v10;
  v14 = v10;
  [v13 requestAlchemistProcessingForPixelBuffer:a3 options:v12 progressHandler:v11 completionHandler:v15];
}

- (void)requestAlchemistProcessingForURL:(id)a3 options:(id)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PNMADGenerationServiceWrapper *)self generationService];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__PNMADGenerationServiceWrapper_requestAlchemistProcessingForURL_options_progressHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E82A2600;
  v17 = v10;
  v15 = v10;
  [v14 requestAlchemistProcessingForURL:v13 options:v12 progressHandler:v11 completionHandler:v16];
}

- (PNMADGenerationServiceWrapper)init
{
  v8.receiver = self;
  v8.super_class = PNMADGenerationServiceWrapper;
  v2 = [(PNMADGenerationServiceWrapper *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMADGenerationServiceClass_softClass;
    v13 = getMADGenerationServiceClass_softClass;
    if (!getMADGenerationServiceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMADGenerationServiceClass_block_invoke;
      v9[3] = &unk_1E82A2920;
      v9[4] = &v10;
      __getMADGenerationServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = [v3 service];
    generationService = v2->_generationService;
    v2->_generationService = v5;
  }

  return v2;
}

@end