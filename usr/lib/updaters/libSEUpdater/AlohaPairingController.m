@interface AlohaPairingController
- (AlohaPairingController)initWithOptions:(const void *)a3 seController:(shared_ptr<SEUpdater::P73BaseSEController>)a4;
- (BOOL)submitPairingRecord:(id *)a3;
- (id)beginPair:(id *)a3;
- (id)getReverseProxySettings:(id)a3 outError:(id *)a4;
- (id)performHTTPRequestWithRequestDict:(id)a3 outError:(id *)a4;
- (id)processApduReqPayload:(id)a3 outError:(id *)a4;
- (id)processAuthReqPayload:(id)a3 outError:(id *)a4;
- (id)processEndPair:(id)a3;
- (id)verifyAndRetrieveServerSessionId:(id)a3;
- (int)performAlohaPairing;
- (void)dealloc;
- (void)invalidate;
- (void)writeRecord:(id)a3 fileExtension:(id)a4;
@end

@implementation AlohaPairingController

- (AlohaPairingController)initWithOptions:(const void *)a3 seController:(shared_ptr<SEUpdater::P73BaseSEController>)a4
{
  ptr = a4.__ptr_;
  v20.receiver = self;
  v20.super_class = AlohaPairingController;
  v6 = [(AlohaPairingController *)&v20 init:a3];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alohaHostname, *(a3 + 2));
    v9 = *(a3 + 3);
    if (v9)
    {
      objc_storeStrong(&v7->_debugRecordPath, v9);
    }

    objc_storeStrong(&v7->_alohaVersion, *(a3 + 1));
    v10 = [SETransceiveHelper alloc];
    v11 = *(ptr + 1);
    v18 = *ptr;
    v19 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = [(SETransceiveHelper *)v10 initWithSEController:&v18];
    transceiver = v8->_transceiver;
    v8->_transceiver = v12;

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v8->_useReverseProxy = *(a3 + 32);
    v14 = [MEMORY[0x29EDB8DE8] array];
    alohaPlistRecord = v8->_alohaPlistRecord;
    v8->_alohaPlistRecord = v14;

    v8->_state = 1;
    alohaServerIP = v8->_alohaServerIP;
    v8->_alohaServerIP = 0;

    v8->_restoreEnvironment = 1;
  }

  return v8;
}

- (void)dealloc
{
  _ObjCLog(2, "[AlohaPairingController dealloc]", &cfstr_Alohapairingco_0.isa);
  v3.receiver = self;
  v3.super_class = AlohaPairingController;
  [(AlohaPairingController *)&v3 dealloc];
}

- (void)invalidate
{
  _ObjCLog(2, "[AlohaPairingController invalidate]", &cfstr_Alohapairingco_2.isa);
  [(SETransceiveHelper *)self->_transceiver invalidate];
  transceiver = self->_transceiver;
  self->_transceiver = 0;
}

