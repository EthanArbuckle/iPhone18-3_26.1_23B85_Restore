@interface POJWTEncryptionECDHE
@end

@implementation POJWTEncryptionECDHE

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"aad is missing when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_46()
{
  v0 = [POError errorWithCode:-1008 description:@"iv is missing when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_52()
{
  v0 = [POError errorWithCode:-1008 description:@"Cipher text is missing when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_58()
{
  v0 = [POError errorWithCode:-1008 description:@"tag data is missing when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_64()
{
  v0 = [POError errorWithCode:-1008 description:@"Header is missing epk when decrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_72(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error in SecKeyCopyKeyExchangeResult when decrypting JWT."];

  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_79(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error decrypting JWT."];
  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Header is missing when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"Error with SecKeyCreateRandomKey when encrypting JWT."];

  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_94()
{
  v0 = [POError errorWithCode:-1001 description:@"Error copying epk public key when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error copying epk public key data when encrypting JWT."];

  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_107(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error with SecKeyCopyKeyExchangeResult when encrypting JWT."];

  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v2;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_114()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with SecRandomCopyBytes when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_120()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with encoding IV data when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_126()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with encoding header when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_132()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with encoding body when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_138()
{
  v0 = [POError errorWithCode:-1001 description:@"Error with concatKDF when encrypting JWT."];
  v1 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_144(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"Error encrypting JWT."];
  v3 = PO_LOG_POJWTEncryption();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__PODeviceConfiguration_setAccessTokenTerminalIdentity___block_invoke_cold_1(v2, a1);
  }

  return v2;
}

@end