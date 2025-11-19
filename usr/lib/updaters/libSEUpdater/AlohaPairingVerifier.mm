@interface AlohaPairingVerifier
- (AlohaPairingVerifier)initWithController:(shared_ptr<SEUpdater:(const AlohaVerificationOptions *)a4 :P73BaseSEController>)a3 options:;
- (BOOL)injectSEPKtoSSE:(id *)a3;
- (BOOL)injectSEPKtoSSE_Debug:(id *)a3;
- (BOOL)injectSEPKtoSSE_FDR:(id *)a3;
- (id)getSharingRequestWithSignature:(id *)a3 withError:(id *)a4;
- (id)performAlohaVerification;
- (id)performAuthKeySharingWithAppleSSE:(id)a3 sharingRequest:(id)a4 requestSignature:(id)a5 resultSignature:(id *)a6 withError:(id *)a7;
- (void)invalidate;
@end

@implementation AlohaPairingVerifier

- (AlohaPairingVerifier)initWithController:(shared_ptr<SEUpdater:(const AlohaVerificationOptions *)a4 :P73BaseSEController>)a3 options:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v15.receiver = self;
  v15.super_class = AlohaPairingVerifier;
  v6 = [(AlohaPairingVerifier *)&v15 init:a3.__ptr_];
  if (v6)
  {
    v7 = [SETransceiveHelper alloc];
    v8 = *(ptr + 1);
    v13 = *ptr;
    v14 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = [(SETransceiveHelper *)v7 initWithSEController:&v13];
    transceiver = v6->_transceiver;
    v6->_transceiver = v9;

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    seid = v6->_seid;
    v6->_seid = 0;

    v6->_options = cntrl;
  }

  return v6;
}

- (void)invalidate
{
  _ObjCLog(2, "[AlohaPairingVerifier invalidate]", &cfstr_Alohapairingve_0.isa);
  transceiver = self->_transceiver;

  [(SETransceiveHelper *)transceiver invalidate];
}

- (id)performAlohaVerification
{
  transceiver = self->_transceiver;
  v27 = 0;
  v4 = [(SETransceiveHelper *)transceiver copySeid:&v27];
  v5 = v27;
  seid = self->_seid;
  self->_seid = v4;

  if (self->_seid)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = _ObjCLogNSError(v5, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Copyseid.isa);
LABEL_18:
    v19 = v8;
    goto LABEL_22;
  }

  v26 = 0;
  v9 = [(AlohaPairingVerifier *)self injectSEPKtoSSE:&v26];
  v10 = v26;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v5 = v10;
    v8 = _ObjCLogNSError(v10, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Injectsepktoss.isa);
    goto LABEL_18;
  }

  v24 = 0;
  v25 = 0;
  v12 = [(AlohaPairingVerifier *)self getSharingRequestWithSignature:&v25 withError:&v24];
  v13 = v25;
  v14 = v24;
  v5 = v14;
  if (!v14 && v12 && v13)
  {
    v15 = self->_seid;
    v23 = 0;
    v22 = 0;
    v16 = [(AlohaPairingVerifier *)self performAuthKeySharingWithAppleSSE:v15 sharingRequest:v12 requestSignature:v13 resultSignature:&v23 withError:&v22];
    v17 = v23;
    v18 = v22;
    v5 = v18;
    if (!v18 && v16 && v17)
    {
      [APDUUtil getCXXApduWithCla:128 ins:202 p1:0 p2:214 payload:0];
      SERestoreInfo::Apdu::Apdu(&v21);
    }

    v19 = _ObjCLogNSError(v18, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Performauthkey.isa);
  }

  else
  {
    v19 = _ObjCLogNSError(v14, 14, "[AlohaPairingVerifier performAlohaVerification]", &cfstr_Getsharingrequ.isa);
  }

LABEL_22:

  return v19;
}

- (BOOL)injectSEPKtoSSE:(id *)a3
{
  if (self->_options->var0)
  {
    return [(AlohaPairingVerifier *)self injectSEPKtoSSE_Debug:a3];
  }

  else
  {
    return [(AlohaPairingVerifier *)self injectSEPKtoSSE_FDR:a3];
  }
}

