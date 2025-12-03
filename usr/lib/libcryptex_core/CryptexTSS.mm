@interface CryptexTSS
- (CryptexTSS)initWithFlags:(unint64_t)flags;
- (id)generateDiavloRequest:(id)request;
- (id)generatePackedSignatures;
- (id)tssFormatRequest:(id)request withHeaders:(id)headers withURL:(id)l;
- (id)tssFormatResponse:(id)response withHeaderData:(id)data withCode:(int64_t)code;
- (id)tssSendRequest;
- (id)tssSerializeRequest;
- (void)activate;
- (void)tssSerializeRequest;
- (void)tssStampRequest;
- (void)tssSubmit;
@end

@implementation CryptexTSS

- (CryptexTSS)initWithFlags:(unint64_t)flags
{
  v21.receiver = self;
  v21.super_class = CryptexTSS;
  v4 = [(CryptexTSS *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_flags = flags;
    tssURL = v4->_tssURL;
    v4->_tssURL = @"https://gs.apple.com:443";

    v7 = os_log_create("com.apple.libcryptex", "tss");
    log = v5->_log;
    v5->_log = v7;

    v9 = dispatch_queue_attr_make_initially_inactive(0);
    v10 = dispatch_queue_create("com.apple.security.libcryptex.core.tss", v9);

    dq = v5->_dq;
    v5->_dq = v10;

    nserr = v5->_nserr;
    v5->_nserr = 0;

    v13 = xpc_dictionary_create(0, 0, 0);
    tss_request = v5->_tss_request;
    v5->_tss_request = v13;

    tssp_sign = v5->_tssp_sign;
    v5->_tssp_sign = 0;

    response = v5->_response;
    v5->_response = 0;

    tssUsage = v5->_tssUsage;
    v5->_tssUsage = &stru_2A1F01D18;

    info_content = v5->_info_content;
    v5->_info_content = 0;

    im4m_array = v5->_im4m_array;
    v5->_im4m_array = 0;
  }

  return v5;
}

- (void)tssStampRequest
{
  v10 = *MEMORY[0x29EDCA608];
  memset(out, 0, sizeof(out));
  memset(v8, 0, 37);
  uuid_generate_random(out);
  uuid_unparse_lower(out, v8);
  v3 = [(CryptexTSS *)self tss_request:*v8];
  xpc_dictionary_set_string(v3, "@UUID", v8);

  LOBYTE(v3) = [(CryptexTSS *)self flags];
  tss_request = [(CryptexTSS *)self tss_request];
  v5 = tss_request;
  if ((v3 & 4) != 0)
  {
    v6 = "@Cryptex1,Ticket";
  }

  else
  {
    v6 = "@ApImg4Ticket";
  }

  xpc_dictionary_set_BOOL(tss_request, v6, 1);

  v7 = *MEMORY[0x29EDCA608];
}

- (id)generatePackedSignatures
{
  v34 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  im4m_array = [(CryptexTSS *)self im4m_array];
  v5 = _CFXPCCreateCFObjectFromXPCObject();

  if (!v5)
  {
    v6 = [(CryptexTSS *)self log];

    if (v6)
    {
      v7 = [(CryptexTSS *)self log];
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      v32 = 67109120;
      v33 = 22;
      LODWORD(v26) = 8;
      v8 = _os_log_send_and_compose_impl();
    }

    else
    {
      v32 = 67109120;
      v33 = 22;
      LODWORD(v26) = 8;
      v8 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexTSS generatePackedSignatures]", "tss.m", 174, "com.apple.security.cryptex.posix", 22, 0, v8);
    free(v8);
    [(CryptexTSS *)self setNserr:Error, &v32, v26];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v27 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        uRLQueryAllowedCharacterSet = [MEMORY[0x29EDB9F50] URLQueryAllowedCharacterSet];
        v16 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

        [array addObject:v16];
      }

      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  im4m_array2 = [(CryptexTSS *)self im4m_array];
  count = xpc_array_get_count(im4m_array2);
  LOBYTE(count) = count == [array count];

  if (count)
  {
    v19 = array;
  }

  else
  {
    v20 = [(CryptexTSS *)self log];

    if (v20)
    {
      v21 = [(CryptexTSS *)self log];
      os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      v32 = 67109120;
      v33 = 33;
      LODWORD(v26) = 8;
      v22 = _os_log_send_and_compose_impl();
    }

    else
    {
      v32 = 67109120;
      v33 = 33;
      LODWORD(v26) = 8;
      v22 = _os_log_send_and_compose_impl();
    }

    v23 = createError("[CryptexTSS generatePackedSignatures]", "tss.m", 186, "com.apple.security.cryptex.posix", 33, 0, v22);
    free(v22);
    [(CryptexTSS *)self setNserr:v23, &v32, v26, v27];

    v19 = 0;
  }

  v24 = *MEMORY[0x29EDCA608];

  return v19;
}

- (id)generateDiavloRequest:(id)request
{
  v29 = *MEMORY[0x29EDCA608];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  generatePackedSignatures = [(CryptexTSS *)self generatePackedSignatures];
  info_content = [(CryptexTSS *)self info_content];
  v8 = [info_content base64EncodedStringWithOptions:0];
  [v5 setObject:v8 forKeyedSubscript:@"info"];

  v9 = [requestCopy base64EncodedStringWithOptions:0];
  [v5 setObject:v9 forKeyedSubscript:@"sign_request"];

  [v5 setObject:generatePackedSignatures forKeyedSubscript:@"signatures"];
  tssUsage = [(CryptexTSS *)self tssUsage];
  [v5 setObject:tssUsage forKeyedSubscript:@"usage"];

  v11 = [(CryptexTSS *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CryptexTSS generateDiavloRequest:];
  }

  v24 = 0;
  v12 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v5 options:2 error:&v24];
  v13 = v24;
  if (!v12)
  {
    v14 = [(CryptexTSS *)self log];

    if (v14)
    {
      v15 = [(CryptexTSS *)self log];
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      localizedDescription = [v13 localizedDescription];
      v25 = 138412546;
      v26 = localizedDescription;
      v27 = 1024;
      v28 = 22;
      LODWORD(v23) = 18;
      v17 = _os_log_send_and_compose_impl();
    }

    else
    {
      v18 = MEMORY[0x29EDCA988];
      localizedDescription2 = [v13 localizedDescription];
      v25 = 138412546;
      v26 = localizedDescription2;
      v27 = 1024;
      v28 = 22;
      LODWORD(v23) = 18;
      v17 = _os_log_send_and_compose_impl();

      v15 = MEMORY[0x29EDCA988];
    }

    Error = createError("[CryptexTSS generateDiavloRequest:]", "tss.m", 213, "com.apple.security.cryptex.posix", 22, 0, v17);
    free(v17);
    [(CryptexTSS *)self setNserr:Error, &v25, v23];
  }

  v21 = *MEMORY[0x29EDCA608];

  return v12;
}

