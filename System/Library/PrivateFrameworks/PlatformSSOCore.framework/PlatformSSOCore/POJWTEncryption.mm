@interface POJWTEncryption
+ (BOOL)decodeAndDecryptJWT:(id)a3 encryptionAlgorithm:(id)a4 privateKey:(__SecKey *)a5 otherInfo:(id)a6 psk:(id)a7 psk_id:(id)a8 authPublicKey:(__SecKey *)a9 error:(id *)a10;
+ (id)algorithmWithAlg:(id)a3 enc:(id)a4;
+ (id)algorithmWithEncryptionAlgorithm:(id)a3;
+ (id)encodeAndEncryptJWT:(id)a3 encryptionAlgorithm:(id)a4 publicKey:(__SecKey *)a5 otherInfo:(id)a6 psk:(id)a7 psk_id:(id)a8 authPrivateKey:(__SecKey *)a9 auth_kid:(id)a10 error:(id *)a11;
- (POJWTEncryption)init;
@end

@implementation POJWTEncryption

+ (id)algorithmWithAlg:(id)a3 enc:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"ECDH-ES"] && (objc_msgSend(v6, "isEqualToString:", @"A256GCM") & 1) != 0)
  {
    v7 = off_279A3D3C0;
LABEL_13:
    v8 = objc_alloc_init(*v7);
    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"dir"] && (objc_msgSend(v5, "isEqualToString:", @"HPKE-P256-SHA256-A256GCM") & 1) != 0)
  {
    v7 = off_279A3D6B8;
    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"dir"] && (objc_msgSend(v5, "isEqualToString:", @"HPKE-P384-SHA384-A256GCM") & 1) != 0)
  {
    v7 = off_279A3D6C0;
    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"dir"] && objc_msgSend(v5, "isEqualToString:", @"HPKE-X25519-SHA256-ChaCha20Poly1305"))
  {
    v7 = &off_279A3D6C8;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

+ (id)algorithmWithEncryptionAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:0x2870A9198])
  {
    v4 = off_279A3D3C0;
LABEL_11:
    v5 = objc_alloc_init(*v4);
    goto LABEL_12;
  }

  if ([v3 isEqualToNumber:0x2870A91B0])
  {
    v4 = off_279A3D6B8;
    goto LABEL_11;
  }

  if ([v3 isEqualToNumber:0x2870A91C8])
  {
    v4 = off_279A3D6C0;
    goto LABEL_11;
  }

  if ([v3 isEqualToNumber:0x2870A91E0])
  {
    v4 = &off_279A3D6C8;
    goto LABEL_11;
  }

  if ([v3 isEqualToNumber:0x2870A91F8])
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

+ (id)encodeAndEncryptJWT:(id)a3 encryptionAlgorithm:(id)a4 publicKey:(__SecKey *)a5 otherInfo:(id)a6 psk:(id)a7 psk_id:(id)a8 authPrivateKey:(__SecKey *)a9 auth_kid:(id)a10 error:(id *)a11
{
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a10;
  v22 = [a1 algorithmWithEncryptionAlgorithm:a4];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 encodeAndEncryptJWT:v17 publicKey:a5 otherInfo:v18 psk:v19 psk_id:v20 authPrivateKey:a9 auth_kid:v21 error:a11];
  }

  else
  {
    __120__POJWTEncryption_encodeAndEncryptJWT_encryptionAlgorithm_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke();
    *a11 = v24 = 0;
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

+ (BOOL)decodeAndDecryptJWT:(id)a3 encryptionAlgorithm:(id)a4 privateKey:(__SecKey *)a5 otherInfo:(id)a6 psk:(id)a7 psk_id:(id)a8 authPublicKey:(__SecKey *)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [a1 algorithmWithEncryptionAlgorithm:a4];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 decodeAndDecryptJWT:v16 privateKey:a5 otherInfo:v17 psk:v18 psk_id:v19 authPublicKey:a9 error:a10];
  }

  else
  {
    __111__POJWTEncryption_decodeAndDecryptJWT_encryptionAlgorithm_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke();
    *a10 = v22 = 0;
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