- (int)performAlohaPairing
{
  if (self->_useReverseProxy)
  {
    alohaHostname = self->_alohaHostname;
    v36 = 0;
    v4 = [(AlohaPairingController *)self getReverseProxySettings:alohaHostname outError:&v36];
    v5 = v36;
    reverseProxySettings = self->_reverseProxySettings;
    self->_reverseProxySettings = v4;

    v7 = 26;
    if (!self->_reverseProxySettings || v5)
    {
      goto LABEL_45;
    }
  }

  v8 = 0;
  while (2)
  {
    for (i = self->_state; ; i = 4)
    {
      if (i != 3)
      {
        switch(i)
        {
          case 4uLL:
            v28 = [(AlohaPairingController *)self processEndPair:v8];
            v29 = v28;
            if (v28)
            {
              v15 = 0;
              _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorEncounter_14.isa, v28);
              v7 = 37;
              v5 = v29;
              goto LABEL_44;
            }

            v5 = 0;
            _ObjCLog(2, "[AlohaPairingController performAlohaPairing]", &cfstr_PairingEndedWi.isa);
            v7 = 0;
            goto LABEL_43;
          case 2uLL:
            v18 = [v8 objectForKeyedSubscript:@"Command"];
            if (![v18 isEqualToString:@"AUTHREQ"] || (objc_msgSend(v8, "objectForKeyedSubscript:", @"SessionId"), (v19 = objc_claimAutoreleasedReturnValue()) == 0))
            {

              goto LABEL_42;
            }

            v20 = [v8 objectForKeyedSubscript:@"DATA"];

            if (!v20)
            {
LABEL_42:
              v5 = 0;
              _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_MalformedReply.isa, v8);
              v7 = 37;
              goto LABEL_43;
            }

            v21 = [v8 objectForKeyedSubscript:@"DATA"];
            v34 = 0;
            v15 = [(AlohaPairingController *)self processAuthReqPayload:v21 outError:&v34];
            v5 = v34;

            if (!v5 && v15)
            {
              v17 = 3;
              goto LABEL_24;
            }

            _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorEncounter_11.isa, v5);
            break;
          case 1uLL:
            v35 = 0;
            v15 = [(AlohaPairingController *)self beginPair:&v35];
            v16 = v35;
            v5 = v16;
            if (!v16 && v15)
            {
              v17 = 2;
LABEL_24:
              self->_state = v17;
              v22 = v15;
              goto LABEL_28;
            }

            _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorEncounter_10.isa, v16);
            break;
          default:
            v5 = 0;
            _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_UnexpectedStat.isa, i);
            v7 = 39;
LABEL_43:
            v15 = 0;
            goto LABEL_44;
        }

        v7 = 39;
        goto LABEL_44;
      }

      v10 = [v8 objectForKeyedSubscript:@"Command"];
      if ([v10 isEqualToString:@"APDUREQ"])
      {
      }

      else
      {
        v11 = [v8 objectForKeyedSubscript:@"Command"];
        v12 = [v11 isEqualToString:@"EndPair"];

        if ((v12 & 1) == 0)
        {
          v30 = [v8 objectForKeyedSubscript:@"Command"];
          _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_UnexpectedComm.isa, v30);

          v5 = 0;
          v15 = 0;
          v7 = 37;
          goto LABEL_44;
        }
      }

      v13 = [v8 objectForKeyedSubscript:@"Command"];
      v14 = [v13 isEqualToString:@"EndPair"];

      if (!v14)
      {
        break;
      }

      self->_state = 4;
    }

    v23 = [v8 objectForKeyedSubscript:@"DATA"];

    if (!v23)
    {
      goto LABEL_42;
    }

    v24 = [v8 objectForKeyedSubscript:@"DATA"];
    v33 = 0;
    v22 = [(AlohaPairingController *)self processApduReqPayload:v24 outError:&v33];
    v5 = v33;

    if (v5 || !v22)
    {
      _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorEncounter_12.isa, v5);
      v7 = 39;
      v15 = v22;
    }

    else
    {
LABEL_28:

      v32 = 0;
      v25 = [(AlohaPairingController *)self performHTTPRequestWithRequestDict:v22 outError:&v32];
      v26 = v32;
      v5 = v26;
      if (v26 || !v25)
      {
        _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorEncounter_13.isa, v22, v25, v26);
      }

      else
      {
        v27 = [v25 objectForKeyedSubscript:@"SessionId"];
        v5 = [(AlohaPairingController *)self verifyAndRetrieveServerSessionId:v27];

        if (!v5 && self->_serverSessionID)
        {

          v8 = v25;
          continue;
        }

        _ObjCLog(0, "[AlohaPairingController performAlohaPairing]", &cfstr_ErrorWhenVerif.isa, v5);
      }

      v7 = 37;
      v15 = v22;
      v8 = v25;
    }

    break;
  }

LABEL_44:

LABEL_45:
  return v7;
}

