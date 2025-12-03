@interface RadioTermsCheckRequest
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation RadioTermsCheckRequest

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestContext = [(RadioRequest *)self requestContext];
  v6 = objc_alloc(MEMORY[0x277D7FC30]);
  activeAccount = [MEMORY[0x277D7FCA0] activeAccount];
  v8 = [objc_alloc(MEMORY[0x277D7FA48]) initWithSystemApplicationType:0];
  v9 = [v6 initWithIdentity:activeAccount clientInfo:v8];

  mEMORY[0x277D7FC68] = [MEMORY[0x277D7FC68] sharedBagProvider];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke;
  v13[3] = &unk_279AEAE10;
  v13[4] = self;
  v14 = requestContext;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestContext;
  [mEMORY[0x277D7FC68] getBagForRequestContext:v9 withCompletionHandler:v13];
}

void __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForBagKey:@"terms-check"];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 absoluteString];
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Terms check URL: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v5];
  v9 = MEMORY[0x277CCAAA0];
  if (*(*(a1 + 32) + 80))
  {
    v25[0] = @"accepted";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    v25[1] = @"context";
    v26[0] = v10;
    v26[1] = @"radio";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v24 = 0;
    v12 = [v9 dataWithJSONObject:v11 options:0 error:&v24];
    v13 = v24;

    if (v12)
    {
      [v8 setHTTPBody:v12];
    }

    else
    {
      v14 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v13;
        _os_log_impl(&dword_261792000, v14, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Error: Unable to serialize JSON body data (%@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:&unk_2874055C8 options:0 error:0];
    [v8 setHTTPBody:v13];
  }

  v15 = [[RadioStoreBag alloc] _initWithURLBag:v3];
  v16 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v8 storeBag:v15];
  v17 = *(a1 + 32);
  v18 = *(v17 + 72);
  *(v17 + 72) = v16;

  v19 = *(a1 + 32);
  v20 = *(v19 + 72);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke_21;
  v22[3] = &unk_279AEAED8;
  v22[4] = v19;
  v23 = *(a1 + 48);
  [v20 startWithConnectionResponseBlock:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 statusCode];
  }

  else
  {
    v9 = [v6 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277D6A118]];
    v8 = [v10 integerValue];
  }

  v11 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v41 = v8;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Status code: %lli", buf, 0xCu);
  }

  if ((v8 - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = [v5 radio_decompressedBodyData];
    if (![v14 length])
    {
      [*(a1 + 32) setStatus:3];
      v16 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_261792000, v16, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] No response for terms check.", buf, 2u);
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      goto LABEL_44;
    }

    v39 = 0;
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v14 options:0 error:&v39];
    v16 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v15)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      [*(a1 + 32) setStatus:3];
      v23 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v16;
        _os_log_impl(&dword_261792000, v23, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Error: Unable to unserialize JSON body data (%@)", buf, 0xCu);
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v17 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v15;
      _os_log_impl(&dword_261792000, v17, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Terms response: %@", buf, 0xCu);
    }

    v18 = [v15 objectForKey:@"status"];
    v32 = v18;
    if (objc_opt_respondsToSelector())
    {
      if (![v18 integerValue])
      {
        v19 = [v15 objectForKey:@"latestTermsVersionId"];
        if (objc_opt_respondsToSelector())
        {
          v22 = [v19 longLongValue];
        }

        else
        {
          v22 = 0;
        }

        v28 = [v15 objectForKey:@"isCurrent"];
        if (objc_opt_respondsToSelector())
        {
          v21 = [v28 BOOLValue];
        }

        else
        {
          v21 = 0;
        }

        v31 = v28;
        v29 = [v15 objectForKey:@"termsContentText"];
        objc_opt_class();
        v30 = v29;
        if (objc_opt_isKindOfClass())
        {
          v20 = [v29 copy];
        }

        else
        {
          v20 = 0;
        }

        [*(a1 + 32) setStatus:1];

        goto LABEL_38;
      }

      [*(a1 + 32) setStatus:3];
      v19 = [v15 objectForKey:@"errorNumber"];
      if (v19 && (objc_opt_respondsToSelector() & 1) != 0 && ([v19 intValue]== 5300 || [v19 intValue]== 5601))
      {
        [*(a1 + 32) setStatus:2];
      }
    }

    else
    {
      [*(a1 + 32) setStatus:3];
      v19 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v18;
        _os_log_impl(&dword_261792000, v19, OS_LOG_TYPE_INFO, "[RadioTermsCheckRequest] Error: Status object doesn't response to integerValue (%@)", buf, 0xCu);
      }
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
LABEL_38:

    v23 = v32;
    goto LABEL_42;
  }

  v12 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to fetch terms (%@)", buf, 0xCu);
  }

  if (v8 <= 399)
  {
    v13 = 1;
    if (v8 == 200 || v8 == 204)
    {
      goto LABEL_34;
    }

LABEL_27:
    v13 = 3;
    goto LABEL_34;
  }

  if (v8 != 404)
  {
    if (v8 == 401)
    {
      v13 = 2;
      goto LABEL_34;
    }

    if (v8 != 400)
    {
      goto LABEL_27;
    }
  }

  v13 = 4;
LABEL_34:
  [*(a1 + 32) setStatus:v13];
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_45:
  v24 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke_44;
  block[3] = &unk_279AEADE8;
  v36 = *(a1 + 40);
  v37 = v22;
  v38 = v21;
  v25 = *(a1 + 32);
  v34 = v20;
  v35 = v25;
  v26 = v20;
  dispatch_async(v24, block);

  v27 = *MEMORY[0x277D85DE8];
}

void __53__RadioTermsCheckRequest_startWithCompletionHandler___block_invoke_44(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 64), *(a1 + 32));
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 40)];
}

@end