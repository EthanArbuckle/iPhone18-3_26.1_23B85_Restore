@interface SPRPINCrypto
- (SPRPINCrypto)initWithAttestationData:(id)a3 casdCertificate:(id)a4 entropy:(id)a5 digitCodeMap:(char *)a6 error:(id *)a7;
- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)a3 entropy:(id)a4 digitCodeMap:(char *)a5;
- (void)dealloc;
@end

@implementation SPRPINCrypto

- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)a3 entropy:(id)a4 digitCodeMap:(char *)a5
{
  v8 = a4;
  if (qword_2803D4030 != -1)
  {
    sub_26AA7E3E8();
  }

  sub_26A957BC0(v8, a5);
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v10, v11, v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E3FC(v14, v15);
    }

    v16 = 0;
  }

  else
  {
    CFRetain(a3);
    self->_peerPublicKey = a3;
    v16 = self;
  }

  return v16;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], a2, v2, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_26A93A000, v6, OS_LOG_TYPE_INFO, "%@.dealloc()", buf, 0xCu);
  }

  peerPublicKey = self->_peerPublicKey;
  if (peerPublicKey)
  {
    CFRelease(peerPublicKey);
    self->_peerPublicKey = 0;
  }

  pinVault = self->_pinVault;
  if (pinVault)
  {
    sub_26A960EC4(pinVault);
  }

  v10.receiver = self;
  v10.super_class = SPRPINCrypto;
  [(SPRPINCrypto *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (SPRPINCrypto)initWithAttestationData:(id)a3 casdCertificate:(id)a4 entropy:(id)a5 digitCodeMap:(char *)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_26AA7E7E4();
  v15 = v14;

  v16 = sub_26AA7E7E4();
  v18 = v17;

  v19 = sub_26AA7E7E4();
  v21 = v20;

  return sub_26A950908(v13, v15, v16, v18, v19, v21, a6);
}

@end