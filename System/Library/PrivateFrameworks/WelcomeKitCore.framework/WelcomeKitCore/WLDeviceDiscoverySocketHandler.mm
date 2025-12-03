@interface WLDeviceDiscoverySocketHandler
- (BOOL)_didReceiveHandshakeData:(id)data;
- (WLDeviceDiscoverySocketHandler)initWithSocket:(int)socket srpPassword:(id)password delegate:(id)delegate;
- (WLDeviceDiscoverySocketHandlerDelegate)delegate;
- (id)_commandStringWithData:(id)data;
- (id)_handshakeCommandData;
- (id)_handshakeResponseData;
- (id)_okResponseData;
- (void)_performSRPAuthenticationAndHandshake;
- (void)invalidateWithError:(id)error;
- (void)resume;
- (void)sendData:(id)data completion:(id)completion;
@end

@implementation WLDeviceDiscoverySocketHandler

- (WLDeviceDiscoverySocketHandler)initWithSocket:(int)socket srpPassword:(id)password delegate:(id)delegate
{
  passwordCopy = password;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = WLDeviceDiscoverySocketHandler;
  v11 = [(WLSocketHandler *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_srpPassword, password);
    v13 = dispatch_queue_create("Socket Write Serialization Queue", 0);
    writeQueue = v12->_writeQueue;
    v12->_writeQueue = v13;

    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_sockfd = socket;
  }

  return v12;
}

- (void)resume
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WLDeviceDiscoverySocketHandler_resume__block_invoke;
  block[3] = &unk_279EB54A0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidateWithError:(id)error
{
  readSource = self->_readSource;
  errorCopy = error;
  dispatch_source_cancel(readSource);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceDiscoverySocketHandler:self didFailToHandshakeWithSourceDevice:self->_sourceDevice error:errorCopy];
}

- (void)_performSRPAuthenticationAndHandshake
{
  v143[1] = *MEMORY[0x277D85DE8];
  [(WLSocketHandler *)self beginReadingIntoCacheFromSocket:self->_sockfd];
  v122 = 0;
  v123 = &v122;
  v124 = 0x3032000000;
  v125 = __Block_byref_object_copy_;
  v126 = __Block_byref_object_dispose_;
  v127 = 0;
  v107 = dispatch_semaphore_create(0);
  if (v123[5])
  {
    goto LABEL_3;
  }

  _WLLog();
  v3 = (v123 + 5);
  obj = v123[5];
  [(WLSocketHandler *)self waitForCommand:@"AUTHENTICATE" fromReadCacheReturningError:&obj, self];
  objc_storeStrong(v3, obj);
  selfCopy2 = self;
  v91 = v123[5];
  _WLLog();
  if (v123[5])
  {
    goto LABEL_3;
  }

  v108 = [[WLSRPServer alloc] initWithUsername:@"movetoios" password:self->_srpPassword, self, v91];
  selfCopy2 = self;
  _WLLog();
  if (!v108)
  {
    v18 = MEMORY[0x277CCA9B8];
    v142 = *MEMORY[0x277CCA450];
    v143[0] = @"Failed to create SRP session";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:&v142 count:{1, self, 0}];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v19];
    v21 = v123[5];
    v123[5] = v20;

