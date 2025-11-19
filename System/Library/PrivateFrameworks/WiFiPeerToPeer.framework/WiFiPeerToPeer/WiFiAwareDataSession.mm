@interface WiFiAwareDataSession
- (NSString)description;
- (WiFiAwareDataSession)initWithDiscoveryResult:(id)a3 serviceType:(int64_t)a4 serviceSpecificInfo:(id)a5 passphrase:(id)a6 pmk:(id)a7 pmkID:(id)a8;
- (WiFiAwareDataSessionDelegate)delegate;
- (WiFiAwareDataSessionPairingDelegate)pairingDelegate;
- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4;
- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4 pairingKeyStoreID:(id)a5 deviceID:(unint64_t)a6;
- (void)datapathFailedToStartWithError:(int64_t)a3;
- (void)datapathPairingDidSucceedWithPairingKeyStoreID:(id)a3 deviceID:(unint64_t)a4;
- (void)datapathPairingRequestStartedWithPairingMethod:(int64_t)a3 pairingAuthenticationInputCompletionHandler:(id)a4;
- (void)datapathTerminatedWithReason:(int64_t)a3;
- (void)generateCurrentNetworkRecordForInternetSharingSession:(id)a3;
- (void)generateDiversifiedPINWithCompletionHandler:(id)a3;
- (void)generateStatisticsReportWithCompletionHandler:(id)a3;
- (void)handleError:(int64_t)a3;
- (void)reportIssue:(id)a3;
- (void)resetState;
- (void)setWantsPeerRSSIUpdates:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4;
- (void)updateLinkStatus:(int64_t)a3;
@end

@implementation WiFiAwareDataSession

- (WiFiAwareDataSession)initWithDiscoveryResult:(id)a3 serviceType:(int64_t)a4 serviceSpecificInfo:(id)a5 passphrase:(id)a6 pmk:(id)a7 pmkID:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v40.receiver = self;
  v40.super_class = WiFiAwareDataSession;
  v20 = [(WiFiAwareDataSession *)&v40 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_discoveryResult, a3);
    v21->_serviceType = a4;
    v22 = [v16 copy];
    serviceSpecificInfo = v21->_serviceSpecificInfo;
    v21->_serviceSpecificInfo = v22;

    v24 = [v17 copy];
    passphrase = v21->_passphrase;
    v21->_passphrase = v24;

    v26 = [v18 copy];
    pmk = v21->_pmk;
    v21->_pmk = v26;

    v28 = [v19 copy];
    pmkID = v21->_pmkID;
    v21->_pmkID = v28;

    v30 = [v15 pairingConfiguration];
    v31 = [v30 supportedPairSetupMethods];
    v32 = [v31 firstObject];
    v21->_pairingMethod = [v32 integerValue];

    v33 = [v15 pairingConfiguration];
    v21->_pairingCachingEnabled = [v33 pairingCachingEnabled];

    v34 = [WiFiP2PXPCConnection alloc];
    v35 = +[WiFiP2PXPCConnection wifiPeerToPeerWorkloop];
    v36 = dispatch_queue_create_with_target_V2("com.apple.wifip2p.WiFiAwareDataSession", 0, v35);
    v37 = [(WiFiP2PXPCConnection *)v34 initWithEndpointType:1 queue:v36 retryTimeout:5000000000];
    xpcConnection = v21->_xpcConnection;
    v21->_xpcConnection = v37;

    [(WiFiP2PXPCConnection *)v21->_xpcConnection setDelegate:v21];
    v21->_internetSharingPolicy = 0;
  }

  return v21;
}

- (void)handleError:(int64_t)a3
{
  v5 = [(WiFiAwareDataSession *)self delegate];
  v6 = v5;
  if (self->_datapathID)
  {
    [v5 dataSession:self terminatedWithReason:-1];
  }

  else
  {
    [v5 dataSession:self failedToStartWithError:a3];
  }

  [(WiFiAwareDataSession *)self resetState];
}

