@interface PNMADGenerationServiceWrapper
- (PNMADGenerationServiceWrapper)init;
- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)requestAlchemistProcessingForURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation PNMADGenerationServiceWrapper

- (void)requestAlchemistProcessingForPixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  generationService = [(PNMADGenerationServiceWrapper *)self generationService];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__PNMADGenerationServiceWrapper_requestAlchemistProcessingForPixelBuffer_options_progressHandler_completionHandler___block_invoke;
  v15[3] = &unk_1E82A2600;
  v16 = completionHandlerCopy;
  v14 = completionHandlerCopy;
  [generationService requestAlchemistProcessingForPixelBuffer:buffer options:optionsCopy progressHandler:handlerCopy completionHandler:v15];
}

- (void)requestAlchemistProcessingForURL:(id)l options:(id)options progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  optionsCopy = options;
  lCopy = l;
  generationService = [(PNMADGenerationServiceWrapper *)self generationService];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__PNMADGenerationServiceWrapper_requestAlchemistProcessingForURL_options_progressHandler_completionHandler___block_invoke;
  v16[3] = &unk_1E82A2600;
  v17 = completionHandlerCopy;
  v15 = completionHandlerCopy;
  [generationService requestAlchemistProcessingForURL:lCopy options:optionsCopy progressHandler:handlerCopy completionHandler:v16];
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
    service = [v3 service];
    generationService = v2->_generationService;
    v2->_generationService = service;
  }

  return v2;
}

@end