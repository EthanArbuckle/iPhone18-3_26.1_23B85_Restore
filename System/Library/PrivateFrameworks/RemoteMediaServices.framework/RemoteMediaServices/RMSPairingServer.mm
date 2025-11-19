@interface RMSPairingServer
- (BOOL)startServerWithExpectedPasscodeHash:(id)a3 advertisedDeviceName:(id)a4 advertisedDeviceModel:(id)a5;
- (RMSPairingServerDelegate)delegate;
- (id)_parsedQueryParametersWithQueryString:(id)a3;
- (void)handleHTTPServerConnectionDidFailToReplyToRequest:(_CFHTTPServerRequest *)a3 withResponse:(_CFHTTPServerResponse *)a4;
- (void)handleHTTPServerConnectionDidReceiveError:(__CFError *)a3;
- (void)handleHTTPServerConnectionDidReceiveRequest:(_CFHTTPServerRequest *)a3;
- (void)handleHTTPServerConnectionDidReplyToRequest:(_CFHTTPServerRequest *)a3 withResponse:(_CFHTTPServerResponse *)a4;
- (void)handleHTTPServerConnectionInvalidated;
- (void)handleHTTPServerDidCloseConnection:(_CFHTTPServerConnection *)a3;
- (void)handleHTTPServerDidOpenConnection:(_CFHTTPServerConnection *)a3;
- (void)handleHTTPServerDidReceiveError:(__CFError *)a3;
- (void)handleHTTPServerInvalidated;
- (void)stopServer;
@end

@implementation RMSPairingServer

- (BOOL)startServerWithExpectedPasscodeHash:(id)a3 advertisedDeviceName:(id)a4 advertisedDeviceModel:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_expectedPasscodeHash, a3);
  objc_storeStrong(&self->_advertisedDeviceName, a4);
  objc_storeStrong(&self->_advertisedDeviceModel, a5);
  v23 = MEMORY[0x277CBE558];
  v24 = MEMORY[0x277CBE550];
  v20 = xmmword_2874775B0;
  v21 = *off_2874775C0;
  v22 = off_2874775D0;
  v12 = *MEMORY[0x277CBECE8];
  Service = _CFHTTPServerCreateService();
  self->_HTTPServer = Service;
  if (Service)
  {
    v14 = dispatch_queue_create("com.apple.RemoteMediaServices.DAAPPairing", MEMORY[0x277D85CD8]);
    HTTPServerQueue = self->_HTTPServerQueue;
    self->_HTTPServerQueue = v14;

    _CFHTTPServerSetDispatchQueue();
    v16 = _CFHTTPServerCopyProperty();
    self->_port = [v16 unsignedShortValue:v20];
    self->_HTTPServerConnections = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v17 = RMSLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      port = self->_port;
      *buf = 67109120;
      v26 = port;
      _os_log_impl(&dword_261E98000, v17, OS_LOG_TYPE_DEFAULT, "HTTP server for pin-pairing exchange started on port %u", buf, 8u);
    }
  }

  else
  {
    v16 = RMSLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [RMSPairingServer startServerWithExpectedPasscodeHash:v16 advertisedDeviceName:? advertisedDeviceModel:?];
    }
  }

  return Service != 0;
}

- (void)stopServer
{
  v3 = RMSLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261E98000, v3, OS_LOG_TYPE_DEFAULT, "Stopping HTTP server", v6, 2u);
  }

  [(__CFDictionary *)self->_HTTPServerConnections enumerateKeysAndObjectsUsingBlock:&__block_literal_global_2];
  HTTPServerConnections = self->_HTTPServerConnections;
  if (HTTPServerConnections)
  {
    CFRelease(HTTPServerConnections);
    self->_HTTPServerConnections = 0;
  }

  if (self->_HTTPServer)
  {
    _CFHTTPServerInvalidate();
    CFRelease(self->_HTTPServer);
    self->_HTTPServer = 0;
  }

  HTTPServerQueue = self->_HTTPServerQueue;
  self->_HTTPServerQueue = 0;
}

