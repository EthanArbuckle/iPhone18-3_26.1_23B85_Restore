@interface SSPurchaseResponse
- (SSPurchaseResponse)initWithCoder:(id)coder;
- (SSPurchaseResponse)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (id)downloadMetadataForItemIdentifier:(int64_t)identifier;
- (id)downloadsMetadata;
- (id)responseMetrics;
- (id)transactionIdentifierForItemIdentifier:(int64_t)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSPurchaseResponse

- (id)downloadMetadataForItemIdentifier:(int64_t)identifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__61;
  v14 = __Block_byref_object_dispose__61;
  v15 = 0;
  bodyData = [(SSURLConnectionResponse *)self->_response bodyData];
  if (bodyData)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"items"];
      if (!v6)
      {
        v6 = [v5 objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__SSPurchaseResponse_downloadMetadataForItemIdentifier___block_invoke;
        v9[3] = &unk_1E84B2368;
        v9[4] = &v10;
        v9[5] = identifier;
        [v6 enumerateObjectsUsingBlock:v9];
      }
    }
  }

  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __56__SSPurchaseResponse_downloadMetadataForItemIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SSDownloadMetadata alloc] initWithDictionary:v7];
    if ([(SSDownloadMetadata *)v6 itemIdentifier]== *(a1 + 40))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
      *a4 = 1;
    }
  }
}

- (id)downloadsMetadata
{
  bodyData = [(SSURLConnectionResponse *)self->_response bodyData];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__61;
  v12 = __Block_byref_object_dispose__61;
  v13 = objc_opt_new();
  if (bodyData)
  {
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 objectForKey:@"items"];
      if (!v4)
      {
        v4 = [v3 objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __39__SSPurchaseResponse_downloadsMetadata__block_invoke;
        v7[3] = &unk_1E84B2390;
        v7[4] = &v8;
        [v4 enumerateObjectsUsingBlock:v7];
      }
    }
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__SSPurchaseResponse_downloadsMetadata__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[SSDownloadMetadata alloc] initWithDictionary:v4];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

- (id)transactionIdentifierForItemIdentifier:(int64_t)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  transactionIdentifiers = self->_transactionIdentifiers;
  v5 = 0x1E696A000;
  if (!transactionIdentifiers)
  {
    bodyData = [(SSURLConnectionResponse *)self->_response bodyData];
    if (bodyData)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:0];
      v9 = 0x1E695D000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKey:@"items"];
        if (!v10)
        {
          v10 = [v8 objectForKey:@"songList"];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v8;
          v37 = bodyData;
          identifierCopy = identifier;
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = self->_transactionIdentifiers;
          self->_transactionIdentifiers = v11;

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v10;
          v13 = v10;
          v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v41;
            v17 = off_1E84AB000;
            do
            {
              v18 = 0;
              v39 = v15;
              do
              {
                if (*v41 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v40 + 1) + 8 * v18);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = [objc_alloc(v17[40]) initWithDictionary:v19];
                  itemIdentifier = [v20 itemIdentifier];
                  transactionIdentifier = [v20 transactionIdentifier];
                  v23 = transactionIdentifier;
                  if (itemIdentifier)
                  {
                    v24 = transactionIdentifier == 0;
                  }

                  else
                  {
                    v24 = 1;
                  }

                  if (!v24)
                  {
                    v25 = v16;
                    v26 = v13;
                    v27 = v9;
                    v28 = v17;
                    v29 = self->_transactionIdentifiers;
                    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:itemIdentifier];
                    v31 = v29;
                    v17 = v28;
                    v9 = v27;
                    v13 = v26;
                    v16 = v25;
                    v15 = v39;
                    [(NSMutableDictionary *)v31 setObject:v23 forKey:v30];
                  }
                }

                ++v18;
              }

              while (v15 != v18);
              v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
            }

            while (v15);
          }

          bodyData = v37;
          identifier = identifierCopy;
          v5 = 0x1E696A000uLL;
          v10 = v35;
          v8 = v36;
        }
      }
    }

    transactionIdentifiers = self->_transactionIdentifiers;
  }

  v32 = [*(v5 + 3480) numberWithLongLong:identifier];
  v33 = [(NSMutableDictionary *)transactionIdentifiers objectForKey:v32];

  return v33;
}

