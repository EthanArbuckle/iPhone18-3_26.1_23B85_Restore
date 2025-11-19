@interface SKUIRedeemIdValidateOperation
- (SKUIRedeemIdValidateOperation)initWithDictionary:(id)a3;
- (id)_subOperation;
- (void)_handleFailure:(id)a3 serverDialogDictionary:(id)a4;
- (void)_logResultsForSuccess:(BOOL)a3 failureReason:(id)a4 failureMessage:(id)a5 error:(id)a6;
- (void)main;
- (void)operation:(id)a3 selectedButton:(id)a4;
@end

@implementation SKUIRedeemIdValidateOperation

- (SKUIRedeemIdValidateOperation)initWithDictionary:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemIdValidateOperation initWithDictionary:];
  }

  v9.receiver = self;
  v9.super_class = SKUIRedeemIdValidateOperation;
  v6 = [(SKUIRedeemIdValidateOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
  }

  return v7;
}

- (void)main
{
  v3 = [(SKUIRedeemIdValidateOperation *)self _subOperation];
  v16 = 0;
  v4 = [(SKUIRedeemIdValidateOperation *)self runSubOperation:v3 returningError:&v16];
  v5 = v16;
  if (!v4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Underlying sub-operation for '%@' failed.", @"redeemValidateIdUrl"];
    [(SKUIRedeemIdValidateOperation *)self _logResultsForSuccess:0 failureReason:v9 failureMessage:0 error:v5];
    v10 = 0;
    goto LABEL_14;
  }

  v6 = [v3 dataProvider];
  v7 = [v6 output];

  v8 = [v7 objectForKeyedSubscript:@"validNationalId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v8 BOOLValue])
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      goto LABEL_12;
    }

    v12 = [v7 objectForKeyedSubscript:@"dialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unuccessful operation. We did not have a valid %@ flag in the response.", @"validNationalId"];
    v10 = 0;
  }

  v11 = 0;
LABEL_12:

  [(SKUIRedeemIdValidateOperation *)self _logResultsForSuccess:v11 failureReason:v9 failureMessage:v10 error:v5];
  if (v11)
  {
    v13 = 1;
LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SKUIRedeemIdValidateOperation_main__block_invoke;
    block[3] = &unk_2781FC228;
    block[4] = self;
    v15 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_18;
  }

LABEL_14:
  v13 = v5 | v10;
  if (!(v5 | v10))
  {
    v10 = 0;
    goto LABEL_17;
  }

  [(SKUIRedeemIdValidateOperation *)self _handleFailure:v5 serverDialogDictionary:v10];
LABEL_18:
}

- (void)_handleFailure:(id)a3 serverDialogDictionary:(id)a4
{
  v8 = a4;
  if (v8)
  {
    v6 = [objc_alloc(MEMORY[0x277D7FCE8]) initWithDialogDictionary:v8];
    v7 = [MEMORY[0x277D7FCF0] operationWithDialog:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D7FCF0] operationWithError:a3];
  }

  [v7 setDelegate:self];
  [(SKUIRedeemIdValidateOperation *)self runSubOperation:v7 returningError:0];
}

- (void)operation:(id)a3 selectedButton:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SKUIRedeemIdValidateOperation_operation_selectedButton___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_subOperation
{
  v3 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v4 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v4 setURLBagKey:@"redeemValidateIdUrl"];
  [v4 setITunesStoreRequest:1];
  v5 = SSVDefaultUserAgent();
  [v4 setValue:v5 forHTTPHeaderField:@"User-Agent"];

  [v4 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v4 setHTTPMethod:@"POST"];
  v6 = MEMORY[0x277CCAAA0];
  v7 = [(SKUIRedeemIdValidateOperation *)self dictionary];
  v8 = [v6 dataWithJSONObject:v7 options:0 error:0];

  [v4 setHTTPBody:v8];
  [v3 setRequestProperties:v4];
  v9 = [MEMORY[0x277D7FD38] provider];
  [v3 setDataProvider:v9];

  return v3;
}

- (void)_logResultsForSuccess:(BOOL)a3 failureReason:(id)a4 failureMessage:(id)a5 error:(id)a6
{
  v8 = a3;
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v15 = @"validNationalId";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v14 = [v13 mutableCopy];

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"dialog"];
  }

  if (v9)
  {
    [v14 setObject:v9 forKeyedSubscript:@"failure reason"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:@"error"];
  }

  SSDebugLog();
}

- (void)initWithDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemIdValidateOperation initWithDictionary:]";
}

@end