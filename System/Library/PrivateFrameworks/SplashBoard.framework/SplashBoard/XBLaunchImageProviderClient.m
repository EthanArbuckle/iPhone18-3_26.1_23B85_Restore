@interface XBLaunchImageProviderClient
+ (void)preheatServiceWithTimeout:(double)a3;
- (XBLaunchImageProviderClient)init;
- (XBLaunchImageProviderClient)initWithApplicationInfo:(id)a3;
- (unsigned)generateImageWithContext:(id)a3 captureInfo:(id *)a4 error:(id *)a5;
@end

@implementation XBLaunchImageProviderClient

- (XBLaunchImageProviderClient)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:35 description:@"use initWithDefaultService"];

  return 0;
}

- (XBLaunchImageProviderClient)initWithApplicationInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = XBLaunchImageProviderClient;
  v6 = [(BSBaseXPCClient *)&v9 initWithServiceName:@"com.apple.splashboard.launchimage" endpoint:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfo, a3);
  }

  return v7;
}

- (unsigned)generateImageWithContext:(id)a3 captureInfo:(id *)a4 error:(id *)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = [v57 launchRequest];
  v7 = [v57 applicationCompatibilityInfo];
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__4;
  v85 = __Block_byref_object_dispose__4;
  v86 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = -1;
  if (!v57)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];
  }

  if (!v58)
  {
    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"launchRequest != nil"}];
  }

  if (!v7)
  {
    v48 = [MEMORY[0x277CCA890] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"appInfo != nil"}];
  }

  if (!self->_appInfo)
  {
    v49 = [MEMORY[0x277CCA890] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:58 description:@"This API cannot be used if the client was not initialized with an app info"];
  }

  v8 = [v7 bundleIdentifier];
  v9 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
  v10 = BSEqualStrings();

  if ((v10 & 1) == 0)
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [v7 bundleIdentifier];
    v52 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
    [v50 handleFailureInMethod:a2 object:self file:@"XBLaunchImageProviderClient.m" lineNumber:59 description:{@"app info bundle ID: %@ doesn't match ivar app info bundle ID: %@", v51, v52}];
  }

  v11 = [v7 launchInterfaceIdentifierForRequest:v58];
  [v58 setLaunchInterfaceIdentifier:v11];

  v12 = MEMORY[0x277CC1E90];
  v13 = [v7 bundleIdentifier];
  v76 = 0;
  v55 = [v12 bundleRecordWithBundleIdentifier:v13 allowPlaceholder:0 error:&v76];
  v56 = v76;

  if (v56)
  {
    v14 = [XBLaunchImageError alloc];
    v15 = [v7 bundleIdentifier];
    v16 = [(XBLaunchImageError *)v14 initWithCode:4 bundleID:v15 reason:@"Failed to get LSBundleRecord" fatal:0];
    v17 = 0;
    v18 = v82[5];
    v82[5] = v16;
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v15 = v55;
  v28 = [v15 isDeletableSystemApplication];
  v17 = v28;
  if (v28)
  {
    v18 = XBLogCapture();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B5EF000, v18, OS_LOG_TYPE_DEFAULT, "Skipping validation", buf, 2u);
    }

    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  v19 = v82[5];
  if ((v17 & 1) != 0 || v19)
  {
    goto LABEL_33;
  }

  [(BSBaseXPCClient *)self _sendMessage:&__block_literal_global_8];
  v20 = [(BSBaseXPCClient *)self _connection];
  v21 = [v58 launchInterfaceIdentifier];
  v22 = [v7 launchInterfaceWithIdentifier:v21];

  v23 = self;
  v24 = [v7 bundlePath];
  v25 = [MEMORY[0x277CCA8D8] bundleWithPath:v24];
  if (v25)
  {
    if ([v22 isStoryboard])
    {
      v26 = [v22 name];
      v27 = v82;
      v75 = v82[5];
      XBValidateStoryboard(v26, v25, &v75);
      objc_storeStrong(v27 + 5, v75);
    }

    else if ([v22 isXIB])
    {
      v26 = [v22 name];
      v36 = v82;
      obj = v82[5];
      XBValidateNib(v26, v25, &obj);
      objc_storeStrong(v36 + 5, obj);
    }

    else
    {
      v26 = XBLogCapture();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B5EF000, v26, OS_LOG_TYPE_DEFAULT, "Nothing to validate", buf, 2u);
      }
    }

    if (v82[5])
    {
      goto LABEL_32;
    }

    v30 = XBLogCapture();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B5EF000, v30, OS_LOG_TYPE_DEFAULT, "Validated OK", buf, 2u);
    }
  }

  else
  {
    v29 = [XBLaunchImageError alloc];
    v30 = [(XBApplicationLaunchCompatibilityInfo *)v23->_appInfo bundleIdentifier];
    v31 = MEMORY[0x277CCACA8];
    v32 = [v58 launchInterfaceIdentifier];
    v33 = [v31 stringWithFormat:@"Validation failed to construct NSBundle for %@ at %@.", v32, v24];
    v34 = [(XBLaunchImageError *)v29 initWithCode:4 bundleID:v30 reason:v33 fatal:0];
    v35 = v82[5];
    v82[5] = v34;

    self = v23;
  }

