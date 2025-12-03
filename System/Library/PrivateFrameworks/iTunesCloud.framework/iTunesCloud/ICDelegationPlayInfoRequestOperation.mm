@interface ICDelegationPlayInfoRequestOperation
- (void)_finishWithResult:(BOOL)result tokens:(id)tokens error:(id)error;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)finishWithResponse:(id)response requestDate:(id)date error:(id)error;
@end

@implementation ICDelegationPlayInfoRequestOperation

- (void)_finishWithResult:(BOOL)result tokens:(id)tokens error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  responseHandler = self->_responseHandler;
  v12 = errorCopy;
  if (responseHandler)
  {
    if (tokens)
    {
      tokensCopy = tokens;
    }

    else
    {
      tokensCopy = MEMORY[0x1E695E0F8];
    }

    responseHandler[2](responseHandler, resultCopy, tokensCopy, errorCopy);
    v11 = self->_responseHandler;
    self->_responseHandler = 0;

    errorCopy = v12;
  }

  [(ICDelegationPlayInfoRequestOperation *)self finishWithError:errorCopy];
}

- (void)finishWithError:(id)error
{
  v5.receiver = self;
  v5.super_class = ICDelegationPlayInfoRequestOperation;
  [(ICAsyncOperation *)&v5 finishWithError:error];
  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (void)execute
{
  objc_storeStrong(&self->_strongSelf, self);
  v3 = +[ICURLBagProvider sharedBagProvider];
  storeRequestContext = self->_storeRequestContext;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ICDelegationPlayInfoRequestOperation_execute__block_invoke;
  v5[3] = &unk_1E7BFA500;
  v5[4] = self;
  [v3 getBagForRequestContext:storeRequestContext withCompletionHandler:v5];
}

void __47__ICDelegationPlayInfoRequestOperation_execute__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [a2 urlForBagKey:@"getWholeHouseAudioPlayInfo"];
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 296) propertyListRepresentation];
      v6 = [*(*(a1 + 32) + 304) deviceInfo];
      v7 = [v6 deviceGUID];

      if (v7)
      {
        [v5 setObject:v7 forKey:@"guid"];
      }

      v20 = 0;
      v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v20];
      if (v8)
      {
        v9 = MEMORY[0x1E695AC18];
        v10 = v20;
        v11 = [[v9 alloc] initWithURL:v4 cachePolicy:1 timeoutInterval:30.0];
        [v11 setHTTPBody:v8];
        [v11 setHTTPMethod:@"POST"];
        [v11 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = [[ICStoreURLRequest alloc] initWithURLRequest:v11 requestContext:*(*(a1 + 32) + 304)];
        v14 = +[ICURLSessionManager defaultSession];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __47__ICDelegationPlayInfoRequestOperation_execute__block_invoke_2;
        v18[3] = &unk_1E7BF7AB0;
        v18[4] = *(a1 + 32);
        v19 = v12;
        v15 = v12;
        [v14 enqueueDataRequest:v13 withCompletionHandler:v18];
      }

      else
      {
        v17 = *(a1 + 32);
        v11 = v20;
        [v17 _finishWithResult:0 tokens:0 error:v11];
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      [*(a1 + 32) _finishWithResult:0 tokens:0 error:v5];
    }
  }

  else
  {
    v16 = *(a1 + 32);

    [v16 _finishWithResult:0 tokens:0 error:a3];
  }
}

- (void)finishWithResponse:(id)response requestDate:(id)date error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (response)
  {
    parsedBodyArray = [response parsedBodyArray];
    if (parsedBodyArray)
    {
      selfCopy = self;
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v24 = parsedBodyArray;
      v9 = parsedBodyArray;
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        v26 = v9;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            if (_NSIsNSDictionary())
            {
              v15 = [v14 objectForKey:@"dsid"];
              v16 = [v14 objectForKey:@"play-info"];
              if (_NSIsNSData() && (objc_opt_respondsToSelector() & 1) != 0)
              {
                v17 = [v14 objectForKey:@"token-ttl-in-seconds"];
                if (objc_opt_respondsToSelector())
                {
                  [v17 doubleValue];
                  v18 = [dateCopy dateByAddingTimeInterval:?];
                }

                else
                {
                  v18 = 0;
                }

                v19 = objc_alloc_init(ICDelegationPlayInfoResponseToken);
                [(ICDelegationPlayInfoResponseToken *)v19 setTokenData:v16];
                [(ICDelegationPlayInfoResponseToken *)v19 setExpirationDate:v18];
                v20 = [v14 objectForKey:@"storefront"];
                if (_NSIsNSString())
                {
                  [(ICDelegationPlayInfoResponseToken *)v19 setStorefrontIdentifier:v20];
                }

                v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v15, "longLongValue")}];
                [v27 setObject:v19 forKey:v21];

                v9 = v26;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      [(ICDelegationPlayInfoRequestOperation *)selfCopy _finishWithResult:1 tokens:v27 error:0];
      parsedBodyArray = v24;
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      [(ICDelegationPlayInfoRequestOperation *)self _finishWithResult:0 tokens:0 error:v22];
    }
  }

  else
  {
    [(ICDelegationPlayInfoRequestOperation *)self _finishWithResult:0 tokens:0 error:error];
  }
}

@end