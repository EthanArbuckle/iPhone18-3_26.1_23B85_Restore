@interface PKValueAddedServiceWebService
- (PKValueAddedServiceWebService)initWithValueAddedServiceTransaction:(id)transaction;
- (void)downloadMerchantPayloadWithCompletion:(id)completion;
- (void)downloadPassWithCompletion:(id)completion;
@end

@implementation PKValueAddedServiceWebService

- (PKValueAddedServiceWebService)initWithValueAddedServiceTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12.receiver = self;
  v12.super_class = PKValueAddedServiceWebService;
  v6 = [(PKValueAddedServiceWebService *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_valueAddedTransaction, transaction);
    defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    [defaultSessionConfiguration setURLCache:0];
    v9 = [MEMORY[0x1E695AC78] sessionWithConfiguration:defaultSessionConfiguration];
    urlSession = v7->_urlSession;
    v7->_urlSession = v9;
  }

  return v7;
}

- (void)downloadMerchantPayloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E695DFF8];
  urlSession = self->_urlSession;
  merchantURL = [(PKValueAddedServiceTransaction *)self->_valueAddedTransaction merchantURL];
  v8 = [v5 URLWithString:merchantURL];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __71__PKValueAddedServiceWebService_downloadMerchantPayloadWithCompletion___block_invoke;
  v14 = &unk_1E79CDA40;
  selfCopy = self;
  v16 = completionCopy;
  v9 = completionCopy;
  v10 = [(NSURLSession *)urlSession dataTaskWithURL:v8 completionHandler:&v11];
  [v10 resume];
}

void __71__PKValueAddedServiceWebService_downloadMerchantPayloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(a1 + 40))
  {
    if (v9)
    {
      v11 = PKLogFacilityTypeGetObject(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "VAS Merchant Payload download failed with error: %@", &v16, 0xCu);
      }

      v12 = *(*(a1 + 40) + 16);
    }

    else
    {
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *(v14 + 24) = v13;

      v12 = *(*(a1 + 40) + 16);
    }

    v12();
  }
}

- (void)downloadPassWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSDictionary *)self->_merchantPayload objectForKey:@"URLs"];
  v6 = [v5 objectForKey:@"passDownload"];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  scheme = [v7 scheme];
  if ([scheme isEqualToString:@"https"])
  {
    v9 = 0;
  }

  else
  {
    scheme2 = [v7 scheme];
    if ([scheme2 isEqualToString:@"http"])
    {
      v9 = !PKAllowHTTP();
    }

    else
    {
      v9 = 1;
    }
  }

  if (!v7 || v9)
  {
    v13 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "VAS Pass download failed: invalid passDownload URL", v14, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    urlSession = self->_urlSession;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PKValueAddedServiceWebService_downloadPassWithCompletion___block_invoke;
    v15[3] = &unk_1E79CDA40;
    v15[4] = self;
    v16 = completionCopy;
    v12 = [(NSURLSession *)urlSession dataTaskWithURL:v7 completionHandler:v15];
    [v12 resume];
  }
}

void __60__PKValueAddedServiceWebService_downloadPassWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 40))
  {
    v10 = [v8 MIMEType];
    if ([v10 isEqualToString:@"application/vnd.apple.pkpass"])
    {
      v11 = [v8 expectedContentLength];

      if (v11 <= 15728640)
      {
        if (!v9)
        {
          v16 = [(PKObject *)PKPass createWithData:v7 warnings:0 error:0];
          v17 = *(a1 + 32);
          v18 = *(v17 + 32);
          *(v17 + 32) = v16;

          (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 32) != 0);
          goto LABEL_12;
        }

        v12 = PKLogFacilityTypeGetObject(2uLL);
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        v19 = 138412290;
        v20 = v9;
        v13 = "VAS Pass download failed with error: %@";
        v14 = v12;
        v15 = 12;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v12 = PKLogFacilityTypeGetObject(2uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
      goto LABEL_12;
    }

    LOWORD(v19) = 0;
    v13 = "VAS Pass download failed: invalid pass";
    v14 = v12;
    v15 = 2;
LABEL_10:
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v13, &v19, v15);
    goto LABEL_11;
  }

LABEL_12:
}

@end