- (id)tssSerializeRequest
{
  v19 = *MEMORY[0x29EDCA608];
  tss_request = [(CryptexTSS *)self tss_request];
  v4 = _CFXPCCreateCFObjectFromXPCObject();

  v5 = [(CryptexTSS *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_2986F2000, v5, OS_LOG_TYPE_INFO, "tss request dictionary:\n%@", buf, 0xCu);
  }

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v4;
    v16 = 0;
    v7 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v6 format:100 options:0 error:&v16];
    v8 = v16;
    if (!v7)
    {
      v9 = [(CryptexTSS *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CryptexTSS *)v6 tssSerializeRequest];
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (([(CryptexTSS *)self flags]& 2) != 0)
  {
    v10 = [(CryptexTSS *)self generateDiavloRequest:v7];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;
  v12 = [(CryptexTSS *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [CryptexTSS tssSerializeRequest];
  }

  v13 = v11;
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

- (id)tssFormatRequest:(id)request withHeaders:(id)headers withURL:(id)l
{
  v25 = *MEMORY[0x29EDCA608];
  requestCopy = request;
  headersCopy = headers;
  lCopy = l;
  v10 = objc_alloc_init(MEMORY[0x29EDBA050]);
  [v10 appendFormat:@"---------REQUEST START---------\n"];
  [v10 appendFormat:@"URL: %@\n", lCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = headersCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 appendFormat:@"%@\n", *(*(&v20 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v16 = [requestCopy base64EncodedStringWithOptions:0];
  [v10 appendFormat:@"BODY:\n%@\n", v16];

  [v10 appendFormat:@"---------REQUEST END---------\n"];
  v17 = [v10 copy];

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

- (id)tssFormatResponse:(id)response withHeaderData:(id)data withCode:(int64_t)code
{
  v7 = MEMORY[0x29EDBA050];
  dataCopy = data;
  responseCopy = response;
  v10 = objc_alloc_init(v7);
  [v10 appendFormat:@"---------RESPONSE START---------\n"];
  [v10 appendFormat:@"HTTP Status Code: %ld\n", code];
  v11 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithData:dataCopy encoding:4];

  [v10 appendFormat:@"%@\n", v11];
  v12 = [responseCopy base64EncodedStringWithOptions:0];

  [v10 appendFormat:@"BODY:\n%@\n", v12];
  [v10 appendFormat:@"---------RESPONSE END---------\n"];
  v13 = [v10 copy];

  return v13;
}

- (id)tssSendRequest
{
  v3 = [(CryptexTSS *)self log];

  if (v3)
  {
    v4 = [(CryptexTSS *)self log];
    os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    v5 = _os_log_send_and_compose_impl();
  }

  else
  {
    v5 = _os_log_send_and_compose_impl();
  }

  Error = createError("[CryptexTSS tssSendRequest]", "tss.m", 396, "com.apple.security.cryptex", 10, 0, v5);
  free(v5);

  return Error;
}

- (void)tssSubmit
{
  v6 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_2();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_2986F2000, v1, OS_LOG_TYPE_DEBUG, "Response plist %@ -> im4m: %@", v3, 0x16u);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)activate
{
  v3 = [(CryptexTSS *)self dq];
  dispatch_activate(v3);

  v4 = [(CryptexTSS *)self dq];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __22__CryptexTSS_activate__block_invoke;
  block[3] = &unk_29EEA84F0;
  block[4] = self;
  dispatch_barrier_sync(v4, block);
}

void __22__CryptexTSS_activate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2986F2000, v1, OS_LOG_TYPE_DEFAULT, "Drained queue", v2, 2u);
  }
}

- (void)generateDiavloRequest:.cold.1()
{
  v4 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_2986F2000, v0, v1, "tss request=%@", v3);
  v2 = *MEMORY[0x29EDCA608];
}

- (void)tssSerializeRequest
{
  v4 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_2(&dword_2986F2000, v0, v1, "tss request xml = %@", v3);
  v2 = *MEMORY[0x29EDCA608];
}

@end