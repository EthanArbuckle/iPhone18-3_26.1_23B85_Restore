@interface SPRTransactionData
- (NSData)fingerprint;
- (SPRTransactionData)initWithCoder:(id)a3;
- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 cvmType:(unsigned __int8)a7 cvmResult:(id)a8 merchantCategoryCode:(id)a9 pinRequired:(BOOL)a10 kernelIdentityKeyAttestation:(id)a11 ecdsaCertificate:(id)a12 transactionResultData:(id)a13 kekId:(id)a14 pinKekId:(id)a15 isPinSupported:(BOOL)a16 languagePreference:(id)a17 transactionId:(id)a18 readError:(int64_t)a19 payAppletFinalStatus:(unsigned __int8)a20;
- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 cvmType:(unsigned __int8)a7 cvmResult:(id)a8 merchantCategoryCode:(id)a9 pinRequired:(BOOL)a10 kernelIdentityKeyAttestation:(id)a11 ecdsaCertificate:(id)a12 transactionResultData:(id)a13 kekId:(id)a14 pinKekId:(id)a15 isPinSupported:(BOOL)a16 languagePreference:(id)a17 transactionId:(id)a18 readError:(int64_t)a19 payAppletFinalStatus:(unsigned __int8)a20 isPINBypassAllowed:(BOOL)a21 forFallback:(BOOL)a22 fallbackAmount:(id)a23;
- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 errorIndicationStatusWord:(id)a7 errorIndicationMsgOnError:(unsigned __int8)a8 cvmType:(unsigned __int8)a9 cvmResult:(id)a10 merchantCategoryCode:(id)a11 pinRequired:(BOOL)a12 kernelIdentityKeyAttestation:(id)a13 ecdsaCertificate:(id)a14 transactionResultData:(id)a15 kekId:(id)a16 pinKekId:(id)a17 isPinSupported:(BOOL)a18 languagePreference:(id)a19 transactionId:(id)a20 readError:(int64_t)a21 payAppletFinalStatus:(unsigned __int8)a22 isPINBypassAllowed:(BOOL)a23 forFallback:(BOOL)a24 fallbackAmount:(id)a25;
- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 errorIndicationStatusWord:(id)a7 errorIndicationMsgOnError:(unsigned __int8)a8 cvmType:(unsigned __int8)a9 cvmResult:(id)a10 merchantCategoryCode:(id)a11 pinRequired:(BOOL)a12 kernelIdentityKeyAttestation:(id)a13 ecdsaCertificate:(id)a14 transactionResultData:(id)a15 kekId:(id)a16 pinKekId:(id)a17 isPinSupported:(BOOL)a18 languagePreference:(id)a19 transactionId:(id)a20 readError:(int64_t)a21 payAppletFinalStatus:(unsigned __int8)a22 isPINBypassAllowed:(BOOL)a23 forFallback:(BOOL)a24 fallbackAmount:(id)a25 switchInterfaceOrNoCVMSuccess:(BOOL)a26;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassAllowed:(BOOL)a24 forFallback:(BOOL)a25 fallbackAmount:(id)a26 switchInterfaceOrNoCVMSuccess:(BOOL)a27;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31 isSAF:(BOOL)a32;
- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionUUID:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31 isSAF:(BOOL)a32;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPRTransactionData

