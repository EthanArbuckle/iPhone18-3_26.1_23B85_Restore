@interface SPRPINCrypto
- (SPRPINCrypto)initWithAttestationData:(id)data casdCertificate:(id)certificate entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error;
- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)key entropy:(id)entropy digitCodeMap:(char *)map;
- (void)dealloc;
@end

@implementation SPRPINCrypto

- (SPRPINCrypto)initWithPeerPublicKey:(__SecKey *)key entropy:(id)entropy digitCodeMap:(char *)map
{
  entropyCopy = entropy;
  if (qword_2803D4030 != -1)
  {
    sub_26AA7E3E8();
  }

  sub_26A957BC0(entropyCopy, map);
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], v10, v11, v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_26AA7E3FC(v14, v15);
    }

    selfCopy = 0;
  }

  else
  {
    CFRetain(key);
    self->_peerPublicKey = key;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_pinCryptoObjC(MEMORY[0x277D498B8], a2, v2, v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
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

- (SPRPINCrypto)initWithAttestationData:(id)data casdCertificate:(id)certificate entropy:(id)entropy digitCodeMap:(char *)map error:(id *)error
{
  dataCopy = data;
  certificateCopy = certificate;
  entropyCopy = entropy;
  v13 = sub_26AA7E7E4();
  v15 = v14;

  v16 = sub_26AA7E7E4();
  v18 = v17;

  v19 = sub_26AA7E7E4();
  v21 = v20;

  return sub_26A950908(v13, v15, v16, v18, v19, v21, map);
}

@end