LABEL_3:
    v108 = 0;
  }

  if (v123[5])
  {
    goto LABEL_18;
  }

  v4 = MEMORY[0x277CBEA90];
  salt_s = [(WLSRPServer *)v108 salt_s];
  wl_hexEncodedData = [salt_s wl_hexEncodedData];
  v141[0] = wl_hexEncodedData;
  serverPublicKey_B = [(WLSRPServer *)v108 serverPublicKey_B];
  wl_hexEncodedData2 = [serverPublicKey_B wl_hexEncodedData];
  v141[1] = wl_hexEncodedData2;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v141 count:2];
  v10 = [v4 wl_lengthPrefixedBlobSequenceFromDataArray:v9];

  salt_s2 = [(WLSRPServer *)v108 salt_s];
  wl_hexEncodedString = [salt_s2 wl_hexEncodedString];
  _WLLog();

  serverPublicKey_B2 = [(WLSRPServer *)v108 serverPublicKey_B];
  wl_hexEncodedString2 = [serverPublicKey_B2 wl_hexEncodedString];
  _WLLog();

  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "length", wl_hexEncodedString2)}];
  _WLLog();

  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke;
  v118[3] = &unk_279EB54C8;
  v118[4] = self;
  v120 = &v122;
  v13 = v107;
  v119 = v13;
  [(WLDeviceDiscoverySocketHandler *)self sendData:v10 completion:v118, self, v92];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

  if (v123[5])
  {
    goto LABEL_18;
  }

  _WLLog();
  v14 = (v123 + 5);
  v117 = v123[5];
  v15 = [(WLSocketHandler *)self waitForBlobDataFromReadCacheReturningError:&v117, self];
  objc_storeStrong(v14, v117);
  [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "length")}];
  v93 = selfCopy2 = self;
  _WLLog();

  if (v123[5])
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    _WLLog();
    v22 = [v15 wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:{2, self, v93}];
    v94 = [MEMORY[0x277CCABB0] numberWithInt:v22 != 0];
    _WLLog();

    if (v22)
    {
      v23 = [v22 objectAtIndexedSubscript:{0, self, v94}];
      wl_utf8String = [v23 wl_utf8String];
      _WLLog();

      v24 = [v22 objectAtIndexedSubscript:{1, wl_utf8String}];
      wl_utf8String2 = [v24 wl_utf8String];
      _WLLog();

      v25 = MEMORY[0x277CBEA90];
      v26 = [v22 objectAtIndexedSubscript:{0, wl_utf8String2}];
      v16 = [v25 wl_dataFromHexEncodedData:v26];

      v27 = MEMORY[0x277CBEA90];
      v28 = [v22 objectAtIndexedSubscript:1];
      v17 = [v27 wl_dataFromHexEncodedData:v28];
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v139 = *MEMORY[0x277CCA450];
      v140 = @"Failed to parse client public key and proof of match";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:{1, self, v94}];
      v30 = [v29 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v28];
      v31 = v123[5];
      v123[5] = v30;

      v17 = 0;
      v16 = 0;
    }

    if (!v123[5])
    {
      _WLLog();
      v32 = [(WLSRPServer *)v108 didReceiveClientPublicKey_A:v16 proofOfMatch_M:v17, self];
      [MEMORY[0x277CCABB0] numberWithBool:v32];
      v95 = selfCopy2 = self;
      _WLLog();

      if ((v32 & 1) == 0)
      {
        v33 = MEMORY[0x277CCA9B8];
        v137 = *MEMORY[0x277CCA450];
        v138 = @"Failed to validate client public key and proof of match";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:{1, self, v95}];
        v35 = [v33 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v34];
        v36 = v123[5];
        v123[5] = v35;
      }
    }
  }

  if (v123[5])
  {
    goto LABEL_18;
  }

  hashOfProofOfMatch_HAMK = [(WLSRPServer *)v108 hashOfProofOfMatch_HAMK];
  wl_hexEncodedData3 = [hashOfProofOfMatch_HAMK wl_hexEncodedData];
  wl_lengthPrefixedBlob = [wl_hexEncodedData3 wl_lengthPrefixedBlob];

  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(wl_lengthPrefixedBlob, "length")}];
  _WLLog();

  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_2;
  v114[3] = &unk_279EB54C8;
  v114[4] = self;
  v116 = &v122;
  v40 = v13;
  v115 = v40;
  [(WLDeviceDiscoverySocketHandler *)self sendData:wl_lengthPrefixedBlob completion:v114, self, v96];
  dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);

  if (v123[5])
  {
LABEL_18:
    v106 = 0;
  }

  else
  {
    _WLLog();
    v106 = +[WLAuthenticationCredentials generateAuthenticationCredentialsContainingSelfSignedCertificate];
    [MEMORY[0x277CCABB0] numberWithInt:v106 != 0];
    v99 = selfCopy2 = self;
    _WLLog();

    if (!v123[5])
    {
      _WLLog();
      v56 = (v123 + 5);
      v113 = v123[5];
      v57 = [(WLSocketHandler *)self waitForBlobDataFromReadCacheReturningError:&v113, self, v99];
      objc_storeStrong(v56, v113);
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v57, "length")}];
      v100 = selfCopy2 = self;
      _WLLog();

      if (v123[5])
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
      }

      else
      {
        _WLLog();
        v61 = [v57 wl_arrayOfDataFromLengthPrefixedBlobSequenceWithExpectedCount:{3, self, v100}];
        v101 = [MEMORY[0x277CCABB0] numberWithInt:v61 != 0];
        _WLLog();

        if (v61)
        {
          v60 = [v61 objectAtIndex:{0, self, v101}];
          v59 = [v61 objectAtIndex:1];
          v62 = [v61 objectAtIndexedSubscript:2];
          wl_utf8String3 = [v62 wl_utf8String];
          _WLLog();

          v63 = MEMORY[0x277CBEA90];
          v64 = [v61 objectAtIndexedSubscript:{2, wl_utf8String3}];
          v58 = [v63 wl_dataFromHexEncodedData:v64];
        }

        else
        {
          v65 = MEMORY[0x277CCA9B8];
          v135 = *MEMORY[0x277CCA450];
          v136 = @"Failed to parse client cert and handshake and mac";
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:{1, self, v101}];
          v66 = [v65 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v64];
          v67 = v123[5];
          v123[5] = v66;

          v58 = 0;
          v59 = 0;
          v60 = 0;
        }

        if (!v123[5])
        {
          _WLLog();
          v68 = [v60 mutableCopy];
          [v68 appendData:v59];
          v69 = [(WLSRPServer *)v108 isHmacData:v58 validForData:v68];
          [MEMORY[0x277CCABB0] numberWithBool:v69];
          v102 = selfCopy2 = self;
          _WLLog();

          if ((v69 & 1) == 0)
          {
            v70 = MEMORY[0x277CCA9B8];
            v133 = *MEMORY[0x277CCA450];
            v134 = @"Client cert and handshake data does not match MAC";
            v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:{1, self, v102}];
            v72 = [v70 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v71];
            v73 = v123[5];
            v123[5] = v72;
          }

          if (!v123[5])
          {
            v74 = *MEMORY[0x277CBECE8];
            [v106 setRemoteCertificate:SecCertificateCreateWithPEM()];
            v103 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v106, "remoteCertificate") != 0}];
            _WLLog();

            if (![v106 remoteCertificate])
            {
              v75 = MEMORY[0x277CCA9B8];
              v131 = *MEMORY[0x277CCA450];
              v132 = @"Failed to create client cert";
              v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
              v77 = [v75 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v76];
              v78 = v123[5];
              v123[5] = v77;
            }
          }
        }
      }

      if (!v123[5])
      {
        _WLLog();
        v79 = [(WLDeviceDiscoverySocketHandler *)self _didReceiveHandshakeData:v59, self];
        [MEMORY[0x277CCABB0] numberWithBool:v79];
        v104 = selfCopy2 = self;
        _WLLog();

        if (!v79)
        {
          v80 = MEMORY[0x277CCA9B8];
          v129 = *MEMORY[0x277CCA450];
          v130 = @"Failed to parse client handshake data";
          v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:{1, self, v104}];
          v82 = [v80 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v81];
          v83 = v123[5];
          v123[5] = v82;
        }
      }
    }
  }

  if ([(WLSourceDevice *)self->_sourceDevice isSelectingDataTypeInHandshake])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained deviceDiscoverySocketHandler:self didDiscoverCandidate:self->_sourceDevice];
  }

  if (!v123[5])
  {
    v105 = SecCertificateCopyData([v106 localCertificate]);
    v42 = [WLAuthenticationUtilities pemFormattedCertificateData:?];
    _handshakeResponseData = [(WLDeviceDiscoverySocketHandler *)self _handshakeResponseData];
    v44 = [v42 mutableCopy];
    [v44 appendData:_handshakeResponseData];
    v45 = [(WLSRPServer *)v108 hmacDataForData:v44];
    wl_hexEncodedString3 = [v45 wl_hexEncodedString];
    _WLLog();

    v46 = MEMORY[0x277CBEA90];
    v128[0] = v42;
    v128[1] = _handshakeResponseData;
    wl_hexEncodedData4 = [v45 wl_hexEncodedData];
    v128[2] = wl_hexEncodedData4;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:3];
    v49 = [v46 wl_lengthPrefixedBlobSequenceFromDataArray:v48];

    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v49, "length")}];
    _WLLog();

    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_3;
    v110[3] = &unk_279EB54C8;
    v110[4] = self;
    v112 = &v122;
    v50 = v107;
    v111 = v50;
    [(WLDeviceDiscoverySocketHandler *)self sendData:v49 completion:v110, self, v97];
    dispatch_semaphore_wait(v50, 0xFFFFFFFFFFFFFFFFLL);

    if (!v123[5] && ([(WLSourceDevice *)self->_sourceDevice useMigrationKit]& 1) == 0)
    {
      _WLLog();
      v51 = (v123 + 5);
      v109 = v123[5];
      [(WLSocketHandler *)self waitForCommand:@"OK" fromReadCacheReturningError:&v109, self];
      objc_storeStrong(v51, v109);
      v98 = v123[5];
      _WLLog();
    }
  }

  if (v123[5] || ([(WLSocketHandler *)self endReadingIntoCache], v123[5]))
  {
    _WLLog();
    v52 = objc_loadWeakRetained(&self->_delegate);
    [v52 deviceDiscoverySocketHandler:self didFailToHandshakeWithSourceDevice:self->_sourceDevice error:{v123[5], self}];
  }

  else
  {
    _WLLog();
    v52 = objc_alloc_init(MEMORY[0x277D7B888]);
    v54 = +[WLCredentialStore sharedInstance];
    [v54 setCredentials:v106 forAuthentication:v52];

    v55 = objc_loadWeakRetained(&self->_delegate);
    [v55 deviceDiscoverySocketHandler:self didFinishHandshakeWithSourceDevice:self->_sourceDevice];
  }

  _Block_object_dispose(&v122, 8);
  v53 = *MEMORY[0x277D85DE8];
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__WLDeviceDiscoverySocketHandler__performSRPAuthenticationAndHandshake__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_commandStringWithData:(id)data
{
  v3 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v5 = [v3 alloc];
  bytes = [dataCopy bytes];
  v7 = [dataCopy length];

  v8 = [v5 initWithBytesNoCopy:bytes length:v7 encoding:4 freeWhenDone:0];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n"];
  LODWORD(bytes) = [v8 hasSuffix:v9];

  if (bytes)
  {
    v10 = [v8 stringByReplacingCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, &stru_2882CBB40}];

    v8 = v10;
  }

  return v8;
}

