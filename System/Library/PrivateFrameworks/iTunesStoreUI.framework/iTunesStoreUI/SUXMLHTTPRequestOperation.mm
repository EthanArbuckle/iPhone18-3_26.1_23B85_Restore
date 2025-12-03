@interface SUXMLHTTPRequestOperation
- (BOOL)_isAllowedURL:(id)l withURLBag:(id)bag;
- (SUXMLHTTPRequestOperation)initWithRequestProperties:(id)properties;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation SUXMLHTTPRequestOperation

- (SUXMLHTTPRequestOperation)initWithRequestProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = SUXMLHTTPRequestOperation;
  v5 = [(SUXMLHTTPRequestOperation *)&v9 init];
  if (v5)
  {
    v6 = [propertiesCopy copy];
    requestProperties = v5->_requestProperties;
    v5->_requestProperties = v6;
  }

  return v5;
}

- (id)outputBlock
{
  [(SUXMLHTTPRequestOperation *)self lock];
  v3 = [self->_outputBlock copy];
  [(SUXMLHTTPRequestOperation *)self unlock];
  v4 = MEMORY[0x1C6916C70](v3);

  return v4;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(SUXMLHTTPRequestOperation *)self lock];
  if (self->_outputBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    outputBlock = self->_outputBlock;
    self->_outputBlock = v4;
  }

  [(SUXMLHTTPRequestOperation *)self unlock];
}

- (void)run
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v29 = 0;
  v4 = [(SUXMLHTTPRequestOperation *)self loadedURLBagWithContext:v3 returningError:&v29];
  v5 = v29;
  if (!v4)
  {
    v10 = 0;
    response = 0;
    output = 0;
    goto LABEL_16;
  }

  v6 = [(SSURLRequestProperties *)self->_requestProperties URL];
  v7 = [(SUXMLHTTPRequestOperation *)self _isAllowedURL:v6 withURLBag:v4];

  if (!v7)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = objc_opt_class();
      requestProperties = self->_requestProperties;
      v21 = v19;
      v22 = [(SSURLRequestProperties *)requestProperties URL];
      v30 = 138412546;
      v31 = v19;
      v32 = 2112;
      v33 = v22;
      LODWORD(v27) = 22;
      v26 = &v30;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_14:

        v11 = SSError();
        v10 = 0;
        response = 0;
        output = 0;
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v30, v27}];
      free(v23);
      v26 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  v8 = objc_alloc_init(MEMORY[0x1E69E4808]);
  provider = [MEMORY[0x1E69E4738] provider];
  [v8 setDataProvider:provider];

  [v8 setRequestProperties:self->_requestProperties];
  v28 = v5;
  v10 = [(SUXMLHTTPRequestOperation *)self runSubOperation:v8 returningError:&v28];
  v11 = v28;

  dataProvider = [v8 dataProvider];
  output = [dataProvider output];

  response = [v8 response];
  v5 = v8;
LABEL_15:

  v5 = v11;
LABEL_16:
  outputBlock = [(SUXMLHTTPRequestOperation *)self outputBlock];
  v25 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v10, v5, response, output);
    [(SUXMLHTTPRequestOperation *)self setOutputBlock:0];
  }
}

- (BOOL)_isAllowedURL:(id)l withURLBag:(id)bag
{
  lCopy = l;
  bagCopy = bag;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([lCopy isFileURL])
  {
    v7 = 0;
  }

  else
  {
    v8 = [bagCopy valueForKey:@"p2-client-options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKey:@"origin-access-whitelist"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        host = [lCopy host];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __54__SUXMLHTTPRequestOperation__isAllowedURL_withURLBag___block_invoke;
        v13[3] = &unk_1E8164FC8;
        v11 = host;
        v14 = v11;
        v15 = &v16;
        [v9 enumerateKeysAndObjectsUsingBlock:v13];
      }
    }

    v7 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v7 & 1;
}

void __54__SUXMLHTTPRequestOperation__isAllowedURL_withURLBag___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
    }

    else
    {
      v7 = 0;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v13 + 1) + 8 * i) isEqualToString:*(a1 + 32)])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

@end