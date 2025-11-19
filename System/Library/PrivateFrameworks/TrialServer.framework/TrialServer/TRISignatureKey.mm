@interface TRISignatureKey
+ (__SecKey)_keyFromCertificateChain:(id)a3;
+ (id)keyFromData:(id)a3;
- (BOOL)_validateBase64Signature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5;
- (BOOL)_validateSignature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5;
- (BOOL)validateBase64Signature:(id)a3 forFile:(id)a4;
- (TRISignatureKey)initWithKey:(__SecKey *)a3;
- (void)dealloc;
@end

@implementation TRISignatureKey

+ (id)keyFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [TRISignatureKey _keyFromCertificateChain:v3];
    if (v4)
    {
      v4 = [[TRISignatureKey alloc] initWithKey:v4];
    }
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "TRISignatureKey: no certificate data.", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (__SecKey)_keyFromCertificateChain:(id)a3
{
  v46[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_variant_allows_internal_security_policies() && os_variant_has_internal_diagnostics())
  {
    if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
    {
      v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
    }

    v5 = v4;
    v6 = [v4 valueForKey:*MEMORY[0x277D739E8]];
    if ([v6 unsignedIntValue] == 4 || objc_msgSend(v6, "unsignedIntValue") == 5)
    {
      v7 = *MEMORY[0x277CDC040];
      v8 = *MEMORY[0x277CDBFE0];
      v45[0] = *MEMORY[0x277CDC028];
      v45[1] = v8;
      v9 = *MEMORY[0x277CDC000];
      v46[0] = v7;
      v46[1] = v9;
      v45[2] = *MEMORY[0x277CDC018];
      v46[2] = &unk_287FC45B8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      v11 = SecKeyCreateWithData(v3, v10, 0);

      if (v11)
      {
        goto LABEL_30;
      }
    }
  }

  v38 = v3;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  v6 = objc_opt_new();
  if ([v12 length])
  {
    while (1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [MEMORY[0x277CCAC80] scannerWithString:v12];
      v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n"];
      [v14 setCharactersToBeSkipped:v15];

      [v14 scanUpToString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      [v14 scanString:@"-----BEGIN CERTIFICATE-----" intoString:0];
      v42 = 0;
      [v14 scanUpToString:@"-----END CERTIFICATE-----" intoString:&v42];
      v16 = v42;
      if (!v16)
      {

        objc_autoreleasePoolPop(v13);
        goto LABEL_16;
      }

      v17 = v16;
      v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v16 options:1];
      v19 = SecCertificateCreateWithData(0, v18);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      [v6 addObject:v19];

      [v14 scanString:@"-----END CERTIFICATE-----" intoString:0];
      v21 = [v14 string];
      v5 = [v21 substringFromIndex:{objc_msgSend(v14, "scanLocation")}];

      objc_autoreleasePoolPop(v13);
      v12 = v5;
      if (![v5 length])
      {
        goto LABEL_17;
      }
    }

    v26 = TRILogCategory_Server();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "TRISignatureKey: invalid certificate data in certificate chain.", buf, 2u);
    }

    objc_autoreleasePoolPop(v13);
    v11 = 0;
    v5 = v12;
    goto LABEL_29;
  }

LABEL_16:
  v5 = v12;
LABEL_17:
  if ([v6 count])
  {
    commonName = 0;
    v22 = [v6 objectAtIndexedSubscript:0];
    v23 = SecCertificateCopyCommonName(v22, &commonName);

    if (v23)
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "TRISignatureKey: failed to get leaf common name.", buf, 2u);
      }

LABEL_21:
      v11 = 0;
LABEL_22:

LABEL_29:
      v3 = v38;
      goto LABEL_30;
    }

    v24 = commonName;
    [(__CFString *)commonName isEqualToString:@"Trial"];
    ApplePinned = SecPolicyCreateApplePinned();
    if (!ApplePinned)
    {
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "TRISignatureKey: failed to create security policy.", buf, 2u);
      }

      goto LABEL_21;
    }

    trust = 0;
    v30 = SecTrustCreateWithCertificates(v6, ApplePinned, &trust);
    if (v30)
    {
      v31 = v30;
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = SecCopyErrorMessageString(v31, 0);
        *buf = 138543362;
        v44 = v33;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "TRISignatureKey: trust creation for the certificate chain failed with error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      error = 0;
      if (SecTrustEvaluateWithError(trust, &error))
      {
        v35 = [v6 objectAtIndexedSubscript:0];
        v11 = SecCertificateCopyKey(v35);

        if (v11)
        {
LABEL_46:
          if (trust)
          {
            CFRelease(trust);
          }

          CFRelease(ApplePinned);
          if (v11)
          {
            v37 = TRILogCategory_Server();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_26F567000, v37, OS_LOG_TYPE_DEBUG, "TRISignatureKey: successfully created public key from the certificate chain.", buf, 2u);
            }
          }

          goto LABEL_22;
        }

        v32 = TRILogCategory_Server();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "TRISignatureKey: failed to create public key from the certificate chain.", buf, 2u);
        }
      }

      else
      {
        v32 = error;
        v36 = TRILogCategory_Server();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = v32;
          _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "TRISignatureKey: certificate chain validation failed with error: %{public}@.", buf, 0xCu);
        }
      }
    }

    v11 = 0;
    goto LABEL_46;
  }

  v25 = TRILogCategory_Server();
  v3 = v38;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "TRISignatureKey: No certificates in cert chain.", buf, 2u);
  }

  v11 = 0;
LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

- (TRISignatureKey)initWithKey:(__SecKey *)a3
{
  v5.receiver = self;
  v5.super_class = TRISignatureKey;
  result = [(TRISignatureKey *)&v5 init];
  if (result)
  {
    result->_key = a3;
  }

  return result;
}

- (void)dealloc
{
  key = self->_key;
  if (key)
  {
    CFRelease(key);
  }

  v4.receiver = self;
  v4.super_class = TRISignatureKey;
  [(TRISignatureKey *)&v4 dealloc];
}

- (BOOL)validateBase64Signature:(id)a3 forFile:(id)a4
{
  v6 = a3;
  v7 = [TRIMemoryEfficientFileDigest sha256DigestForFile:a4];
  LOBYTE(self) = [(TRISignatureKey *)self validateBase64Signature:v6 forDigest:v7];

  return self;
}

- (BOOL)_validateBase64Signature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = a3;
    a3 = [[v9 alloc] initWithBase64EncodedString:v10 options:1];
  }

  v11 = [(TRISignatureKey *)self _validateSignature:a3 data:v8 algorithm:a5];

  return v11;
}

- (BOOL)_validateSignature:(id)a3 data:(id)a4 algorithm:(__CFString *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    key = self->_key;
    if (!key)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"TRISignatureKey.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"_key"}];

      key = self->_key;
    }

    if (SecKeyIsAlgorithmSupported(key, kSecKeyOperationTypeVerify, a5))
    {
      error = 0;
      v14 = SecKeyVerifySignature(self->_key, a5, v11, v9, &error);
      v12 = v14 != 0;
      if (!v14)
      {
        v15 = error;
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v23 = v15;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "TRISignatureKey: signature validation failed -- %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "TRISignatureKey: key/algorithm mismatch.", buf, 2u);
      }

      v12 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

@end