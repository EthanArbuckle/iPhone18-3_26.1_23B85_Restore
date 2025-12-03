@interface POJWTEncryptionECDHE_A256GCM
- (BOOL)decodeAndDecryptJWT:(id)t privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)error;
- (POJWTEncryptionECDHE_A256GCM)init;
- (id)encodeAndEncryptJWT:(id)t publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)auth_kid error:(id *)self0;
- (void)addValuesToHeader:(id)header;
@end

@implementation POJWTEncryptionECDHE_A256GCM

- (POJWTEncryptionECDHE_A256GCM)init
{
  v5.receiver = self;
  v5.super_class = POJWTEncryptionECDHE_A256GCM;
  v2 = [(POJWTEncryptionECDHE_A256GCM *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_encryptionAlgorithm, &unk_2870A9198);
  }

  return v3;
}

- (void)addValuesToHeader:(id)header
{
  headerCopy = header;
  [headerCopy setAlg:@"ECDH-ES"];
  [headerCopy setEnc:@"A256GCM"];
}

- (BOOL)decodeAndDecryptJWT:(id)t privateKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPublicKey:(__SecKey *)publicKey error:(id *)error
{
  errorCopy2 = error;
  v74[3] = *MEMORY[0x277D85DE8];
  tCopy = t;
  infoCopy = info;
  rawHeader = [tCopy rawHeader];
  v15 = [rawHeader dataUsingEncoding:1];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEA90]);
    rawIV = [tCopy rawIV];
    v18 = [v16 psso_initWithBase64URLEncodedString:rawIV];

    if (!v18)
    {
      __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_46();
      *error = LOBYTE(bytes) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v19 = objc_alloc(MEMORY[0x277CBEA90]);
    rawCipherText = [tCopy rawCipherText];
    v21 = [v19 psso_initWithBase64URLEncodedString:rawCipherText];

    if (!v21)
    {
      __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_52();
      *error = LOBYTE(bytes) = 0;
LABEL_28:

      goto LABEL_29;
    }

    v22 = objc_alloc(MEMORY[0x277CBEA90]);
    rawAuthenticationTag = [tCopy rawAuthenticationTag];
    bytes = [v22 psso_initWithBase64URLEncodedString:rawAuthenticationTag];

    v66 = bytes;
    if (bytes)
    {
      decodedHeader = [tCopy decodedHeader];
      v26 = [decodedHeader epk];

      if (v26)
      {
        v64 = v21;
        error = 0;
        decodeEphemeralPublicKey = [tCopy decodeEphemeralPublicKey];
        if (!decodeEphemeralPublicKey)
        {
          v28 = *MEMORY[0x277CDC018];
          v73[0] = *MEMORY[0x277CDC028];
          v73[1] = v28;
          v74[0] = *MEMORY[0x277CDC040];
          v74[1] = &unk_2870A9210;
          v73[2] = *MEMORY[0x277CDBFD0];
          v74[2] = MEMORY[0x277CBEC28];
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
          v30 = SecKeyCreateRandomKey(v29, &error);
          if (v30)
          {
            v31 = v30;
            decodeEphemeralPublicKey = SecKeyCopyPublicKey(v30);
            CFRelease(v31);
          }

          else
          {
            decodeEphemeralPublicKey = 0;
          }

          errorCopy2 = error;
        }

        v71 = *MEMORY[0x277CDC3F8];
        v72 = &unk_2870A9210;
        parameters = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        if (!decodeEphemeralPublicKey || (v33 = SecKeyCopyKeyExchangeResult(key, *MEMORY[0x277CDC288], decodeEphemeralPublicKey, parameters, &error), CFRelease(decodeEphemeralPublicKey), (v65 = v33) == 0))
        {
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_72;
          v69[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v69[4] = error;
          *errorCopy2 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_72(v69);
          v34 = [MEMORY[0x277CBEB28] dataWithLength:32];
          v35 = *MEMORY[0x277CDC540];
          v65 = v34;
          SecRandomCopyBytes(v35, 0x20uLL, [(__CFData *)v65 mutableBytes]);
        }

        v63 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v21, "length")}];
        decodedHeader2 = [tCopy decodedHeader];
        v37 = [decodedHeader2 enc];
        v62 = [v37 dataUsingEncoding:1];

        v38 = objc_alloc(MEMORY[0x277CBEA90]);
        decodedHeader3 = [tCopy decodedHeader];
        v40 = [decodedHeader3 apu];
        v61 = [v38 psso_initWithBase64URLEncodedString:v40];

        v41 = objc_alloc(MEMORY[0x277CBEA90]);
        v42 = v41;
        if (infoCopy)
        {
          v43 = [v41 psso_initWithBase64URLEncodedString:infoCopy];
        }

        else
        {
          decodedHeader4 = [tCopy decodedHeader];
          v45 = [decodedHeader4 apv];
          v43 = [v42 psso_initWithBase64URLEncodedString:v45];
        }

        v46 = [POConcatKDF concatKDFWithKey:v65 algorithm:v62 partyUInfo:v61 partyVInfo:v43];
        [v46 bytes];
        [v46 length];
        [v18 bytes];
        [v18 length];
        [v15 bytes];
        [v15 length];
        [v21 bytes];
        v47 = [v21 length];
        mutableBytes = [v63 mutableBytes];
        bytes = [bytes bytes];
        v59 = [v66 length];
        v58 = v47;
        v49 = CCCryptorGCMOneshotDecrypt();
        memset_s([v46 mutableBytes], objc_msgSend(v46, "length"), 0, objc_msgSend(v46, "length"));
        LOBYTE(bytes) = v49 == 0;
        if (v49)
        {
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_79;
          v67[3] = &__block_descriptor_36_e14___NSError_8__0l;
          v68 = v49;
          v50 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_79(v67);
          errorCopy4 = error;
          v52 = v63;
        }

        else
        {
          Default = CFAllocatorGetDefault();
          v54 = SecCFAllocatorZeroize();
          CFAllocatorSetDefault(v54);
          v52 = v63;
          psso_base64URLEncodedString = [v63 psso_base64URLEncodedString];
          [tCopy setRawBody:psso_base64URLEncodedString];

          CFAllocatorSetDefault(Default);
          [tCopy updateDecodedBody];
          v50 = 0;
          errorCopy4 = error;
        }

        *errorCopy4 = v50;

        v21 = v64;
        goto LABEL_27;
      }

      v32 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_64();
      LOBYTE(bytes) = 0;
    }

    else
    {
      v32 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_58();
    }

    *error = v32;
