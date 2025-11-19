@interface PallasResponseVerifier
+ (id)CopyDataFromEncodedBase64:(id)a3 range:(_NSRange)a4;
+ (int64_t)verifyReceipt:(id)a3 withSignature:(id)a4;
+ (void)base64DecodeString:(const char *)a3 toBuffer:(char *)a4 length:(unint64_t *)a5;
- (BOOL)determineAlg:(id)a3;
- (BOOL)verifyCerts:(id)a3 error:(id *)a4;
- (BOOL)verifyResponse:(id)a3 signature:(id)a4 error:(id *)a5;
- (PallasResponseVerifier)init;
@end

@implementation PallasResponseVerifier

- (PallasResponseVerifier)init
{
  v3.receiver = self;
  v3.super_class = PallasResponseVerifier;
  result = [(PallasResponseVerifier *)&v3 init];
  if (result)
  {
    result->_issuanceDate = 0.0;
    result->_leafPublicKey = 0;
  }

  return result;
}

- (BOOL)determineAlg:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ES256"])
  {
    v5 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
  }

  else
  {
    if (![v4 isEqualToString:@"ES384"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = &kSecKeyAlgorithmECDSASignatureMessageX962SHA384;
  }

  self->_keyAlg = *v5;
  v6 = 1;
LABEL_7:

  return v6;
}

- (BOOL)verifyCerts:(id)a3 error:(id *)a4
{
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = +[NSMutableArray array];
  trust = 0;
  result = kSecTrustResultInvalid;
  error = 0;
  ApplePinned = SecPolicyCreateApplePinned();
  if (ApplePinned)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __44__PallasResponseVerifier_verifyCerts_error___block_invoke;
    v14[3] = &unk_4B37A0;
    v14[4] = self;
    v14[5] = &v18;
    [v5 enumerateObjectsUsingBlock:v14];
    if (SecTrustCreateWithCertificates(v19[5], ApplePinned, &trust))
    {
      v7 = _MADLog(@"V2");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Unable to create trust with provided certs", buf, 2u);
      }
    }

    else
    {
      if (!SecTrustEvaluateWithError(trust, &error))
      {
        v12 = _MADLog(@"V2");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v25 = error;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Trust result is failure. Unable to verify certificates are trusted. Error: %{public}@", buf, 0xCu);
        }

        if (error)
        {
          CFRelease(error);
          v8 = 0;
          error = 0;
LABEL_7:
          CFRelease(ApplePinned);
          if (trust)
          {
            CFRelease(trust);
            trust = 0;
          }

          goto LABEL_12;
        }

LABEL_6:
        v8 = 0;
        goto LABEL_7;
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }

      TrustResult = SecTrustGetTrustResult(trust, &result);
      if (TrustResult)
      {
        v7 = _MADLog(@"V2");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = TrustResult;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Trust result is failure. Unable to get trust result: %ld", buf, 0xCu);
        }
      }

      else
      {
        if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
        {
          leafPublicKey = self->_leafPublicKey;
          if (leafPublicKey)
          {
            CFRelease(leafPublicKey);
            self->_leafPublicKey = 0;
          }

          self->_leafPublicKey = SecTrustCopyPublicKey(trust);
          v8 = 1;
          goto LABEL_7;
        }

        v7 = _MADLog(@"V2");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = result;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Trust result is failure. Trust result value: %ld", buf, 0xCu);
        }
      }
    }

    goto LABEL_6;
  }

  v9 = _MADLog(@"V2");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Unable to determine pallas policy", buf, 2u);
  }

  v8 = 0;
LABEL_12:
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __44__PallasResponseVerifier_verifyCerts_error___block_invoke(uint64_t a1, const __CFData *a2, uint64_t a3)
{
  v5 = SecCertificateCreateWithData(0, a2);
  if (v5)
  {
    v6 = v5;
    if (!a3)
    {
      SecCertificateNotValidBefore();
      *(*(a1 + 32) + 8) = v7;
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];

    CFRelease(v6);
  }

  else
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "No cert able to be determined at index: %lu", &v9, 0xCu);
    }
  }
}

- (BOOL)verifyResponse:(id)a3 signature:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  leafPublicKey = self->_leafPublicKey;
  v10 = leafPublicKey && !SecKeyVerifySignature(leafPublicKey, self->_keyAlg, v7, v8, 0);

  return v10;
}

