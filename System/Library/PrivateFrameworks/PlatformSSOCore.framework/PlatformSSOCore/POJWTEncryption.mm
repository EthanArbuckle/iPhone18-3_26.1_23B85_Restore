@interface POJWTEncryption
+ (BOOL)decodeAndDecryptJWT:(id)t encryptionAlgorithm:(id)algorithm privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)self0;
+ (id)algorithmWithAlg:(id)alg enc:(id)enc;
+ (id)algorithmWithEncryptionAlgorithm:(id)algorithm;
+ (id)encodeAndEncryptJWT:(id)t encryptionAlgorithm:(id)algorithm publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)self0 error:(id *)self1;
- (POJWTEncryption)init;
@end

@implementation POJWTEncryption

+ (id)algorithmWithAlg:(id)alg enc:(id)enc
{
  algCopy = alg;
  encCopy = enc;
  if ([algCopy isEqualToString:@"ECDH-ES"] && (objc_msgSend(encCopy, "isEqualToString:", @"A256GCM") & 1) != 0)
  {
    v7 = off_279A3D3C0;
LABEL_13:
    v8 = objc_alloc_init(*v7);
    goto LABEL_15;
  }

  if ([encCopy isEqualToString:@"dir"] && (objc_msgSend(algCopy, "isEqualToString:", @"HPKE-P256-SHA256-A256GCM") & 1) != 0)
  {
    v7 = off_279A3D6B8;
    goto LABEL_13;
  }

  if ([encCopy isEqualToString:@"dir"] && (objc_msgSend(algCopy, "isEqualToString:", @"HPKE-P384-SHA384-A256GCM") & 1) != 0)
  {
    v7 = off_279A3D6C0;
    goto LABEL_13;
  }

  if ([encCopy isEqualToString:@"dir"] && objc_msgSend(algCopy, "isEqualToString:", @"HPKE-X25519-SHA256-ChaCha20Poly1305"))
  {
    v7 = &off_279A3D6C8;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (id)algorithmWithEncryptionAlgorithm:(id)algorithm
{
  algorithmCopy = algorithm;
  if ([algorithmCopy isEqualToNumber:0x2870A9198])
  {
    v4 = off_279A3D3C0;
LABEL_11:
    v5 = objc_alloc_init(*v4);
    goto LABEL_12;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91B0])
  {
    v4 = off_279A3D6B8;
    goto LABEL_11;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91C8])
  {
    v4 = off_279A3D6C0;
    goto LABEL_11;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91E0])
  {
    v4 = &off_279A3D6C8;
    goto LABEL_11;
  }

  if ([algorithmCopy isEqualToNumber:0x2870A91F8])
  {
    v4 = off_279A3D6B0;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (POJWTEncryption)init
{
  v3.receiver = self;
  v3.super_class = POJWTEncryption;
  return [(POJWTEncryption *)&v3 init];
}

+ (id)encodeAndEncryptJWT:(id)t encryptionAlgorithm:(id)algorithm publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)self0 error:(id *)self1
{
  tCopy = t;
  infoCopy = info;
  pskCopy = psk;
  psk_idCopy = psk_id;
  auth_kidCopy = auth_kid;
  v22 = [self algorithmWithEncryptionAlgorithm:algorithm];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 encodeAndEncryptJWT:tCopy publicKey:key otherInfo:infoCopy psk:pskCopy psk_id:psk_idCopy authPrivateKey:privateKey auth_kid:auth_kidCopy error:error];
  }

  else
  {
    __120__POJWTEncryption_encodeAndEncryptJWT_encryptionAlgorithm_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke();
    *error = v24 = 0;
  }

  return v24;
}

id __120__POJWTEncryption_encodeAndEncryptJWT_encryptionAlgorithm_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (BOOL)decodeAndDecryptJWT:(id)t encryptionAlgorithm:(id)algorithm privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)self0
{
  tCopy = t;
  infoCopy = info;
  pskCopy = psk;
  psk_idCopy = psk_id;
  v20 = [self algorithmWithEncryptionAlgorithm:algorithm];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 decodeAndDecryptJWT:tCopy privateKey:key otherInfo:infoCopy psk:pskCopy psk_id:psk_idCopy authPublicKey:publicKey error:error];
  }

  else
  {
    __111__POJWTEncryption_decodeAndDecryptJWT_encryptionAlgorithm_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke();
    *error = v22 = 0;
  }

  return v22;
}

id __111__POJWTEncryption_decodeAndDecryptJWT_encryptionAlgorithm_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

@end