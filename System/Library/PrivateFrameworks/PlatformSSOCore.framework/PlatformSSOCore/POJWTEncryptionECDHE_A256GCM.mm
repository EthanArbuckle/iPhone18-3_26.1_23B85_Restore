@interface POJWTEncryptionECDHE_A256GCM
- (BOOL)decodeAndDecryptJWT:(id)a3 privateKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPublicKey:(__SecKey *)a8 error:(id *)a9;
- (POJWTEncryptionECDHE_A256GCM)init;
- (id)encodeAndEncryptJWT:(id)a3 publicKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPrivateKey:(__SecKey *)a8 auth_kid:(id)a9 error:(id *)a10;
- (void)addValuesToHeader:(id)a3;
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

- (void)addValuesToHeader:(id)a3
{
  v3 = a3;
  [v3 setAlg:@"ECDH-ES"];
  [v3 setEnc:@"A256GCM"];
}

- (BOOL)decodeAndDecryptJWT:(id)a3 privateKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPublicKey:(__SecKey *)a8 error:(id *)a9
{
  v11 = a9;
  v74[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = [v12 rawHeader];
  v15 = [v14 dataUsingEncoding:1];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277CBEA90]);
    v17 = [v12 rawIV];
    v18 = [v16 psso_initWithBase64URLEncodedString:v17];

    if (!v18)
    {
      __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_46();
      *a9 = LOBYTE(v24) = 0;
LABEL_29:

      goto LABEL_30;
    }

    v19 = objc_alloc(MEMORY[0x277CBEA90]);
    v20 = [v12 rawCipherText];
    v21 = [v19 psso_initWithBase64URLEncodedString:v20];

    if (!v21)
    {
      __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_52();
      *a9 = LOBYTE(v24) = 0;
LABEL_28:

      goto LABEL_29;
    }

    v22 = objc_alloc(MEMORY[0x277CBEA90]);
    v23 = [v12 rawAuthenticationTag];
    v24 = [v22 psso_initWithBase64URLEncodedString:v23];

    v66 = v24;
    if (v24)
    {
      v25 = [v12 decodedHeader];
      v26 = [v25 epk];

      if (v26)
      {
        v64 = v21;
        error = 0;
        v27 = [v12 decodeEphemeralPublicKey];
        if (!v27)
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
            v27 = SecKeyCopyPublicKey(v30);
            CFRelease(v31);
          }

          else
          {
            v27 = 0;
          }

          v11 = a9;
        }

        v71 = *MEMORY[0x277CDC3F8];
        v72 = &unk_2870A9210;
        parameters = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        if (!v27 || (v33 = SecKeyCopyKeyExchangeResult(a4, *MEMORY[0x277CDC288], v27, parameters, &error), CFRelease(v27), (v65 = v33) == 0))
        {
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_72;
          v69[3] = &__block_descriptor_40_e14___NSError_8__0l;
          v69[4] = error;
          *v11 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_72(v69);
          v34 = [MEMORY[0x277CBEB28] dataWithLength:32];
          v35 = *MEMORY[0x277CDC540];
          v65 = v34;
          SecRandomCopyBytes(v35, 0x20uLL, [(__CFData *)v65 mutableBytes]);
        }

        v63 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v21, "length")}];
        v36 = [v12 decodedHeader];
        v37 = [v36 enc];
        v62 = [v37 dataUsingEncoding:1];

        v38 = objc_alloc(MEMORY[0x277CBEA90]);
        v39 = [v12 decodedHeader];
        v40 = [v39 apu];
        v61 = [v38 psso_initWithBase64URLEncodedString:v40];

        v41 = objc_alloc(MEMORY[0x277CBEA90]);
        v42 = v41;
        if (v13)
        {
          v43 = [v41 psso_initWithBase64URLEncodedString:v13];
        }

        else
        {
          v44 = [v12 decodedHeader];
          v45 = [v44 apv];
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
        v48 = [v63 mutableBytes];
        v24 = [v24 bytes];
        v59 = [v66 length];
        v58 = v47;
        v49 = CCCryptorGCMOneshotDecrypt();
        memset_s([v46 mutableBytes], objc_msgSend(v46, "length"), 0, objc_msgSend(v46, "length"));
        LOBYTE(v24) = v49 == 0;
        if (v49)
        {
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_79;
          v67[3] = &__block_descriptor_36_e14___NSError_8__0l;
          v68 = v49;
          v50 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_79(v67);
          v51 = a9;
          v52 = v63;
        }

        else
        {
          Default = CFAllocatorGetDefault();
          v54 = SecCFAllocatorZeroize();
          CFAllocatorSetDefault(v54);
          v52 = v63;
          v55 = [v63 psso_base64URLEncodedString];
          [v12 setRawBody:v55];

          CFAllocatorSetDefault(Default);
          [v12 updateDecodedBody];
          v50 = 0;
          v51 = a9;
        }

        *v51 = v50;

        v21 = v64;
        goto LABEL_27;
      }

      v32 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_64();
      LOBYTE(v24) = 0;
    }

    else
    {
      v32 = __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke_58();
    }

    *a9 = v32;
