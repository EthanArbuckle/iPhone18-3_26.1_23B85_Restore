@interface BRCAcceptShareOperation
- (BRCAcceptShareOperation)initWithShareMetadata:(id)metadata syncContext:(id)context sessionContext:(id)sessionContext;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCAcceptShareOperation

- (BRCAcceptShareOperation)initWithShareMetadata:(id)metadata syncContext:(id)context sessionContext:(id)sessionContext
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = BRCAcceptShareOperation;
  v10 = [(_BRCOperation *)&v13 initWithName:@"share/accept" syncContext:context sessionContext:sessionContext];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shareMetadata, metadata);
  }

  return v11;
}

- (void)main
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC158]);
  v11[0] = self->_shareMetadata;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v3 initWithShareMetadatas:v4];

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__6;
  v9[4] = __Block_byref_object_dispose__6;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__BRCAcceptShareOperation_main__block_invoke;
  v8[3] = &unk_278500D78;
  v8[4] = v9;
  [v5 setPerShareCompletionBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__BRCAcceptShareOperation_main__block_invoke_2;
  v7[3] = &unk_278500DA0;
  v7[4] = self;
  v7[5] = v9;
  [v5 setAcceptSharesCompletionBlock:v7];
  [(_BRCOperation *)self addSubOperation:v5];
  _Block_object_dispose(v9, 8);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  acceptShareCompletionBlock = [(BRCAcceptShareOperation *)self acceptShareCompletionBlock];

  if (acceptShareCompletionBlock)
  {
    acceptShareCompletionBlock2 = [(BRCAcceptShareOperation *)self acceptShareCompletionBlock];
    (acceptShareCompletionBlock2)[2](acceptShareCompletionBlock2, resultCopy, errorCopy);
  }

  v10.receiver = self;
  v10.super_class = BRCAcceptShareOperation;
  [(_BRCOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end