- (id)_okResponseData
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"OK\r\n"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (id)_handshakeCommandData
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"HANDSHAKE\r\n"];
  v3 = [v2 dataUsingEncoding:4];

  return v3;
}

- (BOOL)_didReceiveHandshakeData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277D7B8B8]);
  sourceDevice = self->_sourceDevice;
  self->_sourceDevice = v5;

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  _WLLog();

  *&v15.sa_len = 0;
  *&v15.sa_data[6] = 0;
  v14 = 16;
  if (getpeername(self->_sockfd, &v15, &v14))
  {
    _WLLog();
  }

  else
  {
    v7.s_addr = *&v15.sa_data[2];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{inet_ntoa(v7), self, v13}];
    [(WLSourceDevice *)self->_sourceDevice setIpAddress:v8];
  }

  v9 = objc_alloc_init(WLSourceDeviceHandshakeParser);
  v10 = [(WLSourceDeviceHandshakeParser *)v9 parseData:dataCopy modifyingSourceDevice:self->_sourceDevice completion:&__block_literal_global_1];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_handshakeResponseData
{
  v3 = xmlNewDoc("1.0");
  v4 = xmlNewNode(0, "root");
  xmlDocSetRootElement(v3, v4);
  v5 = xmlNewChild(v4, 0, "device_info", 0);
  v6 = +[WLDevice deviceName];
  xmlNewChild(v5, 0, "name", [v6 UTF8String]);

  xmlNewChild(v5, 0, "supports_name", "1");
  xmlNewChild(v5, 0, "port", "0");
  xmlNewChild(v5, 0, "device_type", "ios");
  xmlNewChild(v5, 0, "supports_role", "migration_target");
  xmlNewChild(v5, 0, "protocol_version", "2");
  xmlNewChild(v5, 0, "can_add", "photos");
  xmlNewChild(v5, 0, "can_add", "contacts");
  xmlNewChild(v5, 0, "can_add", "calendar");
  if ([(WLSourceDevice *)self->_sourceDevice isSelectingDataTypeInHandshake])
  {
    xmlNewChild(v5, 0, "is_selecting_data_type_in_handshake", "1");
  }

  if ([(WLSourceDevice *)self->_sourceDevice useMigrationKit])
  {
    xmlNewChild(v5, 0, "upgrade", "api/2.0");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddDisplay])
  {
    xmlNewChild(v5, 0, "can_add", "display");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddAccessibility])
  {
    xmlNewChild(v5, 0, "can_add", "accessibility");
  }

  if ([(WLSourceDevice *)self->_sourceDevice canAddFiles])
  {
    xmlNewChild(v5, 0, "can_add", "files");
  }

  xmlNewChild(v5, 0, "supports_retry_after", "1");
  if (WLLoggingEnabled())
  {
    xmlNewChild(v5, 0, "logging_enabled", "1");
  }

  mem = 0;
  size = 0;
  xmlDocDumpFormatMemory(v3, &mem, &size, 0);
  if (mem)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:mem length:size];
  }

  else
  {
    v7 = 0;
  }

  xmlFreeDoc(v3);
  xmlCleanupParser();

  return v7;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke;
  block[3] = &unk_279EB5538;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(writeQueue, block);
}

void __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bytes];
  v4 = [*(a1 + 40) length];
  v5 = *(*(a1 + 32) + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke_2;
  v7[3] = &unk_279EB5510;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v2 writeBytes:v3 length:v4 toSocket:v5 completion:v7];
}

void __54__WLDeviceDiscoverySocketHandler_sendData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) invalidateWithError:0];
    v5 = v7;
  }
}

- (WLDeviceDiscoverySocketHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end