LABEL_27:

    goto LABEL_28;
  }

  __104__POJWTEncryptionECDHE_A256GCM_decodeAndDecryptJWT_privateKey_otherInfo_psk_psk_id_authPublicKey_error___block_invoke();
  *a9 = LOBYTE(v24) = 0;
LABEL_30:

  v56 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)encodeAndEncryptJWT:(id)a3 publicKey:(__SecKey *)a4 otherInfo:(id)a5 psk:(id)a6 psk_id:(id)a7 authPrivateKey:(__SecKey *)a8 auth_kid:(id)a9 error:(id *)a10
{
  v113[3] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = [v13 header];

  if (!v15)
  {
    __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke();
    *a10 = v41 = 0;
    goto LABEL_42;
  }

  v101 = a10;
  v16 = [v13 header];
  [(POJWTEncryptionECDHE_A256GCM *)self addValuesToHeader:v16];

  v17 = [v13 header];
  v18 = [v17 kid];
  v19 = [v18 length];

  if (!v19)
  {
    v20 = SecKeyCopyExternalRepresentation(a4, 0);
    v21 = [(__CFData *)v20 psso_sha256Hash];
    v22 = [v21 base64EncodedStringWithOptions:0];
    v23 = [v13 header];
    [v23 setKid:v22];
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
      v31 = [v13 header];
      [v31 addEphemeralPublicKey:v30];

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
        *v101 = v41 = 0;
LABEL_40:

        goto LABEL_41;
      }

      v100 = v14;
      v33 = [@"APPLE" dataUsingEncoding:4];
      v34 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v106 = bswap32([v33 length]);
      [v34 appendBytes:&v106 length:4];
      v99 = v33;
      [v34 appendData:v33];
      v105 = bswap32([(__CFData *)v32 length]);
      [v34 appendBytes:&v105 length:4];
      [v34 appendData:v32];
      v35 = [v34 psso_base64URLEncodedString];
      v36 = [v13 header];
      [v36 setApu:v35];

      v110 = *MEMORY[0x277CDC3F8];
      v111 = &unk_2870A9210;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v38 = SecKeyCopyKeyExchangeResult(v28, *MEMORY[0x277CDC288], a4, v37, &error);
      CFRelease(v28);
      if (!v38)
      {
        v104[0] = MEMORY[0x277D85DD0];
        v104[1] = 3221225472;
        v104[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_107;
        v104[3] = &__block_descriptor_40_e14___NSError_8__0l;
        v104[4] = error;
        __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_107(v104);
        *v101 = v41 = 0;
        goto LABEL_39;
      }

      v39 = [v13 setRawEncryptedKey:&stru_28708EE58];
      MEMORY[0x28223BE20](v39);
      if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0xCuLL, v84))
      {
        v40 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_114();
        v41 = 0;
        *v101 = v40;
LABEL_39:

        v14 = v100;
        goto LABEL_40;
      }

      v43 = [MEMORY[0x277CBEA90] dataWithBytes:v84 length:12];
      v44 = [v43 psso_base64URLEncodedString];
      [v13 setRawIV:v44];

      v41 = [v13 rawIV];

      if (!v41)
      {
        v52 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_120();
        *v101 = v52;
LABEL_38:

        goto LABEL_39;
      }

      v45 = [v13 header];
      v46 = [v45 dataRepresentation];

      v47 = [v46 psso_base64URLEncodedString];
      [v13 setRawHeader:v47];

      v41 = [v13 rawHeader];

      if (!v41)
      {
        v53 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_126();
        *v101 = v53;
LABEL_37:

        goto LABEL_38;
      }

      v98 = v43;
      v97 = v46;
      v48 = [v13 body];

      if (v48)
      {
        v49 = [v13 body];
        v50 = [v49 dataRepresentation];
        v51 = [v50 mutableCopy];
      }

      else
      {
        v54 = [v13 bodyData];

        if (!v54)
        {
          goto LABEL_27;
        }

        v49 = [v13 bodyData];
        v51 = [v49 mutableCopy];
      }

      if (v51)
      {
        v55 = [v13 rawHeader];
        v91 = [v55 dataUsingEncoding:1];

        v93 = [MEMORY[0x277CBEB28] dataWithLength:16];
        v92 = v51;
        v96 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v51, "length")}];
        v56 = [v13 header];
        v57 = [v56 enc];
        v95 = [v57 dataUsingEncoding:1];

        v58 = objc_alloc(MEMORY[0x277CBEA90]);
        v59 = [v13 header];
        v60 = [v59 apu];
        v94 = [v58 psso_initWithBase64URLEncodedString:v60];

        v61 = objc_alloc(MEMORY[0x277CBEA90]);
        v62 = v61;
        if (v100)
        {
          v63 = [v61 psso_initWithBase64URLEncodedString:?];
        }

        else
        {
          v90 = [v13 header];
          v65 = [v90 apv];
          v66 = [v62 psso_initWithBase64URLEncodedString:v65];

          v63 = v66;
        }

        v67 = v98;

        v90 = v63;
        v68 = [POConcatKDF concatKDFWithKey:v38 algorithm:v95 partyUInfo:v94 partyVInfo:v63];
        v69 = v96;
        v89 = v68;
        if (v68)
        {
          v88 = v85;
          v70 = v68;
          v87 = [v68 bytes];
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
          LODWORD(v87) = CCCryptorGCMOneshotEncrypt();
          memset_s([v72 mutableBytes], objc_msgSend(v72, "length"), 0, objc_msgSend(v72, "length"));
          memset_s([v70 mutableBytes], objc_msgSend(v70, "length"), 0, objc_msgSend(v70, "length"));
          if (v87)
          {
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_144;
            v102[3] = &__block_descriptor_36_e14___NSError_8__0l;
            v103 = v87;
            v73 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_144(v102);
            v41 = 0;
            *v101 = v73;
          }

          else
          {
            v76 = [v96 psso_base64URLEncodedString];
            [v13 setRawCipherText:v76];

            v77 = [v93 psso_base64URLEncodedString];
            [v13 setRawAuthenticationTag:v77];

            *v101 = 0;
            v87 = MEMORY[0x277CCACA8];
            v101 = [v13 rawHeader];
            v78 = [v13 rawEncryptedKey];
            v79 = [v13 rawIV];
            v86 = v79;
            v80 = [v13 rawCipherText];
            v81 = [v13 rawAuthenticationTag];
            v41 = [v87 stringWithFormat:@"%@.%@.%@.%@.%@", v101, v78, v79, v80, v81];
          }

          v75 = v92;
        }

        else
        {
          v74 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_138();
          *v101 = v74;
          v75 = v92;
          memset_s([v92 mutableBytes], objc_msgSend(v75, "length"), 0, objc_msgSend(v75, "length"));
          v41 = 0;
        }

        goto LABEL_36;
      }

LABEL_27:
      v64 = __113__POJWTEncryptionECDHE_A256GCM_encodeAndEncryptJWT_publicKey_otherInfo_psk_psk_id_authPrivateKey_auth_kid_error___block_invoke_132();
      v41 = 0;
      *v101 = v64;
LABEL_36:
      v46 = v97;
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

  v41 = 0;
  *v101 = v42;
LABEL_41:

LABEL_42:
  v82 = *MEMORY[0x277D85DE8];

  return v41;
}

@end