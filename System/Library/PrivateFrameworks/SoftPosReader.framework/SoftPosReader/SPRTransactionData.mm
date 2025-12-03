@interface SPRTransactionData
- (NSData)fingerprint;
- (SPRTransactionData)initWithCoder:(id)coder;
- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status cvmType:(unsigned __int8)type cvmResult:(id)result merchantCategoryCode:(id)code pinRequired:(BOOL)self0 kernelIdentityKeyAttestation:(id)self1 ecdsaCertificate:(id)self2 transactionResultData:(id)self3 kekId:(id)self4 pinKekId:(id)self5 isPinSupported:(BOOL)self6 languagePreference:(id)self7 transactionId:(id)self8 readError:(int64_t)self9 payAppletFinalStatus:(unsigned __int8)finalStatus;
- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status cvmType:(unsigned __int8)type cvmResult:(id)result merchantCategoryCode:(id)code pinRequired:(BOOL)self0 kernelIdentityKeyAttestation:(id)self1 ecdsaCertificate:(id)self2 transactionResultData:(id)self3 kekId:(id)self4 pinKekId:(id)self5 isPinSupported:(BOOL)self6 languagePreference:(id)self7 transactionId:(id)self8 readError:(int64_t)self9 payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount;
- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)type cvmResult:(id)self0 merchantCategoryCode:(id)self1 pinRequired:(BOOL)self2 kernelIdentityKeyAttestation:(id)self3 ecdsaCertificate:(id)self4 transactionResultData:(id)self5 kekId:(id)self6 pinKekId:(id)self7 isPinSupported:(BOOL)self8 languagePreference:(id)self9 transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount;
- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)type cvmResult:(id)self0 merchantCategoryCode:(id)self1 pinRequired:(BOOL)self2 kernelIdentityKeyAttestation:(id)self3 ecdsaCertificate:(id)self4 transactionResultData:(id)self5 kekId:(id)self6 pinKekId:(id)self7 isPinSupported:(BOOL)self8 languagePreference:(id)self9 transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1 isSAF:(BOOL)responses2;
- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionUUID:(id)d readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1 isSAF:(BOOL)responses2;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionUUID:(id)d readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1 isSAF:(BOOL)responses2
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  dCopy = d;
  amountCopy = amount;
  appTypeCopy = appType;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v86 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v85 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v84 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v83 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v80 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v76 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v75 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v53 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v55 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v57 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v59 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v61 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v63 = preferenceCopy;

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = dCopy;
  v65 = dCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassEnabled = enabled;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;
  v67 = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  self->_cardExpirationState = state;
  self->_cardEffectiveState = effectiveState;
  payAppType = self->_payAppType;
  self->_payAppType = appTypeCopy;

  self->_isSAF = f;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status cvmType:(unsigned __int8)type cvmResult:(id)result merchantCategoryCode:(id)code pinRequired:(BOOL)self0 kernelIdentityKeyAttestation:(id)self1 ecdsaCertificate:(id)self2 transactionResultData:(id)self3 kekId:(id)self4 pinKekId:(id)self5 isPinSupported:(BOOL)self6 languagePreference:(id)self7 transactionId:(id)self8 readError:(int64_t)self9 payAppletFinalStatus:(unsigned __int8)finalStatus
{
  responsesCopy = responses;
  dataCopy = data;
  networkCopy = network;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  resultDataCopy = resultData;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v60 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = dataCopy;
  v59 = dataCopy;

  network = self->_network;
  self->_network = networkCopy;
  v58 = networkCopy;

  self->_outcomeStatus = status;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v36 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v38 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v40 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v42 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = resultDataCopy;
  v44 = resultDataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v46 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v48 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v50 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  *&self->_isPINBypassAllowed = 0;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = error;
  self->_fallbackAmount = @"000000000000";

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status cvmType:(unsigned __int8)type cvmResult:(id)result merchantCategoryCode:(id)code pinRequired:(BOOL)self0 kernelIdentityKeyAttestation:(id)self1 ecdsaCertificate:(id)self2 transactionResultData:(id)self3 kekId:(id)self4 pinKekId:(id)self5 isPinSupported:(BOOL)self6 languagePreference:(id)self7 transactionId:(id)self8 readError:(int64_t)self9 payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount
{
  responsesCopy = responses;
  dataCopy = data;
  networkCopy = network;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  resultDataCopy = resultData;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v69 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = dataCopy;
  v68 = dataCopy;

  network = self->_network;
  self->_network = networkCopy;
  v67 = networkCopy;

  self->_outcomeStatus = status;
  v41 = objc_msgSend_dataWithHexString_(MEMORY[0x277CBEA90], v38, @"0000", v39, v40);
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v41;

  self->_errorIndicationMsgOnError = 0;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v64 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v45 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v47 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v49 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = resultDataCopy;
  v51 = resultDataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v53 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v55 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v57 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = error;
  self->_fallbackAmount = amountCopy;

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)type cvmResult:(id)self0 merchantCategoryCode:(id)self1 pinRequired:(BOOL)self2 kernelIdentityKeyAttestation:(id)self3 ecdsaCertificate:(id)self4 transactionResultData:(id)self5 kekId:(id)self6 pinKekId:(id)self7 isPinSupported:(BOOL)self8 languagePreference:(id)self9 transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount
{
  responsesCopy = responses;
  dataCopy = data;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  resultDataCopy = resultData;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v69 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = dataCopy;
  v68 = dataCopy;

  network = self->_network;
  self->_network = networkCopy;
  v67 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v65 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v42 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v44 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v46 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v48 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = resultDataCopy;
  v50 = resultDataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v52 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v54 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v56 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses cardHolderData:(id)data network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)type cvmResult:(id)self0 merchantCategoryCode:(id)self1 pinRequired:(BOOL)self2 kernelIdentityKeyAttestation:(id)self3 ecdsaCertificate:(id)self4 transactionResultData:(id)self5 kekId:(id)self6 pinKekId:(id)self7 isPinSupported:(BOOL)self8 languagePreference:(id)self9 transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success
{
  responsesCopy = responses;
  dataCopy = data;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  resultDataCopy = resultData;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v72 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = dataCopy;
  v71 = dataCopy;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = 0;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = 0;

  network = self->_network;
  self->_network = networkCopy;
  v70 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v65 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v68 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v46 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v48 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v50 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = resultDataCopy;
  v52 = resultDataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v54 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v56 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v58 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v75 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v74 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v73 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v71 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v68 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v46 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v48 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v50 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v52 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v54 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v56 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v58 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v60 = preferenceCopy;

  *&self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v76 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v75 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v74 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v72 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v69 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v47 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v49 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v51 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v53 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v55 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v57 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v59 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v61 = preferenceCopy;

  *&self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  *&self->_cardExpirationState = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v80 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v79 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v78 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v77 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v75 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v73 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v51 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v53 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v55 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v57 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v59 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v61 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v63 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassEnabled = enabled;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;
  v65 = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  self->_cardExpirationState = state;
  self->_cardEffectiveState = effectiveState;
  payAppType = self->_payAppType;
  self->_payAppType = 0;

  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  appTypeCopy = appType;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v82 = responsesCopy;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v81 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v80 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v79 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v76 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v73 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v51 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v53 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v55 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v57 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v59 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v61 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v63 = preferenceCopy;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassEnabled = enabled;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;
  v65 = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  self->_cardExpirationState = state;
  self->_cardEffectiveState = effectiveState;
  payAppType = self->_payAppType;
  self->_payAppType = appTypeCopy;

  self->_isSAF = 0;
  return self;
}

- (SPRTransactionData)initWithVasResponses:(id)responses transactionCipherBlob:(id)blob transactionKeyBlob:(id)keyBlob network:(id)network outcomeStatus:(unsigned __int8)status errorIndicationStatusWord:(id)word errorIndicationMsgOnError:(unsigned __int8)error cvmType:(unsigned __int8)self0 cvmResult:(id)self1 merchantCategoryCode:(id)self2 pinRequired:(BOOL)self3 kernelIdentityKeyAttestation:(id)self4 ecdsaCertificate:(id)self5 transactionResultData:(id)self6 kekId:(id)self7 pinKekId:(id)self8 isPinSupported:(BOOL)self9 languagePreference:(id)preference transactionId:(id)transactionId readError:(int64_t)readError payAppletFinalStatus:(unsigned __int8)finalStatus isPINBypassEnabled:(BOOL)enabled isPINBypassAllowed:(BOOL)allowed forFallback:(BOOL)fallback fallbackAmount:(id)amount switchInterfaceOrNoCVMSuccess:(BOOL)success cardExpirationState:(unsigned __int8)state cardEffectiveState:(unsigned __int8)responses0 payAppType:(id)responses1 isSAF:(BOOL)responses2
{
  responsesCopy = responses;
  blobCopy = blob;
  keyBlobCopy = keyBlob;
  networkCopy = network;
  wordCopy = word;
  resultCopy = result;
  codeCopy = code;
  attestationCopy = attestation;
  certificateCopy = certificate;
  dataCopy = data;
  idCopy = id;
  kekIdCopy = kekId;
  preferenceCopy = preference;
  amountCopy = amount;
  appTypeCopy = appType;
  vasResponses = self->_vasResponses;
  self->_vasResponses = responsesCopy;
  v90 = responsesCopy;
  transactionIdCopy = transactionId;

  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = 0;

  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = blobCopy;
  v89 = blobCopy;

  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = keyBlobCopy;
  v88 = keyBlobCopy;

  network = self->_network;
  self->_network = networkCopy;
  v86 = networkCopy;

  self->_outcomeStatus = status;
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = wordCopy;
  v84 = wordCopy;

  self->_errorIndicationMsgOnError = error;
  self->_cvmType = type;
  cvmResult = self->_cvmResult;
  self->_cvmResult = resultCopy;
  v82 = resultCopy;

  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = codeCopy;
  v51 = codeCopy;

  self->_pinRequired = required;
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = attestationCopy;
  v53 = attestationCopy;

  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = certificateCopy;
  v55 = certificateCopy;

  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = dataCopy;
  v57 = dataCopy;

  kekId = self->_kekId;
  self->_kekId = idCopy;
  v59 = idCopy;

  pinKekId = self->_pinKekId;
  self->_pinKekId = kekIdCopy;
  v61 = kekIdCopy;

  self->_isPinSupported = supported;
  languagePreference = self->_languagePreference;
  self->_languagePreference = preferenceCopy;
  v63 = preferenceCopy;

  v64 = objc_alloc(MEMORY[0x277CCAD78]);
  v68 = objc_msgSend_initWithUUIDString_(v64, v65, transactionIdCopy, v66, v67);

  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v68;

  self->_payAppletFinalStatus = finalStatus;
  self->_isPINBypassEnabled = enabled;
  self->_isPINBypassAllowed = allowed;
  self->_forFallback = fallback;
  fallbackAmount = self->_fallbackAmount;
  self->_readError = readError;
  self->_fallbackAmount = amountCopy;
  v71 = amountCopy;

  self->_switchInterfaceOrNoCVMSuccess = success;
  self->_cardExpirationState = state;
  self->_cardEffectiveState = effectiveState;
  payAppType = self->_payAppType;
  self->_payAppType = appTypeCopy;

  self->_isSAF = f;
  return self;
}

- (SPRTransactionData)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v4, v8, v6, v9, v10, v7, 0);
  v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"vasResponses", v13);
  vasResponses = self->_vasResponses;
  self->_vasResponses = v14;

  v16 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"cardHolderData", v18);
  cardHolderData = self->_cardHolderData;
  self->_cardHolderData = v19;

  v21 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v22, v21, @"transactionCipherBlob", v23);
  transactionCipherBlob = self->_transactionCipherBlob;
  self->_transactionCipherBlob = v24;

  v26 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v27, v26, @"transactionKeyBlob", v28);
  transactionKeyBlob = self->_transactionKeyBlob;
  self->_transactionKeyBlob = v29;

  v31 = objc_opt_class();
  v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"network", v33);
  network = self->_network;
  self->_network = v34;

  self->_outcomeStatus = objc_msgSend_decodeIntegerForKey_(coderCopy, v36, @"outcomeStatus", v37, v38);
  v39 = objc_opt_class();
  v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"errorIndicationStatusWord", v41);
  errorIndicationStatusWord = self->_errorIndicationStatusWord;
  self->_errorIndicationStatusWord = v42;

  self->_errorIndicationMsgOnError = objc_msgSend_decodeIntegerForKey_(coderCopy, v44, @"errorIndicationMsgOnError", v45, v46);
  self->_cvmType = objc_msgSend_decodeIntegerForKey_(coderCopy, v47, @"cvmType", v48, v49);
  v50 = objc_opt_class();
  v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v50, @"cvmResult", v52);
  cvmResult = self->_cvmResult;
  self->_cvmResult = v53;

  v55 = objc_opt_class();
  v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v56, v55, @"merchantCategoryCode", v57);
  merchantCategoryCode = self->_merchantCategoryCode;
  self->_merchantCategoryCode = v58;

  self->_pinRequired = objc_msgSend_decodeBoolForKey_(coderCopy, v60, @"pinRequired", v61, v62);
  v63 = objc_opt_class();
  v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"kernelIdentityKeyAttestation", v65);
  kernelIdentityKeyAttestation = self->_kernelIdentityKeyAttestation;
  self->_kernelIdentityKeyAttestation = v66;

  v68 = objc_opt_class();
  v71 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v69, v68, @"ecdsaCertificate", v70);
  ecdsaCertificate = self->_ecdsaCertificate;
  self->_ecdsaCertificate = v71;

  v73 = objc_opt_class();
  v76 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v74, v73, @"transactionResultData", v75);
  transactionResultData = self->_transactionResultData;
  self->_transactionResultData = v76;

  v78 = objc_opt_class();
  v81 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v79, v78, @"kekId", v80);
  kekId = self->_kekId;
  self->_kekId = v81;

  v83 = objc_opt_class();
  v86 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v84, v83, @"pinKekId", v85);
  pinKekId = self->_pinKekId;
  self->_pinKekId = v86;

  self->_isPinSupported = objc_msgSend_decodeBoolForKey_(coderCopy, v88, @"isPinSupported", v89, v90);
  v91 = objc_opt_class();
  v94 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v92, v91, @"languagePreference", v93);
  languagePreference = self->_languagePreference;
  self->_languagePreference = v94;

  v96 = objc_opt_class();
  v99 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v97, v96, @"transactionUUID", v98);
  transactionUUID = self->_transactionUUID;
  self->_transactionUUID = v99;

  self->_readError = objc_msgSend_decodeIntegerForKey_(coderCopy, v101, @"readError", v102, v103);
  self->_payAppletFinalStatus = objc_msgSend_decodeIntegerForKey_(coderCopy, v104, @"payAppletFinalStatus", v105, v106);
  self->_isPINBypassEnabled = objc_msgSend_decodeBoolForKey_(coderCopy, v107, @"isPINBypassEnabled", v108, v109);
  self->_isPINBypassAllowed = objc_msgSend_decodeBoolForKey_(coderCopy, v110, @"isPINBypassAllowed", v111, v112);
  self->_forFallback = objc_msgSend_decodeBoolForKey_(coderCopy, v113, @"forFallback", v114, v115);
  v116 = objc_opt_class();
  v119 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v117, v116, @"fallbackAmount", v118);
  fallbackAmount = self->_fallbackAmount;
  self->_fallbackAmount = v119;

  self->_switchInterfaceOrNoCVMSuccess = objc_msgSend_decodeBoolForKey_(coderCopy, v121, @"switchInterfaceOrNoCVMSuccess", v122, v123);
  self->_cardExpirationState = objc_msgSend_decodeIntegerForKey_(coderCopy, v124, @"cardExpirationState", v125, v126);
  self->_cardEffectiveState = objc_msgSend_decodeIntegerForKey_(coderCopy, v127, @"cardEffectiveState", v128, v129);
  v130 = objc_opt_class();
  v133 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v131, v130, @"payAppType", v132);
  payAppType = self->_payAppType;
  self->_payAppType = v133;

  LOBYTE(v11) = objc_msgSend_decodeBoolForKey_(coderCopy, v135, @"isSAF", v136, v137);
  self->_isSAF = v11;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  vasResponses = self->_vasResponses;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, vasResponses, @"vasResponses", v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_cardHolderData, @"cardHolderData", v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, self->_transactionCipherBlob, @"transactionCipherBlob", v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, self->_transactionKeyBlob, @"transactionKeyBlob", v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_network, @"network", v14);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v15, self->_outcomeStatus, @"outcomeStatus", v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v17, self->_errorIndicationStatusWord, @"errorIndicationStatusWord", v18);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v19, self->_errorIndicationMsgOnError, @"errorIndicationMsgOnError", v20);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v21, self->_cvmType, @"cvmType", v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, self->_cvmResult, @"cvmResult", v24);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, self->_merchantCategoryCode, @"merchantCategoryCode", v26);
  objc_msgSend_encodeBool_forKey_(coderCopy, v27, self->_pinRequired, @"pinRequired", v28);
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, self->_kernelIdentityKeyAttestation, @"kernelIdentityKeyAttestation", v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, self->_ecdsaCertificate, @"ecdsaCertificate", v32);
  objc_msgSend_encodeObject_forKey_(coderCopy, v33, self->_transactionResultData, @"transactionResultData", v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, self->_kekId, @"kekId", v36);
  objc_msgSend_encodeObject_forKey_(coderCopy, v37, self->_pinKekId, @"pinKekId", v38);
  objc_msgSend_encodeBool_forKey_(coderCopy, v39, self->_isPinSupported, @"isPinSupported", v40);
  objc_msgSend_encodeObject_forKey_(coderCopy, v41, self->_languagePreference, @"languagePreference", v42);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, self->_transactionUUID, @"transactionUUID", v44);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v45, self->_readError, @"readError", v46);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v47, self->_payAppletFinalStatus, @"payAppletFinalStatus", v48);
  objc_msgSend_encodeBool_forKey_(coderCopy, v49, self->_isPINBypassEnabled, @"isPINBypassEnabled", v50);
  objc_msgSend_encodeBool_forKey_(coderCopy, v51, self->_isPINBypassAllowed, @"isPINBypassAllowed", v52);
  objc_msgSend_encodeBool_forKey_(coderCopy, v53, self->_forFallback, @"forFallback", v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v55, self->_fallbackAmount, @"fallbackAmount", v56);
  objc_msgSend_encodeBool_forKey_(coderCopy, v57, self->_switchInterfaceOrNoCVMSuccess, @"switchInterfaceOrNoCVMSuccess", v58);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v59, self->_cardExpirationState, @"cardExpirationState", v60);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v61, self->_cardEffectiveState, @"cardEffectiveState", v62);
  objc_msgSend_encodeObject_forKey_(coderCopy, v63, self->_payAppType, @"payAppType", v64);
  objc_msgSend_encodeBool_forKey_(coderCopy, v65, self->_isSAF, @"isSAF", v66);
}

@end