- (void)startConnectionUsingProxy:(id)a3 completionHandler:(id)a4
{
  self->_internetSharingPolicy = 0;
  v21 = a4;
  v20 = a3;
  v22 = [WiFiAwareDatapathConfiguration alloc];
  v19 = [(WiFiAwareDataSession *)self discoveryResult];
  v18 = [(WiFiAwareDataSession *)self serviceType];
  v17 = [(WiFiAwareDataSession *)self passphrase];
  v6 = [(WiFiAwareDataSession *)self pmk];
  v7 = [(WiFiAwareDataSession *)self pmkID];
  v8 = [(WiFiAwareDataSession *)self serviceSpecificInfo];
  v9 = [(WiFiAwareDataSession *)self internetSharingConfiguration];
  v10 = [(WiFiAwareDataSession *)self pairingMethod];
  v11 = [(WiFiAwareDataSession *)self pairingCachingEnabled];
  v12 = [(WiFiAwareDataSession *)self pairSetupServiceSpecificInfo];
  v13 = [v12 copy];
  v14 = [(WiFiAwareDataSession *)self connectionMode];
  v15 = [(WiFiAwareDataSession *)self pairingMetadata];
  LOBYTE(v16) = v11;
  v23 = [(WiFiAwareDatapathConfiguration *)v22 initWithDiscoveryResult:v19 serviceType:v18 passphrase:v17 pmk:v6 pmkID:v7 serviceSpecificInfo:v8 internetSharingConfiguration:v9 pairingMethod:v10 pairingCachingEnabled:v16 pairSetupServiceSpecificInfo:v13 connectionMode:v14 pairingMetadata:v15];

  [v20 createDatapathWithConfiguration:v23 completionHandler:v21];
}

- (void)resetState
{
  datapathID = self->_datapathID;
  self->_datapathID = 0;

  initiatorDataAddress = self->_initiatorDataAddress;
  self->_initiatorDataAddress = 0;

  self->_localInterfaceIndex = 0;
}

- (void)reportIssue:(id)a3
{
  v4 = a3;
  xpcConnection = self->_xpcConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WiFiAwareDataSession_reportIssue___block_invoke;
  v7[3] = &unk_2787AABC0;
  v8 = v4;
  v6 = v4;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v7];
}

- (void)updateLinkStatus:(int64_t)a3
{
  xpcConnection = self->_xpcConnection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__WiFiAwareDataSession_updateLinkStatus___block_invoke;
  v4[3] = &__block_descriptor_40_e32_v16__0___WiFiAwareDatapathXPC__8l;
  v4[4] = a3;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v4];
}

- (void)generateStatisticsReportWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    xpcConnection = self->_xpcConnection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke;
    v9[3] = &unk_2787AAC30;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_3;
    v7[3] = &unk_2787AAC58;
    v8 = v10;
    [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:v7];
  }
}

void __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_2787AAC08;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 generateStatisticsReportWithCompletionHandler:v7];
}

void __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __70__WiFiAwareDataSession_generateStatisticsReportWithCompletionHandler___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)generateCurrentNetworkRecordForInternetSharingSession:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    xpcConnection = self->_xpcConnection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke;
    v9[3] = &unk_2787AAC30;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke_3;
    v7[3] = &unk_2787AAC58;
    v8 = v10;
    [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:v7];
  }
}

void __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke_2;
  v7[3] = &unk_2787AAC80;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 generateCurrentNetworkRecordForInternetSharingSession:v7];
}

void __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __78__WiFiAwareDataSession_generateCurrentNetworkRecordForInternetSharingSession___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)setWantsPeerRSSIUpdates:(BOOL)a3 withCompletionHandler:(id)a4
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__WiFiAwareDataSession_setWantsPeerRSSIUpdates_withCompletionHandler___block_invoke;
  v5[3] = &__block_descriptor_33_e42_v24__0___WiFiAwareDatapathXPC__8___v__q_16l;
  v6 = a3;
  [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v5 clientCompletionHandler:a4];
}

- (void)generateDiversifiedPINWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    xpcConnection = self->_xpcConnection;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke;
    v9[3] = &unk_2787AAC30;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke_3;
    v7[3] = &unk_2787AAC58;
    v8 = v10;
    [(WiFiP2PXPCConnection *)xpcConnection withRemoteObjectProxy:v9 clientCompletionHandler:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "generateDiversifiedPINForDataSession: No completion handler provided!", buf, 2u);
  }
}

void __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_2787AACC8;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a2 generateDiversifiedPINWithCompletionHandler:v7];
}

void __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 32) + 16))();
  if (!a2)
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __68__WiFiAwareDataSession_generateDiversifiedPINWithCompletionHandler___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (NSString)description
{
  datapathID = self->_datapathID;
  if (datapathID)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", datapathID];
  }

  else
  {
    v4 = @"unset";
  }

  if (self->_initiatorDataAddress)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_initiatorDataAddress];
  }

  else
  {
    v5 = @"unset";
  }

  v6 = MEMORY[0x277CCACA8];
  localInterfaceIndex = self->_localInterfaceIndex;
  v8 = [(WiFiAwareDataSession *)self discoveryResult];
  v9 = [v6 stringWithFormat:@"<WiFiAwareDataSession: datapathID=%@, initiator=%@, localIdx=%u, discoveryResult=%@>", v4, v5, localInterfaceIndex, v8];

  return v9;
}

- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WiFiAwareDataSession *)self delegate];
  [v8 dataSession:self confirmedForPeerDataAddress:v7 serviceSpecificInfo:v6];
}

