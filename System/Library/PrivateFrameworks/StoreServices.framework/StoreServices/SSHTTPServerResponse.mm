@interface SSHTTPServerResponse
- (SSHTTPServerResponse)initWithStatusCode:(signed __int16)code;
- (__CFHTTPMessage)copyHTTPMessage;
- (id)bagFromBody;
- (void)setBodyWithBag:(id)bag;
@end

@implementation SSHTTPServerResponse

- (SSHTTPServerResponse)initWithStatusCode:(signed __int16)code
{
  v5.receiver = self;
  v5.super_class = SSHTTPServerResponse;
  result = [(SSHTTPServerResponse *)&v5 init];
  if (result)
  {
    result->_statusCode = code;
  }

  return result;
}

- (void)setBodyWithBag:(id)bag
{
  v31 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  body = self->_body;
  self->_body = 0;

  if (bagCopy)
  {
    if ([MEMORY[0x1E696AE40] propertyList:bagCopy isValidForFormat:100])
    {
      v6 = SSViTunesStoreFramework();
      v7 = SSVWeakLinkedSymbolForString("ISCopyGzippedDataForData", v6);
      v26 = 0;
      v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:bagCopy format:100 options:0 error:&v26];
      v9 = v26;
      v10 = v7(v8);
      v11 = self->_body;
      self->_body = v10;

      if (v9)
      {
LABEL_6:
        v12 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v12)
        {
          v12 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v12 shouldLog];
        if ([v12 shouldLogToDisk])
        {
          v14 = shouldLog | 2;
        }

        else
        {
          v14 = shouldLog;
        }

        oSLogObject = [v12 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v14 &= 2u;
        }

        if (v14)
        {
          v16 = objc_opt_class();
          v27 = 138543618;
          v28 = v16;
          v29 = 2112;
          v30 = v9;
          v17 = v16;
          LODWORD(v25) = 22;
          v18 = _os_log_send_and_compose_impl();

          if (!v18)
          {
LABEL_17:

            goto LABEL_18;
          }

          oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v27, v25}];
          free(v18);
          SSFileLog(v12, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
        }

        goto LABEL_17;
      }
    }
  }

  if (!self->_body)
  {
    v9 = 0;
    goto LABEL_6;
  }

LABEL_18:
}

- (id)bagFromBody
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = SSViTunesStoreFramework();
  v4 = SSVWeakLinkedSymbolForString("ISCopyDecompressedGZipDataForData", v3);
  v5 = v4(self->_body);
  if (v5)
  {
    v6 = v5;
    goto LABEL_4;
  }

  v6 = self->_body;
  if (v6)
  {
LABEL_4:
    v24 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v24];
    v8 = v24;
    if (!v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v25 = 138543618;
      v26 = v13;
      v27 = 2112;
      v28 = v8;
      v14 = v13;
      LODWORD(v23) = 22;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v25, v23}];
      free(v15);
      SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_16;
  }

  v7 = 0;
LABEL_18:

  return v7;
}

- (__CFHTTPMessage)copyHTTPMessage
{
  headers = [(SSHTTPServerResponse *)self headers];
  v4 = [headers mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v6;

  [v7 setObject:@"close" forKeyedSubscript:@"Connection"];
  v8 = [v7 objectForKeyedSubscript:@"Content-Type"];

  if (!v8)
  {
    [v7 setObject:@"text/html" forKeyedSubscript:@"Content-Type"];
  }

  body = [(SSHTTPServerResponse *)self body];

  if (body)
  {
    v10 = MEMORY[0x1E696AEC0];
    body2 = [(SSHTTPServerResponse *)self body];
    v12 = [v10 stringWithFormat:@"%lu", objc_msgSend(body2, "length")];
    [v7 setObject:v12 forKeyedSubscript:@"Content-Length"];
  }

  else
  {
    [v7 removeObjectForKey:@"Content-Length"];
  }

  v13 = *MEMORY[0x1E695E480];
  statusCode = [(SSHTTPServerResponse *)self statusCode];
  Response = CFHTTPMessageCreateResponse(v13, statusCode, 0, *MEMORY[0x1E695ADB8]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__SSHTTPServerResponse_copyHTTPMessage__block_invoke;
  v17[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v17[4] = Response;
  [v7 enumerateKeysAndObjectsUsingBlock:v17];
  CFHTTPMessageSetBody(Response, [(SSHTTPServerResponse *)self body]);

  return Response;
}

@end