+ (void)base64DecodeString:(const char *)a3 toBuffer:(char *)a4 length:(unint64_t *)a5
{
  *a5 = 0;
  v5 = index_table[*a3];
  if ((v5 & 0x80000000) == 0)
  {
    *a5 = 1;
    v6 = 4 * v5;
    *a4 = v6;
    v7 = a3[1];
    if (v7 != 61)
    {
      v8 = index_table[v7];
      if ((v8 & 0x80000000) == 0)
      {
        *a4 = (v8 >> 4) & 3 | v6;
        a4[1] = 16 * v8;
        v9 = a3[2];
        if (v9 != 61)
        {
          v10 = index_table[v9];
          if ((v10 & 0x80000000) == 0)
          {
            *a5 = 2;
            a4[1] |= (v10 >> 2) & 0xF;
            a4[2] = v10 << 6;
            v11 = a3[3];
            if (v11 != 61)
            {
              v12 = index_table[v11];
              if ((v12 & 0x80000000) == 0)
              {
                *a5 = 3;
                a4[2] |= v12 & 0x3F;
              }
            }
          }
        }
      }
    }
  }
}

+ (id)CopyDataFromEncodedBase64:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = _MADLog(@"V2");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "{CopyDataFromEncodedBase64} Invalid range";
LABEL_8:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (length)
  {
    if (location + length > [v6 length])
    {
      v8 = _MADLog(@"V2");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "{CopyDataFromEncodedBase64} range larger than data length";
        goto LABEL_8;
      }

LABEL_9:

      v10 = 0;
      goto LABEL_28;
    }

    v23 = [v7 bytes] + location;
    v12 = length >> 2;
    v13 = 3 * (length >> 2);
    if ((length & 3) == 3)
    {
      v14 = 2;
    }

    else
    {
      v14 = (length & 3) - 1 < 2;
    }

    v10 = [[NSMutableData alloc] initWithLength:v13 + v14];
    v15 = [v10 mutableBytes];
    v16 = v15;
    if (length >= 4)
    {
      v17 = v23;
      v18 = v15;
      while (1)
      {
        *buf = 0;
        [PallasResponseVerifier base64DecodeString:v17 toBuffer:v18 length:buf];
        if (*buf != 3)
        {
          break;
        }

        v18 += 3;
        v17 += 4;
        if (!--v12)
        {
          goto LABEL_20;
        }
      }

      [v10 setLength:0];
      v19 = _MADLog(@"V2");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      *v25 = 0;
      v20 = "{CopyDataFromEncodedBase64} decode error, decoded data size is not 3";
      v21 = v25;
      goto LABEL_26;
    }

LABEL_20:
    if ((length & 3) != 0)
    {
      *v25 = 1027423549;
      *buf = 0;
      __memcpy_chk();
      [PallasResponseVerifier base64DecodeString:v25 toBuffer:&v16[v13] length:buf];
      if (!*buf)
      {
        [v10 setLength:0];
        v19 = _MADLog(@"V2");
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
LABEL_27:

          goto LABEL_28;
        }

        v24 = 0;
        v20 = "{CopyDataFromEncodedBase64} decode error, decoded data size is 0";
        v21 = &v24;
LABEL_26:
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
        goto LABEL_27;
      }
    }
  }

  else
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{CopyDataFromEncodedBase64} range is 0", buf, 2u);
    }

    v10 = +[NSData data];
  }

LABEL_28:

  return v10;
}

+ (int64_t)verifyReceipt:(id)a3 withSignature:(id)a4
{
  v5 = a3;
  v6 = a4;
  AppleAssetReceipt = SecPolicyCreateAppleAssetReceipt();
  if (AppleAssetReceipt)
  {
    v8 = [[NSData alloc] initWithBase64EncodedString:v6 options:0];
    if (v8)
    {
      v9 = [v5 dataUsingEncoding:10];
      if (v9)
      {
        v10 = SecCMSVerifyCopyDataAndAttributes();
        if (v10)
        {
          v11 = v10;
          v12 = _MADLog(@"V2");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v16 = v11;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "validate status failure: %ld", buf, 0xCu);
          }
        }

        else
        {
          v11 = 12;
        }
      }

      else
      {
        v11 = 11;
      }
    }

    else
    {
      v9 = 0;
      v11 = 10;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 9;
  }

  v13 = _MADLog(@"V2");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v11;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "MobileAsset verifyReceipt error: %ld", buf, 0xCu);
  }

  if (AppleAssetReceipt)
  {
    CFRelease(AppleAssetReceipt);
  }

  return v11;
}

@end