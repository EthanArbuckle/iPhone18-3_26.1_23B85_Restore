@interface SSBiometricAuthenticationContext
- (SSBiometricAuthenticationContext)init;
- (SSBiometricAuthenticationContext)initWithXPCEncoding:(id)encoding;
- (SSPaymentSheet)paymentSheet;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)setPaymentSheet:(id)sheet;
@end

@implementation SSBiometricAuthenticationContext

- (SSBiometricAuthenticationContext)init
{
  v7.receiver = self;
  v7.super_class = SSBiometricAuthenticationContext;
  v2 = [(SSBiometricAuthenticationContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isExtendedAction = 0;
    v2->_isPayment = 0;
    v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v3->_lock;
    v3->_lock = v4;
  }

  return v3;
}

- (SSPaymentSheet)paymentSheet
{
  [(NSLock *)self->_lock lock];
  v3 = self->_paymentSheet;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setPaymentSheet:(id)sheet
{
  sheetCopy = sheet;
  [(NSLock *)self->_lock lock];
  if (self->_paymentSheet != sheetCopy)
  {
    objc_storeStrong(&self->_paymentSheet, sheet);
  }

  self->_isPayment = sheetCopy != 0;
  [(NSLock *)self->_lock unlock];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_accountName copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  *(v5 + 56) = self->_biometricAuthorizationAttempts;
  v10 = [(NSString *)self->_challenge copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(SSConsolidatedDialog *)self->_consolidatedDialog copyWithZone:zone];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_dialogId copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  *(v5 + 17) = self->_didAuthenticate;
  *(v5 + 18) = self->_didBuyParamsChange;
  *(v5 + 19) = self->_didFallbackToPassword;
  v16 = [(NSString *)self->_fpanID copyWithZone:zone];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  *(v5 + 20) = self->_isExtendedAction;
  *(v5 + 21) = self->_isIdentityMapInvalid;
  *(v5 + 22) = self->_isPayment;
  *(v5 + 23) = self->_shouldContinueTouchIDSession;
  *(v5 + 24) = self->_shouldSendFallbackHeader;
  v18 = [(NSString *)self->_signature copyWithZone:zone];
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  *(v5 + 16) = self->_touchIDDelayEnabled;
  v20 = [(SSPaymentSheet *)self->_paymentSheet copyWithZone:zone];
  v21 = *(v5 + 32);
  *(v5 + 32) = v20;

  v22 = [(SSPaymentSheet *)self->_paymentSheet copyWithZone:zone];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  v24 = [(NSString *)self->_userAgent copyWithZone:zone];
  v25 = *(v5 + 128);
  *(v5 + 128) = v24;

  v26 = [(NSString *)self->_xAppleAMDHeader copyWithZone:zone];
  v27 = *(v5 + 136);
  *(v5 + 136) = v26;

  v28 = [(NSString *)self->_xAppleAMDMHeader copyWithZone:zone];
  v29 = *(v5 + 144);
  *(v5 + 144) = v28;

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetObject(v3, "1", self->_accountName);
  xpc_dictionary_set_int64(v3, "12", self->_biometricAuthorizationAttempts);
  SSXPCDictionarySetObject(v3, "2", self->_challenge);
  SSXPCDictionarySetObject(v3, "3", self->_consolidatedDialog);
  SSXPCDictionarySetObject(v3, "14", self->_dialogId);
  xpc_dictionary_set_BOOL(v3, "4", self->_didAuthenticate);
  xpc_dictionary_set_BOOL(v3, "5", self->_didBuyParamsChange);
  xpc_dictionary_set_BOOL(v3, "6", self->_didFallbackToPassword);
  SSXPCDictionarySetObject(v3, "21", self->_fpanID);
  xpc_dictionary_set_BOOL(v3, "19", self->_isExtendedAction);
  xpc_dictionary_set_BOOL(v3, "13", self->_isIdentityMapInvalid);
  xpc_dictionary_set_BOOL(v3, "18", self->_isPayment);
  SSXPCDictionarySetObject(v3, "7", self->_paymentSheet);
  SSXPCDictionarySetObject(v3, "20", self->_paymentTokenData);
  SSXPCDictionarySetObject(v3, "8", self->_redirectURL);
  xpc_dictionary_set_BOOL(v3, "9", self->_shouldContinueTouchIDSession);
  xpc_dictionary_set_BOOL(v3, "10", self->_shouldSendFallbackHeader);
  SSXPCDictionarySetObject(v3, "11", self->_signature);
  SSXPCDictionarySetObject(v3, "15", self->_userAgent);
  SSXPCDictionarySetObject(v3, "16", self->_xAppleAMDHeader);
  SSXPCDictionarySetObject(v3, "17", self->_xAppleAMDMHeader);
  return v3;
}

- (SSBiometricAuthenticationContext)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v49.receiver = self;
    v49.super_class = SSBiometricAuthenticationContext;
    v6 = [(SSBiometricAuthenticationContext *)&v49 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      accountName = v6->_accountName;
      v6->_accountName = v12;

      v6->_biometricAuthorizationAttempts = xpc_dictionary_get_int64(v5, "12");
      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      challenge = v6->_challenge;
      v6->_challenge = v15;

      v17 = [SSConsolidatedDialog alloc];
      v18 = xpc_dictionary_get_value(v5, "3");
      v19 = [(SSConsolidatedDialog *)v17 initWithXPCEncoding:v18];
      consolidatedDialog = v6->_consolidatedDialog;
      v6->_consolidatedDialog = v19;

      v21 = objc_opt_class();
      v22 = SSXPCDictionaryCopyObjectWithClass(v5, "14", v21);
      dialogId = v6->_dialogId;
      v6->_dialogId = v22;

      v6->_didAuthenticate = xpc_dictionary_get_BOOL(v5, "4");
      v6->_didBuyParamsChange = xpc_dictionary_get_BOOL(v5, "5");
      v6->_didFallbackToPassword = xpc_dictionary_get_BOOL(v5, "6");
      v24 = objc_opt_class();
      v25 = SSXPCDictionaryCopyObjectWithClass(v5, "21", v24);
      fpanID = v6->_fpanID;
      v6->_fpanID = v25;

      v6->_isExtendedAction = xpc_dictionary_get_BOOL(v5, "19");
      v6->_isIdentityMapInvalid = xpc_dictionary_get_BOOL(v5, "13");
      v6->_isPayment = xpc_dictionary_get_BOOL(v5, "18");
      v27 = [SSPaymentSheet alloc];
      v28 = xpc_dictionary_get_value(v5, "7");
      v29 = [(SSPaymentSheet *)v27 initWithXPCEncoding:v28];
      paymentSheet = v6->_paymentSheet;
      v6->_paymentSheet = v29;

      v31 = objc_opt_class();
      v32 = SSXPCDictionaryCopyObjectWithClass(v5, "20", v31);
      paymentTokenData = v6->_paymentTokenData;
      v6->_paymentTokenData = v32;

      v34 = objc_opt_class();
      v35 = SSXPCDictionaryCopyObjectWithClass(v5, "8", v34);
      redirectURL = v6->_redirectURL;
      v6->_redirectURL = v35;

      v6->_shouldContinueTouchIDSession = xpc_dictionary_get_BOOL(v5, "9");
      v6->_shouldSendFallbackHeader = xpc_dictionary_get_BOOL(v5, "10");
      v37 = objc_opt_class();
      v38 = SSXPCDictionaryCopyObjectWithClass(v5, "11", v37);
      signature = v6->_signature;
      v6->_signature = v38;

      v40 = objc_opt_class();
      v41 = SSXPCDictionaryCopyObjectWithClass(v5, "15", v40);
      userAgent = v6->_userAgent;
      v6->_userAgent = v41;

      v43 = objc_opt_class();
      v44 = SSXPCDictionaryCopyObjectWithClass(v5, "16", v43);
      xAppleAMDHeader = v6->_xAppleAMDHeader;
      v6->_xAppleAMDHeader = v44;

      v46 = objc_opt_class();
      v47 = SSXPCDictionaryCopyObjectWithClass(v5, "17", v46);
      xAppleAMDMHeader = v6->_xAppleAMDMHeader;
      v6->_xAppleAMDMHeader = v47;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end