- (id)description
{
  if (objc_msgSend_length(self->_transactionCipherBlob, a2, v2, v3, v4))
  {
    v6 = @"present";
  }

  else
  {
    v6 = &stru_287B375A0;
  }

  transactionCipherBlob = self->_transactionCipherBlob;
  v52 = v6;
  if (objc_msgSend_length(transactionCipherBlob, v8, v9, v10, v11))
  {
    v12 = @"present";
  }

  else
  {
    v12 = &stru_287B375A0;
  }

  outcomeStatus = self->_outcomeStatus;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  network = self->_network;
  v51 = MEMORY[0x277CCACA8];
  v14 = v12;
  v19 = objc_msgSend_asHexString(errorIndicationStatusWord, v15, v16, v17, v18);
  errorIndicationMsgOnError = self->_errorIndicationMsgOnError;
  cvmType = self->_cvmType;
  v24 = objc_msgSend_asHexString(self->_cvmResult, v20, v21, v22, v23);
  v33 = objc_msgSend_asHexString(self->_merchantCategoryCode, v25, v26, v27, v28);
  if (self->_pinRequired)
  {
    v34 = @"true";
  }

  else
  {
    v34 = @"false";
  }

  if (self->_isPinSupported)
  {
    v35 = @"true";
  }

  else
  {
    v35 = @"false";
  }

  v39 = objc_msgSend_asHexString(self->_languagePreference, v29, v30, v31, v32);
  if (self->_isPINBypassEnabled)
  {
    v40 = @"true";
  }

  else
  {
    v40 = @"false";
  }

  if (self->_isPINBypassAllowed)
  {
    v41 = @"true";
  }

  else
  {
    v41 = @"false";
  }

  if (self->_forFallback)
  {
    v42 = @"true";
  }

  else
  {
    v42 = @"false";
  }

  if (self->_switchInterfaceOrNoCVMSuccess)
  {
    v43 = @"true";
  }

  else
  {
    v43 = @"false";
  }

  if (self->_isSAF)
  {
    v44 = @"true";
  }

  else
  {
    v44 = @"false";
  }

  v45 = objc_msgSend_stringWithFormat_(v51, v36, @"{vasResponses: see earlier log, transactionCipherBlob: %@, transactionKeyBlob: %@, network(50): %@, outcomeStatus: 0x%02X, errorIndicationStatusWord: %@, errorIndicationMsgOnError: 0x%02X, cvmType: 0x%02X, cvmResult(9F34): %@, merchantCategoryCode(9F15): %@, pinRequired: %@, transactionResultData(DF81FE): see earlier log, isPinSupported: %@, languagePreference(5F2D): %@, readError: %ld, payAppletFinalStatus: 0x%02X, isPINBypassEnabled: %@, isPINBypassAllowed: %@, forFallback: %@, fallbackAmount: %@, switchInterfaceOrNoCVMSuccess: %@, cardExpirationState: 0x%02X, cardEffectiveState: 0x%02X, payAppType: %@, isSAF: %@}", v37, v38, v52, v14, network, outcomeStatus, v19, errorIndicationMsgOnError, cvmType, v24, v33, v34, v35, v39, self->_readError, self->_payAppletFinalStatus, v40, v41, v42, self->_fallbackAmount, v43, self->_cardExpirationState, self->_cardEffectiveState, self->_payAppType, v44);

  return v45;
}