- (void)handleHTTPServerInvalidated
{
  v2 = RMSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_261E98000, v2, OS_LOG_TYPE_DEFAULT, "HTTP server invalidated", v3, 2u);
  }
}

- (void)handleHTTPServerDidReceiveError:(__CFError *)a3
{
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(RMSPairingServer *)a3 handleHTTPServerDidReceiveError:v5];
  }

  [(RMSPairingServer *)self stopServer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pairingServerDidFail:self];
}

- (void)handleHTTPServerDidOpenConnection:(_CFHTTPServerConnection *)a3
{
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "HTTP server opened connection", v6, 2u);
  }

  CFDictionarySetValue(self->_HTTPServerConnections, a3, a3);
  v7 = 0;
  v8 = self;
  v9 = MEMORY[0x277CBE558];
  v10 = MEMORY[0x277CBE550];
  v11 = 0;
  v6[0] = xmmword_2874775F8;
  v6[1] = *&off_287477608;
  v6[2] = xmmword_287477618;
  _CFHTTPServerConnectionSetClient();
  _CFHTTPServerConnectionSetDispatchQueue();
}

- (void)handleHTTPServerDidCloseConnection:(_CFHTTPServerConnection *)a3
{
  HTTPServerConnections = self->_HTTPServerConnections;
  if (HTTPServerConnections)
  {
    CFDictionaryRemoveValue(HTTPServerConnections, a3);
  }
}

- (void)handleHTTPServerConnectionInvalidated
{
  v2 = RMSLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_261E98000, v2, OS_LOG_TYPE_DEFAULT, "HTTP connection invalidated", v3, 2u);
  }
}

- (void)handleHTTPServerConnectionDidReceiveError:(__CFError *)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "HTTP connection error: %@", &v5, 0xCu);
  }
}

