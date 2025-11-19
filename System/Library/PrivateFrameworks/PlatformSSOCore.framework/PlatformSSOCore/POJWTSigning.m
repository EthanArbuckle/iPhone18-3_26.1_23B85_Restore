@interface POJWTSigning
+ (BOOL)verifyJWTSignature:(id)a3 algorithm:(id)a4 key:(__SecKey *)a5;
+ (BOOL)verifyJWTSignature:(id)a3 signingAlgorithm:(id)a4 key:(__SecKey *)a5;
+ (id)algorithmWithIdentifier:(id)a3;
+ (id)algorithmWithSigningAlgorithm:(id)a3;
+ (id)encodeAndSignJWT:(id)a3 algorithm:(id)a4 key:(__SecKey *)a5 certificate:(__SecCertificate *)a6 error:(id *)a7;
+ (id)encodeAndSignJWT:(id)a3 signingAlgorithm:(id)a4 key:(__SecKey *)a5 certificate:(__SecCertificate *)a6 error:(id *)a7;
- (BOOL)verifyJWTSignature:(id)a3 key:(__SecKey *)a4;
- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingCertificateString:(id)a5;
- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingKey:(__SecKey *)a5;
- (POJWTSigning)initWithSecKeyAlgorithm:(__CFString *)a3 algorithmName:(id)a4 alg:(id)a5;
- (id)encodeAndSignJWT:(id)a3 key:(__SecKey *)a4 certificate:(__SecCertificate *)a5 error:(id *)a6;
- (id)signData:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5;
@end

@implementation POJWTSigning

- (POJWTSigning)initWithSecKeyAlgorithm:(__CFString *)a3 algorithmName:(id)a4 alg:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = POJWTSigning;
  v11 = [(POJWTSigning *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_algorithm = a3;
    objc_storeStrong(&v11->_algorithmName, a4);
    objc_storeStrong(&v12->_alg, a5);
  }

  return v12;
}

+ (id)algorithmWithIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ES256"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256";
    v7 = @"ES256";
LABEL_13:
    v8 = [(POJWTSigning *)v4 initWithSecKeyAlgorithm:v5 algorithmName:v6 alg:v7];
LABEL_14:
    v9 = v8;
    goto LABEL_15;
  }

  if ([v3 isEqualToString:@"ES384"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D8];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA384";
    v7 = @"ES384";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"ES512"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2E0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA512";
    v7 = @"ES512";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"RS256"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3B8];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256";
    v7 = @"RS256";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"RS384"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3C0];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA384";
    v7 = @"RS384";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"RS512"])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC3C8];
    v6 = @"kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA512";
    v7 = @"RS512";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"EdDSA"])
  {
    v8 = objc_alloc_init(_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519);
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

+ (id)algorithmWithSigningAlgorithm:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:0x2870A9198])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D0];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256";
    v7 = @"ES256";
LABEL_5:
    v8 = [(POJWTSigning *)v4 initWithSecKeyAlgorithm:v5 algorithmName:v6 alg:v7];
LABEL_6:
    v9 = v8;
    goto LABEL_7;
  }

  if ([v3 isEqualToNumber:0x2870A91B0])
  {
    v4 = [POJWTSigning alloc];
    v5 = *MEMORY[0x277CDC2D8];
    v6 = @"kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA384";
    v7 = @"ES384";
    goto LABEL_5;
  }

  if ([v3 isEqualToNumber:0x2870A91C8])
  {
    v8 = objc_alloc_init(_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (BOOL)verifyJWTSignature:(id)a3 algorithm:(id)a4 key:(__SecKey *)a5
{
  v7 = a3;
  v8 = [POJWTSigning algorithmWithIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 verifyJWTSignature:v7 key:a5];
  }

  else
  {
    v11 = __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke();
    v10 = 0;
  }

  return v10;
}

id __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when verifying JWT."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (BOOL)verifyJWTSignature:(id)a3 signingAlgorithm:(id)a4 key:(__SecKey *)a5
{
  v7 = a3;
  v8 = [POJWTSigning algorithmWithSigningAlgorithm:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 verifyJWTSignature:v7 key:a5];
  }

  else
  {
    v11 = __49__POJWTSigning_verifyJWTSignature_algorithm_key___block_invoke();
    v10 = 0;
  }

  return v10;
}

- (BOOL)verifyJWTSignature:(id)a3 key:(__SecKey *)a4
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v8 = [v6 rawSignature];
  v9 = [v7 psso_initWithBase64URLEncodedString:v8];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 rawHeader];
    v12 = [v6 rawBody];
    v13 = [v10 stringWithFormat:@"%@.%@", v11, v12];
    v14 = [v13 dataUsingEncoding:1];

    v15 = [(POJWTSigning *)self verifySignature:v9 onData:v14 usingKey:a4];
  }

  else
  {
    v16 = __39__POJWTSigning_verifyJWTSignature_key___block_invoke();
    v15 = 0;
  }

  return v15;
}