- (id)debugDescription
{
  if (objc_msgSend_count(self->_vasResponses, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_componentsJoinedByString_(self->_vasResponses, v6, @" ", v8, v9);
  }

  else
  {
    v10 = &stru_287B375A0;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = objc_msgSend_asHexString(self->_transactionCipherBlob, v6, v7, v8, v9);
  v17 = objc_msgSend_asHexString(self->_transactionKeyBlob, v13, v14, v15, v16);
  v22 = objc_msgSend_asHexString(self->_kernelIdentityKeyAttestation, v18, v19, v20, v21);
  v27 = objc_msgSend_asHexString(self->_ecdsaCertificate, v23, v24, v25, v26);
  v32 = objc_msgSend_asHexString(self->_transactionResultData, v28, v29, v30, v31);
  v36 = objc_msgSend_stringWithFormat_(v11, v33, @"{vasResponses=%@, transactionCipherBlob=%@, transactionKeyBlob=%@, kernelIdentityKeyAttestation=%@, ecdsaCertificate=%@, transactionResultData(DF81FE)=%@, kekId=%@, pinKekId=%@, transactionUUID=%@}", v34, v35, v10, v12, v17, v22, v27, v32, self->_kekId, self->_pinKekId, self->_transactionUUID);

  return v36;
}

- (NSData)fingerprint
{
  v5 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], a2, 32, v2, v3);
  v10 = objc_msgSend_UUIDString(self->_transactionUUID, v6, v7, v8, v9);
  v15 = objc_msgSend_lowercaseString(v10, v11, v12, v13, v14);
  v19 = objc_msgSend_dataUsingEncoding_(v15, v16, 4, v17, v18);

  memset(&v68, 0, sizeof(v68));
  CC_SHA256_Init(&v68);
  v24 = objc_msgSend_bytes(self->_transactionCipherBlob, v20, v21, v22, v23);
  v29 = objc_msgSend_length(self->_transactionCipherBlob, v25, v26, v27, v28);
  CC_SHA256_Update(&v68, v24, v29);
  v34 = objc_msgSend_bytes(self->_transactionKeyBlob, v30, v31, v32, v33);
  v39 = objc_msgSend_length(self->_transactionKeyBlob, v35, v36, v37, v38);
  CC_SHA256_Update(&v68, v34, v39);
  v44 = objc_msgSend_bytes(self->_cvmResult, v40, v41, v42, v43);
  v49 = objc_msgSend_length(self->_cvmResult, v45, v46, v47, v48);
  CC_SHA256_Update(&v68, v44, v49);
  v50 = v19;
  v55 = objc_msgSend_bytes(v50, v51, v52, v53, v54);
  v60 = objc_msgSend_length(v19, v56, v57, v58, v59);
  CC_SHA256_Update(&v68, v55, v60);
  v61 = v5;
  v66 = objc_msgSend_mutableBytes(v61, v62, v63, v64, v65);
  CC_SHA256_Final(v66, &v68);

  return v5;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionUUID:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31 isSAF:(BOOL)a32
{
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v70 = a8;
  v71 = a11;
  v72 = a12;
  v73 = a14;
  v40 = a15;
  v74 = a16;
  v41 = a17;
  v42 = a18;
  v43 = a20;
  v78 = a21;
  v81 = a27;
  v82 = a31;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v36;
  v86 = v36;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v37;
  v85 = v37;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v38;
  v84 = v38;

  network = self->_network;
  self->_network = v39;
  v83 = v39;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v70;
  v80 = v70;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v71;
  v76 = v71;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v72;
  v75 = v72;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v73;
  v53 = v73;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v40;
  v55 = v40;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v74;
  v57 = v74;

  kekId = self->_kekId;
  self->_kekId = v41;
  v59 = v41;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v42;
  v61 = v42;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v43;
  v63 = v43;

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v78;
  v65 = v78;

  self->_payAppletFinalStatus = a23;
  self->_isPINBypassEnabled = a24;
  self->_isPINBypassAllowed = a25;
  self->_forFallback = a26;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v81;
  v67 = v81;

  self->_switchInterfaceOrNoCVMSuccess = a28;
  self->_cardExpirationState = a29;
  self->_cardEffectiveState = a30;
  payAppType = self->_payAppType;
  self->_payAppType = v82;

  self->_isSAF = a32;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 cvmType:(unsigned __int8)a7 cvmResult:(id)a8 merchantCategoryCode:(id)a9 pinRequired:(BOOL)a10 kernelIdentityKeyAttestation:(id)a11 ecdsaCertificate:(id)a12 transactionResultData:(id)a13 kekId:(id)a14 pinKekId:(id)a15 isPinSupported:(BOOL)a16 languagePreference:(id)a17 transactionId:(id)a18 readError:(int64_t)a19 payAppletFinalStatus:(unsigned __int8)a20
{
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a8;
  v28 = a9;
  v29 = a11;
  v30 = a12;
  v53 = a13;
  v31 = a14;
  v56 = a15;
  v57 = a17;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v24;
  v60 = v24;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v25;
  v59 = v25;

  network = self->_network;
  self->_network = v26;
  v58 = v26;

  self->_outcomeStatus = a6;
  self->_cvmType = a7;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v27;
  v36 = v27;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v28;
  v38 = v28;

  self->_pinRequired = a10;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v29;
  v40 = v29;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v30;
  v42 = v30;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v53;
  v44 = v53;

  kekId = self->_kekId;
  self->_kekId = v31;
  v46 = v31;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v56;
  v48 = v56;

  self->_isPinSupported = a16;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v57;
  v50 = v57;

  self->_payAppletFinalStatus = a20;
  *&self->_isPINBypassAllowed = 0;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a19;
  self->_fallbackAmount = @"000000000000";

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 cvmType:(unsigned __int8)a7 cvmResult:(id)a8 merchantCategoryCode:(id)a9 pinRequired:(BOOL)a10 kernelIdentityKeyAttestation:(id)a11 ecdsaCertificate:(id)a12 transactionResultData:(id)a13 kekId:(id)a14 pinKekId:(id)a15 isPinSupported:(BOOL)a16 languagePreference:(id)a17 transactionId:(id)a18 readError:(int64_t)a19 payAppletFinalStatus:(unsigned __int8)a20 isPINBypassAllowed:(BOOL)a21 forFallback:(BOOL)a22 fallbackAmount:(id)a23
{
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a8;
  v31 = a9;
  v60 = a11;
  v32 = a12;
  v62 = a13;
  v33 = a14;
  v34 = a15;
  v65 = a17;
  v66 = a23;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v27;
  v69 = v27;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v28;
  v68 = v28;

  network = self->_network;
  self->_network = v29;
  v67 = v29;

  self->_outcomeStatus = a6;
  v41 = objc_msgSend_dataWithHexString_(MEMORY[0x277CBEA90], v38, @"0000", v39, v40);
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v41;

  self->_errorIndicationMsgOnError = 0;
  self->_cvmType = a7;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v30;
  v64 = v30;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v31;
  v45 = v31;

  self->_pinRequired = a10;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v60;
  v47 = v60;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v32;
  v49 = v32;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v62;
  v51 = v62;

  kekId = self->_kekId;
  self->_kekId = v33;
  v53 = v33;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v34;
  v55 = v34;

  self->_isPinSupported = a16;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v65;
  v57 = v65;

  self->_payAppletFinalStatus = a20;
  self->_isPINBypassAllowed = a21;
  self->_forFallback = a22;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a19;
  self->_fallbackAmount = v66;

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 errorIndicationStatusWord:(id)a7 errorIndicationMsgOnError:(unsigned __int8)a8 cvmType:(unsigned __int8)a9 cvmResult:(id)a10 merchantCategoryCode:(id)a11 pinRequired:(BOOL)a12 kernelIdentityKeyAttestation:(id)a13 ecdsaCertificate:(id)a14 transactionResultData:(id)a15 kekId:(id)a16 pinKekId:(id)a17 isPinSupported:(BOOL)a18 languagePreference:(id)a19 transactionId:(id)a20 readError:(int64_t)a21 payAppletFinalStatus:(unsigned __int8)a22 isPINBypassAllowed:(BOOL)a23 forFallback:(BOOL)a24 fallbackAmount:(id)a25
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a7;
  v33 = a10;
  v34 = a11;
  v35 = a13;
  v36 = a14;
  v59 = a15;
  v60 = a16;
  v61 = a17;
  v62 = a19;
  v66 = a25;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v29;
  v69 = v29;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v30;
  v68 = v30;

  network = self->_network;
  self->_network = v31;
  v67 = v31;

  self->_outcomeStatus = a6;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v32;
  v65 = v32;

  self->_errorIndicationMsgOnError = a8;
  self->_cvmType = a9;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v33;
  v42 = v33;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v34;
  v44 = v34;

  self->_pinRequired = a12;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v35;
  v46 = v35;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v36;
  v48 = v36;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v59;
  v50 = v59;

  kekId = self->_kekId;
  self->_kekId = v60;
  v52 = v60;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v61;
  v54 = v61;

  self->_isPinSupported = a18;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v62;
  v56 = v62;

  self->_payAppletFinalStatus = a22;
  self->_isPINBypassAllowed = a23;
  self->_forFallback = a24;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a21;
  self->_fallbackAmount = v66;

  self->_switchInterfaceOrNoCVMSuccess = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 cardHolderData:(id)a4 network:(id)a5 outcomeStatus:(unsigned __int8)a6 errorIndicationStatusWord:(id)a7 errorIndicationMsgOnError:(unsigned __int8)a8 cvmType:(unsigned __int8)a9 cvmResult:(id)a10 merchantCategoryCode:(id)a11 pinRequired:(BOOL)a12 kernelIdentityKeyAttestation:(id)a13 ecdsaCertificate:(id)a14 transactionResultData:(id)a15 kekId:(id)a16 pinKekId:(id)a17 isPinSupported:(BOOL)a18 languagePreference:(id)a19 transactionId:(id)a20 readError:(int64_t)a21 payAppletFinalStatus:(unsigned __int8)a22 isPINBypassAllowed:(BOOL)a23 forFallback:(BOOL)a24 fallbackAmount:(id)a25 switchInterfaceOrNoCVMSuccess:(BOOL)a26
{
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a7;
  v34 = a10;
  v35 = a11;
  v36 = a13;
  v61 = a14;
  v62 = a15;
  v63 = a16;
  v37 = a17;
  v66 = a19;
  v69 = a25;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v30;
  v72 = v30;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v31;
  v71 = v31;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = 0;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = 0;

  network = self->_network;
  self->_network = v32;
  v70 = v32;

  self->_outcomeStatus = a6;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v33;
  v65 = v33;

  self->_errorIndicationMsgOnError = a8;
  self->_cvmType = a9;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v34;
  v68 = v34;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v35;
  v46 = v35;

  self->_pinRequired = a12;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v36;
  v48 = v36;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v61;
  v50 = v61;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v62;
  v52 = v62;

  kekId = self->_kekId;
  self->_kekId = v63;
  v54 = v63;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v37;
  v56 = v37;

  self->_isPinSupported = a18;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v66;
  v58 = v66;

  self->_payAppletFinalStatus = a22;
  self->_isPINBypassAllowed = a23;
  self->_forFallback = a24;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a21;
  self->_fallbackAmount = v69;

  self->_switchInterfaceOrNoCVMSuccess = a26;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassAllowed:(BOOL)a24 forFallback:(BOOL)a25 fallbackAmount:(id)a26 switchInterfaceOrNoCVMSuccess:(BOOL)a27
{
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a8;
  v36 = a11;
  v37 = a12;
  v63 = a14;
  v64 = a15;
  v65 = a16;
  v66 = a17;
  v38 = a18;
  v70 = a20;
  v72 = a26;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v31;
  v75 = v31;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v32;
  v74 = v32;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v33;
  v73 = v33;

  network = self->_network;
  self->_network = v34;
  v71 = v34;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v35;
  v68 = v35;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v36;
  v46 = v36;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v37;
  v48 = v37;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v63;
  v50 = v63;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v64;
  v52 = v64;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v65;
  v54 = v65;

  kekId = self->_kekId;
  self->_kekId = v66;
  v56 = v66;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v38;
  v58 = v38;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v70;
  v60 = v70;

  *&self->_payAppletFinalStatus = a23;
  self->_isPINBypassAllowed = a24;
  self->_forFallback = a25;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v72;

  self->_switchInterfaceOrNoCVMSuccess = a27;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28
{
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a8;
  v37 = a11;
  v38 = a12;
  v64 = a14;
  v65 = a15;
  v66 = a16;
  v67 = a17;
  v39 = a18;
  v71 = a20;
  v73 = a27;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v32;
  v76 = v32;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v33;
  v75 = v33;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v34;
  v74 = v34;

  network = self->_network;
  self->_network = v35;
  v72 = v35;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v36;
  v69 = v36;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v37;
  v47 = v37;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v38;
  v49 = v38;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v64;
  v51 = v64;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v65;
  v53 = v65;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v66;
  v55 = v66;

  kekId = self->_kekId;
  self->_kekId = v67;
  v57 = v67;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v39;
  v59 = v39;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v71;
  v61 = v71;

  *&self->_payAppletFinalStatus = a23;
  self->_isPINBypassAllowed = a25;
  self->_forFallback = a26;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v73;

  self->_switchInterfaceOrNoCVMSuccess = a28;
  *&self->_cardExpirationState = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30
{
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a8;
  v40 = a11;
  v68 = a12;
  v69 = a14;
  v70 = a15;
  v71 = a16;
  v41 = a17;
  v72 = a18;
  v42 = a20;
  v76 = a27;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v35;
  v80 = v35;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v36;
  v79 = v36;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v37;
  v78 = v37;

  network = self->_network;
  self->_network = v38;
  v77 = v38;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v39;
  v75 = v39;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v40;
  v73 = v40;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v68;
  v51 = v68;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v69;
  v53 = v69;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v70;
  v55 = v70;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v71;
  v57 = v71;

  kekId = self->_kekId;
  self->_kekId = v41;
  v59 = v41;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v72;
  v61 = v72;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v42;
  v63 = v42;

  self->_payAppletFinalStatus = a23;
  self->_isPINBypassEnabled = a24;
  self->_isPINBypassAllowed = a25;
  self->_forFallback = a26;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v76;
  v65 = v76;

  self->_switchInterfaceOrNoCVMSuccess = a28;
  self->_cardExpirationState = a29;
  self->_cardEffectiveState = a30;
  payAppType = self->_payAppType;
  self->_payAppType = 0;

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31
{
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a8;
  v68 = a11;
  v69 = a12;
  v70 = a14;
  v71 = a15;
  v72 = a16;
  v41 = a17;
  v42 = a18;
  v74 = a20;
  v77 = a27;
  v78 = a31;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v36;
  v82 = v36;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v37;
  v81 = v37;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v38;
  v80 = v38;

  network = self->_network;
  self->_network = v39;
  v79 = v39;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v40;
  v76 = v40;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v68;
  v73 = v68;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v69;
  v51 = v69;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v70;
  v53 = v70;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v71;
  v55 = v71;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v72;
  v57 = v72;

  kekId = self->_kekId;
  self->_kekId = v41;
  v59 = v41;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v42;
  v61 = v42;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v74;
  v63 = v74;

  self->_payAppletFinalStatus = a23;
  self->_isPINBypassEnabled = a24;
  self->_isPINBypassAllowed = a25;
  self->_forFallback = a26;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v77;
  v65 = v77;

  self->_switchInterfaceOrNoCVMSuccess = a28;
  self->_cardExpirationState = a29;
  self->_cardEffectiveState = a30;
  payAppType = self->_payAppType;
  self->_payAppType = v78;

  self->_isSAF = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)a3 transactionCipherBlob:(id)a4 transactionKeyBlob:(id)a5 network:(id)a6 outcomeStatus:(unsigned __int8)a7 errorIndicationStatusWord:(id)a8 errorIndicationMsgOnError:(unsigned __int8)a9 cvmType:(unsigned __int8)a10 cvmResult:(id)a11 merchantCategoryCode:(id)a12 pinRequired:(BOOL)a13 kernelIdentityKeyAttestation:(id)a14 ecdsaCertificate:(id)a15 transactionResultData:(id)a16 kekId:(id)a17 pinKekId:(id)a18 isPinSupported:(BOOL)a19 languagePreference:(id)a20 transactionId:(id)a21 readError:(int64_t)a22 payAppletFinalStatus:(unsigned __int8)a23 isPINBypassEnabled:(BOOL)a24 isPINBypassAllowed:(BOOL)a25 forFallback:(BOOL)a26 fallbackAmount:(id)a27 switchInterfaceOrNoCVMSuccess:(BOOL)a28 cardExpirationState:(unsigned __int8)a29 cardEffectiveState:(unsigned __int8)a30 payAppType:(id)a31 isSAF:(BOOL)a32
{
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v74 = a8;
  v75 = a11;
  v76 = a12;
  v77 = a14;
  v40 = a15;
  v78 = a16;
  v79 = a17;
  v41 = a18;
  v42 = a20;
  v85 = a27;
  v87 = a31;
  vasResponses = self->_vasResponses;
  self->_vasResponses = v36;
  v90 = v36;
  v81 = a21;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v37;
  v89 = v37;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v38;
  v88 = v38;

  network = self->_network;
  self->_network = v39;
  v86 = v39;

  self->_outcomeStatus = a7;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v74;
  v84 = v74;

  self->_errorIndicationMsgOnError = a9;
  self->_cvmType = a10;
  cvmResult = self->_cvmResult;
  self->_cvmResult = v75;
  v82 = v75;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v76;
  v51 = v76;

  self->_pinRequired = a13;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v77;
  v53 = v77;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v40;
  v55 = v40;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v78;
  v57 = v78;

  kekId = self->_kekId;
  self->_kekId = v79;
  v59 = v79;

  pinKekId = self->_pinKekId;
  self->_pinKekId = v41;
  v61 = v41;

  self->_isPinSupported = a19;
  languagePreference = self->_languagePreference;
  self->_languagePreference = v42;
  v63 = v42;

  v64 = objc_alloc(MEMORY[0x277CCAD78]);
  v68 = objc_msgSend_initWithUUIDString_(v64, v65, v81, v66, v67);

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v68;

  self->_payAppletFinalStatus = a23;
  self->_isPINBypassEnabled = a24;
  self->_isPINBypassAllowed = a25;
  self->_forFallback = a26;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = a22;
  self->_fallbackAmount = v85;
  v71 = v85;

  self->_switchInterfaceOrNoCVMSuccess = a28;
  self->_cardExpirationState = a29;
  self->_cardEffectiveState = a30;
  payAppType = self->_payAppType;
  self->_payAppType = v87;

  self->_isSAF = a32;
  return self;
}

- (SPRTransactionData)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v4, v8, v6, v9, v10, v7, 0);
  v14 = objc_msgSend_decodeObjectOfClasses_forKey_(v5, v12, v11, @"vasResponses", v13);
  vasResponses = self->_vasResponses;
  self->_vasResponses = v14;

  v16 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v17, v16, @"cardHolderData", v18);
  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v19;

  v21 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v22, v21, @"transactionCipherBlob", v23);
  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v24;

  v26 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v27, v26, @"transactionKeyBlob", v28);
  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v29;

  v31 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v32, v31, @"network", v33);
  network = self->_network;
  self->_network = v34;

  self->_outcomeStatus = objc_msgSend_decodeIntegerForKey_(v5, v36, @"outcomeStatus", v37, v38);
  v39 = objc_opt_class();
  v42 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v40, v39, @"errorIndicationStatusWord", v41);
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v42;

  self->_errorIndicationMsgOnError = objc_msgSend_decodeIntegerForKey_(v5, v44, @"errorIndicationMsgOnError", v45, v46);
  self->_cvmType = objc_msgSend_decodeIntegerForKey_(v5, v47, @"cvmType", v48, v49);
  v50 = objc_opt_class();
  v53 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v51, v50, @"cvmResult", v52);
  cvmResult = self->_cvmResult;
  self->_cvmResult = v53;

  v55 = objc_opt_class();
  v58 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v56, v55, @"merchantCategoryCode", v57);
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v58;

  self->_pinRequired = objc_msgSend_decodeBoolForKey_(v5, v60, @"pinRequired", v61, v62);
  v63 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v64, v63, @"kernelIdentityKeyAttestation", v65);
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v66;

  v68 = objc_opt_class();
  v71 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v69, v68, @"ecdsaCertificate", v70);
  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v71;

  v73 = objc_opt_class();
  v76 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v74, v73, @"transactionResultData", v75);
  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v76;

  v78 = objc_opt_class();
  v81 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v79, v78, @"kekId", v80);
  kekId = self->_kekId;
  self->_kekId = v81;

  v83 = objc_opt_class();
  v86 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v84, v83, @"pinKekId", v85);
  pinKekId = self->_pinKekId;
  self->_pinKekId = v86;

  self->_isPinSupported = objc_msgSend_decodeBoolForKey_(v5, v88, @"isPinSupported", v89, v90);
  v91 = objc_opt_class();
  v94 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v92, v91, @"languagePreference", v93);
  languagePreference = self->_languagePreference;
  self->_languagePreference = v94;

  v96 = objc_opt_class();
  v99 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v97, v96, @"transactionUUID", v98);
  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v99;

  self->_readError = objc_msgSend_decodeIntegerForKey_(v5, v101, @"readError", v102, v103);
  self->_payAppletFinalStatus = objc_msgSend_decodeIntegerForKey_(v5, v104, @"payAppletFinalStatus", v105, v106);
  self->_isPINBypassEnabled = objc_msgSend_decodeBoolForKey_(v5, v107, @"isPINBypassEnabled", v108, v109);
  self->_isPINBypassAllowed = objc_msgSend_decodeBoolForKey_(v5, v110, @"isPINBypassAllowed", v111, v112);
  self->_forFallback = objc_msgSend_decodeBoolForKey_(v5, v113, @"forFallback", v114, v115);
  v116 = objc_opt_class();
  v119 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v117, v116, @"fallbackAmount", v118);
  fallbackAmount = self->_fallbackAmount;
  self->_fallbackAmount = v119;

  self->_switchInterfaceOrNoCVMSuccess = objc_msgSend_decodeBoolForKey_(v5, v121, @"switchInterfaceOrNoCVMSuccess", v122, v123);
  self->_cardExpirationState = objc_msgSend_decodeIntegerForKey_(v5, v124, @"cardExpirationState", v125, v126);
  self->_cardEffectiveState = objc_msgSend_decodeIntegerForKey_(v5, v127, @"cardEffectiveState", v128, v129);
  v130 = objc_opt_class();
  v133 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v131, v130, @"payAppType", v132);
  payAppType = self->_payAppType;
  self->_payAppType = v133;

  LOBYTE(v11) = objc_msgSend_decodeBoolForKey_(v5, v135, @"isSAF", v136, v137);
  self->_isSAF = v11;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  vasResponses = self->_vasResponses;
  v67 = a3;
  objc_msgSend_encodeObject_forKey_(v67, v5, vasResponses, @"vasResponses", v6);
  objc_msgSend_encodeObject_forKey_(v67, v7, self->_cardHolderData, @"cardHolderData", v8);
  objc_msgSend_encodeObject_forKey_(v67, v9, self->_transactionCipherBlob, @"transactionCipherBlob", v10);
  objc_msgSend_encodeObject_forKey_(v67, v11, self->_transactionKeyBlob, @"transactionKeyBlob", v12);
  objc_msgSend_encodeObject_forKey_(v67, v13, self->_network, @"network", v14);
  objc_msgSend_encodeInteger_forKey_(v67, v15, self->_outcomeStatus, @"outcomeStatus", v16);
  objc_msgSend_encodeObject_forKey_(v67, v17, self->_errorIndicationStatusWord, @"errorIndicationStatusWord", v18);
  objc_msgSend_encodeInteger_forKey_(v67, v19, self->_errorIndicationMsgOnError, @"errorIndicationMsgOnError", v20);
  objc_msgSend_encodeInteger_forKey_(v67, v21, self->_cvmType, @"cvmType", v22);
  objc_msgSend_encodeObject_forKey_(v67, v23, self->_cvmResult, @"cvmResult", v24);
  objc_msgSend_encodeObject_forKey_(v67, v25, self->_merchantCategoryCode, @"merchantCategoryCode", v26);
  objc_msgSend_encodeBool_forKey_(v67, v27, self->_pinRequired, @"pinRequired", v28);
  objc_msgSend_encodeObject_forKey_(v67, v29, self->_kernelIdentityKeyAttestation, @"kernelIdentityKeyAttestation", v30);
  objc_msgSend_encodeObject_forKey_(v67, v31, self->_ecdsaCertificate, @"ecdsaCertificate", v32);
  objc_msgSend_encodeObject_forKey_(v67, v33, self->_transactionResultData, @"transactionResultData", v34);
  objc_msgSend_encodeObject_forKey_(v67, v35, self->_kekId, @"kekId", v36);
  objc_msgSend_encodeObject_forKey_(v67, v37, self->_pinKekId, @"pinKekId", v38);
  objc_msgSend_encodeBool_forKey_(v67, v39, self->_isPinSupported, @"isPinSupported", v40);
  objc_msgSend_encodeObject_forKey_(v67, v41, self->_languagePreference, @"languagePreference", v42);
  objc_msgSend_encodeObject_forKey_(v67, v43, self->_transactionUUID, @"transactionUUID", v44);
  objc_msgSend_encodeInteger_forKey_(v67, v45, self->_readError, @"readError", v46);
  objc_msgSend_encodeInteger_forKey_(v67, v47, self->_payAppletFinalStatus, @"payAppletFinalStatus", v48);
  objc_msgSend_encodeBool_forKey_(v67, v49, self->_isPINBypassEnabled, @"isPINBypassEnabled", v50);
  objc_msgSend_encodeBool_forKey_(v67, v51, self->_isPINBypassAllowed, @"isPINBypassAllowed", v52);
  objc_msgSend_encodeBool_forKey_(v67, v53, self->_forFallback, @"forFallback", v54);
  objc_msgSend_encodeObject_forKey_(v67, v55, self->_fallbackAmount, @"fallbackAmount", v56);
  objc_msgSend_encodeBool_forKey_(v67, v57, self->_switchInterfaceOrNoCVMSuccess, @"switchInterfaceOrNoCVMSuccess", v58);
  objc_msgSend_encodeInteger_forKey_(v67, v59, self->_cardExpirationState, @"cardExpirationState", v60);
  objc_msgSend_encodeInteger_forKey_(v67, v61, self->_cardEffectiveState, @"cardEffectiveState", v62);
  objc_msgSend_encodeObject_forKey_(v67, v63, self->_payAppType, @"payAppType", v64);
  objc_msgSend_encodeBool_forKey_(v67, v65, self->_isSAF, @"isSAF", v66);
}

@end