- (id)beginPair:(id *)a3
{
  v60[16] = *MEMORY[0x29EDCA608];
  v5 = [(SETransceiveHelper *)self->_transceiver selectWithAID:@"A00000015153504341534400"];
  v9 = v5;
  if (v5)
  {
    _ObjCLogWrapOutError(a3, v5, 0, "[AlohaPairingController beginPair:]", @"Error encountered when selecting CASD %@\n", v6, v7, v8, v5);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  transceiver = self->_transceiver;
  v58 = 0;
  v11 = [(SETransceiveHelper *)transceiver copySeid:&v58];
  v9 = v58;
  seid = self->_seid;
  self->_seid = v11;

  if (v9 || !self->_seid)
  {
    _ObjCLogWrapOutError(a3, v9, 0, "[AlohaPairingController beginPair:]", @"Error encountered when copying SEID %@\n", v13, v14, v15, v9);
    goto LABEL_5;
  }

  v19 = self->_transceiver;
  v57 = 0;
  v20 = [(SETransceiveHelper *)v19 copyCasdCert:&v57];
  v21 = v57;
  v9 = v21;
  if (v21 || !v20)
  {
    _ObjCLogWrapOutError(a3, v21, 0, "[AlohaPairingController beginPair:]", @"Error encountered when retrieving casdCertificate %@\n", v22, v23, v24, v21);
  }

  else
  {
    v25 = self->_transceiver;
    v56 = 0;
    v26 = [(SETransceiveHelper *)v25 copyDeviceType:&v56];
    v27 = v56;
    v9 = v27;
    if (!v27 && v26 != 255)
    {
      if (v26 == 32 || v26 == 115 || v26 == 100)
      {
        v9 = 0;
        _ObjCLogOutError(a3, 0, "[AlohaPairingController beginPair:]", @"seDeviceType does not support A9\n", v28, v29, v30, v31, v51);
        v16 = 0;
      }

      else
      {
        v32 = self->_transceiver;
        v55 = 0;
        v33 = [(SETransceiveHelper *)v32 copyA9Parameters:&v55];
        v9 = v55;
        if (!v9 && v33 && [v33 count] == 2)
        {
          v38 = [MEMORY[0x29EDBA070] numberWithLongLong:MGGetSInt64Answer()];
          ecid = self->_ecid;
          self->_ecid = v38;

          v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:MGGetSInt64Answer()];
          apChipId = self->_apChipId;
          self->_apChipId = v40;

          v59[0] = @"Command";
          v59[1] = @"ECID";
          v42 = self->_ecid;
          v60[0] = @"BeginPair";
          v60[1] = v42;
          v60[2] = self->_apChipId;
          v59[2] = @"ApChipId";
          v59[3] = @"ApBoardId";
          v54 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:MGGetSInt64Answer()];
          v60[3] = v54;
          v60[4] = _MergedGlobals_7;
          v59[4] = @"ApSecurityDomain";
          v59[5] = @"SOCProductionMode";
          v53 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v60[5] = v53;
          v59[6] = @"SOCSecurityMode";
          v52 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v60[6] = v52;
          v59[7] = @"ApEffectiveProductionMode";
          v43 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v60[7] = v43;
          v59[8] = @"ApEffectiveSecurityMode";
          v44 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v60[8] = v44;
          v59[9] = @"SEPEffectiveProductionMode";
          v45 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v60[9] = v45;
          v59[10] = @"SEPEffectiveSecurityMode";
          v46 = [MEMORY[0x29EDBA070] numberWithBool:MGGetBoolAnswer()];
          v47 = self->_seid;
          v60[10] = v46;
          v60[11] = v47;
          v59[11] = @"SEID";
          v59[12] = @"CASDCert";
          v60[12] = v20;
          v59[13] = @"OBKG";
          v48 = [v33 objectAtIndexedSubscript:1];
          v60[13] = v48;
          v59[14] = @"ServerA9CertSN";
          v49 = [v33 objectAtIndexedSubscript:0];
          v59[15] = @"AlohaVersion";
          alohaVersion = self->_alohaVersion;
          v60[14] = v49;
          v60[15] = alohaVersion;
          v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v60 forKeys:v59 count:16];
        }

        else
        {
          _ObjCLogOutError(a3, 0, "[AlohaPairingController beginPair:]", @"Error when copying a9 params %@\n", v34, v35, v36, v37, v9);
          v16 = 0;
        }
      }

      goto LABEL_21;
    }

    _ObjCLogWrapOutError(a3, v27, 0, "[AlohaPairingController beginPair:]", @"Unable to retrieve seDeviceType with error %@\n", v29, v30, v31, v27);
  }

  v16 = 0;
