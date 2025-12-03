@interface BRCloudTelemetryTTRDecisionRequest
+ (id)requestWithSenderID:(id)d ruleID:(id)iD completionHandler:(id)handler;
- (NSObject)networkingDelegate;
- (id)_initWithSenderID:(id)d ruleID:(id)iD completionHandler:(id)handler;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)resume;
@end

@implementation BRCloudTelemetryTTRDecisionRequest

+ (id)requestWithSenderID:(id)d ruleID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  v10 = [[BRCloudTelemetryTTRDecisionRequest alloc] _initWithSenderID:dCopy ruleID:iDCopy completionHandler:handlerCopy];

  return v10;
}

- (id)_initWithSenderID:(id)d ruleID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v32.receiver = self;
  v32.super_class = BRCloudTelemetryTTRDecisionRequest;
  v12 = [(BRCloudTelemetryTTRDecisionRequest *)&v32 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.rtctaptoradar.pushtokenprovider", v13);

    apsQueue = v12->_apsQueue;
    v12->_apsQueue = v14;

    v16 = objc_alloc(MEMORY[0x277CEEA10]);
    v17 = [v16 initWithEnvironmentName:*MEMORY[0x277CEE9F0] namedDelegatePort:*MEMORY[0x277CEE9D8] queue:v12->_apsQueue];
    apsConnection = v12->_apsConnection;
    v12->_apsConnection = v17;

    publicToken = [(APSConnection *)v12->_apsConnection publicToken];
    publicToken = v12->_publicToken;
    v12->_publicToken = publicToken;

    v21 = [BRCUserDefaults defaultsForMangledID:0];
    v12->_useDecisionServer = [v21 useIDSDecisionService];

    v22 = [BRCUserDefaults defaultsForMangledID:0];
    idsDecisionServiceURL = [v22 idsDecisionServiceURL];
    decisonServerURL = v12->_decisonServerURL;
    v12->_decisonServerURL = idsDecisionServiceURL;

    objc_storeStrong(&v12->_senderID, d);
    objc_storeStrong(&v12->_ruleID, iD);
    v25 = objc_alloc_init(MEMORY[0x277CBEB28]);
    responseBody = v12->_responseBody;
    v12->_responseBody = v25;

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __81__BRCloudTelemetryTTRDecisionRequest__initWithSenderID_ruleID_completionHandler___block_invoke;
    v30[3] = &unk_278500CB8;
    v31 = handlerCopy;
    v27 = MEMORY[0x22AA4A310](v30);
    completionHandler = v12->_completionHandler;
    v12->_completionHandler = v27;
  }

  return v12;
}

void __81__BRCloudTelemetryTTRDecisionRequest__initWithSenderID_ruleID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      __81__BRCloudTelemetryTTRDecisionRequest__initWithSenderID_ruleID_completionHandler___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)resume
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_dataTask dataTask must be nil.%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, request);
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCloudTelemetryTTRDecisionRequest URLSession:v5 task:v6 needNewBodyStream:?];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  response = [task response];
  v9 = response;
  if (errorCopy)
  {
    (*(self->_completionHandler + 2))();
    goto LABEL_31;
  }

  if (!response)
  {
    completionHandler = self->_completionHandler;
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Unexpected empty response from service";
LABEL_15:
    v23 = [v21 brc_unkownErrorWithDescription:v22];
    completionHandler[2](completionHandler, 0, v23);

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v21 = MEMORY[0x277CCA9B8];
    v22 = @"Invalid response type";
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v10 valueForHTTPHeaderField:@"X-Apple-Splunk-Hint"];
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCloudTelemetryTTRDecisionRequest URLSession:task:didCompleteWithError:];
  }

  if ([v10 statusCode] != 200)
  {
    v24 = self->_completionHandler;
    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"HTTP request failed: %ld", objc_msgSend(v10, "statusCode")];
    v27 = [v25 brc_unkownErrorWithDescription:v26];
    v24[2](v24, 0, v27);

LABEL_30:
    goto LABEL_31;
  }

  v14 = [v10 valueForHTTPHeaderField:@"Content-Type"];
  if (!v14)
  {
    v28 = self->_completionHandler;
    v29 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Missing response Content-Type"];
    v28[2](v28, 0, v29);

    goto LABEL_30;
  }

  v15 = v14;
  if (([v14 containsString:@"application/json"] & 1) == 0)
  {
    v30 = self->_completionHandler;
    v31 = MEMORY[0x277CCA9B8];
    v32 = @"Invalid response Content-Type";
LABEL_28:
    v17 = [v31 brc_unkownErrorWithDescription:v32];
    v30[2](v30, 0, v17);
LABEL_29:

    goto LABEL_30;
  }

  if (![(NSMutableData *)self->_responseBody length])
  {
    goto LABEL_27;
  }

  responseBody = self->_responseBody;
  v50 = 0;
  v17 = [MEMORY[0x277CCAAA0] JSONObjectWithData:responseBody options:0 error:&v50];
  v18 = v50;
  if (v18)
  {
    v19 = v18;
    (*(self->_completionHandler + 2))();

    goto LABEL_31;
  }

  if (!v17)
  {
LABEL_27:
    v30 = self->_completionHandler;
    v31 = MEMORY[0x277CCA9B8];
    v32 = @"Empty response body";
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = self->_completionHandler;
    v41 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Invalid response body"];
    v40[2](v40, 0, v41);

    goto LABEL_29;
  }

  v17 = v17;
  v33 = [v17 objectForKey:@"showTTR"];
  if (!v33)
  {
    v42 = self->_completionHandler;
    v34 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Missing show TTR info"];
    v42[2](v42, 0, v34);
LABEL_36:

    goto LABEL_29;
  }

  v34 = v33;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = self->_completionHandler;
    v44 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Unexpected show TTR info type"];
    v43[2](v43, 0, v44);

    goto LABEL_36;
  }

  v34 = v34;
  bOOLValue = [v34 BOOLValue];
  v36 = [v17 objectForKey:@"reason"];
  if (v36)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = self->_completionHandler;
      v46 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Unexpected show TTR reason"];
      v45[2](v45, 0, v46);

      goto LABEL_36;
    }
  }

  v48 = bOOLValue;
  v49 = v36;
  v37 = brc_bread_crumbs();
  v38 = brc_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v47 = @"N";
    *buf = 138412802;
    if (v48)
    {
      v47 = @"Y";
    }

    v52 = v47;
    v53 = 2112;
    v54 = v49;
    v55 = 2112;
    v56 = v37;
    _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] Decision Server Response showTTR=%@, reason=%@%@", buf, 0x20u);
  }

  (*(self->_completionHandler + 2))();
LABEL_31:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, connection);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  responseBody = self->_responseBody;
  self->_responseBody = v6;

  MEMORY[0x2821F96F8]();
}

- (NSObject)networkingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkingDelegate);

  return WeakRetained;
}

void __81__BRCloudTelemetryTTRDecisionRequest__initWithSenderID_ruleID_completionHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed calling the IDS TTR Decision Service: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 task:(NSObject *)a2 needNewBodyStream:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: NO Unexpected callback.%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Decision splunkHint=%@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end