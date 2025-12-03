@interface SKUIGiftValidator
- (SKUIGiftValidator)initWithValidationURL:(id)l clientContext:(id)context;
- (void)_finishValidationWithResponse:(id)response error:(id)error attemptNumber:(int64_t)number block:(id)block;
- (void)_validateWithBodyDictionary:(id)dictionary completionBlock:(id)block;
- (void)cancelValidation;
- (void)validateDonation:(id)donation withCompletionBlock:(id)block;
- (void)validateGift:(id)gift withCompletionBlock:(id)block;
@end

@implementation SKUIGiftValidator

- (SKUIGiftValidator)initWithValidationURL:(id)l clientContext:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftValidator initWithValidationURL:clientContext:];
  }

  v13.receiver = self;
  v13.super_class = SKUIGiftValidator;
  v8 = [(SKUIGiftValidator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, context);
    v10 = [lCopy copy];
    validationURL = v9->_validationURL;
    v9->_validationURL = v10;
  }

  return v9;
}

- (void)cancelValidation
{
  [(SSVLoadURLOperation *)self->_validationOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_validationOperation cancel];
  validationOperation = self->_validationOperation;
  self->_validationOperation = 0;
}

- (void)validateDonation:(id)donation withCompletionBlock:(id)block
{
  blockCopy = block;
  hTTPBodyDictionary = [donation HTTPBodyDictionary];
  [(SKUIGiftValidator *)self _validateWithBodyDictionary:hTTPBodyDictionary completionBlock:blockCopy];
}

- (void)validateGift:(id)gift withCompletionBlock:(id)block
{
  blockCopy = block;
  hTTPBodyDictionary = [gift HTTPBodyDictionary];
  [(SKUIGiftValidator *)self _validateWithBodyDictionary:hTTPBodyDictionary completionBlock:blockCopy];
}

- (void)_finishValidationWithResponse:(id)response error:(id)error attemptNumber:(int64_t)number block:(id)block
{
  responseCopy = response;
  errorCopy = error;
  blockCopy = block;
  if (self->_validationCount == number)
  {
    [(SSVLoadURLOperation *)self->_validationOperation setOutputBlock:0];
    validationOperation = self->_validationOperation;
    self->_validationOperation = 0;

    if (blockCopy)
    {
      v13 = [[SKUIGiftValidationResponse alloc] initWithValidationDictionary:responseCopy];
      blockCopy[2](blockCopy, v13, errorCopy);
    }
  }
}

- (void)_validateWithBodyDictionary:(id)dictionary completionBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  [(SKUIGiftValidator *)self cancelValidation];
  v24 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:0 error:&v24];
  v9 = v24;
  if (v8)
  {
    v10 = (self->_validationCount + 1);
    self->_validationCount = v10;
    v11 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:self->_validationURL];
    [v11 setHTTPBody:v8];
    [v11 setHTTPMethod:@"POST"];
    [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v11];
    validationOperation = self->_validationOperation;
    self->_validationOperation = v12;

    v14 = self->_validationOperation;
    v15 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
    [(SSVLoadURLOperation *)v14 setDataConsumer:v15];

    v16 = self->_validationOperation;
    v17 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [(SSVLoadURLOperation *)v16 setStoreFrontSuffix:v17];

    objc_initWeak(&location, self);
    v18 = self->_validationOperation;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__SKUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke;
    v20[3] = &unk_2781FFE30;
    objc_copyWeak(v22, &location);
    v22[1] = v10;
    v21 = blockCopy;
    [(SSVLoadURLOperation *)v18 setOutputBlock:v20];
    operationQueue = [(SKUIGiftValidator *)self operationQueue];
    [operationQueue addOperation:self->_validationOperation];

    objc_destroyWeak(v22);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, v9);
  }
}

void __65__SKUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SKUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke_2;
  block[3] = &unk_2781F80A0;
  objc_copyWeak(v13, a1 + 5);
  v10 = v5;
  v11 = v6;
  v13[1] = a1[6];
  v12 = a1[4];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v13);
}

void __65__SKUIGiftValidator__validateWithBodyDictionary_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40) attemptNumber:*(a1 + 64) block:*(a1 + 48)];
}

- (void)initWithValidationURL:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftValidator initWithValidationURL:clientContext:]";
}

@end