- (id)responseMetrics
{
  uRLResponse = [(SSPurchaseResponse *)self URLResponse];
  bodyData = [uRLResponse bodyData];

  if (bodyData)
  {
    v4 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
    v5 = [v4 objectForData:bodyData response:0 error:0];

    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKey:@"metrics"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSPurchaseResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = SSPurchaseResponse;
  v5 = [(SSPurchaseResponse *)&v28 init];
  if (v5)
  {
    v5->_cancelsPurchaseBatch = [coderCopy decodeBoolForKey:@"0"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"4"];
    downloadIdentifiers = v5->_downloadIdentifiers;
    v5->_downloadIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"1"];
    error = v5->_error;
    v5->_error = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"2"];
    purchase = v5->_purchase;
    v5->_purchase = v13;

    [coderCopy decodeDoubleForKey:@"5"];
    v5->_requestStartTime = v15;
    v16 = [SSURLConnectionResponse alloc];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"3"];
    v18 = [(SSURLConnectionResponse *)v16 initWithDatabaseEncoding:v17];
    response = v5->_response;
    v5->_response = v18;

    [coderCopy decodeDoubleForKey:@"6"];
    v5->_responseEndTime = v20;
    [coderCopy decodeDoubleForKey:@"7"];
    v5->_responseStartTime = v21;
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"8"];
    tidHeaders = v5->_tidHeaders;
    v5->_tidHeaders = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cancelsPurchaseBatch = self->_cancelsPurchaseBatch;
  coderCopy = coder;
  [coderCopy encodeBool:cancelsPurchaseBatch forKey:@"0"];
  [coderCopy encodeObject:self->_downloadIdentifiers forKey:@"4"];
  [coderCopy encodeObject:self->_error forKey:@"1"];
  [coderCopy encodeObject:self->_purchase forKey:@"2"];
  [coderCopy encodeDouble:@"5" forKey:self->_requestStartTime];
  databaseEncoding = [(SSURLConnectionResponse *)self->_response databaseEncoding];
  [coderCopy encodeObject:databaseEncoding forKey:@"3"];

  [coderCopy encodeDouble:@"6" forKey:self->_responseEndTime];
  [coderCopy encodeDouble:@"7" forKey:self->_responseStartTime];
  [coderCopy encodeObject:self->_tidHeaders forKey:@"8"];
}

- (SSPurchaseResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v24.receiver = self;
    v24.super_class = SSPurchaseResponse;
    v6 = [(SSPurchaseResponse *)&v24 init];
    if (v6)
    {
      v6->_cancelsPurchaseBatch = xpc_dictionary_get_BOOL(v5, "0");
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "4");
      downloadIdentifiers = v6->_downloadIdentifiers;
      v6->_downloadIdentifiers = v8;

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = xpc_dictionary_get_value(v5, "1");
      v12 = [v10 initWithXPCEncoding:v11];
      error = v6->_error;
      v6->_error = v12;

      v14 = [SSPurchase alloc];
      v15 = xpc_dictionary_get_value(v5, "2");
      v16 = [(SSPurchase *)v14 initWithXPCEncoding:v15];
      purchase = v6->_purchase;
      v6->_purchase = v16;

      v6->_requestStartTime = xpc_dictionary_get_double(v5, "5");
      v18 = [SSURLConnectionResponse alloc];
      v19 = xpc_dictionary_get_value(v5, "3");
      v20 = [(SSURLConnectionResponse *)v18 initWithXPCEncoding:v19];
      response = v6->_response;
      v6->_response = v20;

      v6->_responseEndTime = xpc_dictionary_get_double(v5, "6");
      v6->_responseStartTime = xpc_dictionary_get_double(v5, "7");
      objc_opt_class();
      v22 = SSXPCDictionaryCopyCFObjectWithClass(v5, "8");
      tidHeaders = v6->_tidHeaders;
      v6->_tidHeaders = v22;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "0", self->_cancelsPurchaseBatch);
  SSXPCDictionarySetCFObject(v3, "4", self->_downloadIdentifiers);
  SSXPCDictionarySetCFObject(v3, "1", self->_error);
  SSXPCDictionarySetCFObject(v3, "2", self->_purchase);
  xpc_dictionary_set_double(v3, "5", self->_requestStartTime);
  SSXPCDictionarySetCFObject(v3, "3", self->_response);
  xpc_dictionary_set_double(v3, "6", self->_responseEndTime);
  xpc_dictionary_set_double(v3, "7", self->_responseStartTime);
  SSXPCDictionarySetCFObject(v3, "8", self->_tidHeaders);
  return v3;
}

@end