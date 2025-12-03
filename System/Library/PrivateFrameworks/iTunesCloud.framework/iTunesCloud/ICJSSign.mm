@interface ICJSSign
- (ICJSSign)initWithConfiguration:(id)configuration;
- (id)signatureDataWithURLRequest:(id)request;
- (id)signatureStringWithURLRequest:(id)request;
@end

@implementation ICJSSign

- (id)signatureStringWithURLRequest:(id)request
{
  requestCopy = request;
  string = [MEMORY[0x1E696AD60] string];
  v6 = objc_alloc(MEMORY[0x1E696AF20]);
  v7 = [requestCopy URL];
  v8 = [v6 initWithURL:v7 resolvingAgainstBaseURL:0];

  queryItems = [v8 queryItems];
  configuration = self->_configuration;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__ICJSSign_signatureStringWithURLRequest___block_invoke;
  v14[3] = &unk_1E7BF3608;
  v15 = requestCopy;
  v16 = queryItems;
  v17 = string;
  v11 = requestCopy;
  [(ICJSSignConfiguration *)configuration _enumerateComponentsUsingBlock:v14];
  v12 = string;

  return string;
}

void __42__ICJSSign_signatureStringWithURLRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v8 = [*(a1 + 32) ic_valueForHTTPHeaderField:v5];
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (a2)
      {
        goto LABEL_8;
      }

      v7 = [*(a1 + 32) ic_valuesForCookieWithName:v5];
      v8 = [v7 firstObject];

      if (!v8)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    [*(a1 + 48) appendString:v8];

    goto LABEL_8;
  }

  v9 = *(a1 + 40);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __42__ICJSSign_signatureStringWithURLRequest___block_invoke_2;
  v22 = &unk_1E7BF35E0;
  v23 = v5;
  v10 = v9;
  v11 = v20;
  v28 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if ((v21)(v11, v18, v15, &v28))
        {
          v19 = v18;
          v28 = 1;
          goto LABEL_21;
        }

        if (v28)
        {
          goto LABEL_19;
        }

        ++v15;
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v19 = 0;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_19:
    v19 = 0;
  }

LABEL_21:

  v8 = [v19 value];

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
}

BOOL __42__ICJSSign_signatureStringWithURLRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 caseInsensitiveCompare:*(a1 + 32)] == 0;

  return v4;
}

- (id)signatureDataWithURLRequest:(id)request
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(ICJSSign *)self signatureStringWithURLRequest:request];
  uTF8String = [v4 UTF8String];
  if (uTF8String)
  {
    v6 = uTF8String;
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
    CC_SHA1(v6, [v4 length], objc_msgSend(v7, "mutableBytes"));
    [v7 setLength:16];
    v8 = +[ICDeviceInfo currentDeviceInfo];
    if ([v8 isMac])
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    fd3fa4R8(v9, [v7 mutableBytes]);
    if (v10)
    {
      v11 = v10;
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543618;
        selfCopy = self;
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to js-sign request. err=%d", &v14, 0x12u);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ICJSSign)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = ICJSSign;
  v5 = [(ICJSSign *)&v9 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;
  }

  return v5;
}

@end