LABEL_27:

    goto LABEL_28;
  }

  __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke();
  *error = LOBYTE(bytes) = 0;
LABEL_30:

  v56 = *MEMORY[0x277D85DE8];
  return bytes;
}

- (id)encodeAndEncryptJWT:(id)t publicKey:(__SecKey *)key otherInfo:(id)info psk:(id)psk psk_id:(id)psk_id authPrivateKey:(__SecKey *)privateKey auth_kid:(id)auth_kid error:(id *)self0
{
  v113[3] = *MEMORY[0x277D85DE8];
  tCopy = t;
  infoCopy = info;
  header = [tCopy header];

  if (!header)
  {
    __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke();
    *error = rawIV = 0;
    goto LABEL_42;
  }

  errorCopy = error;
  header2 = [tCopy header];
  [(POJWTEncryptionECDHE_A256GCM *)self addValuesToHeader:header2];

  header3 = [tCopy header];
  v18 = [header3 kid];
  v19 = [v18 length];

  if (!v19)
  {
    v20 = SecKeyCopyExternalRepresentation(key, 0);
    psso_sha256Hash = [(__CFData *)v20 psso_sha256Hash];
    v22 = [psso_sha256Hash base64EncodedStringWithOptions:0];
    header4 = [tCopy header];
    [header4 setKid:v22];
  }

  error = 0;
  v24 = *MEMORY[0x277CDC040];
  v25 = *MEMORY[0x277CDC018];
  v112[0] = *MEMORY[0x277CDC028];
  v112[1] = v25;
  v113[0] = v24;
  v113[1] = &unk_2870A9210;
  v112[2] = *MEMORY[0x277CDBFD0];
  v113[2] = MEMORY[0x277CBEC28];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
  v27 = SecKeyCreateRandomKey(v26, &error);
  if (v27)
  {
    v28 = v27;
    v29 = SecKeyCopyPublicKey(v27);
    if (v29)
    {
      v30 = v29;
      header5 = [tCopy header];
      [header5 addEphemeralPublicKey:v30];

      v32 = SecKeyCopyExternalRepresentation(v30, &error);
      CFRelease(v30);
      if (!v32)
      {
        CFRelease(v28);
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_100;
        v107[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v107[4] = error;
        __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_100(v107);
        *errorCopy = rawIV = 0;
LABEL_40:

        goto LABEL_41;
      }

      v100 = infoCopy;
      v33 = [@"APPLE" dataUsingEncoding:4];
      v34 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v106 = bswap32([v33 length]);
      [v34 appendBytes:&v106 length:4];
      v99 = v33;
      [v34 appendData:v33];
      v105 = bswap32([(__CFData *)v32 length]);
      [v34 appendBytes:&v105 length:4];
      [v34 appendData:v32];
      psso_base64URLEncodedString = [v34 psso_base64URLEncodedString];
      header6 = [tCopy header];
      [header6 setApu:psso_base64URLEncodedString];

      v110 = *MEMORY[0x277CDC3F8];
      v111 = &unk_2870A9210;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v38 = SecKeyCopyKeyExchangeResult(v28, *MEMORY[0x277CDC288], key, v37, &error);
      CFRelease(v28);
      if (!v38)
      {
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_107;
        v104[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v104[4] = error;
        __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_107(v104);
        *errorCopy = rawIV = 0;
        goto LABEL_39;
      }

      v39 = [tCopy setRawEncryptedKey:&stru_28708EE58];
      MEMORY[0x28223BE20](v39);
      if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0xCuLL, v84))
      {
        v40 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_114();
        rawIV = 0;
        *errorCopy = v40;
LABEL_39:

        infoCopy = v100;
        goto LABEL_40;
      }

      v43 = [MEMORY[0x277CBEA90] dataWithBytes:v84 length:12];
      psso_base64URLEncodedString2 = [v43 psso_base64URLEncodedString];
      [tCopy setRawIV:psso_base64URLEncodedString2];

      rawIV = [tCopy rawIV];

      if (!rawIV)
      {
        v52 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_120();
        *errorCopy = v52;
LABEL_38:

        goto LABEL_39;
      }

      header7 = [tCopy header];
      dataRepresentation = [header7 dataRepresentation];

      psso_base64URLEncodedString3 = [dataRepresentation psso_base64URLEncodedString];
      [tCopy setRawHeader:psso_base64URLEncodedString3];

      rawIV = [tCopy rawHeader];

      if (!rawIV)
      {
        v53 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_126();
        *errorCopy = v53;
LABEL_37:

        goto LABEL_38;
      }

      v98 = v43;
      v97 = dataRepresentation;
      body = [tCopy body];

      if (body)
      {
        body2 = [tCopy body];
        dataRepresentation2 = [body2 dataRepresentation];
        v51 = [dataRepresentation2 mutableCopy];
      }

      else
      {
        bodyData = [tCopy bodyData];

        if (!bodyData)
        {
          goto LABEL_27;
        }

        body2 = [tCopy bodyData];
        v51 = [body2 mutableCopy];
      }

      if (v51)
      {
        rawHeader = [tCopy rawHeader];
        v91 = [rawHeader dataUsingEncoding:1];

        v93 = [MEMORY[0x277CBEB28] dataWithLength:16];
        v92 = v51;
        v96 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v51, "length")}];
        header8 = [tCopy header];
        v57 = [header8 enc];
        v95 = [v57 dataUsingEncoding:1];

        v58 = objc_alloc(MEMORY[0x277CBEA90]);
        header9 = [tCopy header];
        v60 = [header9 apu];
        v94 = [v58 psso_initWithBase64URLEncodedString:v60];

        v61 = objc_alloc(MEMORY[0x277CBEA90]);
        v62 = v61;
        if (v100)
        {
          v63 = [v61 psso_initWithBase64URLEncodedString:?];
        }

        else
        {
          header10 = [tCopy header];
          v65 = [header10 apv];
          v66 = [v62 psso_initWithBase64URLEncodedString:v65];

          v63 = v66;
        }

        v67 = v98;

        header10 = v63;
        v68 = [POConcatKDF concatKDFWithKey:v38 algorithm:v95 partyUInfo:v94 partyVInfo:v63];
        v69 = v96;
        v89 = v68;
        if (v68)
        {
          v88 = v85;
          v70 = v68;
          bytes = [v68 bytes];
          v86 = [v70 length];
          v85[5] = [v67 bytes];
          v85[4] = [v67 length];
          v71 = v91;
          v85[3] = [v91 bytes];
          v85[2] = [v71 length];
          v72 = v92;
          v85[1] = [v92 bytes];
          [v72 length];
          [v69 mutableBytes];
          [v93 mutableBytes];
          LODWORD(bytes) = CCCryptorGCMOneshotEncrypt();
          memset_s([v72 mutableBytes], objc_msgSend(v72, "length"), 0, objc_msgSend(v72, "length"));
          memset_s([v70 mutableBytes], objc_msgSend(v70, "length"), 0, objc_msgSend(v70, "length"));
          if (bytes)
          {
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_144;
            v102[3] = &__block_descriptor_36_e14___NSError_8__0l;
            v103 = bytes;
            v73 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_144(v102);
            rawIV = 0;
            *errorCopy = v73;
          }

          else
          {
            psso_base64URLEncodedString4 = [v96 psso_base64URLEncodedString];
            [tCopy setRawCipherText:psso_base64URLEncodedString4];

            psso_base64URLEncodedString5 = [v93 psso_base64URLEncodedString];
            [tCopy setRawAuthenticationTag:psso_base64URLEncodedString5];

            *errorCopy = 0;
            bytes = MEMORY[0x277CCACA8];
            errorCopy = [tCopy rawHeader];
            rawEncryptedKey = [tCopy rawEncryptedKey];
            rawIV2 = [tCopy rawIV];
            v86 = rawIV2;
            rawCipherText = [tCopy rawCipherText];
            rawAuthenticationTag = [tCopy rawAuthenticationTag];
            rawIV = [bytes stringWithFormat:@"%@.%@.%@.%@.%@", errorCopy, rawEncryptedKey, rawIV2, rawCipherText, rawAuthenticationTag];
          }

          v75 = v92;
        }

        else
        {
          v74 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_138();
          *errorCopy = v74;
          v75 = v92;
          memset_s([v92 mutableBytes], objc_msgSend(v75, "length"), 0, objc_msgSend(v75, "length"));
          rawIV = 0;
        }

        goto LABEL_36;
      }

LABEL_27:
      v64 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_132();
      rawIV = 0;
      *errorCopy = v64;
LABEL_36:
      dataRepresentation = v97;
      v43 = v98;
      goto LABEL_37;
    }

    CFRelease(v28);
    v42 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_94();
  }

  else
  {
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_90;
    v108[3] = &__block_descriptor_40_e14___NSError_8__0l;
    v108[4] = error;
    v42 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_90(v108);
  }

  rawIV = 0;
  *errorCopy = v42;
LABEL_41:

LABEL_42:
  v82 = *MEMORY[0x277D85DE8];

  return rawIV;
}

@end