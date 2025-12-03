@interface SSLookupProperties
- (SSLookupProperties)initWithXPCEncoding:(id)encoding;
- (id)copyRequestParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)valueForRequestParameter:(id)parameter;
- (void)dealloc;
- (void)setValue:(id)value forRequestParameter:(id)parameter;
@end

@implementation SSLookupProperties

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLookupProperties;
  [(SSLookupProperties *)&v3 dealloc];
}

- (id)copyRequestParameters
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  requestParameters = self->_requestParameters;
  v5 = [(NSMutableDictionary *)requestParameters countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(requestParameters);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_requestParameters objectForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v10 componentsJoinedByString:{@", "}];
        }

        [v3 setObject:v10 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)requestParameters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  if (self->_location)
  {
    if (SSLookupPropertiesLoadCoreLocation_sOnce != -1)
    {
      [SSLookupProperties copyRequestParameters];
    }

    v11 = MEMORY[0x1E696AEC0];
    [(CLLocation *)self->_location coordinate];
    [v3 setObject:objc_msgSend(v11 forKey:{"stringWithFormat:", @"%.4f", v12), @"lat"}];
    v13 = MEMORY[0x1E696AEC0];
    [(CLLocation *)self->_location coordinate];
    [v3 setObject:objc_msgSend(v13 forKey:{"stringWithFormat:", @"%.4f", v14), @"lon"}];
  }

  return v3;
}

- (void)setValue:(id)value forRequestParameter:(id)parameter
{
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [value copy];
      requestParameters = self->_requestParameters;
      v10 = v7;
      if (!requestParameters)
      {
        requestParameters = objc_alloc_init(MEMORY[0x1E695DF90]);
        v7 = v10;
        self->_requestParameters = requestParameters;
      }

      [(NSMutableDictionary *)requestParameters setObject:v7 forKey:parameter];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid parameter value: %@", value}];
    }
  }

  else
  {
    v9 = self->_requestParameters;

    [(NSMutableDictionary *)v9 removeObjectForKey:parameter];
  }
}

- (id)valueForRequestParameter:(id)parameter
{
  v3 = [(NSMutableDictionary *)self->_requestParameters objectForKey:parameter];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[2] = self->_localizationStyle;
  v5[1] = [(CLLocation *)self->_location copyWithZone:zone];
  v5[3] = [(NSMutableDictionary *)self->_requestParameters mutableCopyWithZone:zone];
  v5[4] = [(NSNumber *)self->_timeoutInterval copyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_localizationStyle);
  SSXPCDictionarySetCFObject(v3, "2", self->_requestParameters);
  SSXPCDictionarySetCFObject(v3, "3", self->_timeoutInterval);
  location = self->_location;
  if (location)
  {
    v21 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:location requiringSecureCoding:1 error:&v21];
    if (v21)
    {
      v6 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = shouldLog | 2;
      }

      else
      {
        v8 = shouldLog;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v9 = objc_opt_class();
        v22 = 138543618;
        v23 = v9;
        v24 = 2114;
        v25 = v21;
        LODWORD(v20) = 22;
        v10 = _os_log_send_and_compose_impl();
        if (v10)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v22, v20}];
          free(v11);
          SSFileLog(v6, @"%@", v13, v14, v15, v16, v17, v18, v12);
        }
      }
    }

    SSXPCDictionarySetCFObject(v3, "1", v5);
  }

  return v3;
}

- (SSLookupProperties)initWithXPCEncoding:(id)encoding
{
  v31 = *MEMORY[0x1E69E9840];
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v26.receiver = self;
    v26.super_class = SSLookupProperties;
    v5 = [(SSLookupProperties *)&v26 init];
    if (v5)
    {
      v5->_localizationStyle = xpc_dictionary_get_int64(encoding, "0");
      objc_opt_class();
      v5->_timeoutInterval = SSXPCDictionaryCopyCFObjectWithClass(encoding, "3");
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2");
      v5->_requestParameters = [(__CFArray *)v7 mutableCopy];

      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1");
      if (v8)
      {
        v9 = v8;
        if (SSLookupPropertiesLoadCoreLocation_sOnce != -1)
        {
          [SSLookupProperties copyRequestParameters];
        }

        v25 = 0;
        v10 = MEMORY[0x1E696ACD0];
        getCLLocationClass();
        v5->_location = [v10 unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v25];
        if (v25)
        {
          v11 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v11)
          {
            v11 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v11 shouldLog];
          if ([v11 shouldLogToDisk])
          {
            v13 = shouldLog | 2;
          }

          else
          {
            v13 = shouldLog;
          }

          if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v13 &= 2u;
          }

          if (v13)
          {
            v14 = objc_opt_class();
            v27 = 138543618;
            v28 = v14;
            v29 = 2114;
            v30 = v25;
            LODWORD(v24) = 22;
            v15 = _os_log_send_and_compose_impl();
            if (v15)
            {
              v16 = v15;
              v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v27, v24}];
              free(v16);
              SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v17);
            }
          }
        }
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