- (void)datapathConfirmedForPeerDataAddress:(id)a3 serviceSpecificInfo:(id)a4 pairingKeyStoreID:(id)a5 deviceID:(unint64_t)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(WiFiAwareDataSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 dataSession:self confirmedForPeerDataAddress:v13 serviceSpecificInfo:v10 pairingKeyStoreID:v11 deviceID:a6];
  }
}

- (void)datapathPairingRequestStartedWithPairingMethod:(int64_t)a3 pairingAuthenticationInputCompletionHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(WiFiAwareDataSession *)self pairingDelegate];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = MEMORY[0x2318E0CF0](v6);
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "No pairing delegate, skipping invoking pairingRequestStartedForDataSession";
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  *buf = 134217984;
  v22 = a3;
  _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "datapathPairingRequestStartedWithPairingMethod: %ld", buf, 0xCu);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (objc_opt_respondsToSelector())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke_121;
        v16[3] = &unk_2787AAD40;
        v16[4] = v19;
        [v7 pairingRequestStartedForDataSession:self qrCodeScannedCompletionHandler:v16];
        goto LABEL_27;
      }
    }

    else if (a3 == 5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke_2;
      v15[3] = &unk_2787AAD40;
      v15[4] = v19;
      [v7 pairingRequestStartedForDataSession:self nfcTagScannedCompletionHandler:v15];
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      v8 = objc_opt_respondsToSelector();
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v9)
        {
          *buf = 0;
          _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestStartedForDataSession for Passphrase", buf, 2u);
        }

        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke_118;
        v17[3] = &unk_2787AAD18;
        v17[4] = v19;
        [v7 pairingRequestStartedForDataSession:self passphraseInputCompletionHandler:v17];
        goto LABEL_27;
      }

      if (v9)
      {
        *buf = 0;
        v12 = MEMORY[0x277D86220];
        v13 = "Pairing delegate does not implement method pairingRequestStartedForDataSession";
LABEL_29:
        _os_log_error_impl(&dword_22DFDF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
        goto LABEL_26;
      }
    }

    goto LABEL_26;
  }

  v10 = objc_opt_respondsToSelector();
  v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      *buf = 0;
      v12 = MEMORY[0x277D86220];
      v13 = "Pairing delegate does not implement method pairingRequestStartedForDataSession";
      goto LABEL_29;
    }

LABEL_26:
    v6[2](v6, 0);
    goto LABEL_27;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invoking pairing delegate method pairingRequestStartedForDataSession for PIN", buf, 2u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke;
  v18[3] = &unk_2787AACF0;
  v18[4] = self;
  v18[5] = v19;
  [v7 pairingRequestStartedForDataSession:self pinCodeInputCompletionHandler:v18];
LABEL_27:
  _Block_object_dispose(v19, 8);

  v14 = *MEMORY[0x277D85DE8];
}

void __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Pin supplied, calling authenticationInputCompletion", buf, 2u);
    }

    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [v3 dataUsingEncoding:4];
    (*(v4 + 16))(v4, v5);

    v6 = *(a1 + 32);
    v7 = v3;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No pin supplied in pinCodeInputCompletionHandler", v8, 2u);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
    v6 = *(a1 + 32);
    v7 = 0;
  }

  [v6 setPinCode:v7];
}

void __115__WiFiAwareDataSession_datapathPairingRequestStartedWithPairingMethod_pairingAuthenticationInputCompletionHandler___block_invoke_118(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Passphrase supplied, calling authenticationInputCompletion", buf, 2u);
    }

    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v3 dataUsingEncoding:4];
    (*(v4 + 16))(v4, v5);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No passphrase supplied in passphraseInputCompletionHandler", v6, 2u);
  }
}

- (void)datapathPairingDidSucceedWithPairingKeyStoreID:(id)a3 deviceID:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_impl(&dword_22DFDF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "datapathPairingDidSucceed PairingKeyStoreID: %@ DeviceID: %llu", &v9, 0x16u);
  }

  v7 = [(WiFiAwareDataSession *)self pairingDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 pairingRequestCompletedForDataSession:self pairingKeyStoreID:v6 deviceID:a4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)datapathFailedToStartWithError:(int64_t)a3
{
  [(WiFiAwareDataSession *)self resetState];
  v5 = [(WiFiAwareDataSession *)self delegate];
  [v5 dataSession:self failedToStartWithError:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (void)datapathTerminatedWithReason:(int64_t)a3
{
  [(WiFiAwareDataSession *)self resetState];
  v5 = [(WiFiAwareDataSession *)self delegate];
  [v5 dataSession:self terminatedWithReason:a3];

  xpcConnection = self->_xpcConnection;

  [(WiFiP2PXPCConnection *)xpcConnection stop];
}

- (WiFiAwareDataSessionPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

- (WiFiAwareDataSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end