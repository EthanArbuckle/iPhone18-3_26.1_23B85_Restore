@interface SSURLConnectionResponse
- (BOOL)ssv_isExpiredResponse;
- (NSData)databaseEncoding;
- (NSString)storeCorrelationID;
- (SSURLConnectionResponse)initWithDatabaseEncoding:(id)a3;
- (SSURLConnectionResponse)initWithURLResponse:(id)a3 bodyData:(id)a4;
- (SSURLConnectionResponse)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSURLConnectionResponse

- (BOOL)ssv_isExpiredResponse
{
  v2 = [(SSURLConnectionResponse *)self URLResponse];
  v3 = [v2 ssv_isExpiredResponse];

  return v3;
}

- (SSURLConnectionResponse)initWithURLResponse:(id)a3 bodyData:(id)a4
{
  v8.receiver = self;
  v8.super_class = SSURLConnectionResponse;
  v6 = [(SSURLConnectionResponse *)&v8 init];
  if (v6)
  {
    v6->_bodyData = [a4 copy];
    v6->_urlResponse = a3;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSURLConnectionResponse;
  [(SSURLConnectionResponse *)&v3 dealloc];
}

- (SSURLConnectionResponse)initWithDatabaseEncoding:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36.receiver = self;
    v36.super_class = SSURLConnectionResponse;
    v6 = [(SSURLConnectionResponse *)&v36 init];
    if (v6)
    {
      v7 = [v5 objectForKey:@"9"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = 0;
        v6->_urlResponse = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v35];
        if (v35)
        {
          v8 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          v9 = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            v10 = v9 | 2;
          }

          else
          {
            v10 = v9;
          }

          if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v11 = objc_opt_class();
            v37 = 138543618;
            v38 = v11;
            v39 = 2114;
            v40 = v35;
            LODWORD(v34) = 22;
            v33 = &v37;
            v12 = _os_log_send_and_compose_impl();
            if (v12)
            {
              v13 = v12;
              v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v37, v34}];
              free(v13);
              SSFileLog(v8, @"%@", v15, v16, v17, v18, v19, v20, v14);
            }
          }
        }
      }

      else
      {
        v21 = [v5 objectForKey:@"7"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [MEMORY[0x1E695DFF8] URLWithString:v21];
          if (v22)
          {
            v23 = v22;
            v24 = [v5 objectForKey:@"4"];
            if (objc_opt_respondsToSelector())
            {
              v25 = [v24 integerValue];
            }

            else
            {
              v25 = 0;
            }

            v26 = [v5 objectForKey:@"2"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = 0;
            }

            v27 = objc_alloc(MEMORY[0x1E696AC68]);
            v28 = [v27 initWithURL:v23 statusCode:v25 HTTPVersion:*MEMORY[0x1E695ADB8] headerFields:v26];
            if ([(NSHTTPURLResponse *)v28 _CFURLResponse])
            {
              [v5 objectForKey:@"3"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                CFURLResponseSetMIMEType();
              }

              v29 = [v5 objectForKey:@"1"];
              if (objc_opt_respondsToSelector())
              {
                [v29 longLongValue];
                CFURLResponseSetExpectedContentLength();
              }
            }

            v6->_urlResponse = v28;
          }
        }
      }

      v30 = [v5 objectForKey:{@"0", v33}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_bodyData = v30;
      }

      v31 = [v5 objectForKey:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6->_metricsPageEvent = [(SSMetricsMutableEvent *)[SSMetricsPageEvent alloc] initWithBodyDictionary:v31];
      }
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (NSData)databaseEncoding
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  bodyData = self->_bodyData;
  if (bodyData)
  {
    [v3 setObject:bodyData forKey:@"0"];
  }

  metricsPageEvent = self->_metricsPageEvent;
  if (metricsPageEvent)
  {
    [v4 setObject:-[SSMetricsMutableEvent bodyDictionary](metricsPageEvent forKey:{"bodyDictionary"), @"8"}];
  }

  urlResponse = self->_urlResponse;
  if (urlResponse)
  {
    v26 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:urlResponse requiringSecureCoding:1 error:&v26];
    if (v26)
    {
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = v10 | 2;
      }

      else
      {
        v11 = v10;
      }

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v27 = 138543618;
        v28 = v12;
        v29 = 2114;
        v30 = v26;
        LODWORD(v25) = 22;
        v24 = &v27;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v27, v25}];
          free(v14);
          SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
        }
      }
    }

    if ([v8 length])
    {
      [v4 setObject:v8 forKey:@"7"];
    }
  }

  v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:0];

  return v22;
}

- (NSString)storeCorrelationID
{
  v2 = [(NSDictionary *)[(NSHTTPURLResponse *)self->_urlResponse allHeaderFields] objectForKey:@"x-apple-jingle-correlation-key"];
  if ([(NSString *)v2 length])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_bodyData);
  SSXPCDictionarySetCFObject(v3, "3", [(SSMetricsMutableEvent *)self->_metricsPageEvent bodyDictionary]);
  SSXPCDictionarySetCFObject(v3, "9", self->_urlResponse);
  return v3;
}

- (SSURLConnectionResponse)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v9.receiver = self;
    v9.super_class = SSURLConnectionResponse;
    v5 = [(SSURLConnectionResponse *)&v9 init];
    if (v5)
    {
      objc_opt_class();
      v5->_bodyData = SSXPCDictionaryCopyCFObjectWithClass(a3, "0");
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "3");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_metricsPageEvent = [(SSMetricsMutableEvent *)[SSMetricsPageEvent alloc] initWithBodyDictionary:v7];
      }

      value = xpc_dictionary_get_value(a3, "9");
      if (value)
      {
        v5->_urlResponse = [objc_alloc(MEMORY[0x1E696AC68]) initWithXPCEncoding:value];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end