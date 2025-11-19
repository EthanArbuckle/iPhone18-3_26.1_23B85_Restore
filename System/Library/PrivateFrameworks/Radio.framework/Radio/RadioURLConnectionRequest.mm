@interface RadioURLConnectionRequest
- (void)startWithConnectionResponseBlock:(id)a3;
@end

@implementation RadioURLConnectionRequest

- (void)startWithConnectionResponseBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__RadioURLConnectionRequest_startWithConnectionResponseBlock___block_invoke;
  v7[3] = &unk_279AEAED8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = RadioURLConnectionRequest;
  v5 = v4;
  [(SSURLConnectionRequest *)&v6 startWithConnectionResponseBlock:v7];
}

void __62__RadioURLConnectionRequest_startWithConnectionResponseBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
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

  if (v8 == 401 && ([MEMORY[0x277D69A20] defaultStore], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "activeAccount"), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_ERROR, "[RadioURLConnectionRequest] Authenticating for 401 response...", buf, 2u);
    }

    v14 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:v12];
    [v14 setAccountNameEditable:0];
    [v14 setPromptStyle:1];
    [v14 setAllowsSilentAuthentication:1];
    v15 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v14];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__RadioURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3;
    v19[3] = &unk_279AEAEB0;
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v22 = v16;
    v19[4] = v17;
    v20 = v5;
    v21 = v7;
    [v15 startWithAuthenticateResponseBlock:v19];
  }

  else
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, v5, v7);
    }
  }
}

void __62__RadioURLConnectionRequest_startWithConnectionResponseBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v13 = [v3 authenticateResponseType];
    _os_log_impl(&dword_261792000, v4, OS_LOG_TYPE_ERROR, "[RadioURLConnectionRequest] Authentication response type: %ld", buf, 0xCu);
  }

  v5 = [v3 authenticateResponseType];
  v6 = os_log_create("com.apple.amp.radio", "Requests");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5 == 4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioURLConnectionRequest] Retrying request after authentication...", buf, 2u);
    }

    v8 = *(a1 + 56);
    v11.receiver = *(a1 + 32);
    v11.super_class = RadioURLConnectionRequest;
    objc_msgSendSuper2(&v11, sel_startWithConnectionResponseBlock_, v8);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioURLConnectionRequest] Authentication failed, not retrying.", buf, 2u);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 40), *(a1 + 48));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end