- (BOOL)injectSEPKtoSSE_Debug:(id *)a3
{
  v42 = *MEMORY[0x29EDCA608];
  transceiver = self->_transceiver;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v5 = [(SETransceiveHelper *)transceiver getSEPK:&v38 andSEID:&v37 deleteExisting:0 error:&v36];
  v6 = v38;
  v7 = v37;
  v8 = v36;
  v13 = v8;
  if (!v5 || v8 != 0 || v6 == 0 || v7 == 0)
  {
    _ObjCLogOutError(a3, 0, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", @"Failed to getSEPK : %@", v9, v10, v11, v12, v8);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
    inputStruct = 1397966179;
    v40 = 246;
    *&v41[2] = 258;
    SSEIOConnect = getSSEIOConnect();
    v18 = IOConnectCallStructMethod(SSEIOConnect, 0, &inputStruct, 0x62uLL, 0, 0);
    if (v18)
    {
      v23 = @"Unable to EnableTestSEContext %d";
    }

    else
    {
      v41[2] = 3;
      v24 = v7;
      v25 = [v7 bytes];
      v26 = *v25;
      *&v41[19] = *(v25 + 16);
      *&v41[3] = v26;
      v27 = v6;
      v28 = [v6 bytes];
      *&v41[27] = *v28;
      v29 = *(v28 + 16);
      v30 = *(v28 + 32);
      v31 = *(v28 + 48);
      v41[91] = *(v28 + 64);
      *&v41[75] = v31;
      *&v41[59] = v30;
      *&v41[43] = v29;
      v32 = getSSEIOConnect();
      v18 = IOConnectCallStructMethod(v32, 0, &inputStruct, 0x62uLL, 0, 0);
      if (!v18)
      {
        _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", &cfstr_SuccessfullyDe.isa, v7);
        v33 = 1;
        goto LABEL_19;
      }

      v23 = @"Error code %d received when setting SE PK in SSE";
    }

    _ObjCLogOutError(a3, 0, "[AlohaPairingVerifier injectSEPKtoSSE_Debug:]", v23, v19, v20, v21, v22, v18);
  }

  v33 = 0;
LABEL_19:

  v34 = *MEMORY[0x29EDCA608];
  return v33;
}

- (BOOL)injectSEPKtoSSE_FDR:(id *)a3
{
  v38[3] = *MEMORY[0x29EDCA608];
  v36 = 0;
  v37[0] = @"VerifyData";
  v5 = [MEMORY[0x29EDBA070] numberWithBool:0];
  v38[0] = v5;
  v37[1] = @"StripImg4";
  v6 = [MEMORY[0x29EDBA070] numberWithBool:0];
  v38[1] = v6;
  v37[2] = @"GetCombined";
  v7 = [MEMORY[0x29EDBA070] numberWithBool:1];
  v38[2] = v7;
  v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v9 = [v8 mutableCopy];

  transceiver = self->_transceiver;
  v35 = 0;
  v11 = [(SETransceiveHelper *)transceiver copySeid:&v35];
  v12 = v35;
  v16 = v12;
  if (v11 && !v12)
  {
    _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_PassingFdropti.isa, v9);
    v17 = [v11 asHexString];
    v18 = [v17 uppercaseString];

    v33 = 0;
    v34 = &v36;
    v19 = AMFDRSealingMapCopyLocalData();
    ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(&v33);
    if (!v19 || v36)
    {
      _ObjCLog(0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_ErrorFromAmfdr.isa, v36, v33, v34);
      _ObjCLogWrapOutError(a3, v36, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"AMFDRSealingMapCopyLocalData", v26, v27, v28, v32);
    }

    else
    {
      v20 = SSESetSEPubKey(self->_seid, v19);
      if (!v20)
      {
        _ObjCLog(2, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", &cfstr_SuccessfullyFd.isa, self->_seid, v33, v34);
        v25 = 1;
        goto LABEL_10;
      }

      _ObjCLogOutError(a3, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"SSESetSEPubKey returned %d\n", v21, v22, v23, v24, v20);
    }

    v25 = 0;
LABEL_10:

    goto LABEL_11;
  }

  _ObjCLogWrapOutError(a3, v12, 0, "[AlohaPairingVerifier injectSEPKtoSSE_FDR:]", @"Failed to copy SEID", v13, v14, v15, v31);
  v25 = 0;
LABEL_11:

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v36);
  v29 = *MEMORY[0x29EDCA608];
  return v25;
}

- (id)getSharingRequestWithSignature:(id *)a3 withError:(id *)a4
{
  transceiver = self->_transceiver;
  v22 = 0;
  v7 = [(SETransceiveHelper *)transceiver crsGetSharingRequestWithError:&v22];
  v8 = v22;
  v12 = v8;
  if (v7)
  {
    v13 = v8 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    _ObjCLogWrapOutError(a4, v8, 0, "[AlohaPairingVerifier getSharingRequestWithSignature:withError:]", @"Failed to get sharing request\n", v9, v10, v11, v21);
LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  if ([v7 length] <= 0x40)
  {
    v14 = [v7 length];
    _ObjCLogOutError(a4, 0, "[AlohaPairingVerifier getSharingRequestWithSignature:withError:]", @"Unexpected length for sharing request %u\n", v15, v16, v17, v18, v14);
    goto LABEL_8;
  }

  *a3 = [v7 subdataWithRange:{65, objc_msgSend(v7, "length") - 65}];
  v19 = [v7 subdataWithRange:{0, 65}];
LABEL_10:

  return v19;
}

- (id)performAuthKeySharingWithAppleSSE:(id)a3 sharingRequest:(id)a4 requestSignature:(id)a5 resultSignature:(id *)a6 withError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24 = 0;
  v25 = 0;
  v14 = SSEPerformAuthKeySharing(v11, v12, v13, &v25, &v24);
  v15 = v25;
  v16 = v24;
  *a6 = v16;
  if (!v14 && v15 && v16)
  {
    v17 = v15;
  }

  else
  {
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_PerformedShari.isa, v11);
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_Request.isa, v12);
    _ObjCLog(0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", &cfstr_Requestsig.isa, v13);
    v23 = *a6 == 0;
    _ObjCLogOutError(a7, 0, "[AlohaPairingVerifier performAuthKeySharingWithAppleSSE:sharingRequest:requestSignature:resultSignature:withError:]", @"Bad status received when sharing auth key %d or nil for sharing result %d or nil for sharing result signature %d\n", v18, v19, v20, v21, v14);
    v17 = 0;
  }

  return v17;
}

@end