LABEL_21:

LABEL_6:
  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

- (id)processAuthReqPayload:(id)a3 outError:(id *)a4
{
  v76[3] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setValue:@"AUTHRESP" forKey:@"Command"];
  [v7 setValue:qword_2A197F330 forKey:@"ErrorCode"];
  [v7 setValue:@"Failure" forKey:@"ErrorMessage"];
  [v7 setValue:self->_fullServerSessionID forKey:@"SessionId"];
  [v7 setValue:*MEMORY[0x29EDB8E98] forKey:@"DATA"];
  v8 = [v6 objectForKeyedSubscript:@"HSMChallengeSE"];
  v9 = [v6 objectForKeyedSubscript:@"HSMChallengeSEP"];
  v14 = v9;
  if (!v8 || !v9)
  {
    _ObjCLogOutError(a4, 1, "[AlohaPairingController processAuthReqPayload:outError:]", @"Payload dictionary is wrong %@\n", v10, v11, v12, v13, v6);
    goto LABEL_6;
  }

  v15 = SSEIsFeatureSupported(45);
  if (v15)
  {
    _ObjCLogOutError(a4, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"Get Attestation V2 Auth Key feature is not supported on this device with status %d\n", v16, v17, v18, v19, v15);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

  v74 = 0;
  v23 = SSEGetAttV2AuthKey(self->_seid, v14, &v74);
  v66 = v74;
  v63 = [(__CFData *)v14 asHexString];
  _ObjCLog(2, "[AlohaPairingController processAuthReqPayload:outError:]", &cfstr_CalledSsgetatt.isa);

  if (!v23 && v66)
  {
    v64 = objc_opt_new();
    [v64 setValue:v66 forKey:@"attV2AuthKey"];
    v73 = 0;
    v75[0] = @"VerifyData";
    v28 = [MEMORY[0x29EDBA070] numberWithBool:0];
    v76[0] = v28;
    v75[1] = @"StripImg4";
    v29 = [MEMORY[0x29EDBA070] numberWithBool:0];
    v76[1] = v29;
    v75[2] = @"GetCombined";
    v30 = [MEMORY[0x29EDBA070] numberWithBool:0];
    v76[2] = v30;
    v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
    v65 = [v31 mutableCopy];

    v32 = AMFDRSealingMapCopyLocalDataForClass();
    v36 = v32;
    v37 = 0;
    if (v32)
    {
      memset(v72, 0, sizeof(v72));
      v71 = 0u;
      v70[0] = [v32 DERItem];
      v70[1] = v38;
      v39 = DERParseSequence(v70, &img4BlobSpec, 0x2000000000000010, &v71, 0x30uLL);
      if (v39)
      {
        _ObjCLogOutError(a4, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"Error encountered when parsing IMG4Blob %d\n", v40, v41, v42, v43, v39);
      }

      else
      {
        v69 = 0u;
        memset(v68, 0, sizeof(v68));
        v46 = DERParseSequenceContent(v72, 4u, &scrtBlobSpecItems, v68, 0x40uLL);
        if (!v46)
        {
          v56 = [MEMORY[0x29EDB8DA0] dataWithBytes:v69 length:?];
          if (v56)
          {
            [v64 setValue:v56 forKey:@"SCRT"];
            transceiver = self->_transceiver;
            v58 = [v6 objectForKeyedSubscript:@"HSMChallengeSE"];
            v59 = [MEMORY[0x29EDBA070] numberWithLongLong:MGGetSInt64Answer()];
            v67 = 0;
            v60 = [(SETransceiveHelper *)transceiver copySESignature:v66 hsmChallengeSE:v58 ecid:v59 outError:&v67];
            v37 = v67;

            [v64 setValue:v60 forKey:@"SESignature"];
            [v7 setValue:v64 forKey:@"DATA"];
            [v7 setValue:qword_2A197F338 forKey:@"ErrorCode"];
            [v7 setValue:@"Success" forKey:@"ErrorMessage"];
            v61 = v7;
          }

          else
          {
            _ObjCLogOutError(a4, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"SCRT is nil\n", v52, v53, v54, v55, v63);
            v62 = v7;
            v37 = 0;
          }

          goto LABEL_21;
        }

        _ObjCLogOutError(a4, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"Error encountered when parsing SCRTBlob %d\n", v47, v48, v49, v50, v46);
      }

      v51 = v7;
      v37 = 0;
    }

    else
    {
      _ObjCLogWrapOutError(a4, 0, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"Error encountered when geting scrt %@ or scrt absent %d\n", v33, v34, v35, v73);
      v45 = v7;
    }

LABEL_21:

    goto LABEL_22;
  }

  _ObjCLogOutError(a4, 0, "[AlohaPairingController processAuthReqPayload:outError:]", @"Bad status received when getting Auth Key V2 %d or nil for AuthKey %d\n", v24, v25, v26, v27, v23);
  v44 = v7;
LABEL_22:

LABEL_7:
  v21 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)processApduReqPayload:(id)a3 outError:(id *)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v10 = a3;
  v11 = objc_opt_new();
  [v11 setValue:@"APDURESP" forKey:@"Command"];
  [v11 setValue:qword_2A197F338 forKey:@"ErrorCode"];
  [v11 setValue:@"Success" forKey:@"ErrorMessage"];
  [v11 setValue:self->_fullServerSessionID forKey:@"SessionId"];
  [v11 setValue:*MEMORY[0x29EDB8E88] forKey:@"DATA"];
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v10;
  if ([obj countByEnumeratingWithState:&v14 objects:v18 count:16])
  {
    *v15;
    *v15;
    v6 = **(&v14 + 1);
    v7 = **(&v14 + 1);
    SERestoreInfo::CApdu::CApdu(&v13, [v6 bytes], objc_msgSend(v6, "length"));
  }

  [v11 setValue:v5 forKey:@"DATA"];
  v8 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)processEndPair:(id)a3
{
  v4 = a3;
  _ObjCLog(2, "[AlohaPairingController processEndPair:]", &cfstr_EndpairPayload.isa, v4);
  v5 = [v4 objectForKeyedSubscript:@"ECID"];
  if ([(NSNumber *)self->_ecid isEqualToNumber:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = _ObjCLogNSError(0, 0, "[AlohaPairingController processEndPair:]", &cfstr_EcidFromEndpai.isa, v5, self->_ecid);
  }

  return v6;
}

- (id)performHTTPRequestWithRequestDict:(id)a3 outError:(id *)a4
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__5;
  v55 = __Block_byref_object_dispose__5;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__5;
  v49 = __Block_byref_object_dispose__5;
  v50 = 0;
  obj = 0;
  v6 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:a3 format:100 options:0 error:&obj];
  objc_storeStrong(&v50, obj);
  v10 = v46[5];
  if (v10 || !v6)
  {
    _ObjCLogWrapOutError(a4, v10, 0, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]", @"Error encountered when forming request body %@\n", v7, v8, v9, v46[5]);
    v26 = 0;
    goto LABEL_20;
  }

  [(NSMutableArray *)self->_alohaPlistRecord addObject:v6];
  v11 = MEMORY[0x29EDBA058];
  v12 = [MEMORY[0x29EDB8E70] URLWithString:self->_alohaHostname];
  v13 = [v11 requestWithURL:v12 cachePolicy:1 timeoutInterval:60.0];

  v14 = [MEMORY[0x29EDBA138] defaultSessionConfiguration];
  v15 = v14;
  if (self->_useReverseProxy)
  {
    [v14 setConnectionProxyDictionary:self->_reverseProxySettings];
  }

  [v13 setHTTPMethod:@"POST"];
  alohaServerIP = self->_alohaServerIP;
  if (alohaServerIP)
  {
    _ObjCLog(2, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]", &cfstr_AddingHeader.isa, @"X-Apple-Aloha-IP", alohaServerIP);
    [v13 setValue:self->_alohaServerIP forHTTPHeaderField:@"X-Apple-Aloha-IP"];
  }

  [v13 setHTTPBody:v6];
  v17 = dispatch_semaphore_create(0);
  v18 = [MEMORY[0x29EDBA130] sessionWithConfiguration:v15];
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v40[2] = __69__AlohaPairingController_performHTTPRequestWithRequestDict_outError___block_invoke;
  v40[3] = &unk_29F2910E0;
  v42 = &v51;
  v40[4] = self;
  v43 = &v45;
  v19 = v17;
  v41 = v19;
  v20 = [v18 dataTaskWithRequest:v13 completionHandler:v40];

  [v20 resume];
  if (v20)
  {
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  }

  v25 = (v46 + 5);
  v24 = v46[5];
  if (!v24)
  {
    v38 = 0;
    v39 = 0;
    v27 = [MEMORY[0x29EDBA0C0] propertyListWithData:v52[5] options:0 format:&v39 error:&v38];
    objc_storeStrong(v25, v38);
    if (v39 == 100)
    {
      if (v27)
      {
        v26 = v27;
LABEL_18:

        goto LABEL_19;
      }

      v32 = [v52[5] asHexString];
      _ObjCLogOutError(a4, 0, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]", @"Unable to form plist from data %@\n", v33, v34, v35, v36, v32);
    }

    else
    {
      _ObjCLogOutError(a4, 1, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]", @"Was expecting XML format but received %lu\n", v28, v29, v30, v31, v39);
    }

    v26 = 0;
    goto LABEL_18;
  }

  _ObjCLogWrapOutError(a4, v24, 0, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]", @"Encountered error when talking to server %@\n", v21, v22, v23, v46[5]);
  v26 = 0;