id __39__POJWTSigning_verifyJWTSignature_key___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to decode signature."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (id)encodeAndSignJWT:(id)a3 algorithm:(id)a4 key:(__SecKey *)a5 certificate:(__SecCertificate *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = [POJWTSigning algorithmWithIdentifier:a4];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 encodeAndSignJWT:v11 key:a5 certificate:a6 error:a7];
  }

  else
  {
    v15 = __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke();
    v14 = 0;
  }

  return v14;
}

id __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Algorithm not found when signing JWT."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

+ (id)encodeAndSignJWT:(id)a3 signingAlgorithm:(id)a4 key:(__SecKey *)a5 certificate:(__SecCertificate *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = [POJWTSigning algorithmWithSigningAlgorithm:a4];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 encodeAndSignJWT:v11 key:a5 certificate:a6 error:a7];
  }

  else
  {
    v15 = __65__POJWTSigning_encodeAndSignJWT_algorithm_key_certificate_error___block_invoke();
    v14 = 0;
  }

  return v14;
}

- (id)encodeAndSignJWT:(id)a3 key:(__SecKey *)a4 certificate:(__SecCertificate *)a5 error:(id *)a6
{
  v52[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [v10 header];

  if (!v11)
  {
    v12 = objc_alloc_init(POMutableJWTHeader);
    [v10 setHeader:v12];
  }

  v13 = [(POJWTSigning *)self alg];
  v14 = [v10 header];
  [v14 setAlg:v13];

  v15 = [v10 header];
  v16 = [v15 typ];

  if (!v16)
  {
    v17 = [v10 header];
    [v17 setTyp:@"JWT"];
  }

  v18 = SecKeyCopyPublicKey(a4);
  if (!v18)
  {
    v23 = __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke();
    if (!a6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v10 header];
  v21 = [v20 kid];
  v22 = [v21 length];

  if (v22)
  {
    if (!a5)
    {
      goto LABEL_17;
    }

LABEL_13:
    v29 = SecCertificateCopyData(a5);
    if (v29)
    {
      v30 = v29;
      v31 = [(__CFData *)v29 base64EncodedStringWithOptions:0];
      v32 = v31;
      v33 = &stru_28708EE58;
      if (v31)
      {
        v33 = v31;
      }

      v52[0] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
      v35 = [v10 header];
      [v35 setX5c:v34];

      goto LABEL_17;
    }

    v23 = __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke_71();
    if (!a6)
    {
LABEL_11:

      v24 = 0;
      goto LABEL_25;
    }

LABEL_10:
    v23 = v23;
    *a6 = v23;
    goto LABEL_11;
  }

  v25 = SecKeyCopyExternalRepresentation(v19, 0);
  v26 = [(__CFData *)v25 psso_sha256Hash];
  v27 = [v26 base64EncodedStringWithOptions:0];
  v28 = [v10 header];
  [v28 setKid:v27];

  if (a5)
  {
    goto LABEL_13;
  }

LABEL_17:
  CFRelease(v19);
  v36 = [v10 header];
  v37 = [v36 dataRepresentation];

  v38 = [v37 psso_base64URLEncodedString];
  v39 = [v10 body];
  v40 = [v39 dataRepresentation];

  v41 = [v40 psso_base64URLEncodedString];
  v42 = SecCFAllocatorZeroize();
  v43 = CFStringCreateWithFormat(v42, 0, @"%@.%@", v38, v41);
  v44 = SecCFAllocatorZeroize();
  ExternalRepresentation = CFStringCreateExternalRepresentation(v44, v43, 0x8000100u, 0);
  if (v43)
  {
    CFRelease(v43);
  }

  v46 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    [POJWTSigning encodeAndSignJWT:v46 key:? certificate:? error:?];
  }

  v47 = [(POJWTSigning *)self signData:ExternalRepresentation usingKey:a4 error:a6];

  if ([v47 length])
  {
    v48 = [v47 psso_base64URLEncodedString];
    v49 = SecCFAllocatorZeroize();
    v24 = CFStringCreateWithFormat(v49, 0, @"%@.%@.%@", v38, v41, v48);
  }

  else
  {
    v24 = 0;
  }

LABEL_25:
  v50 = *MEMORY[0x277D85DE8];

  return v24;
}

id __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Failed to copy public key when signing JWT."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

id __55__POJWTSigning_encodeAndSignJWT_key_certificate_error___block_invoke_71()
{
  v0 = [POError errorWithCode:-1004 description:@"Failed to extract certificate data when signing JWT."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __24__POJWT_initWithString___block_invoke_cold_1();
  }

  return v0;
}

- (id)signData:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5
{
  v8 = a3;
  if (!SecKeyIsAlgorithmSupported(a4, kSecKeyOperationTypeSign, [(POJWTSigning *)self algorithm]))
  {
    error[6] = MEMORY[0x277D85DD0];
    error[7] = 3221225472;
    error[8] = __40__POJWTSigning_signData_usingKey_error___block_invoke;
    error[9] = &unk_279A3DC48;
    error[10] = self;
    v11 = __40__POJWTSigning_signData_usingKey_error___block_invoke();
    if (!a5)
    {
LABEL_9:

      v12 = 0;
      goto LABEL_17;
    }

LABEL_8:
    v11 = v11;
    *a5 = v11;
    goto LABEL_9;
  }

  if (![v8 length])
  {
    error[1] = MEMORY[0x277D85DD0];
    error[2] = 3221225472;
    error[3] = __40__POJWTSigning_signData_usingKey_error___block_invoke_87;
    error[4] = &unk_279A3DC48;
    error[5] = self;
    v11 = __40__POJWTSigning_signData_usingKey_error___block_invoke_87();
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  error[0] = 0;
  Signature = SecKeyCreateSignature(a4, [(POJWTSigning *)self algorithm], v8, error);
  if (error[0])
  {
    if (CFErrorGetCode(error[0]) == -3)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke_91;
      v15[3] = &unk_279A3E0D8;
      v15[4] = self;
      v15[5] = error[0];
      v10 = __40__POJWTSigning_signData_usingKey_error___block_invoke_91(v15);
      if (!a5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __40__POJWTSigning_signData_usingKey_error___block_invoke_95;
      v14[3] = &unk_279A3E0D8;
      v14[4] = self;
      v14[5] = error[0];
      v10 = __40__POJWTSigning_signData_usingKey_error___block_invoke_95(v14);
      if (!a5)
      {
LABEL_15:

        v12 = 0;
        goto LABEL_16;
      }
    }

    v10 = v10;
    *a5 = v10;
    goto LABEL_15;
  }

  v12 = Signature;
LABEL_16:

LABEL_17:

  return v12;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"Signing algorithm not supported"];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_87()
{
  v0 = [POError errorWithCode:-1005 description:@"No data to sign."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1010 underlyingError:v1 description:@"Key error creating signature"];

  v3 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

id __40__POJWTSigning_signData_usingKey_error___block_invoke_95(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1001 underlyingError:v1 description:@"Error creating signature"];

  v3 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingCertificateString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];
    if ([(__CFData *)v11 length])
    {
      v12 = SecCertificateCreateWithData(0, v11);
      if (v12)
      {
        v13 = v12;
        v14 = SecCertificateCopyKey(v12);
        CFRelease(v13);
        if (v14)
        {
          v15 = [(POJWTSigning *)self verifySignature:v8 onData:v9 usingKey:v14];
          CFRelease(v14);
LABEL_11:

          goto LABEL_12;
        }

        v19 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_110();
      }

      else
      {
        v18 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_106();
      }
    }

    else
    {
      v17 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_102();
    }

    v15 = 0;
    goto LABEL_11;
  }

  v16 = __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke();
  v15 = 0;
LABEL_12:

  return v15;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"No certificate string."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_102()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to base64 decode."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_106()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to create certificate."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __62__POJWTSigning_verifySignature_onData_usingCertificateString___block_invoke_110()
{
  v0 = [POError errorWithCode:-1008 description:@"Failed to get public key."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingKey:(__SecKey *)a5
{
  v8 = a3;
  v9 = a4;
  if (!SecKeyIsAlgorithmSupported(a5, kSecKeyOperationTypeVerify, [(POJWTSigning *)self algorithm]))
  {
    error[11] = MEMORY[0x277D85DD0];
    error[12] = 3221225472;
    error[13] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke;
    error[14] = &unk_279A3DC48;
    error[15] = self;
    v13 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke();
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (![v8 length])
  {
    error[6] = MEMORY[0x277D85DD0];
    error[7] = 3221225472;
    error[8] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117;
    error[9] = &unk_279A3DC48;
    error[10] = self;
    v14 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117();
    goto LABEL_9;
  }

  if (![v9 length])
  {
    error[1] = MEMORY[0x277D85DD0];
    error[2] = 3221225472;
    error[3] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121;
    error[4] = &unk_279A3DC48;
    error[5] = self;
    v15 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121();
    goto LABEL_9;
  }

  error[0] = 0;
  v10 = SecKeyVerifySignature(a5, [(POJWTSigning *)self algorithm], v9, v8, error);
  v11 = v10 != 0;
  if (!v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125;
    v17[3] = &unk_279A3E0D8;
    v17[4] = self;
    v17[5] = error[0];
    v12 = __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125(v17);
  }

LABEL_10:

  return v11;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke()
{
  v0 = [POError errorWithCode:-1008 description:@"Signing algorithm not supported for verification."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_117()
{
  v0 = [POError errorWithCode:-1008 description:@"No signature to verify for verification."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_121()
{
  v0 = [POError errorWithCode:-1008 description:@"No data to verify."];
  v1 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v0;
}

id __48__POJWTSigning_verifySignature_onData_usingKey___block_invoke_125(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [POError errorWithCode:-1008 underlyingError:v1 description:@"Error verifying signature."];

  v3 = PO_LOG_POJWTSigning();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1();
  }

  return v2;
}

- (void)encodeAndSignJWT:(const __CFData *)a1 key:(NSObject *)a2 certificate:error:.cold.1(const __CFData *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  CFDataGetLength(a1);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "Signing Data: %ld", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __40__POJWTSigning_signData_usingKey_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_3_0(v1 v2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v4, v5, "%{public}@, %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end