LABEL_32:
  v19 = v82[5];
LABEL_33:
  if (v19)
  {
    goto LABEL_49;
  }

  v37 = objc_alloc_init(MEMORY[0x277CF0B78]);
  [v57 timeout];
  if (v38 > 0.0)
  {
    v39 = dispatch_time(0, (v38 * 1000000000.0));
    v40 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_38;
    block[3] = &unk_279CF9D68;
    v70 = v37;
    v72 = self;
    v73 = &v81;
    v71 = v7;
    dispatch_after(v39, v40, block);
  }

  *buf = 0;
  v88 = buf;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__4;
  v91 = __Block_byref_object_dispose__4;
  v92 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_43;
  v65[3] = &unk_279CF9D90;
  v66 = v7;
  v67 = v58;
  v68 = a4 != 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_2;
  v59[3] = &unk_279CF9DB8;
  v41 = v37;
  v60 = v41;
  v62 = &v77;
  v63 = &v81;
  v64 = buf;
  v61 = v66;
  [(BSBaseXPCClient *)self _sendMessage:v65 withReplyHandler:v59 waitForReply:1 waitDuration:-1];
  if (a4)
  {
    *a4 = *(v88 + 5);
  }

  _Block_object_dispose(buf, 8);
  v19 = v82[5];
  if (v19)
  {
LABEL_49:
    if ([v19 isFatal])
    {
      [(BSBaseXPCClient *)self invalidate];
      v42 = XBLogCapture();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = [v7 bundleIdentifier];
        [XBLaunchImageProviderClient generateImageWithContext:v43 captureInfo:buf error:v42];
      }
    }

    *a5 = v82[5];
  }

  v44 = *(v78 + 6);

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);

  return v44;
}

uint64_t __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_38(uint64_t a1)
{
  result = [*(a1 + 32) setFlag:1];
  if (result)
  {
    v3 = XBLogCapture();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_38_cold_1(a1, v3);
    }

    v4 = [XBLaunchImageError alloc];
    v5 = [*(a1 + 40) bundleIdentifier];
    v6 = [(XBLaunchImageError *)v4 initWithCode:8 bundleID:v5 reason:@"The request timed out" fatal:0];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return [*(a1 + 48) invalidate];
  }

  return result;
}

void __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_43(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "message", 0);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "createCaptureInfo", *(a1 + 48));
}

uint64_t __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  if ([*(a1 + 32) setFlag:1])
  {
    if (xdict && MEMORY[0x26D67C9A0](xdict, xdict) == MEMORY[0x277D86468])
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_int64(xdict, "contextID");
      v7 = BSDeserializeDataFromXPCDictionaryWithKey();
      v8 = [XBLaunchImageError bs_secureDecodedFromData:v7];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v4 = BSDeserializeDataFromXPCDictionaryWithKey();
      v5 = [XBLaunchCaptureInformation bs_secureDecodedFromData:v4];
      v6 = 64;
    }

    else
    {
      v3 = [XBLaunchImageError alloc];
      v4 = [*(a1 + 40) bundleIdentifier];
      v5 = [(XBLaunchImageError *)v3 initWithCode:9 bundleID:v4 reason:@"The request failed" fatal:0];
      v6 = 56;
    }

    v11 = *(*(a1 + v6) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v5;
  }

  return MEMORY[0x2821F96F8]();
}

+ (void)preheatServiceWithTimeout:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 <= 0.0)
  {
    [(XBLaunchImageProviderClient *)a2 preheatServiceWithTimeout:a1];
  }

  v4 = XBLogDaemonLifecycle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_impl(&dword_26B5EF000, v4, OS_LOG_TYPE_DEFAULT, "Warming up splashboardd (timeout %.1fs)", buf, 0xCu);
  }

  v5 = [(BSBaseXPCClient *)[XBLaunchImageProviderClient alloc] initWithServiceName:@"com.apple.splashboard.launchimage"];
  [(BSBaseXPCClient *)v5 _sendMessage:&__block_literal_global_53];
  v6 = [(BSBaseXPCClient *)v5 _connection];
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__XBLaunchImageProviderClient_preheatServiceWithTimeout___block_invoke_2;
  block[3] = &unk_279CF9280;
  v11 = v5;
  v9 = v5;
  dispatch_after(v7, v8, block);
}

- (void)generateImageWithContext:(void *)a1 captureInfo:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26B5EF000, log, OS_LOG_TYPE_ERROR, "Fatal error generating snapshot for %@.", buf, 0xCu);
}

void __74__XBLaunchImageProviderClient_generateImageWithContext_captureInfo_error___block_invoke_38_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26B5EF000, a2, OS_LOG_TYPE_ERROR, "Request to splashboardd has timed out -- invalidating the connection for %@.", &v4, 0xCu);
}

+ (void)preheatServiceWithTimeout:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBLaunchImageProviderClient.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"timeout > 0.0"}];
}

@end