LABEL_19:

LABEL_20:
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);

  return v26;
}

void __69__AlohaPairingController_performHTTPRequestWithRequestDict_outError___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [v10 statusCode];
  if ([v16 length])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v12 = [*(a1 + 32) alohaPlistRecord];
    [v12 addObject:*(*(*(a1 + 48) + 8) + 40)];
  }

  if (v11 == 200)
  {
    v13 = [v9 copy];
  }

  else
  {
    v13 = _ObjCLogNSError(0, 0, "[AlohaPairingController performHTTPRequestWithRequestDict:outError:]_block_invoke", &cfstr_BadHttpStatusC.isa, v11);
  }

  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)getReverseProxySettings:(id)a3 outError:(id *)a4
{
  v4 = a3;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3812000000;
  v6[3] = __Block_byref_object_copy__187;
  v6[4] = __Block_byref_object_dispose__188;
  v6[5] = "";
  operator new();
}

void __59__AlohaPairingController_getReverseProxySettings_outError___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    _ObjCLogNSError(0, 8, "[AlohaPairingController getReverseProxySettings:outError:]_block_invoke", &cfstr_ProxyUnavailab.isa);
  }

  else
  {
    if (a2 == 1)
    {
      _ObjCLog(2, "[AlohaPairingController getReverseProxySettings:outError:]_block_invoke", &cfstr_ProxyAvailable.isa);
      v3 = *(*(*(a1 + 32) + 8) + 48);
      if (!v3)
      {
        std::__throw_future_error[abi:ne200100](3u);
      }

      std::mutex::lock((v3 + 24));
      if ((*(v3 + 136) & 1) != 0 || (v8.__ptr_ = 0, v4 = *(v3 + 16), std::exception_ptr::~exception_ptr(&v8), v4))
      {
        std::__throw_future_error[abi:ne200100](2u);
      }

      *(v3 + 140) = 1;
      *(v3 + 136) |= 5u;
      std::condition_variable::notify_all((v3 + 88));
      std::mutex::unlock((v3 + 24));
      return;
    }

    _ObjCLogNSError(0, 0, "[AlohaPairingController getReverseProxySettings:outError:]_block_invoke", &cfstr_ProxyAbortedD.isa, a2);
  }
  v5 = ;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  MEMORY[0x2A1C71028]();
}