- (id)_parsedQueryParametersWithQueryString:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277CBEB38] dictionary];
  v17 = v16 = v3;
  v4 = [v3 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v9 count] == 2)
        {
          v10 = [v9 firstObject];
          v11 = [v9 lastObject];
          v12 = [v11 componentsSeparatedByString:{@", "}];
          if ([v12 count] <= 1)
          {
            v13 = v11;
          }

          else
          {
            v13 = v12;
          }

          v14 = v13;
          [v17 setValue:v14 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

- (void)handleHTTPServerConnectionDidReceiveRequest:(_CFHTTPServerRequest *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = _CFHTTPServerRequestCopyProperty();
  v6 = RMSLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261E98000, v6, OS_LOG_TYPE_DEFAULT, "HTTP server received pairing request", buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__RMSPairingServer_handleHTTPServerConnectionDidReceiveRequest___block_invoke;
  v36[3] = &unk_279B08D60;
  v38 = a3;
  v7 = v5;
  v37 = v7;
  v8 = MEMORY[0x266721590](v36);
  v9 = _CFHTTPServerRequestCopyProperty();
  if ([v9 isEqualToString:*MEMORY[0x277CBAD00]])
  {
    if (!v7)
    {
      v8[2](v8, 400, 0);
      goto LABEL_25;
    }

    v10 = _CFHTTPServerRequestCopyProperty();
    v11 = [MEMORY[0x277CCACE0] componentsWithURL:v10 resolvingAgainstBaseURL:1];
    v12 = [v11 path];
    if ([v12 isEqualToString:@"/pair"])
    {
      v13 = [v7 isEqualToString:@"GET"];

      if (v13)
      {
        v14 = [v11 query];
        v15 = [(RMSPairingServer *)self _parsedQueryParametersWithQueryString:v14];

        v16 = [v15 valueForKey:@"pairingcode"];
        v17 = [v15 valueForKey:@"servicename"];
        v35 = v16;
        if ([v17 length] && objc_msgSend(v16, "isEqualToString:", self->_expectedPasscodeHash))
        {
          v34 = v15;
          v18 = time(0);
          srandom(v18);
          v19 = random();
          v20 = random() | (v19 << 32);
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%.16llX", v20];
          successfulPairingGUID = self->_successfulPairingGUID;
          self->_successfulPairingGUID = v21;

          objc_storeStrong(&self->_successfulPairingServiceName, v17);
          v23 = objc_opt_new();
          [v23 encodeInt64:v20 forCode:1668116583];
          [v23 encodeString:self->_advertisedDeviceName forCode:1668116077];
          [v23 encodeString:self->_advertisedDeviceModel forCode:1668117625];
          v24 = [v23 data];
          v25 = objc_opt_new();

          [v25 encodeData:v24 forCode:1668116577];
          v33 = [v25 data];
          v26 = RMSLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = self->_successfulPairingGUID;
            *buf = 138412546;
            v40 = v17;
            v41 = 2112;
            v42 = v27;
            _os_log_impl(&dword_261E98000, v26, OS_LOG_TYPE_DEFAULT, "Received successful pairing request from %@; pairing GUID is %@.", buf, 0x16u);
          }

          v15 = v34;
          if (v33)
          {
            (v8)[2](v8, 200, v33);

LABEL_23:
            goto LABEL_24;
          }
        }

        else
        {
          v28 = RMSLogger();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            expectedPasscodeHash = self->_expectedPasscodeHash;
            *buf = 138412802;
            v40 = v17;
            v41 = 2112;
            v42 = v16;
            v43 = 2112;
            v44 = expectedPasscodeHash;
            _os_log_impl(&dword_261E98000, v28, OS_LOG_TYPE_DEFAULT, "Received unsuccessful pairing request from %@; received passcode hash %@ but expected %@.", buf, 0x20u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v31 = objc_opt_respondsToSelector();

          if (v31)
          {
            v32 = objc_loadWeakRetained(&self->_delegate);
            [v32 pairingServer:self didFailToPairWithService:v17];
          }
        }

        v8[2](v8, 404, 0);
        goto LABEL_23;
      }
    }

    else
    {
    }

    v8[2](v8, 404, 0);
LABEL_24:

    goto LABEL_25;
  }

  v8[2](v8, 505, 0);
LABEL_25:
}

void __64__RMSPairingServer_handleHTTPServerConnectionDidReceiveRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
  CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Content-Length", [v6 stringValue]);

  CFHTTPMessageSetHeaderFieldValue(ResponseMessage, @"Connection", @"close");
  [*(a1 + 32) isEqualToString:@"HEAD"];
  v7 = _CFHTTPServerResponseCreateWithData();

  _CFHTTPServerResponseEnqueue();
  CFRelease(v7);

  CFRelease(ResponseMessage);
}

- (void)handleHTTPServerConnectionDidReplyToRequest:(_CFHTTPServerRequest *)a3 withResponse:(_CFHTTPServerResponse *)a4
{
  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "HTTP server did reply to request", v8, 2u);
  }

  v6 = _CFHTTPServerResponseCopyProperty();
  if (CFHTTPMessageGetResponseStatusCode(v6) == 200)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pairingServer:self didPairWithService:self->_successfulPairingServiceName pairingGUID:self->_successfulPairingGUID];

    [(RMSPairingServer *)self stopServer];
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

- (void)handleHTTPServerConnectionDidFailToReplyToRequest:(_CFHTTPServerRequest *)a3 withResponse:(_CFHTTPServerResponse *)a4
{
  v4 = RMSLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_261E98000, v4, OS_LOG_TYPE_DEFAULT, "HTTP server failed to reply to request", v5, 2u);
  }
}

- (RMSPairingServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleHTTPServerDidReceiveError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_261E98000, a2, OS_LOG_TYPE_ERROR, "HTTP server error: %@", &v2, 0xCu);
}

@end