- (id)verifyAndRetrieveServerSessionId:(id)a3
{
  v5 = a3;
  v6 = [v5 componentsSeparatedByString:@"/"];
  if ([v6 count] == 3)
  {
    objc_storeStrong(&self->_fullServerSessionID, a3);
    v7 = [v6 objectAtIndexedSubscript:0];
    alohaServerIP = self->_alohaServerIP;
    self->_alohaServerIP = v7;

    serverSessionID = self->_serverSessionID;
    if (serverSessionID)
    {
      v10 = [v6 objectAtIndexedSubscript:2];
      v11 = [(NSString *)serverSessionID isEqualToString:v10];

      if (v11)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v14 = [v6 objectAtIndexedSubscript:2];
      v12 = _ObjCLogNSError(0, 1, "[AlohaPairingController verifyAndRetrieveServerSessionId:]", &cfstr_WrongSessionid.isa, v14, self->_serverSessionID);
    }

    else
    {
      v13 = [v6 objectAtIndexedSubscript:2];
      v12 = 0;
      v14 = self->_serverSessionID;
      self->_serverSessionID = v13;
    }
  }

  else
  {
    v12 = _ObjCLogNSError(0, 1, "[AlohaPairingController verifyAndRetrieveServerSessionId:]", &cfstr_MalformedSessi.isa, v5);
  }

LABEL_9:

  return v12;
}

- (void)writeRecord:(id)a3 fileExtension:(id)a4
{
  v15 = a3;
  v6 = a4;
  for (i = 0; [v15 count] > i; ++i)
  {
    v8 = [MEMORY[0x29EDBA070] numberWithInt:i];
    v9 = [v8 stringValue];
    v10 = [@"AlohaV2Pairing-" stringByAppendingString:v9];
    v11 = [v10 stringByAppendingPathExtension:v6];

    v12 = [(NSString *)self->_debugRecordPath stringByAppendingPathComponent:v11];
    v13 = [MEMORY[0x29EDB9FB8] defaultManager];
    v14 = [v15 objectAtIndexedSubscript:i];
    [v13 createFileAtPath:v12 contents:v14 attributes:0];
  }
}

- (BOOL)submitPairingRecord:(id *)a3
{
  transceiver = self->_transceiver;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v5 = [(SETransceiveHelper *)transceiver getSEPK:&v27 andSEID:&v26 deleteExisting:1 error:&v25];
  v6 = v27;
  v7 = v26;
  v8 = v25;
  if (v5 && v6 != 0 && v7 != 0 && v8 == 0)
  {
    v17 = [v7 asHexString];
    v18 = [v17 uppercaseString];

    _ObjCLog(2, "[AlohaPairingController(FDR) submitPairingRecord:]", &cfstr_SubmittingSepk.isa);
    _ObjCLog(2, "[AlohaPairingController(FDR) submitPairingRecord:]", &cfstr_Seid_1.isa, v18);
    v19 = [v6 base64Encoding];
    _ObjCLog(2, "[AlohaPairingController(FDR) submitPairingRecord:]", &cfstr_Sepk_0.isa, v19);

    v20 = AMFDRDataPutForRestore();
    v16 = v20;
    v15 = 0;
    _ObjCLog(2, "[AlohaPairingController(FDR) submitPairingRecord:]", &cfstr_ResponseFromAm.isa, v20, 0);
    if (!v16)
    {
      _ObjCLogWrapOutError(a3, 0, 0, "[AlohaPairingController(FDR) submitPairingRecord:]", @"Failed to AMFDRDataPutForRestore : %@", v21, v22, v23, 0);
    }
  }

  else
  {
    v15 = v8;
    _ObjCLogWrapOutError(a3, v8, 0, "[AlohaPairingController(FDR) submitPairingRecord:]", @"Failed to get SEPK+SEID: %@", v9, v10, v11, v8);
    v16 = 0;
  }

  return v16;
}

@end