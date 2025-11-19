id PKPeerPaymentEncryptDataWithCertChain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  cf = 0;
  v6 = PKFeatureCreateAndValidateTrustWithCerts(a2, &cf, 1);
  v7 = 0;
  if (v6)
  {
    v7 = PKEncryptDataToServerWithTrust(v5, cf, a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

id PKFeatureEncryptDataWithCertChain(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  cf = 0;
  v8 = PKFeatureCreateAndValidateTrustWithCerts(a2, &cf, a4);
  v9 = 0;
  if (v8)
  {
    v9 = PKEncryptDataToServerWithTrust(v7, cf, a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

id PKFeatureEncryptDataUsingPrivacySchemeWithCertChain(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  cf = 0;
  v9 = PKFeatureCreateAndValidateTrustWithCerts(v8, &cf, a1);
  v10 = 0;
  if (v9)
  {
    v11 = [v8 firstObject];
    v12 = PKPublicKeyFromCertificate(v11);

    if (v12)
    {
      v10 = PKEncryptDataUsingPrivacyScheme(v7, a3, v12);
    }

    else
    {
      v10 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

id PKECDHEncryptDataWithCertChain(void *a1, void *a2, int a3, void *a4, CFErrorRef *a5)
{
  v64[4] = *MEMORY[0x1E69E9840];
  v9 = a1;
  trust = 0;
  if (PKPaymentCreateAndValidateTrustWithCerts(a2, &trust, a3))
  {
    v10 = *MEMORY[0x1E697AD78];
    v11 = *MEMORY[0x1E697AD30];
    v63[0] = *MEMORY[0x1E697AD68];
    v63[1] = v11;
    v12 = *MEMORY[0x1E697AD38];
    v64[0] = v10;
    v64[1] = v12;
    v13 = *MEMORY[0x1E695E4C0];
    v14 = *MEMORY[0x1E697AD50];
    v63[2] = *MEMORY[0x1E697AD18];
    v63[3] = v14;
    v64[2] = v13;
    v64[3] = &unk_1F23B50F0;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4];
    error = 0;
    v16 = SecKeyCreateRandomKey(v15, &error);
    if (v16)
    {
      v17 = v16;
      v18 = SecKeyCopyPublicKey(v16);
      v19 = SecTrustCopyKey(trust);
      v20 = SecKeyCopyExternalRepresentation(v18, &error);
      if (v18 && v19)
      {
        v56 = SecKeyCopyExternalRepresentation(v19, &error);
        if (v56)
        {
          v21 = *MEMORY[0x1E697B230];
          v59[0] = *MEMORY[0x1E697B228];
          v59[1] = v21;
          v60[0] = &unk_1F23B5108;
          v60[1] = v20;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
          v22 = SecKeyCopyKeyExchangeResult(v17, *MEMORY[0x1E697B0D8], v19, v55, &error);
          v23 = v19;
          v24 = v22;
          CFRelease(v23);
          CFRelease(v17);
          if (v24)
          {
            v53 = v15;
            v54 = [MEMORY[0x1E695DF88] dataWithLength:16];
            v25 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v54, "length") + objc_msgSend(v9, "length")}];
            v26 = [MEMORY[0x1E695DF88] dataWithLength:16];
            [(__CFData *)v24 bytes];
            [(__CFData *)v24 length];
            [v26 bytes];
            v52 = v26;
            [v26 length];
            [v9 bytes];
            v27 = [v9 length];
            v28 = [v25 mutableBytes];
            v29 = [v25 mutableBytes];
            v50 = v29 + [v9 length];
            v48 = v27;
            v49 = v28;
            v30 = CCCryptorGCMOneshotEncrypt();
            if (v30)
            {
              v31 = v30;
              v51 = v25;
              CFRelease(v18);
              v32 = PKLogFacilityTypeGetObject(7uLL);
              v33 = v56;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v62) = v31;
                _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "CCCryptorStatus error: %d. Failed to encrypt data with shared secret", buf, 8u);
              }

              v34 = v55;
              v15 = v53;
              if (a5)
              {
                [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PassKit.encryptionError" code:1 userInfo:{0, v48, v49, v50, 16}];
                *a5 = v35 = 0;
              }

              else
              {
                v35 = 0;
              }

              v42 = v54;
              v46 = v51;
            }

            else
            {
              v45 = PKLogFacilityTypeGetObject(7uLL);
              v33 = v56;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "Successfully encrypted data with shared secret", buf, 2u);
              }

              *a4 = SecKeyCopyExternalRepresentation(v18, &error);
              CFRelease(v18);
              v35 = v25;
              v34 = v55;
              v46 = v25;
              v15 = v53;
              v42 = v54;
            }
          }

          else
          {
            CFRelease(v18);
            v42 = error;
            v43 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v62 = v42;
              _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Error computing shared secret: %@", buf, 0xCu);
            }

            v34 = v55;
            v33 = v56;
            if (a5)
            {
              v44 = v42;
              v35 = 0;
              *a5 = v42;
            }

            else
            {
              v35 = 0;
            }
          }
        }

        else
        {
          v34 = error;
          v40 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v62 = v34;
            _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Error creating key data: %@", buf, 0xCu);
          }

          v33 = 0;
          if (a5)
          {
            v41 = v34;
            *a5 = v34;
          }

          CFRelease(v19);
          CFRelease(v18);
          CFRelease(v17);
          v35 = 0;
        }
      }

      else
      {
        v33 = error;
        v38 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v33;
          _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Error gettting public key or certificate key: %@", buf, 0xCu);
        }

        if (a5)
        {
          v39 = v33;
          *a5 = v33;
        }

        if (v19)
        {
          CFRelease(v19);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        CFRelease(v17);
        v35 = 0;
      }
    }

    else
    {
      v20 = error;
      v36 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = v20;
        _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Error creating key pair: %@", buf, 0xCu);
      }

      if (a5)
      {
        v37 = v20;
        v35 = 0;
        *a5 = v20;
      }

      else
      {
        v35 = 0;
      }
    }
  }

  else
  {
    if (trust)
    {
      CFRelease(trust);
    }

    v35 = 0;
  }

  return v35;
}

id PKECDHDecryptDataWithEphemeralPublicKey(void *a1, void *a2, __SecKey *a3, const __CFDictionary **a4)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = *MEMORY[0x1E697AD78];
  v10 = *MEMORY[0x1E697AD30];
  v43[0] = *MEMORY[0x1E697AD68];
  v43[1] = v10;
  v11 = *MEMORY[0x1E697AD40];
  v44[0] = v9;
  v44[1] = v11;
  v43[2] = *MEMORY[0x1E697AD50];
  v44[2] = &unk_1F23B50F0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:3];
  error = 0;
  v13 = SecKeyCreateWithData(v7, v12, &error);
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x1E697B230];
    v39[0] = *MEMORY[0x1E697B228];
    v39[1] = v15;
    v40[0] = &unk_1F23B5108;
    v40[1] = v7;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v17 = SecKeyCopyKeyExchangeResult(a3, *MEMORY[0x1E697B0D8], v14, v16, &error);
    CFRelease(v14);
    if (v17)
    {
      v36 = a4;
      v18 = [v8 length];
      v19 = [MEMORY[0x1E695DF88] dataWithLength:v18 - 16];
      v20 = [MEMORY[0x1E695DF88] dataWithLength:16];
      [(__CFData *)v17 bytes];
      [(__CFData *)v17 length];
      [v20 bytes];
      [v20 length];
      [v8 bytes];
      v21 = [v19 length];
      v22 = v8;
      v23 = [v19 mutableBytes];
      v37 = v22;
      v24 = [v22 bytes];
      v35 = v24 + [v19 length];
      v34 = v23;
      v25 = CCCryptorGCMOneshotDecrypt();
      v26 = PKLogFacilityTypeGetObject(7uLL);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        if (v27)
        {
          *buf = 67109120;
          LODWORD(v42) = v25;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "CCCryptorStatus error: %d. Failed to decrypt data with shared secret", buf, 8u);
        }

        v8 = v37;
        if (v36)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:{0, v21, v34, v35, 16}];
          *v36 = v28 = 0;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Successfully decrypted data with shared secret", buf, 2u);
        }

        v28 = v19;
        v8 = v37;
      }
    }

    else
    {
      v19 = error;
      v31 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v19;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Error computing shared secret: %@", buf, 0xCu);
      }

      if (a4)
      {
        v32 = v19;
        v28 = 0;
        *a4 = v19;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v16 = error;
    v29 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v16;
      _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Error creating public key from base64 server ephemeral public key: %@", buf, 0xCu);
    }

    if (a4)
    {
      v30 = v16;
      v28 = 0;
      *a4 = v16;
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

id PKDecryptDeviceDataWithError(void *a1, __SecKey *a2, const __CFDictionary **a3)
{
  v5 = a1;
  if ([v5 hasSensitiveCredentials])
  {
    v6 = [v5 ephemeralPublicKey];
    v7 = [v5 encryptedData];
    v8 = PKECDHDecryptDataWithEphemeralPublicKey(v6, v7, a2, a3);
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKAccountErrorDomain" code:5 userInfo:0];
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error decrypting virtual card because encrypted data or ephemeral public key are missing", v11, 2u);
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"PKAccountErrorDomain" code:5 userInfo:0];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id PKECCV3EncryptDataWithCertChain(void *a1, void *a2, int a3, void *a4, CFErrorRef *a5)
{
  v56[4] = *MEMORY[0x1E69E9840];
  v9 = a1;
  trust = 0;
  v10 = 0;
  if (PKPaymentCreateAndValidateTrustWithCerts(a2, &trust, a3))
  {
    v11 = *MEMORY[0x1E697AD78];
    v12 = *MEMORY[0x1E697AD30];
    v55[0] = *MEMORY[0x1E697AD68];
    v55[1] = v12;
    v13 = *MEMORY[0x1E697AD38];
    v56[0] = v11;
    v56[1] = v13;
    v14 = *MEMORY[0x1E695E4C0];
    v15 = *MEMORY[0x1E697AD50];
    v55[2] = *MEMORY[0x1E697AD18];
    v55[3] = v15;
    v56[2] = v14;
    v56[3] = &unk_1F23B50F0;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
    error = 0;
    v17 = SecKeyCreateRandomKey(v16, &error);
    if (!v17)
    {
      v33 = error;
      v34 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v33;
        _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Error creating key pair: %@", buf, 0xCu);
      }

      if (a5)
      {
        v35 = v33;
        *a5 = v33;
      }

      goto LABEL_28;
    }

    v18 = v17;
    v19 = SecKeyCopyPublicKey(v17);
    v20 = SecTrustCopyKey(trust);
    v21 = SecKeyCopyExternalRepresentation(v19, &error);
    v22 = v21;
    if (v19 && v20)
    {
      v23 = SecKeyCopyExternalRepresentation(v20, &error);
      if (v23)
      {
        v24 = v23;
        v47 = v22;
        v25 = [(__CFData *)v22 mutableCopy];
        [v25 appendData:v24];
        v26 = *MEMORY[0x1E697B228];
        v52[0] = &unk_1F23B5120;
        v27 = *MEMORY[0x1E697B230];
        v51[0] = v26;
        v51[1] = v27;
        v46 = v25;
        v28 = [v25 copy];
        v52[1] = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

        v30 = SecKeyCopyKeyExchangeResult(v18, *MEMORY[0x1E697B0D8], v20, v29, &error);
        CFRelease(v20);
        CFRelease(v18);
        if (v30)
        {
          v48 = 0;
          v10 = PKECCV3EncryptDataWithDerivedSharedSecret(v30, v9, &v48);
          v31 = v48;
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            *a4 = SecKeyCopyExternalRepresentation(v19, &error);
            v32 = error;
            if (error)
            {
              if (a5)
              {
                v44 = error;
                *a5 = v32;
              }

              v10 = 0;
            }
          }

          CFRelease(v19);
        }

        else
        {
          CFRelease(v19);
          v32 = error;
          v42 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v54 = v32;
            _os_log_impl(&dword_1AD337000, v42, OS_LOG_TYPE_DEFAULT, "Error computing shared secret: %@", buf, 0xCu);
          }

          if (a5)
          {
            v43 = v32;
            v10 = 0;
            *a5 = v32;
          }

          else
          {
            v10 = 0;
          }
        }

        if (v30)
        {
          goto LABEL_40;
        }

LABEL_29:
        v41 = 0;
        goto LABEL_43;
      }

      v33 = v22;
      v36 = error;
      v39 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v36;
        _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "Error creating key data: %@", buf, 0xCu);
      }

      if (a5)
      {
        v40 = v36;
        *a5 = v36;
      }

      CFRelease(v20);
    }

    else
    {
      v33 = v21;
      v36 = error;
      v37 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v36;
        _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Error gettting public key or certificate key: %@", buf, 0xCu);
      }

      if (a5)
      {
        v38 = v36;
        *a5 = v36;
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (!v19)
      {
        goto LABEL_27;
      }
    }

    CFRelease(v19);
LABEL_27:
    CFRelease(v18);

LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

LABEL_40:
  if (trust)
  {
    CFRelease(trust);
  }

  v10 = v10;
  v41 = v10;
LABEL_43:

  return v41;
}

id PKECCV3EncryptDataWithDerivedSharedSecret(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v6, "length") + 16}];
  v20 = v5;
  v21 = v8;
  if (v7)
  {
    v9 = v8;
    if (v7 >= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v7;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(v5 length:{"bytes"), v10}];
    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(v5 length:{"bytes") + v10, v7 - v10}];
    [v11 bytes];
    [v11 length];
    [v12 bytes];
    [v12 length];
    [v6 bytes];
    [v6 length];
    [v9 mutableBytes];
    [v9 mutableBytes];
    [v6 length];
    v13 = CCCryptorGCMOneshotEncrypt();

    if (!v13)
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Successfully encrypted data with shared secret", buf, 2u);
      }

      v15 = v21;
      v16 = v21;
      v17 = v20;
      goto LABEL_15;
    }
  }

  else
  {
    v13 = -4308;
  }

  v18 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v13;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "CCCryptorStatus error: %d. Failed to encrypt data with shared secret", buf, 8u);
  }

  v17 = v5;
  v15 = v21;
  if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PassKit.encryptionError" code:1 userInfo:0];
    *a3 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_15:

  return v16;
}

id PKECCV3DecryptDataWithEphemeralPublicKey(void *a1, void *a2, __SecKey *a3, __CFError **a4)
{
  v31[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  error = 0;
  v9 = *MEMORY[0x1E697AD78];
  v10 = *MEMORY[0x1E697AD30];
  v30[0] = *MEMORY[0x1E697AD68];
  v30[1] = v10;
  v11 = *MEMORY[0x1E697AD40];
  v31[0] = v9;
  v31[1] = v11;
  v30[2] = *MEMORY[0x1E697AD50];
  v31[2] = &unk_1F23B50F0;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v13 = SecKeyCreateWithData(v7, v12, &error);
  v14 = SecKeyCopyPublicKey(a3);
  v15 = SecKeyCopyExternalRepresentation(v14, &error);
  if (error)
  {
    v16 = 0;
    v17 = 0;
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v25 = v8;
  v18 = [(__CFData *)v7 mutableCopy];
  [v18 appendData:v15];
  v19 = *MEMORY[0x1E697B228];
  v29[0] = &unk_1F23B5120;
  v20 = *MEMORY[0x1E697B230];
  v28[0] = v19;
  v28[1] = v20;
  v21 = [v18 copy];
  v29[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v16 = SecKeyCopyKeyExchangeResult(a3, *MEMORY[0x1E697B0D8], v13, v22, &error);
  if (error)
  {
    v17 = 0;
    v8 = v25;
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = 0;
  v8 = v25;
  v17 = PKECCV3DecryptDataWithDerivedSharedSecret(v16, v25, &v26);
  error = v26;
  if (v13)
  {
LABEL_6:
    CFRelease(v13);
  }

LABEL_7:
  if (v14)
  {
    CFRelease(v14);
  }

  v23 = error;
  if (a4)
  {
    v23 = error;
    *a4 = v23;
  }

  return v17;
}

id PKECCV3DecryptDataWithDerivedSharedSecret(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 length];
  v8 = [v6 length] - 16;
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v8];
  if (v7 && ((v21 = a3, v7 >= 0x10) ? (v10 = 16) : (v10 = v7), v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(v5 length:{"bytes"), v10}], v12 = objc_msgSend(objc_alloc(MEMORY[0x1E695DEF0]), "initWithBytes:length:", objc_msgSend(v5, "bytes") + v10, v7 - v10), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), objc_msgSend(v6, "bytes"), v13 = objc_msgSend(v9, "length"), v14 = objc_msgSend(v9, "mutableBytes"), v15 = objc_msgSend(v6, "bytes"), v20 = v15 + objc_msgSend(v9, "length"), v19 = v13, a3 = v21, v16 = CCCryptorGCMOneshotDecrypt(), v12, v11, !v16))
  {
    v17 = [v9 copy];
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:0];
    *a3 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id PKECCV3PerformKDF(void *a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = MEMORY[0x1E695DF88];
  v7 = a2;
  v8 = [[v6 alloc] initWithLength:32];
  [v7 bytes];
  [v7 length];

  if (CCKDFParametersCreateAnsiX963())
  {
    v9 = 1;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [v5 bytes];
    [v5 length];
    [v8 mutableBytes];
    v9 = CCDeriveKey() != 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A278];
    v15[0] = @"EC_v3 KDF failed.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a3 = [v10 errorWithDomain:@"com.apple.PassKit.decryptionError" code:1 userInfo:v11];
  }

LABEL_7:
  v12 = [v8 copy];

  return v12;
}

PKEncryptedDataObject *PKEncryptTransactionAuthenticationPasscodeWithSession(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v53 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v10 count];
  v13 = MEMORY[0x1E695E480];
  v51 = v10;
  if (!v12)
  {
    v18 = 0;
    v15 = 0;
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  error = 0;
  v14 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], [v10 firstObject]);
  v15 = v14;
  if (!v14)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v16 = SecCertificateCopyKey(v14);
  v17 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
  CFRelease(v15);
  if (v16)
  {
    v18 = SecKeyCopyExternalRepresentation(v16, &error);
    CFRelease(v16);
    if (error)
    {
      v15 = error;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v18 = 0;
    v15 = 0;
  }

LABEL_10:
  if (!(v15 | v18))
  {
    v19 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A278];
    v65[0] = @"Missing certificates";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v15 = [v19 errorWithDomain:@"com.apple.PassKit.encryptionError" code:1 userInfo:v20];
  }

  v50 = v11;
  v54 = v18;
  if (v15)
  {
    v21 = v9;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v52 = 0;
    goto LABEL_42;
  }

  error = 0;
  v28 = SecAccessControlCreateWithFlags(*v13, *MEMORY[0x1E697ABE8], 0x40000000uLL, &error);
  v15 = error;
  cf = v28;
  if (error)
  {
    v27 = 0;
LABEL_21:
    v52 = 0;
    v26 = 0;
    goto LABEL_22;
  }

  v62 = @"ock";
  v63 = MEMORY[0x1E695E118];
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  SecAccessControlSetConstraints();
  if (v11)
  {
    v30 = +[PKSecureElement primarySecureElementIdentifier];
    v58[3] = 0;
    v27 = SESKeyCreateWithSession();
    v15 = 0;
  }

  else
  {
    v58[2] = 0;
    v27 = SESKeyCreate();
    v15 = 0;
  }

  if (v15)
  {
    goto LABEL_21;
  }

  v58[1] = 0;
  v26 = SESKeyPublicKey();
  v32 = 0;
  if (v32)
  {
    v15 = v32;
    v52 = 0;
    goto LABEL_22;
  }

  v60 = &unk_1F23B5138;
  v61 = @"Encrypt Payment PIN";
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v58[0] = 0;
  v52 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v34 = [v52 evaluateAccessControl:cf operation:5 options:v33 error:v58];
  v15 = v58[0];

  if (v15)
  {
LABEL_22:
    v25 = 0;
    if (!v27)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (!v11)
  {
    v37 = [v52 externalizedContext];
    v57[1] = 0;
    v25 = SESKeyExchange();
    v15 = 0;

    if (!v27)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v35 = +[PKSecureElement primarySecureElementIdentifier];
  v36 = [v52 externalizedContext];
  v57[2] = 0;
  v25 = SESKeyExchangeWithSession();
  v15 = 0;

  if (v27)
  {
LABEL_23:
    if (v11)
    {
      v31 = +[PKSecureElement primarySecureElementIdentifier];
      SESKeyDeleteWithSession();

      goto LABEL_33;
    }

LABEL_32:
    SESKeyDelete();
  }

LABEL_33:
  if (v15)
  {
    v21 = v9;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    goto LABEL_40;
  }

  v48 = a5;
  v38 = [v26 mutableCopy];
  [v38 appendData:v54];
  v39 = [v38 copy];
  v57[0] = 0;
  v23 = PKECCV3PerformKDF(v25, v39, v57);
  v15 = v57[0];

  if (v15)
  {
    v21 = v9;
    v24 = 0;
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = v9;
    [v40 setObject:v9 forKeyedSubscript:@"PIN"];
    v41 = [v53 authenticationContext];
    v42 = [v41 nonce];
    v43 = [v42 hexEncoding];
    [v40 setObject:v43 forKeyedSubscript:@"nonce"];

    v44 = [v53 barcodeIdentifier];
    [v40 setObject:v44 forKeyedSubscript:@"barcodeIdentifier"];

    v56 = 0;
    v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v40 options:0 error:&v56];
    v15 = v56;

    if (!v15)
    {
      v55 = 0;
      v22 = PKECCV3EncryptDataWithDerivedSharedSecret(v23, v24, &v55);
      v15 = v55;
      goto LABEL_39;
    }
  }

  v22 = 0;
LABEL_39:
  a5 = v48;
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  if (a5)
  {
    v45 = v15;
    *a5 = v15;
  }

  v46 = 0;
  if (v17 && v26 && v22)
  {
    v46 = objc_alloc_init(PKEncryptedDataObject);
    [(PKEncryptedDataObject *)v46 setData:v22];
    [(PKEncryptedDataObject *)v46 setPublicKeyHash:v17];
    [(PKEncryptedDataObject *)v46 setEphemeralPublicKey:v26];
    [(PKEncryptedDataObject *)v46 setVersion:1];
  }

  return v46;
}

id PKAESGCMEncrypt(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 > 0x20 || ((1 << v5) & 0x101010000) == 0)
  {
    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *__buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Invalid AES key length", __buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    arc4random_buf(__buf, 0xCuLL);
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:__buf length:12];
    v8 = [v4 length];
    v9 = malloc_type_malloc(v8 + 16, 0x587D8334uLL);
    v10 = malloc_type_malloc(0x10uLL, 0x59AF49FCuLL);
    [v3 bytes];
    [v3 length];
    [v7 bytes];
    [v7 length];
    [v4 bytes];
    if (CCCryptorGCMOneshotEncrypt())
    {
      v11 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "AES decrypt failure", buf, 2u);
      }

      free(v9);
      free(v10);
      v12 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:{16, v8, v9, v10, 16}];
      v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v9 length:v8];
      v15 = objc_alloc_init(MEMORY[0x1E695DF88]);
      [v15 appendData:v7];
      [v15 appendData:v14];
      [v15 appendData:v13];
      v12 = [v15 copy];
    }
  }

  return v12;
}

id PKAESGCMDecrypt(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  if (v5 > 0x20 || ((1 << v5) & 0x101010000) == 0)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v9 = "Invalid AES key length";
      v10 = v22;
      goto LABEL_14;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_18;
  }

  v7 = [v4 length];
  if (v7 <= 0x1B)
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v9 = "Invalid cipher text length";
      v10 = &v21;
LABEL_14:
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v11 = v7;
  v8 = [v4 subdataWithRange:{0, 12}];
  v12 = [v4 subdataWithRange:{v11 - 16, 16}];
  v13 = [v4 subdataWithRange:{12, v11 - 28}];
  v14 = [v13 length];
  v15 = malloc_type_malloc(v14 + 16, 0x68923381uLL);
  [v3 bytes];
  [v3 length];
  [v8 bytes];
  [v13 bytes];
  v19 = [v12 bytes];
  if (CCCryptorGCMOneshotDecrypt())
  {
    v16 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "AES decrypt failure", buf, 2u);
    }

    free(v15);
    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:{v14, v14, v15, v19, 16}];
  }

LABEL_18:

  return v17;
}

void __PKGenerateSCRTFallbackCertificateAndKey_block_invoke(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    [v9 invalidate];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v12 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "PKGenerateSCRTFallbackCertificateAndKey_block_invoke";
    v17 = 2112;
    v18 = a2;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "%s with reference key: %@, certificates: %@, error: %@", &v15, 0x2Au);
  }

  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 description];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Failed to create BAA (SCRT) attestation: %@", &v15, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v14 = PKExtractBAACertificatesData(a2, v7);
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t PKApplicationMessageSourceFromString(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_44;
  }

  v5 = v3;
  v6 = v5;
  if (v5 != @"local")
  {
    v7 = [(__CFString *)v5 isEqualToString:@"local"];

    if (!v7)
    {

      v16 = v6;
      if (v16 == @"finance_kit" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"finance_kit"], v17, v18))
      {
        if (a2)
        {
          *a2 = 1;
        }

        goto LABEL_7;
      }

      v19 = v17;
      if (v19 == @"sharingManager" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"sharingManager"], v20, v21))
      {
        if (a2)
        {
          *a2 = 2;
        }

        goto LABEL_8;
      }

      v22 = v20;
      if (v22 == @"paymentService" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"paymentService"], v23, v24))
      {
        if (a2)
        {
          *a2 = 3;
        }

        goto LABEL_9;
      }

      v25 = v23;
      if (v25 == @"notificationManager" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"notificationManager"], v26, v27))
      {
        if (a2)
        {
          *a2 = 4;
        }

        goto LABEL_10;
      }

      v28 = v26;
      if (v28 == @"pendingProvisioningManager" || (v29 = v28, v30 = [(__CFString *)v28 isEqualToString:@"pendingProvisioningManager"], v29, v30))
      {
        if (a2)
        {
          *a2 = 5;
        }

        goto LABEL_11;
      }

      v31 = v29;
      if (v31 == @"passutil" || (v32 = v31, v33 = [(__CFString *)v31 isEqualToString:@"passutil"], v32, v33))
      {
        if (a2)
        {
          *a2 = 6;
        }

        goto LABEL_12;
      }

      v34 = v32;
      if (v34 == @"regionSpecificLogicManager" || (v35 = v34, v36 = [(__CFString *)v34 isEqualToString:@"regionSpecificLogicManager"], v35, v36))
      {
        if (a2)
        {
          *a2 = 7;
        }

        goto LABEL_13;
      }

      if (a2)
      {
        v15 = 0;
        *a2 = 0;
        goto LABEL_45;
      }

LABEL_44:
      v15 = 0;
      goto LABEL_45;
    }
  }

  if (a2)
  {
    *a2 = 0;
  }

  v8 = v6;
LABEL_7:

  v9 = v6;
LABEL_8:

  v10 = v6;
LABEL_9:

  v11 = v6;
LABEL_10:

  v12 = v6;
LABEL_11:

  v13 = v6;
LABEL_12:

  v14 = v6;
LABEL_13:

  v15 = 1;
LABEL_45:

  return v15;
}

__CFString *PKAccountSupportTopicTransactionSubtypeToString(uint64_t a1)
{
  v1 = @"other";
  if (a1 == 1)
  {
    v1 = @"appleRetail";
  }

  if (a1 == 2)
  {
    return @"appleServices";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAccountSupportTopicTransactionSubtypeForTransaction(void *a1)
{
  v1 = [a1 merchant];
  v2 = [v1 mapsBrand];
  v3 = [v2 identifier];

  if (v3 == 0x8111C8FF4A86922BLL)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 0xE9C62ACBF5623F6DLL);
  }
}

uint64_t PKDiscoveryObjectActionFromString(void *a1)
{
  v1 = a1;
  if ([@"dismiss" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"actOn" isEqualToString:v1])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKDiscoveryPassQualifierFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"peerPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"primaryCredit"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"any"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKDiscoveryPassQualifierToString(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79D9C70[a1 + 1];
  }
}

id PKTapToProvisionSupportedPaymentNetworks()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Visa", @"AmEx", @"MasterCard", 0}];

  return v0;
}

Class initSTSTapToProvisionParameters()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  result = objc_getClass("STSTapToProvisionParameters");
  qword_1EB5A0030 = result;
  getSTSTapToProvisionParametersClass[0] = STSTapToProvisionParametersFunction;
  return result;
}

void *__LoadSecureTransactionService_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/SecureTransactionService.framework/SecureTransactionService", 2);
  qword_1EB5A0038 = result;
  return result;
}

id initSTSNetworkNameAmex()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  v0 = dlsym(qword_1EB5A0038, "STSNetworkNameAmex");
  objc_storeStrong(&_MergedGlobals_1_5, *v0);
  _MergedGlobals_176 = STSNetworkNameAmexFunction;
  v1 = _MergedGlobals_1_5;

  return v1;
}

id initSTSNetworkNameDiscover()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  v0 = dlsym(qword_1EB5A0038, "STSNetworkNameDiscover");
  objc_storeStrong(&qword_1EB5A0018, *v0);
  off_1ED6D1100 = STSNetworkNameDiscoverFunction;
  v1 = qword_1EB5A0018;

  return v1;
}

id initSTSNetworkNameMastercard()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  v0 = dlsym(qword_1EB5A0038, "STSNetworkNameMastercard");
  objc_storeStrong(&qword_1EB5A0020, *v0);
  off_1ED6D1108 = STSNetworkNameMastercardFunction;
  v1 = qword_1EB5A0020;

  return v1;
}

id initSTSNetworkNameVisa()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  v0 = dlsym(qword_1EB5A0038, "STSNetworkNameVisa");
  objc_storeStrong(&qword_1EB5A0028, *v0);
  off_1ED6D1110 = STSNetworkNameVisaFunction;
  v1 = qword_1EB5A0028;

  return v1;
}

Class initSTSTapToProvisionReader()
{
  if (qword_1EB5A0040 != -1)
  {
    dispatch_once(&qword_1EB5A0040, &__block_literal_global_141);
  }

  result = objc_getClass("STSTapToProvisionReader");
  qword_1EB5A0048 = result;
  getSTSTapToProvisionReaderClass[0] = STSTapToProvisionReaderFunction;
  return result;
}

uint64_t requestTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"expressAutomaticSelectionCriteria"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"precursorPass"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPassUpgradePrecursorPassActionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"generic_reprovision"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"proofing"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"issuer_app"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"car_key_pairing"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dpan_id_signature"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKPassUpgradePrecursorPassActionGenericReprovisionSubTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"hsa2"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"strong_password"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"se_full"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"cvv"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"terms_and_conditions"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PDTrustedDeviceEnrollmentInfoProviderExportedInterface()
{
  if (qword_1ED6D1E58 != -1)
  {
    dispatch_once(&qword_1ED6D1E58, &__block_literal_global_144);
  }

  v1 = _MergedGlobals_240;

  return v1;
}

void __PDTrustedDeviceEnrollmentInfoProviderExportedInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CB48];
  v1 = _MergedGlobals_240;
  _MergedGlobals_240 = v0;
}

void sub_1AD89F3A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD89F85C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t PassEntriesValidateStructure(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v2 = v1;
      v3 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v11;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v11 != v5)
            {
              objc_enumerationMutation(v2);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v8 = PKLogFacilityTypeGetObject(0x2CuLL);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "ConsumerContext: pass entries are not a valid entity class", buf, 2u);
              }

              goto LABEL_18;
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v10 objects:v15 count:16];
          v7 = 1;
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v2 = PKLogFacilityTypeGetObject(0x2CuLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "ConsumerContext: pass entries is not a valid data structure", buf, 2u);
      }

LABEL_18:
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1AD89FF18(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AD8A06A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AD8A19E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8A1C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8A1EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8A2338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _interiorPointForCorner(uint64_t a1, double a2, double a3, double a4)
{
  if (a1 > 3)
  {
    v5 = a2 + a4;
    v6 = a4 - a3;
    if (a1 == 8)
    {
      a2 = v6;
    }

    if (a1 == 4)
    {
      return v5;
    }

    else
    {
      return a2;
    }
  }

  else if (a1 == 1)
  {
    return a3 + a4;
  }

  else
  {
    v4 = a4 - a2;
    if (a1 != 2)
    {
      return a2;
    }
  }

  return v4;
}

void sub_1AD8A4494(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1AD8A4BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PKCanMakePaymentsForIDS()
{
  result = PKSecureElementIsAvailable();
  if (result)
  {
    return PKInAppPaymentAllowed() != 0;
  }

  return result;
}

BOOL PKCanMakePayments()
{
  v0 = objc_alloc_init(PKInAppPaymentService);
  v1 = [(PKInAppPaymentService *)v0 secureElementStatus:0];

  return v1 && PKInAppPaymentAllowed() != 0;
}

void PKCanMakePaymentsWithCompletion(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(PKInAppPaymentService);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PKCanMakePaymentsWithCompletion_block_invoke;
  v4[3] = &unk_1E79DA310;
  v5 = v1;
  v3 = v1;
  [(PKInAppPaymentService *)v2 secureElementStatusWithCompletion:v4];
}

uint64_t __PKCanMakePaymentsWithCompletion_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = dispatch_group_create();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__49;
  v36[4] = __Block_byref_object_dispose__49;
  v37 = 0;
  v12 = objc_alloc_init(PKInAppPaymentService);
  dispatch_group_enter(v11);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke;
  v28[3] = &unk_1E79DA360;
  v34 = v38;
  v13 = v8;
  v29 = v13;
  v14 = v12;
  v30 = v14;
  v15 = v7;
  v31 = v15;
  v16 = v9;
  v32 = v16;
  v35 = v36;
  v17 = v11;
  v33 = v17;
  [(PKInAppPaymentService *)v14 paymentHardwareStatusWithType:1 completion:v28];
  v18 = dispatch_get_global_queue(21, 0);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke_2;
  v22[3] = &unk_1E79DA388;
  v23 = v15;
  v24 = v13;
  v25 = v10;
  v26 = v38;
  v27 = v36;
  v19 = v10;
  v20 = v13;
  v21 = v15;
  dispatch_group_notify(v17, v18, v22);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void sub_1AD8A6164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = [[PKPaymentValidationCacheKey alloc] initWithNetworks:v9 issuerCountryCodes:v10 capabilities:a3 webDomain:v11 paymentRequestType:v12];
  v14 = +[PKPaymentValidationCache sharedInstance];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType_block_invoke;
  v22[3] = &unk_1E79DA338;
  v15 = v9;
  v23 = v15;
  v24 = v10;
  v26 = v12;
  v27 = a3;
  v25 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = [v14 getResultForKey:v13 orCompute:v22];

  v20 = PKLogFacilityTypeGetObject(8uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v29 = "PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType";
    v30 = 2112;
    v31 = v15;
    v32 = 1024;
    v33 = a3;
    v34 = 1024;
    v35 = v19;
    _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "%s (%@, %x) returns %d", buf, 0x22u);
  }

  return v19;
}

uint64_t __PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!PKCanMakePayments())
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = _PKAllNetworks();
    v6 = _PKPaymentValidateUnion(@"PKPaymentRequest", v2, @"supportedNetworks", v3, v4, v5, 0, 1, 0, 0);

    v7 = (a1 + 40);
    if (![*(a1 + 40) count])
    {
      if (!v6)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = (a1 + 40);
    if (![*(a1 + 40) count])
    {
      goto LABEL_8;
    }
  }

  v8 = *v7;
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [MEMORY[0x1E695DF58] ISOCountryCodes];
  LOBYTE(v8) = _PKPaymentValidateUnion(@"PKPaymentRequest", v8, @"supportedCountries", v9, v10, v11, 1, 0, 0, 0);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (*(a1 + 32))
  {
    v12 = *(a1 + 32);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  v13 = [MEMORY[0x1E695DFD8] setWithArray:v12];
  v14 = +[PKPassLibrary sharedInstance];
  v15 = [v14 hasPassesWithSupportedNetworks:v13 merchantCapabilities:*(a1 + 64) issuerCountryCodes:*(a1 + 40) webDomain:*(a1 + 48) paymentRequestType:*(a1 + 56) isMultiTokensRequest:0];

  if (v15)
  {
    v16 = 1;
  }

  else
  {
    _os_feature_enabled_impl();
    if (_os_feature_enabled_impl())
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 64);
      v19 = v13;
      v20 = v17;
      if ((v18 & 0x80) != 0)
      {
        v22 = PKLogFacilityTypeGetObject(8uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "_PKHasProvisioningExtensionProducts";
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "%s returned on capability check: InstantFundsOut", buf, 0xCu);
        }

        v16 = 0;
      }

      else
      {
        v21 = +[PKPassLibrary sharedInstance];
        v16 = [v21 hasProvisioningExtensionsWithSupportedNetworks:v19 merchantCapabilities:v18 issuerCountryCodes:v20];

        v22 = PKLogFacilityTypeGetObject(8uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "_PKHasProvisioningExtensionProducts";
          v26 = 1024;
          v27 = v16;
          _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "%s got provisioning extensions: %d", buf, 0x12u);
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

uint64_t _PKPaymentValidateUnion(void *a1, void *a2, void *a3, objc_class *a4, uint64_t a5, void *a6, int a7, int a8, uint64_t a9, void *a10)
{
  v49 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a6;
  if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v38 = a8;
    v39 = a4;
    v40 = v18;
    v41 = v16;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v43;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v20);
          }

          if (a7)
          {
            if (([v19 containsObject:*(*(&v42 + 1) + 8 * i)] & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_24:
            v26 = 0;
            goto LABEL_26;
          }

          v23 = 1;
        }

        v22 = [v20 countByEnumeratingWithState:&v42 objects:v48 count:16];
        v26 = 1;
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v23 = 0;
      v26 = 1;
    }

LABEL_26:

    if (v38)
    {
      a4 = v39;
      if (v23 & v26)
      {
LABEL_28:
        v29 = 0;
        v34 = 1;
        v18 = v40;
        v16 = v41;
        goto LABEL_23;
      }
    }

    else
    {
      a4 = v39;
      if (v26)
      {
        goto LABEL_28;
      }
    }

    if ((a9 - 1) > 1)
    {
      v29 = 0;
      v18 = v40;
    }

    else
    {
      v36 = MEMORY[0x1E696AEC0];
      v18 = v40;
      v37 = _PKPaymentRequestGetDescriptivePropertyName(v40, a9, 0);
      v29 = [v36 stringWithFormat:@"%@ is not a supported value for %@", v20, v37];
    }

    v16 = v41;
  }

  else if ((a9 - 1) > 1)
  {
    v29 = 0;
  }

  else
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = _PKPaymentRequestGetDescriptivePropertyName(v18, a9, 0);
    v29 = [v27 stringWithFormat:@"Missing %@", v28];
  }

  if (a10)
  {
    if (!v29)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = NSStringFromClass(a4);
      v29 = [v30 stringWithFormat:@"%@ must contain an %@ property '%@' of objects of type '%@' within '%@'", v16, v31, v18, a4, v19];
    }

    v32 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = v29;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    *a10 = [v32 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v33];
  }

  v34 = 0;
LABEL_23:

  return v34;
}

id _PKAllNetworks()
{
  v6[34] = *MEMORY[0x1E69E9840];
  v6[0] = @"AmEx";
  v6[1] = @"Bancomat";
  v6[2] = @"Bancontact";
  v6[3] = @"PagoBancomat";
  v6[4] = @"CarteBancaire";
  v6[5] = @"CarteBancaires";
  v6[6] = @"CartesBancaires";
  v6[7] = @"ChinaUnionPay";
  v6[8] = @"Dankort";
  v6[9] = @"Discover";
  v6[10] = @"Eftpos";
  v6[11] = @"Electron";
  v6[12] = @"Elo";
  v6[13] = @"girocard";
  v6[14] = @"Himyan";
  v6[15] = @"Interac";
  v6[16] = @"iD";
  v6[17] = @"Jaywan";
  v6[18] = @"JCB";
  v6[19] = @"mada";
  v6[20] = @"Maestro";
  v6[21] = @"MasterCard";
  v6[22] = @"Meeza";
  v6[23] = @"Mir";
  v6[24] = @"MyDebit";
  v6[25] = @"NAPAS";
  v6[26] = @"BankAxept";
  v6[27] = @"PostFinanceAG";
  v6[28] = @"PrivateLabel";
  v6[29] = @"QUICPay";
  v6[30] = @"Suica";
  v6[31] = @"Visa";
  v6[32] = @"VPay";
  v6[33] = @"Barcode";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:34];
  v1 = PKAdditionalSupportedNetworks();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allKeys];
    v4 = [v0 arrayByAddingObjectsFromArray:v3];
  }

  else
  {
    v4 = v0;
  }

  return v4;
}

uint64_t PKCanMakePaymentsWithRemoteDevices()
{
  v0 = objc_alloc_init(PKContinuityPaymentService);
  v1 = [(PKContinuityPaymentService *)v0 canMakePaymentsWithRemoteDevices];

  return v1;
}

void __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 72) + 8) + 24) = [v3 canMakePayments];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if ([v3 canMakeRemotePayments])
    {
      goto LABEL_7;
    }

    v4 = _PKAllNetworks();
    *(*(*(a1 + 72) + 8) + 24) = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType(v4, 0, 31, *(a1 + 32), 0);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "canMakePayments(NO): %@", buf, 0xCu);
    }
  }

LABEL_7:
  v5 = *(a1 + 72);
  if (*(*(v5 + 8) + 24) == 1)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke_49;
    v10[3] = &unk_1E79D6680;
    v12 = *(a1 + 80);
    v13 = v5;
    v11 = *(a1 + 64);
    [v6 merchantStatusCheck:v8 merchantDomain:v7 sourceApplicationSecondaryIdentifier:v9 completion:v10];
  }

  else
  {
    dispatch_group_leave(*(a1 + 64));
  }
}

void __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke_49(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __PKCanMakePaymentsWithMerchantIdentifierDomainAndSourceApplication_block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = MEMORY[0x1E695DF90];
  v13 = @"result";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v6 dictionaryWithDictionary:v8];

  v10 = [MEMORY[0x1E696AAE8] mainBundle];
  v11 = [v10 PKSanitizedBundleIdentifier];

  if (v11)
  {
    [v9 setObject:v11 forKeyedSubscript:@"bundle"];
  }

  if (v4)
  {
    [v9 setObject:v4 forKeyedSubscript:@"merchantIdentifier"];
  }

  if (v5)
  {
    [v9 setObject:v5 forKeyedSubscript:@"domain"];
  }

  AnalyticsSendEvent();

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 64) + 8) + 40));
  }

  return result;
}

uint64_t PKHasRemoteDevices()
{
  v0 = objc_alloc_init(PKContinuityPaymentService);
  v1 = [(PKContinuityPaymentService *)v0 hasRemoteDevices];

  return v1;
}

uint64_t _PKPaymentValidateProperty(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = [v11 valueForKey:v12];
  v14 = v13;
  if (!a4 || v13)
  {
    if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a6)
      {
        v17 = MEMORY[0x1E696AEC0];
        if ((a5 - 1) > 1)
        {
          v18 = [objc_opt_class() description];
          [v17 stringWithFormat:@"%@ property '%@' must be of type '%@'", v18, v12, a3];
        }

        else
        {
          v18 = _PKPaymentRequestGetDescriptivePropertyName(v12, a5, 0);
          [v17 stringWithFormat:@"%@ is not a supported value for %@", v14, v18, v27];
        }
        v19 = ;

        v20 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        v29 = v19;
        v21 = MEMORY[0x1E695DF20];
        v22 = &v29;
        v23 = &v28;
        goto LABEL_16;
      }
    }

    else
    {
      a6 = 1;
    }
  }

  else if (a6)
  {
    v15 = MEMORY[0x1E696AEC0];
    if ((a5 - 1) > 1)
    {
      v16 = [objc_opt_class() description];
      [v15 stringWithFormat:@"%@ must contain a property '%@' of type '%@'", v16, v12, a3];
    }

    else
    {
      v16 = _PKPaymentRequestGetDescriptivePropertyName(v12, a5, 0);
      [v15 stringWithFormat:@"Missing %@", v16, v26, v27];
    }
    v19 = ;

    v20 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = v19;
    v21 = MEMORY[0x1E695DF20];
    v22 = v31;
    v23 = &v30;
LABEL_16:
    v24 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    *a6 = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v24];

    a6 = 0;
  }

  return a6;
}

uint64_t _PKPaymentIsValidCurrencyAmount(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:1 scale:PKDefaultFractionDigitsForCurrencyCode(v6) raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v9 = [v5 decimalNumberByRoundingAccordingToBehavior:v8];
    v10 = [v5 isEqualToNumber:v9];
    v11 = v10;
    if (a3 && (v10 & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Amount is not valid for specified currency. Amount: %@, Currency: %@", v5, v7];
      v13 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a3 = [v13 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v14];

      v11 = 0;
    }
  }

  else
  {
    if (!a3)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Currency amounts must have an amount and currency code. Amount: %@, Currency: %@", v5, v6];
    v15 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v15 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v9];
    *a3 = v11 = 0;
  }

LABEL_9:
  return v11;
}

uint64_t _PKPaymentValidatePropertyArray(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = a4;
  v16 = [v13 valueForKey:v14];
  if (!a5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v16 count])
  {
    if (![v16 count] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v16;
      v17 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v47 = a7;
        v45 = v16;
        v46 = v14;
        v19 = *v51;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v51 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = [a3 validatorWithObject:*(*(&v50 + 1) + 8 * i)];
            if (v15)
            {
              v15[2](v15, v21);
            }

            v49 = 0;
            v22 = [v21 isValidWithAPIType:a6 withError:&v49];
            v23 = v49;
            v24 = v23;
            if ((v22 & 1) == 0)
            {
              v14 = v46;
              v16 = v45;
              if (v47)
              {
                v28 = MEMORY[0x1E696AEC0];
                if ((a6 - 1) > 1)
                {
                  v29 = [objc_opt_class() description];
                  [v28 stringWithFormat:@"%@ must contain an NSArray property '%@' of valid objects of class %@", v29, v46, objc_msgSend(a3, "validatedClass")];
                }

                else
                {
                  v29 = _PKPaymentRequestGetDescriptivePropertyName(v46, a6, 1);
                  [v28 stringWithFormat:@"%@ must contain a sequence of valid items", v29, v42, v43];
                }
                v37 = ;

                v38 = MEMORY[0x1E696ABC0];
                v39 = *MEMORY[0x1E696AA08];
                v54[0] = *MEMORY[0x1E696A578];
                v54[1] = v39;
                v55[0] = v37;
                v55[1] = v24;
                v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
                *v47 = [v38 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v40];
              }

              v32 = obj;
              goto LABEL_37;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
          v25 = 1;
          if (v18)
          {
            continue;
          }

          break;
        }

        v14 = v46;
        v16 = v45;
      }

      else
      {
        v25 = 1;
      }

      v32 = obj;
      goto LABEL_38;
    }

    if (a7)
    {
      v30 = MEMORY[0x1E696AEC0];
      if ((a6 - 1) > 1)
      {
        v31 = [objc_opt_class() description];
        [v30 stringWithFormat:@"%@ must contain an NSArray property '%@' of valid objects of class %@", v31, v14, objc_msgSend(a3, "validatedClass")];
      }

      else
      {
        v31 = _PKPaymentRequestGetDescriptivePropertyName(v14, a6, 1);
        [v30 stringWithFormat:@"%@ is not a valid sequence", v31, v42, v43];
      }
      v32 = ;

      v33 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = v32;
      v34 = MEMORY[0x1E695DF20];
      v35 = &v58;
      v36 = &v57;
      goto LABEL_36;
    }
  }

  else if (a7)
  {
    v26 = MEMORY[0x1E696AEC0];
    if ((a6 - 1) > 1)
    {
      v27 = [objc_opt_class() description];
      [v26 stringWithFormat:@"%@ must contain an NSArray property '%@' of at least %tu valid objects of class %@", v27, v14, 1, objc_msgSend(a3, "validatedClass")];
    }

    else
    {
      v27 = _PKPaymentRequestGetDescriptivePropertyName(v14, a6, 1);
      [v26 stringWithFormat:@"%@ must contain at least %tu items", v27, 1, v43, v44];
    }
    v32 = ;

    v33 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60[0] = v32;
    v34 = MEMORY[0x1E695DF20];
    v35 = v60;
    v36 = &v59;
LABEL_36:
    v21 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];
    *a7 = [v33 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v21];
LABEL_37:

    v25 = 0;
LABEL_38:

    goto LABEL_39;
  }

  v25 = 0;
LABEL_39:

  return v25;
}

uint64_t _PKPaymentValidatePropertyMembership(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = [v11 valueForKey:v12];
  if (!v14 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v15) = 0;
    if (!a6)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v16 = MEMORY[0x1E696AEC0];
    if ((a5 - 1) > 1)
    {
      v18 = [objc_opt_class() description];
      [v16 stringWithFormat:@"%@ must contain a property '%@' of type '%@' within '%@'", v18, v12, a3, v13];
    }

    else
    {
      v17 = _PKPaymentRequestGetDescriptivePropertyName(v12, a5, 0);
      v18 = v17;
      if (v15)
      {
        [v16 stringWithFormat:@"%@ is not a supported value for %@", v14, v17, v24, v25];
      }

      else
      {
        [v16 stringWithFormat:@"Missing %@", v17, v23, v24, v25];
      }
    }
    v19 = ;

    v20 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = v19;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *a6 = [v20 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v21];

    goto LABEL_13;
  }

  v15 = 1;
  if (([v13 containsObject:v14] & 1) == 0)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_14:

  return v15;
}

uint64_t _PKPaymentValidatePropertyUnion(void *a1, void *a2, objc_class *a3, uint64_t a4, void *a5, int a6, uint64_t a7, void *a8)
{
  v15 = a5;
  v16 = a2;
  v17 = a1;
  v18 = [objc_opt_class() description];
  v19 = [v17 valueForKey:v16];

  v20 = _PKPaymentValidateUnion(v18, v19, v16, a3, a4, v15, 1, a6, a7, a8);
  return v20;
}

uint64_t _PKPaymentValidateMerchantCapabilities(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = [v7 valueForKey:@"merchantCapabilities"];
  v9 = [v8 integerValue];

  if (v9)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFF60) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && (a3 == 8 || (v9 & 0x10) == 0))
  {
    if ((v9 & 3) != 2)
    {
      a4 = 1;
      goto LABEL_18;
    }

    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Payment request configured for EMV but not 3DS. Use this configuration only if requested to by your payment processor.", buf, 2u);
    }

    a4 = 1;
    goto LABEL_17;
  }

  if (a4)
  {
    v11 = MEMORY[0x1E696AEC0];
    if ((a2 - 1) > 1)
    {
      v12 = [objc_opt_class() description];
      [v11 stringWithFormat:@"%@ must have valid merchantCapabilities", v12];
    }

    else
    {
      v12 = _PKPaymentRequestGetDescriptivePropertyName(@"merchantCapabilities", a2, 0);
      [v11 stringWithFormat:@"Missing %@", v12];
    }
    v13 = ;

    v14 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a4 = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:v15];

    a4 = 0;
LABEL_17:
  }

LABEL_18:

  return a4;
}

__CFString *_PKPaymentRequestGetDescriptivePropertyName(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = v5;
  v7 = a2 - 1;
  v8 = v5;
  if (v7 <= 1)
  {
    if (([(__CFString *)v5 isEqualToString:@"countryCode"]& 1) != 0)
    {
      v8 = @"country code";
    }

    else if (([(__CFString *)v6 isEqualToString:@"currencyCode"]& 1) != 0)
    {
      v8 = @"currency codes";
    }

    else if (([(__CFString *)v6 isEqualToString:@"applicationData"]& 1) != 0)
    {
      v8 = @"application data";
    }

    else if (([(__CFString *)v6 isEqualToString:@"paymentSummaryItems"]& 1) != 0)
    {
      v8 = @"line items";
    }

    else if (([(__CFString *)v6 isEqualToString:@"shippingMethods"]& 1) != 0)
    {
      v8 = @"shipping methods";
    }

    else if (([(__CFString *)v6 isEqualToString:@"availableShippingMethods"]& 1) != 0)
    {
      v8 = @"available shipping methods";
    }

    else if (([(__CFString *)v6 isEqualToString:@"supportedNetworks"]& 1) != 0)
    {
      v8 = @"supported networks";
    }

    else if (([(__CFString *)v6 isEqualToString:@"merchantCapabilities"]& 1) != 0)
    {
      v8 = @"merchant capabilities";
    }

    else if (([(__CFString *)v6 isEqualToString:@"merchantIdentifier"]& 1) != 0)
    {
      v8 = @"merchant identifier";
    }

    else if (([(__CFString *)v6 isEqualToString:@"shippingEditable"]& 1) != 0)
    {
      v8 = @"shipping editable";
    }

    else
    {
      v8 = v6;
      if (![(__CFString *)v6 isEqualToString:@"supportedCountries"])
      {
        goto LABEL_25;
      }

      v8 = @"supported countries";
    }
  }

LABEL_25:
  if (a3)
  {
    [(__CFString *)v8 rangeOfComposedCharacterSequenceAtIndex:0];
    v10 = v9;
    v11 = [(__CFString *)v8 substringToIndex:v9];
    v12 = [v11 uppercaseString];
    v13 = [(__CFString *)v8 substringFromIndex:v10];
    v14 = [v12 stringByAppendingString:v13];

    v8 = v14;
  }

  return v8;
}

void sub_1AD8B2214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8B2BC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD8B3114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *AnalyticsVASReferralSource(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79DA700[a1];
  }
}

__CFString *AnalyticsVASErrorTypeForError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"PKIssuerBindingErrorDomain"];

  if (v3 && (v4 = [v1 code], (v4 - 1) <= 7))
  {
    v5 = off_1E79DA718[v4 - 1];
  }

  else
  {
    v5 = @"unknown";
  }

  return v5;
}

__CFString *AnalyticsRelevancyTypeForPass(void *a1)
{
  v1 = a1;
  v2 = [v1 upcomingPassInformation];

  if (v2)
  {
    v3 = @"multi-event";
  }

  else
  {
    v4 = [v1 relevantDates];
    v3 = @"singleDay";
    if ([v4 count] != 1)
    {
      v5 = [v4 firstObject];
      v6 = [v5 effectiveStartDate];

      v7 = [v4 lastObject];
      v8 = [v7 effectiveEndDate];

      if (![v6 isDateEqualToDateIgnoringTime:v8])
      {
        v3 = @"multiDay";
      }
    }
  }

  return v3;
}

uint64_t PKCloudStoreZoneInvitationStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"accepted")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"accepted"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"failed" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"failed"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_12;
    }

    v8 = v6;
    if (v8 == @"failedForceReAddParticipant" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"failedForceReAddParticipant"], v9, v10))
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_4:
  v4 = 1;
LABEL_12:

  return v4;
}

__CFString *PKCloudStoreZoneInvitationStatusToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"accepted";
  }

  else
  {
    return off_1E79DA8E8[a1];
  }
}

id PKIdentityErrorFromDIIdentityError(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6997D48]];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 < 9)
    {
      goto LABEL_8;
    }

    v5 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v1 code];
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKIdentityError received unexpected underlying code %ld", &v9, 0xCu);
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v1 domain];
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = [v1 code];
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKIdentityError received unexpected underlying error domain %@, code %ld", &v9, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKIdentityErrorDomain" code:v4 userInfo:0];

  return v7;
}

uint64_t PKAccountTransferStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"posted"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"scheduled"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"cancelled"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"pending"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"completed"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountTransferStateStringForState(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E79DA9B8[a1];
  }
}

uint64_t PKProtobufPaymentContentItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadData();
          v22 = 16;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadData();
          v22 = 8;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadData();
            v22 = 32;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadData();
            v22 = 24;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

PKPaymentRequest *_PKShareAuthorizationPaymentRequest(void *a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_43;
  }

  v5 = [v3 share];
  v6 = objc_alloc_init(PKPaymentRequest);
  [(PKPaymentRequest *)v6 setSuppressTotal:1];
  [(PKPaymentRequest *)v6 setRequestType:7];
  v7 = PKLocalizedString(&cfstr_Wallet_1.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedNavigationTitle:v7];

  [(PKPaymentRequest *)v6 setConfirmationStyle:1];
  v8 = PKLocalizedCredentialString(&cfstr_CarKeySharingC.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedConfirmationTitle:v8];

  v9 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedErrorMessage:v9];

  v10 = PKLocalizedPaymentString(&cfstr_InAppPaymentPr.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedAuthorizingTitle:v10];

  v11 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedCallbackErrorTitle:v11];

  v12 = PKLocalizedCredentialString(&cfstr_CarkeyCannotSh_0.isa, 0);
  [(PKPaymentRequest *)v6 setLocalizedCallbackErrorMessage:v12];

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!a2)
  {
    v19 = objc_alloc_init(PKPaymentContentItem);
    v20 = PKLocalizedCredentialString(&cfstr_CarKeySharingR.isa, 0);
    v21 = [v4 recipientNickname];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v27 = [v4 recipientHandle];
      v28 = v27;
      if (v27)
      {
        v23 = v27;
      }

      else
      {
        v31 = [v5 recipientNickname];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = [v5 recipientHandle];
        }

        v23 = v33;
      }
    }

    if (v20)
    {
      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20];
      [(PKPaymentContentItem *)v19 setTitle:v34];
    }

    v49 = v6;
    if (v23)
    {
      v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23];
      [(PKPaymentContentItem *)v19 setLabel:v35];
    }

    [v13 addObject:v19];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = v5;
    v36 = [v5 displayableSharedEntitlements];
    v37 = [v36 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v51;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v50 + 1) + 8 * i);
          v42 = objc_alloc_init(PKPaymentContentItem);
          v43 = [v41 localizedTitle];
          if (v43)
          {
            v44 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43];
            [(PKPaymentContentItem *)v42 setTitle:v44];

            v45 = [v41 localizedSubtitle];
            if (v45)
            {
              v46 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v45];
              [(PKPaymentContentItem *)v42 setLabel:v46];
            }
          }

          [v13 addObject:v42];
        }

        v38 = [v36 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v38);
    }

    v6 = v49;
    v5 = v48;
    goto LABEL_42;
  }

  v14 = [v5 credentialShares];
  v15 = [v14 firstObject];
  v16 = [v15 targetDevice];

  v17 = 0;
  if (v16 > 2)
  {
    if (v16 == 3 || v16 == 5)
    {
      IsAvailable = PKPearlIsAvailable();
      v25 = @"CAR_KEY_SHARING_PHONE_TOUCHID_CONFIRMATION";
      v26 = @"CAR_KEY_SHARING_PHONE_CONFIRMATION";
    }

    else
    {
      if (v16 != 4)
      {
        goto LABEL_20;
      }

      IsAvailable = PKPearlIsAvailable();
      v25 = @"CAR_KEY_SHARING_WATCH_TOUCHID_CONFIRMATION";
      v26 = @"CAR_KEY_SHARING_WATCH_CONFIRMATION";
    }

    if (IsAvailable)
    {
      v18 = v26;
    }

    else
    {
      v18 = v25;
    }

    goto LABEL_19;
  }

  if (v16 < 3)
  {
    v18 = @"CAR_KEY_SHARING_GENERAL_CONFIRMATION";
LABEL_19:
    v17 = PKLocalizedCredentialString(&v18->isa, 0);
  }

LABEL_20:
  v29 = objc_alloc_init(PKPaymentContentItem);
  v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v17];
  [(PKPaymentContentItem *)v29 setLabel:v30];

  [(PKPaymentContentItem *)v29 setCentered:1];
  [v13 addObject:v29];

LABEL_42:
  [(PKPaymentRequest *)v6 setPaymentContentItems:v13];

LABEL_43:

  return v6;
}

uint64_t PKPeerPaymentQuoteItemTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"topUp" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"transfer" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"cashOut" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"instantCashOut" isEqualToString:v1])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentQuoteItemTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DA9F0[a1 - 1];
  }
}

uint64_t PKPeerPaymentQuoteRiskLevelFromString(void *a1)
{
  v1 = a1;
  if ([@"low" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"medium" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"high" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentQuoteRiskLevelToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E79DAA10[a1 - 1];
  }
}

void sub_1AD8C3C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8C3EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKApplyVerificationTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"smsOTP")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [@"smsOTP" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"trialDeposit" || (v6 = v5, v7 = [@"trialDeposit" isEqualToString:v5], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKApplyContextTypeFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"fields"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"coreidv"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"documents"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"terms"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"action"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"info"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"complete"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"submitallfields"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"applicationrequired"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"verification"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"confirminfo"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKApplyVerificationTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DAA58[a1];
  }
}

id PKCacheDirectoryPath()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 length])
  {
    v4 = [v1 stringByAppendingPathComponent:v3];

    v1 = v4;
  }

  v5 = [v1 stringByAppendingPathComponent:@"com.apple.Passbook"];

  return v5;
}

uint64_t PKLibraryDirectoryPath()
{
  v0 = CPSharedResourcesDirectory();

  return [v0 stringByAppendingPathComponent:@"/Library/"];
}

id PKVASPassCacheDirectoryPath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"VASCache"];

  return v1;
}

id PKCIPDirectoryPath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"CIP/"];

  return v1;
}

id PKWalletAppDataPaths()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/"];
  v2 = [v1 stringByAppendingPathComponent:@"Preferences"];

  v3 = MEMORY[0x1E695DFF8];
  v4 = PKHomeDirectoryPath();
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];
  [v0 addObject:v5];

  v6 = MEMORY[0x1E695DFF8];
  v7 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/"];
  v8 = [v7 stringByAppendingPathComponent:@"Finance"];
  v9 = [v6 fileURLWithPath:v8 isDirectory:1];
  [v0 addObject:v9];

  v10 = MEMORY[0x1E695DFF8];
  v11 = [v2 stringByAppendingPathComponent:@"com.apple.FinanceKit.plist"];
  v12 = [v10 fileURLWithPath:v11 isDirectory:0];

  if ([v12 checkResourceIsReachableAndReturnError:0])
  {
    [v0 addObject:v12];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v12;
      _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "File did not exist at: %@", &v28, 0xCu);
    }
  }

  v14 = MEMORY[0x1E695DFF8];
  v15 = [v2 stringByAppendingPathComponent:@"com.apple.Wallet.plist"];
  v16 = [v14 fileURLWithPath:v15 isDirectory:0];

  if ([v16 checkResourceIsReachableAndReturnError:0])
  {
    [v0 addObject:v16];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v16;
      _os_log_error_impl(&dword_1AD337000, v17, OS_LOG_TYPE_ERROR, "File did not exist at: %@", &v28, 0xCu);
    }
  }

  v18 = MEMORY[0x1E695DFF8];
  v19 = [v2 stringByAppendingPathComponent:@"com.apple.passd.plist"];
  v20 = [v18 fileURLWithPath:v19 isDirectory:0];

  if ([v20 checkResourceIsReachableAndReturnError:0])
  {
    [v0 addObject:v20];
  }

  else
  {
    v21 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v20;
      _os_log_error_impl(&dword_1AD337000, v21, OS_LOG_TYPE_ERROR, "File did not exist at: %@", &v28, 0xCu);
    }
  }

  v22 = MEMORY[0x1E695DFF8];
  v23 = [v2 stringByAppendingPathComponent:@".GlobalPreferences.plist"];
  v24 = [v22 fileURLWithPath:v23 isDirectory:0];

  if ([v24 checkResourceIsReachableAndReturnError:0])
  {
    [v0 addObject:v24];
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v24;
      _os_log_error_impl(&dword_1AD337000, v25, OS_LOG_TYPE_ERROR, "File did not exist at: %@", &v28, 0xCu);
    }
  }

  v26 = [v0 copy];

  return v26;
}

void PKVerifyOrUpdateDirectoryFileProtection(void *a1, char a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (!v6)
  {
    v7 = v3;
    goto LABEL_38;
  }

  v7 = [v3 URLByResolvingSymlinksInPath];

  v8 = MEMORY[0x1E695DAF0];
  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v28 = *MEMORY[0x1E695DAF0];
    v52[0] = *MEMORY[0x1E695DAF0];
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v44 = 0;
    v30 = [v7 resourceValuesForKeys:v29 error:&v44];
    v9 = v44;

    if (!v30)
    {
      v11 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v49 = v7;
        v50 = 2114;
        v51 = v9;
        _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Error fetching %@ directory file protection. Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_35;
    }

    v31 = [v30 objectForKeyedSubscript:v28];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 isEqualToString:*MEMORY[0x1E695DAF8]];

      if (!v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }
  }

  v10 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v7;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Updating %@ directory file protection...", buf, 0xCu);
  }

  oslog = v10;

  v46 = *v8;
  v47 = *MEMORY[0x1E695DAE8];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v12 = [v11 allKeys];
  v34 = v7;
  v35 = v4;
  v13 = [v4 enumeratorAtURL:v7 includingPropertiesForKeys:v12 options:0 errorHandler:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);

        v39 = 0;
        v19 = [v18 resourceValuesForKeys:v12 error:&v39];
        v20 = v39;
        if (v11 && v19)
        {
          v21 = [v11 isEqual:v19];
        }

        else
        {
          v21 = v11 == v19;
        }

        if (v21)
        {
          v22 = v20 == 0;
        }

        else
        {
          v22 = 0;
        }

        if (v22 || ((v20, v38 = 0, v23 = [v18 setResourceValues:v11 error:&v38], v24 = v38, v23) ? (v25 = v24 == 0) : (v25 = 0), v25))
        {
          v9 = 0;
        }

        else
        {
          v9 = v24;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v49 = v18;
            v50 = 2114;
            v51 = v9;
            _os_log_error_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_ERROR, "PDServer: failed to update data protection for %@. Error: %{public}@", buf, 0x16u);
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v15);
  }

  v37 = 0;
  v7 = v34;
  v26 = [v34 setResourceValues:v11 error:&v37];
  v27 = v37;
  v9 = v27;
  if (!v26 || v27)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v34;
      v50 = 2114;
      v51 = v9;
      _os_log_error_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_ERROR, "PDServer: failed to update data protection for %@. Error: %{public}@", buf, 0x16u);
    }
  }

  v4 = v35;
LABEL_35:

LABEL_36:
LABEL_38:
}

void PKSharedCacheCreateDirectory(void *a1, void *a2)
{
  v3 = a2;
  v4 = _FixSharedCacheFileProtection_onceToken;
  v5 = a1;
  if (v4 != -1)
  {
    dispatch_once(&_FixSharedCacheFileProtection_onceToken, &__block_literal_global_152);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __PKSharedCacheCreateDirectory_block_invoke;
  v7[3] = &unk_1E79DA550;
  v8 = v3;
  v6 = v3;
  PKSharedCacheCreateDirectoryURL(v5, v7);
}

void PKSharedCacheCreateDirectoryURL(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DFF8];
  v5 = a1;
  v6 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/"];
  v7 = [v4 fileURLWithPath:v6];

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [&unk_1F23B4070 arrayByAddingObjectsFromArray:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      v15 = v7;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v7 = [v15 URLByAppendingPathComponent:*(*(&v16 + 1) + 8 * v14) isDirectory:{1, v16}];

        ++v14;
        v15 = v7;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v3[2](v3, v7);
}

void __PKSharedCacheCreateDirectory_block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = *MEMORY[0x1E696A3A0];
  v11[0] = *MEMORY[0x1E696A388];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = 0;
  v6 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:v5 error:&v9];
  v7 = v9;
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7, v3);
  }
}

void PKSharedCacheCreateFileURLReadOnly(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PKSharedCacheCreateFileURLReadOnly_block_invoke;
  v9[3] = &unk_1E79C86F8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  PKSharedCacheCreateDirectoryURL(a1, v9);
}

void __PKSharedCacheCreateFileURLReadOnly_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URLByAppendingPathComponent:*(a1 + 32) isDirectory:0];
  (*(*(a1 + 40) + 16))();
}

void PKSharedCacheCreateFileURLForWriting(void *a1, void *a2, void *a3)
{
  v5 = _FixSharedCacheFileProtection_onceToken;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = v8;
  if (v5 != -1)
  {
    dispatch_once(&_FixSharedCacheFileProtection_onceToken, &__block_literal_global_152);
    v8 = v9;
  }

  PKSharedCacheCreateFileURLReadOnly(v8, v7, v6);
}

void PKRemoteInstrumentThumbnailsCacheCreateDirectory(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B4088 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectory(v4, v3);
}

void PKRemoteInstrumentThumbnailsCacheCreateDirectoryURL(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B40A0 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectoryURL(v4, v3);
}

void PKRemoteInstrumentThumbnailsCacheCreateFileURLReadOnly(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B40B8 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLReadOnly(v7, v6, v5);
}

void PKRemoteInstrumentThumbnailsCacheCreateFileURLForWriting(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B40D0 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLForWriting(v7, v6, v5);
}

void PKPassAssetDownloadCacheCreateDirectory(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B40E8 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectory(v4, v3);
}

void PKPassAssetDownloadCacheCreateDirectoryURL(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B4100 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectoryURL(v4, v3);
}

void PKPassAssetDownloadCacheCreateFileURLReadOnly(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B4118 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLReadOnly(v7, v6, v5);
}

void PKPassAssetDownloadCacheCreateFileURLForWriting(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B4130 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLForWriting(v7, v6, v5);
}

void PKMapsSnapshotsCacheCreateDirectory(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B4148 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectory(v4, v3);
}

void PKMapsSnapshotsCacheCreateDirectoryURL(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v3 = a2;
  v4 = [&unk_1F23B4160 arrayByAddingObjectsFromArray:v2];
  PKSharedCacheCreateDirectoryURL(v4, v3);
}

void PKMapsSnapshotsCacheCreateFileURLReadOnly(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B4178 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLReadOnly(v7, v6, v5);
}

void PKMapsSnapshotsCacheCreateFileURLForWriting(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = a3;
  v6 = a2;
  v7 = [&unk_1F23B4190 arrayByAddingObjectsFromArray:v4];
  PKSharedCacheCreateFileURLForWriting(v7, v6, v5);
}

id PKObjectSettingsManagerArchivePath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"ObjectSettingsManager.archive"];

  return v1;
}

id PKObjectSettingsManagerSafeHavenArchivePath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"ObjectSettingsManager_safehaven.archive"];

  return v1;
}

id PKSharedWebServiceContextPath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PaymentWebServiceContext.archive"];

  return v1;
}

id PKSharedPeerPaymentWebServiceContextPath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PeerPaymentWebServiceContext.archive"];

  return v1;
}

id PKBackgroundWebServiceContextPath()
{
  v0 = PKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PaymentWebServiceBackgroundContext.archive"];

  return v1;
}

__CFString *PKProvisioningContinuityDiscoveryRequestTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"carKey";
  }

  else
  {
    return 0;
  }
}

BOOL PKProvisioningContinuityDiscoveryRequestTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v4 = 1;
  if (v1 != @"carKey")
  {
    if (!v1 || (v3 = [(__CFString *)v1 isEqualToString:@"carKey"], v2, !v3))
    {
      v4 = 0;
    }
  }

  return v4;
}

__CFString *PKAnalyticsReportBarcodeCredentialRetrivalStatusFromError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    v4 = [v3 isEqualToString:@"com.apple.PassKit.decryptionError"];

    if (v4)
    {
      v5 = @"decryptionError";
    }

    else
    {
      v5 = @"fetchBarcodeError";
    }
  }

  else
  {
    v5 = @"success";
  }

  return v5;
}

__CFString *PKBillPaymentSuggestedAmountListUnableReasonToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DAC80[a1];
  }
}

__CFString *PKPeerPaymentDeviceScoreEndpointIdentifierForEndpoint(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79DAD20[a1 - 1];
  }
}

uint64_t PKPeerPaymentDeviceScoreTransactionTypeForEndpoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    return 6;
  }

  if (a1 == 5)
  {
    if (a3 == 2)
    {
      return 8;
    }

    else
    {
      return 1;
    }
  }

  if ((a1 - 3) > 1)
  {
    return 0;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return 4;
      case 4:
        return 5;
      case 5:
        return 7;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      return 3;
    }

    return 0;
  }

  if (a3 == 2)
  {
    return 9;
  }

  else
  {
    return 2;
  }
}

id _FieldsByKey(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * j);
              v14 = [v13 key];
              if (v14)
              {
                [v2 setObject:v13 forKey:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  return v2;
}

void PKUpdateURLRequestWithSignatureDataAndInfo(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = [v6 platformIdentifier];
  if (v8)
  {
    [v5 setValue:v8 forHTTPHeaderField:@"x-apple-platform-identifier"];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Error: Could not set x-apple-platform-identifier header no value", buf, 2u);
    }
  }

  v10 = [v6 certificates];

  v11 = [v10 certificateOfType:0];
  if (v11)
  {
    [v5 setValue:v11 forHTTPHeaderField:@"CASD-ECC"];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_1AD337000, v12, OS_LOG_TYPE_ERROR, "Error: Could not set CASD-ECC header no value", v17, 2u);
    }
  }

  v13 = [v10 certificateOfType:1];
  if (v13)
  {
    [v5 setValue:v13 forHTTPHeaderField:@"CASD-RSA"];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_1AD337000, v14, OS_LOG_TYPE_ERROR, "Error: Could not set CSAD-RSA header no value", v16, 2u);
    }
  }

  v15 = [v7 hexEncoding];

  [v5 setValue:v15 forHTTPHeaderField:@"x-apple-signature"];
}

uint64_t PKPaymentSendOwnershipTokensRequestReasonFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"securityUpgrade")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"securityUpgrade"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"embargoRecovery" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"embargoRecovery"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKPaymentSendOwnershipTokensRequestReasonToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DB118[a1];
  }
}

__CFString *PKPaymentSetupInputMethodToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DB130[a1 - 1];
  }
}

id dictionaryFromSubcredentialEncryptedRequest(void *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 encryptionScheme];
  v3 = [v1 ephemeralPublicKey];
  v4 = [v1 publicKeyHash];
  v5 = [v1 data];

  v6 = 0;
  if (v1 && v2 && v3 && v4)
  {
    v9[0] = @"version";
    v9[1] = @"ephemeralPublicKey";
    v10[0] = v2;
    v10[1] = v3;
    v10[2] = v4;
    v9[2] = @"publicKeyHash";
    v9[3] = @"data";
    v7 = [v5 base64EncodedStringWithOptions:0];
    v10[3] = v7;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  }

  return v6;
}

id DIIdentityDocumentDescriptorFromPKIdentityDocumentDescriptor(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v2 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Received PKIdentityDriversLicenseDescriptor", &v13, 2u);
    }

    v3 = [v1 asDIIdentityDriversLicenseDescriptor];
LABEL_17:
    v9 = v3;
    goto LABEL_18;
  }

  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v4 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Received PKIdentityNationalIDCardDescriptor", &v13, 2u);
    }

    v3 = [v1 asDIIdentityNationalIDCardDescriptor];
    goto LABEL_17;
  }

  if ([v1 isMemberOfClass:objc_opt_class()])
  {
    v5 = PKLogFacilityTypeGetObject(0x1FuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Received PKIdentityPhotoIDDescriptor", &v13, 2u);
    }

    v3 = [v1 asDIIdentityPhotoIDDescriptor];
    goto LABEL_17;
  }

  v6 = [v1 isMemberOfClass:objc_opt_class()];
  v7 = PKLogFacilityTypeGetObject(0x1FuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Received PKIdentityAnyOfDescriptor", &v13, 2u);
    }

    v3 = [v1 asDIIdentityAnyOfDescriptor];
    goto LABEL_17;
  }

  if (v8)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Unknown PKIdentityDocumentDescriptor type %@", &v13, 0xCu);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

uint64_t PKTransitAppletCommutePlanStatusFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"ok"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"canceled"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"deactivated"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"deleted"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKTransitAppletCommutePlanStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DB198[a1 - 1];
  }
}

void sub_1AD8F5C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1AD8F7B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8FC88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8FCC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AD8FE464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8FF3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD8FFAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD900414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9011E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD90153C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD901F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1AD904AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD907C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD908094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9083CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD908828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD908C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD908FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD90939C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9097AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD90E6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD90EBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD90FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD910698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD910CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD917410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initNPKCompanionAgentConnection_3()
{
  if (qword_1EB5A03E0 != -1)
  {
    dispatch_once(&qword_1EB5A03E0, &__block_literal_global_1305);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1EB5A03D8 = result;
  getNPKCompanionAgentConnectionClass_3[0] = NPKCompanionAgentConnectionFunction_3;
  return result;
}

void *__LoadNanoPassKit_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 2);
  LoadNanoPassKit_frameworkLibrary_3 = result;
  return result;
}

void __dispatch_after_ar_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void PDSetDefaultPaymentPassUniqueIdentifier(void *a1)
{
  v1 = a1;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDSetDefaultPaymentPassUniqueIdentifier_block_invoke;
  block[3] = &unk_1E79C4E28;
  v7 = v1;
  v3 = v1;
  dispatch_sync(v2, block);

  PDSetDefaultPaymentPassCachedIngestionDate(0);
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"com.apple.passd.prefschanged" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.passkit.DefaultPaymentPass.changed", 0, 0, 1u);
}

uint64_t __PDSetDefaultPaymentPassUniqueIdentifier_block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDDefaultPaymentPassUniqueIdentifier", *(a1 + 32), @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetDefaultPaymentPassCachedIngestionDate(void *a1)
{
  v1 = a1;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDSetDefaultPaymentPassCachedIngestionDate_block_invoke;
  block[3] = &unk_1E79C4E28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

id PDUserSpecifiedDefaultPaymentPassUniqueIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__55;
  v8 = __Block_byref_object_dispose__55;
  v9 = 0;
  v0 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDUserSpecifiedDefaultPaymentPassUniqueIdentifier_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __PDUserSpecifiedDefaultPaymentPassUniqueIdentifier_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"PDUserSpecifiedDefaultPaymentPassUniqueIdentifierKey", @"com.apple.passd");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void PDSetUserSpecifiedDefaultPaymentPassUniqueIdentifier(void *a1)
{
  v1 = a1;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDSetUserSpecifiedDefaultPaymentPassUniqueIdentifier_block_invoke;
  block[3] = &unk_1E79C4E28;
  v6 = v1;
  v3 = v1;
  dispatch_sync(v2, block);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"com.apple.passd.prefschanged" object:0];
}

uint64_t __PDSetUserSpecifiedDefaultPaymentPassUniqueIdentifier_block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDUserSpecifiedDefaultPaymentPassUniqueIdentifierKey", *(a1 + 32), @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDDefaultPaymentPassCachedIngestionDate()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__55;
  v8 = __Block_byref_object_dispose__55;
  v9 = 0;
  v0 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDDefaultPaymentPassCachedIngestionDate_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __PDDefaultPaymentPassCachedIngestionDate_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"PDDefaultPaymentPassCachedIngestionDate", @"com.apple.passd", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __PDSetDefaultPaymentPassCachedIngestionDate_block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDDefaultPaymentPassCachedIngestionDate", *(a1 + 32), @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDLastPaymentPassInsertionOrRemovalDate()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__55;
  v8 = __Block_byref_object_dispose__55;
  v9 = 0;
  v0 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDLastPaymentPassInsertionOrRemovalDate_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __PDLastPaymentPassInsertionOrRemovalDate_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"PDLastPaymentPassInsertionOrRemovalDate", @"com.apple.passd", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void PDSetLastPaymentPassInsertionOrRemovalDate(void *a1)
{
  v1 = a1;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDSetLastPaymentPassInsertionOrRemovalDate_block_invoke;
  block[3] = &unk_1E79C4E28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

uint64_t __PDSetLastPaymentPassInsertionOrRemovalDate_block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDLastPaymentPassInsertionOrRemovalDate", *(a1 + 32), @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__55;
  v8 = __Block_byref_object_dispose__55;
  v9 = 0;
  v0 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v4;
  dispatch_sync(v0, block);

  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier", @"com.apple.passd");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void PDSetLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier(void *a1)
{
  v1 = a1;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDSetLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier_block_invoke;
  block[3] = &unk_1E79C4E28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

uint64_t __PDSetLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier_block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDLastUsedPeerPaymentAlternateFundingSourcePassUniqueIdentifier", *(a1 + 32), @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDLastUsedInAppFundingSourceForAccountIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__55;
    v12 = __Block_byref_object_dispose__55;
    v13 = 0;
    v2 = PDDefaultPassesQueue();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __PDLastUsedInAppFundingSourceForAccountIdentifier_block_invoke;
    v5[3] = &unk_1E79C8A88;
    v7 = &v8;
    v6 = v1;
    dispatch_sync(v2, v5);

    v3 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __PDLastUsedInAppFundingSourceForAccountIdentifier_block_invoke(uint64_t a1)
{
  v5 = CFPreferencesCopyAppValue(@"PDLastUsedInAppFundingSourceKey", @"com.apple.passd");
  v2 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void PDSetLastUsedInAppFundingSource(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = PDDefaultPassesQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __PDSetLastUsedInAppFundingSource_block_invoke;
    v7[3] = &unk_1E79C4DD8;
    v8 = v3;
    v9 = v5;
    dispatch_sync(v6, v7);
  }
}

void __PDSetLastUsedInAppFundingSource_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"PDLastUsedInAppFundingSourceKey", @"com.apple.passd");
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v7 = v5;

  [v7 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  v6 = [v7 copy];
  CFPreferencesSetAppValue(@"PDLastUsedInAppFundingSourceKey", v6, @"com.apple.passd");

  CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDExpressPassConfigurations(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__55;
  v25 = __Block_byref_object_dispose__55;
  v26 = 0;
  v2 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDExpressPassConfigurations_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v21;
  dispatch_sync(v2, block);

  if (!v22[5])
  {
    v13 = 0;
    goto LABEL_18;
  }

  v3 = objc_alloc(MEMORY[0x1E696ACD0]);
  v4 = v22[5];
  v19 = 0;
  v5 = [v3 initForReadingFromData:v4 error:&v19];
  v6 = v19;
  v7 = v19;
  v8 = v7;
  if (!v5 || v7)
  {
    v16 = PKLogFacilityTypeGetObject(0x34uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_error_impl(&dword_1AD337000, v16, OS_LOG_TYPE_ERROR, "Unable to read express pass archive: %@", buf, 0xCu);
    }

    if (a1)
    {
      objc_storeStrong(a1, v6);
    }
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v12 = *MEMORY[0x1E696A508];
    v18 = 0;
    v13 = [v5 decodeTopLevelObjectOfClasses:v11 forKey:v12 error:&v18];
    v14 = v18;
    v8 = v18;

    if (v8)
    {
      v15 = PKLogFacilityTypeGetObject(0x34uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_error_impl(&dword_1AD337000, v15, OS_LOG_TYPE_ERROR, "Failed to decode express state with error: %@", buf, 0xCu);
      }

      if (a1)
      {
        objc_storeStrong(a1, v14);
      }
    }

    [v5 finishDecoding];
    if (v13)
    {
      goto LABEL_17;
    }
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DFD8]);
LABEL_17:

LABEL_18:
  _Block_object_dispose(&v21, 8);

  return v13;
}

void sub_1AD919528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PDExpressPassConfigurations_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"PDExpressPasses-2", @"com.apple.stockholm");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

id PDExpressPassesInformation()
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__55;
  v18 = __Block_byref_object_dispose__55;
  v19 = 0;
  v0 = PDDefaultPassesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PDExpressPassesInformation_block_invoke;
  block[3] = &unk_1E79CB778;
  block[4] = &v14;
  dispatch_sync(v0, block);

  if (v15[5])
  {
    v1 = objc_alloc(MEMORY[0x1E696ACD0]);
    v2 = v15[5];
    v12 = 0;
    v3 = [v1 initForReadingFromData:v2 error:&v12];
    v4 = v12;
    v5 = v4;
    if (!v3 || v4)
    {
      v10 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Unable to read express pass archive: %@", buf, 0xCu);
      }

      v9 = 0;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E695DFD8]);
      v7 = objc_opt_class();
      v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
      v9 = [v3 decodeObjectOfClasses:v8 forKey:*MEMORY[0x1E696A508]];

      [v3 finishDecoding];
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

void sub_1AD91981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PDExpressPassesInformation_block_invoke(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"PDExpressPasses", @"com.apple.stockholm");
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = CFPreferencesCopyAppValue(@"PDExpressPasses", @"com.apple.passd");
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (PKRunningInPassd())
    {
      if (*(*(*(a1 + 32) + 8) + 40))
      {
        v8 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Migrating expressPassesInformation to com.apple.stockholm domain", v11, 2u);
        }

        _PDSetExpressPassesInformation(*(*(*(a1 + 32) + 8) + 40));
        CFPreferencesSetAppValue(@"PDExpressPasses", 0, @"com.apple.passd");
        CFPreferencesAppSynchronize(@"com.apple.passd");
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

uint64_t _PDSetExpressPassesInformation(void *a1)
{
  v1 = [a1 copy];
  CFPreferencesSetAppValue(@"PDExpressPasses", v1, @"com.apple.stockholm");

  return CFPreferencesAppSynchronize(@"com.apple.stockholm");
}

void PDSetExpressPassConfigurations(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [v1 copy];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * v7) passInformation];
        [v8 setForceModernEncoding:1];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v11 = *MEMORY[0x1E696A508];
  [v10 encodeObject:v3 forKey:*MEMORY[0x1E696A508]];
  [v10 finishEncoding];
  v12 = [v10 encodedData];

  objc_autoreleasePoolPop(v9);
  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v15 = [v3 pk_setByApplyingBlock:&__block_literal_global_157];
  [v14 encodeObject:v15 forKey:v11];
  [v14 finishEncoding];
  v16 = [v14 encodedData];

  objc_autoreleasePoolPop(v13);
  objc_autoreleasePoolPop(v2);
  v17 = PDDefaultPassesQueue();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __PDSetExpressPassConfigurations_block_invoke_2;
  v20[3] = &unk_1E79C4DD8;
  v21 = v12;
  v22 = v16;
  v18 = v16;
  v19 = v12;
  dispatch_sync(v17, v20);
}

uint64_t __PDSetExpressPassConfigurations_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  CFPreferencesSetAppValue(@"PDExpressPasses-2", v2, @"com.apple.stockholm");

  CFPreferencesAppSynchronize(@"com.apple.stockholm");
  v3 = *(a1 + 40);

  return _PDSetExpressPassesInformation(v3);
}

void PDSetContactlessPassesAvailable(uint64_t a1)
{
  v2 = [_MergedGlobals_244 BOOLValue];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4 = _MergedGlobals_244;
  _MergedGlobals_244 = v3;

  PKSharedCacheSetBoolForKey(a1, @"ContactlessPassesAvailable");
  if (v2 != a1)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PDContactlessPassesAvailableDidChangeNotification" object:0 userInfo:0];
  }
}

uint64_t PDContactlessPassesAvailable(int a1)
{
  if (qword_1ED6D1EC0 != -1)
  {
    dispatch_once(&qword_1ED6D1EC0, &__block_literal_global_125_2);
  }

  v2 = _MergedGlobals_244;
  if (!_MergedGlobals_244)
  {
    _UpdateSharedCacheValues(a1);
    v2 = _MergedGlobals_244;
  }

  return [v2 BOOLValue];
}

void _UpdateSharedCacheValues(int a1)
{
  v11 = _MergedGlobals_244;
  v2 = qword_1ED6D1EA8;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:PKSharedCacheGetBoolForKey(@"ContactlessPassesAvailable")];
  v4 = _MergedGlobals_244;
  _MergedGlobals_244 = v3;

  v5 = [MEMORY[0x1E696AD98] numberWithBool:PKSharedCacheGetBoolForKey(@"ContactlessPaymentPassesAvailable")];
  v6 = qword_1ED6D1EA8;
  qword_1ED6D1EA8 = v5;

  if (a1)
  {
    v7 = [v11 BOOLValue];
    if (v7 != [_MergedGlobals_244 BOOLValue])
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 postNotificationName:@"PDContactlessPassesAvailableDidChangeNotification" object:0 userInfo:0];
    }

    v9 = [v2 BOOLValue];
    if (v9 != [qword_1ED6D1EA8 BOOLValue])
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"PDContactlessPaymentPassesAvailableDidChangeNotification" object:0 userInfo:0];
    }
  }
}

void PDSetContactlessPaymentPassesAvailable(uint64_t a1)
{
  v2 = [qword_1ED6D1EA8 BOOLValue];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4 = qword_1ED6D1EA8;
  qword_1ED6D1EA8 = v3;

  PKSharedCacheSetBoolForKey(a1, @"ContactlessPaymentPassesAvailable");
  if (v2 != a1)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"PDContactlessPaymentPassesAvailableDidChangeNotification" object:0 userInfo:0];
  }
}

uint64_t PDContactlessPaymentPassesAvailable()
{
  if (qword_1ED6D1EC0 != -1)
  {
    dispatch_once(&qword_1ED6D1EC0, &__block_literal_global_125_2);
  }

  v0 = qword_1ED6D1EA8;
  if (!qword_1ED6D1EA8)
  {
    _UpdateSharedCacheValues(0);
    v0 = qword_1ED6D1EA8;
  }

  return [v0 BOOLValue];
}

uint64_t PDSetSanitizedAvailableWhileLocked(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDSanitizedAvailableWhileUnlocked", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

uint64_t PDSetMigratedAvailableWhileLocked(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDMigratedAvailableWhileLocked", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

uint64_t PDSetAvailableWhileLockedPreviousSetting(uint64_t a1)
{
  CFPreferencesSetAppValue(@"PDAvailableWhileLockedPreviousSetting", [MEMORY[0x1E696AD98] numberWithBool:a1], @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

uint64_t PDSetPaymentWebServicePushTopicsNeedingUpdate(void *a1)
{
  CFPreferencesSetAppValue(@"PDPaymentWebServicePushTopicsNeedingUpdate", [a1 allObjects], @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

id PDPaymentWebServicePushTopicsNeedingUpdate()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"PDPaymentWebServicePushTopicsNeedingUpdate", @"com.apple.passd", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v0 = v0;
    v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v1)
    {
      v2 = v1;
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v0);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

    if (v0)
    {
      v5 = [MEMORY[0x1E695DFD8] setWithArray:{v0, v7}];

      goto LABEL_15;
    }
  }

  else
  {
LABEL_13:
  }

  v5 = 0;
LABEL_15:

  return v5;
}

void PDSetPaymentSetupFeaturesAreDirty(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PDPaymentSetupFeaturesAreDirtyKey", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetSpotlightIndexNeedsIndexing(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  CFPreferencesSetAppValue(@"PDSpotlightIndexNeedsIndexing", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetUpgradePasscodeCheckedVersion(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  CFPreferencesSetAppValue(@"PDUpgradePasscodeCheckedVersion", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetUpgradeTasksVersion(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  CFPreferencesSetAppValue(@"PDUpgradeTasksVersion", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetUpgradeTasksRetryCount(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  CFPreferencesSetAppValue(@"PDUpgradeTasksRetryCount", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
}

double PDGetLastUnlockedTime(BOOL *a1)
{
  valuePtr = 0.0;
  v2 = CFPreferencesCopyAppValue(@"PDLastUnlockedTime", @"com.apple.passd");
  if (!v2)
  {
    v5 = 0;
    if (!a1)
    {
      return valuePtr;
    }

    goto LABEL_6;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFNumberGetTypeID();
  if (v5)
  {
    CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
  }

  CFRelease(v3);
  if (a1)
  {
LABEL_6:
    *a1 = v5;
  }

  return valuePtr;
}

uint64_t PDClearLastUnlockedTime()
{
  CFPreferencesSetAppValue(@"PDLastUnlockedTime", 0, @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

uint64_t PDClearWasLocked()
{
  CFPreferencesSetAppValue(@"PDWasLocked", 0, @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

void PDSetAuxiliaryCapabilityLastRemoteFetchTime(double a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetAppValue(@"PDAuxiliaryCapabilityLastRemoteFetchTimeKey", v1, @"com.apple.passd");
  CFPreferencesAppSynchronize(@"com.apple.passd");
  CFRelease(v1);
}

double PDAuxiliaryCapabilityLastRemoteFetchTime(BOOL *a1)
{
  valuePtr = 0.0;
  v2 = CFPreferencesCopyAppValue(@"PDAuxiliaryCapabilityLastRemoteFetchTimeKey", @"com.apple.passd");
  if (!v2)
  {
    v5 = 0;
    if (!a1)
    {
      return valuePtr;
    }

    goto LABEL_6;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFNumberGetTypeID();
  if (v5)
  {
    CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
  }

  CFRelease(v3);
  if (a1)
  {
LABEL_6:
    *a1 = v5;
  }

  return valuePtr;
}

id PDCloudStoreTransactionSourceControllerLastSync()
{
  v0 = CFPreferencesCopyValue(@"PDCloudStoreTransactionSourceControllerLastSyncKey", @"com.apple.passd", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  return v0;
}

uint64_t PDSetCloudStoreTransactionSourceControllerLastSync(CFPropertyListRef value)
{
  CFPreferencesSetAppValue(@"PDCloudStoreTransactionSourceControllerLastSyncKey", value, @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

BOOL PDDatabaseManagerHasPerformedContactlessActivationGroupingTypeRepair()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"PDDatabaseManagerHasPerformedContactlessActivationGroupingTypeRepairKey", @"com.apple.passd", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

uint64_t PDSetDatabaseManagerHasPerformedContactlessActivationGroupingTypeRepair(int a1)
{
  if (a1)
  {
    v1 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = 0;
  }

  CFPreferencesSetAppValue(@"PDDatabaseManagerHasPerformedContactlessActivationGroupingTypeRepairKey", v1, @"com.apple.passd");

  return CFPreferencesAppSynchronize(@"com.apple.passd");
}

void __PDDefaultPassesQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passd.preferences.defaultPasses", 0);
  v1 = qword_1ED6D1EB0;
  qword_1ED6D1EB0 = v0;
}

uint64_t PKAccountPromotionCompletionStepProgressTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"currency")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [@"currency" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"percent" || (v6 = v5, v7 = [@"percent" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"integer" || (v9 = v8, v10 = [@"integer" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"BOOLean" || (v12 = v11, v13 = [@"BOOLean" isEqualToString:v11], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

uint64_t PKTCCServiceForCapability(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return *MEMORY[0x1E69D55B8];
  }

  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_error_impl(&dword_1AD337000, v2, OS_LOG_TYPE_ERROR, "Failed to get TCC service for capability %ld", &v4, 0xCu);
  }

  return 0;
}

void sub_1AD91EDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD91F398(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  _Block_object_dispose((v2 - 176), 8);
  _Block_object_dispose((v2 - 216), 8);
  objc_destroyWeak((v2 - 184));
  _Unwind_Resume(a1);
}

id PDDeviceRegistrationServiceInterface()
{
  if (qword_1ED6D1ED0 != -1)
  {
    dispatch_once(&qword_1ED6D1ED0, &__block_literal_global_158);
  }

  v1 = _MergedGlobals_245;

  return v1;
}

void __PDDeviceRegistrationServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CBA8];
  v1 = _MergedGlobals_245;
  _MergedGlobals_245 = v0;

  v2 = _MergedGlobals_245;
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_performRegistrationForMemberOfRegions_withReason_completion_ argumentIndex:0 ofReply:0];
}

id PKDeviceRegistrationServiceInterface()
{
  if (qword_1ED6D1EE0 != -1)
  {
    dispatch_once(&qword_1ED6D1EE0, &__block_literal_global_70);
  }

  v1 = qword_1ED6D1ED8;

  return v1;
}

void __PKDeviceRegistrationServiceInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247CC08];
  v1 = qword_1ED6D1ED8;
  qword_1ED6D1ED8 = v0;
}

id PKAccountDisplayableError(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 domain];
  v11 = [v10 isEqualToString:@"PKDisplayableError"];

  if (!v11)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_19;
  }

  v12 = [v7 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v14 = [v7 localizedFailureReason];
  v15 = [v7 localizedRecoverySuggestion];
  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v14 == 0;
  }

  if (!v16)
  {
    v21 = v7;
LABEL_17:
    v20 = v14;
    v19 = v15;
    goto LABEL_18;
  }

  v21 = v13;

  if (v21)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && v15 != 0)
  {
    goto LABEL_17;
  }

  v19 = 0;
  v20 = 0;
LABEL_18:

  v7 = v21;
LABEL_19:
  v22 = [v7 domain];
  if ([v22 isEqualToString:*MEMORY[0x1E696A978]])
  {
    if ([v7 code] == -1009)
    {

LABEL_31:
      v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ERROR_OFFLINE_ERROR_TITLE", a2, 0, v23, v24, v25, v26, v27, v60);

      v47 = @"ACCOUNT_SERVICE_ERROR_OFFLINE_ERROR_MESSAGE";
LABEL_32:
      v48 = a2;
LABEL_33:
      v40 = PKLocalizedFeatureString(v47, v48, 0, v42, v43, v44, v45, v46, v61);
      goto LABEL_34;
    }

    v41 = [v7 code];

    if (v41 == -1001)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v28 = [v7 domain];
  v29 = [v28 isEqualToString:@"PKWebServiceErrorDomain"];

  if (v29)
  {
    if ([v7 code] > 5)
    {
      goto LABEL_36;
    }

    v35 = [v7 localizedFailureReason];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v36 = [v7 domain];
    v37 = [v36 isEqualToString:@"PKPaymentWebServiceErrorDomain"];

    if (!v37)
    {
      goto LABEL_36;
    }

    v38 = [v7 localizedFailureReason];

    if (!v38)
    {
      switch([v7 code])
      {
        case 60001:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PROVIDER_UNAVAILABLE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PROVIDER_UNAVAILABLE_ERROR_DESCRIPTION";
          goto LABEL_32;
        case 60003:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_LOCKED_RESTRICTED_ACCOUNT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_LOCKED_RESTRICTED_ACCOUNT_ERROR_DESCRIPTION";
          goto LABEL_32;
        case 60004:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_ROUTING_NUMBER_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_ROUTING_NUMBER_ERROR_MESSAGE";
          goto LABEL_32;
        case 60005:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_REDEEM_INSUFFFICIENT_BALANCE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_REDEEM_INSUFFFICIENT_BALANCE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60006:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_REDEEM_ACCOUNT_INVALID_STATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_REDEEM_ACCOUNT_INVALID_STATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60007:
          v59 = @"ACCOUNT_SERVICE_REDEEM_LIMIT_REACHED_ERROR_TITLE";
          goto LABEL_93;
        case 60008:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_REDEEM_ACCOUNT_INVALID_STATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_REDEEM_PEER_PAYMENT_ACCOUNT_INVALID_STATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60014:
          v39 = PKLocalizedFeatureString(@"APPLY_HSA2_ACCOUNT_REQUIRED_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"APPLY_HSA2_ACCOUNT_REQUIRED_ERROR_DESCRIPTION";
          goto LABEL_32;
        case 60015:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PAYMENT_AMOUNT_TOO_LOW_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PAYMENT_AMOUNT_TOO_LOW_ERROR_MESSAGE";
          goto LABEL_32;
        case 60016:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PAYMENT_AMOUNT_TOO_HIGH_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PAYMENT_AMOUNT_TOO_HIGH_ERROR_MESSAGE";
          goto LABEL_32;
        case 60017:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_PAYMENT_AMOUNT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_PAYMENT_AMOUNT_ERROR_MESSAGE";
          goto LABEL_32;
        case 60018:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_UNSUPPORTED_PAYMENT_CURRENCY_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_UNSUPPORTED_PAYMENT_CURRENCY_ERROR_MESSAGE";
          goto LABEL_32;
        case 60019:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_PAYMENT_PRESET_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_PAYMENT_PRESET_ERROR_MESSAGE";
          goto LABEL_32;
        case 60020:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_PAYMENT_FREQUENCY_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_PAYMENT_FREQUENCY_ERROR_MESSAGE";
          goto LABEL_32;
        case 60021:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_FUNDING_SOURCE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_FUNDING_SOURCE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60022:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_UNKNOWN_PAYMENT_FUNDING_SOURCE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_UNKNOWN_PAYMENT_FUNDING_SOURCE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60023:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_ACCOUNT_NUMBER_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_ACCOUNT_NUMBER_ERROR_MESSAGE";
          goto LABEL_32;
        case 60024:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_INVALID_BANK_ACCOUNT_TYPE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_INVALID_BANK_ACCOUNT_TYPE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60025:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_INVALID_DATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_INVALID_DATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60026:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_UNSUPPORTED_PAST_DATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_UNSUPPORTED_PAST_DATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60027:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_UNSUPPORTED_FUTURE_DATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_UNSUPPORTED_FUTURE_DATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60028:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DUPLICATE_PAYMENT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_DUPLICATE_PAYMENT_ERROR_MESSAGE";
          goto LABEL_32;
        case 60029:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_TOO_MANY_PAYMENTS_FOR_DATE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_TOO_MANY_PAYMENTS_FOR_DATE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60030:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_TOO_MANY_SCHEDULED_PAYMENTS_TOTAL_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_TOO_MANY_SCHEDULED_PAYMENTS_TOTAL_ERROR_MESSAGE";
          goto LABEL_32;
        case 60031:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_TERMS_AND_CONDITIONS_MISSING_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_TERMS_AND_CONDITIONS_MISSING_ERROR_MESSAGE";
          goto LABEL_32;
        case 60032:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_TERMS_AND_CONDITIONS_INVALID_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_TERMS_AND_CONDITIONS_INVALID_ERROR_MESSAGE";
          goto LABEL_32;
        case 60033:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PAYMENT_AMOUNT_DOES_NOT_MATCH_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PAYMENT_AMOUNT_DOES_NOT_MATCH_ERROR_MESSAGE";
          goto LABEL_32;
        case 60034:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ERROR_SUPPORTED_FEATURE_FORBIDDEN_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_ERROR_SUPPORTED_FEATURE_FORBIDDEN_ERROR_MESSAGE";
          goto LABEL_32;
        case 60035:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ENCRYPTION_CERTIFICATE_VALIDATION_FAILED_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_ENCRYPTION_CERTIFICATE_VALIDATION_FAILED_ERROR_MESSAGE";
          goto LABEL_32;
        case 60036:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DECRYPTION_FAILURE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_DECRYPTION_FAILURE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60037:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_NO_DATA_PROVIDED_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_NO_DATA_PROVIDED_ERROR_MESSAGE";
          goto LABEL_32;
        case 60042:
          v39 = PKLocalizedFeatureString(@"POBOX_NOT_ACCEPTABLE_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"POBOX_NOT_ACCEPTABLE_MESSAGE";
          goto LABEL_32;
        case 60043:
          v39 = PKLocalizedPaymentString(&cfstr_InvalidStreet1.isa, 0);

          v58 = @"INVALID_STREET1_MESSAGE";
          goto LABEL_99;
        case 60044:
          v39 = PKLocalizedPaymentString(&cfstr_InvalidStreet2.isa, 0);

          v58 = @"INVALID_STREET2_MESSAGE";
          goto LABEL_99;
        case 60050:
          v39 = PKLocalizedPaymentString(&cfstr_InvalidPostalC.isa, 0);

          v58 = @"INVALID_POSTAL_CODE_MESSAGE";
          goto LABEL_99;
        case 60051:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_FUNDING_SOURCE_USED_FOR_PAYMENT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_FUNDING_SOURCE_USED_FOR_PAYMENT_ERROR_MESSAGE";
          goto LABEL_32;
        case 60052:
          v39 = PKLocalizedPaymentString(&cfstr_InvalidCityTit.isa, 0);

          v58 = @"INVALID_CITY_MESSAGE";
          goto LABEL_99;
        case 60053:
          v39 = PKLocalizedPaymentString(&cfstr_InvalidStateTi.isa, 0);

          v58 = @"INVALID_STATE_MESSAGE";
LABEL_99:
          v40 = PKLocalizedPaymentString(&v58->isa, 0);
          goto LABEL_34;
        case 60054:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PAYMENT_CANCELLATION_FAILED_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PAYMENT_CANCELLATION_FAILED_ERROR_MESSAGE";
          goto LABEL_32;
        case 60055:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_CANNOT_DELETE_PAYMENT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_CANNOT_DELETE_PAYMENT_ERROR_MESSAGE";
          goto LABEL_32;
        case 60061:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ACCOUNT_ACTION_NOT_PERMITTED_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_ACCOUNT_ACTION_NOT_PERMITTED_ERROR_MESSAGE";
          goto LABEL_32;
        case 60062:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DUPLICATE_FUNDING_SOURCE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_DUPLICATE_FUNDING_SOURCE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60063:
          v59 = @"ACCOUNT_SERVICE_AUTOMATIC_PAYMENTS_ALREADY_SET_UP_ERROR_TITLE";
LABEL_93:
          v39 = PKLocalizedFeatureString(v59, a2, 0, v30, v31, v32, v33, v34, v60);
          goto LABEL_35;
        case 60064:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_APPLE_CASH_INSUFFICIENT_FUNDS_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_APPLE_CASH_INSUFFICIENT_FUNDS_ERROR_MESSAGE";
          goto LABEL_32;
        case 60065:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_APPLE_CASH_INVALID_ACCOUNT_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_APPLE_CASH_INVALID_ACCOUNT_ERROR_MESSAGE";
          goto LABEL_32;
        case 60066:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PHYSICAL_CARD_ACTIVATION_ERROR_TITLE", 2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PHYSICAL_CARD_NOT_YET_SHIPPED";
          goto LABEL_101;
        case 60067:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PHYSICAL_CARD_ACTIVATION_ERROR_TITLE", 2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PHYSICAL_CARD_ALREADY_ACTIVATED";
          goto LABEL_101;
        case 60068:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_PHYSICAL_CARD_ACTIVATION_ERROR_TITLE", 2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_PHYSICAL_CARD_INVALID_ACTIVATION_CODE";
          goto LABEL_101;
        case 60078:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_MERGE_INITIATED_ERROR_TITLE", 2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_MERGE_INITIATED_ERROR_MESSAGE";
LABEL_101:
          v48 = 2;
          goto LABEL_33;
        case 60088:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_MAXIMUM_FUNDING_SOURCE_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_MAXIMUM_FUNDING_SOURCE_ERROR_MESSAGE";
          goto LABEL_32;
        case 60090:
          v39 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_FUNDING_SOURCE_USED_FOR_TRANSFER_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);

          v47 = @"ACCOUNT_SERVICE_FUNDING_SOURCE_USED_FOR_TRANSFER_ERROR_MESSAGE";
          goto LABEL_32;
        default:
          goto LABEL_36;
      }
    }
  }

  v39 = [v7 localizedFailureReason];

  v40 = [v7 localizedRecoverySuggestion];
LABEL_34:
  v20 = v19;
  v19 = v40;
LABEL_35:

  v20 = v39;
LABEL_36:
  if (!(v20 | v19))
  {
    if (v8)
    {
      v49 = v8;
    }

    else
    {
      v49 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ERROR_GENERIC_ERROR_TITLE", a2, 0, v30, v31, v32, v33, v34, v60);
    }

    v20 = v49;
    if (v9)
    {
      v55 = v9;
    }

    else
    {
      v55 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_ERROR_GENERIC_ERROR_MESSAGE", a2, 0, v50, v51, v52, v53, v54, v60);
    }

    v19 = v55;
  }

  v56 = PKDisplayableErrorCustomWithType(-1, v20, v19, v7, 0);

  return v56;
}

uint64_t PKAccountCredentialType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 4)
  {
    v7 = 135;
  }

  else if (a1 == 2)
  {
    v5 = [v3 creditDetails];
    v6 = [v5 cardType];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *PKAccountHeroImageName(uint64_t a1)
{
  v1 = @"AppleBalance_Hero";
  if (a1 != 4)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"Hero_Apply-CCS";
  }

  else
  {
    return v1;
  }
}

__CFString *PKEngagementDashboardPlacementForFeature(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) <= 4 && ((0x1Bu >> v2))
  {
    v3 = *off_1E79DC028[v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *PKEngagementDashboardPlacementForPass(void *a1)
{
  v1 = [a1 secureElementPass];
  v2 = [v1 associatedAccountFeatureIdentifier];
  v3 = [v1 cardType];
  if (v2)
  {
    v4 = PKEngagementDashboardPlacementForFeature(v2);
LABEL_7:
    v8 = v4;
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v5 = [v1 devicePrimaryPaymentApplication];
    v6 = [v5 state];

    v7 = @"thirdPartyPassDashboardPlacement";
    if (v6 != 1)
    {
      v7 = 0;
    }

    v4 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

id PKLightweightAppleBalanceAccountDict(void *a1, void *a2, void *a3)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v22[0] = a1;
  v21[0] = @"accountIdentifier";
  v21[1] = @"featureIdentifier";
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = PKFeatureIdentifierToString(4);
  v22[1] = v8;
  v21[2] = @"accountType";
  v9 = PKAccountTypeToString(3uLL);
  v22[2] = v9;
  v21[3] = @"accountDetails";
  v19[0] = @"currencyCode";
  v10 = [v6 currency];
  v19[1] = @"accountSummary";
  v20[0] = v10;
  v17 = @"currentBalance";
  v11 = [v6 amount];

  v12 = [v11 stringValue];
  v18 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21[4] = @"cloudStoreZoneNames";
  v22[3] = v14;
  v22[4] = v5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];

  return v15;
}

id PKProvisioningErrorForAppleBalanceEligibilityStatus(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0;
      goto LABEL_10;
    }

    if (a1 == 6)
    {
      v1 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_3.isa, 0);
      v2 = @"ELIGIBILITY_ERROR_BALANCE_TOO_LOW_MESSAGE";
    }

    else
    {
      v1 = PKLocalizedAppleBalanceString(&cfstr_ApplyGenericEr.isa, 0);
      v2 = @"APPLY_GENERIC_ERROR_MESSAGE";
    }

    v4 = PKLocalizedAppleBalanceString(&v2->isa, 0);
    v3 = PKDisplayableErrorCustomWithType(-1, v1, v4, 0, 0);
  }

  else
  {
    v1 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_5.isa, 0);
    v4 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_6.isa, 0);
    v11[0] = *MEMORY[0x1E696A590];
    v5 = PKLocalizedAppleBalanceString(&cfstr_EligibilityErr_7.isa, 0);
    v10 = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    v12[0] = v6;
    v12[1] = MEMORY[0x1E695E118];
    v11[1] = @"PKDisplayableErrorIsPreferredActionKey";
    v11[2] = @"PKErrorRecoveryURL";
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/"];
    v12[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    v3 = PKDisplayableErrorCustomWithType(-1, v1, v4, 0, v8);
  }

LABEL_10:

  return v3;
}

BOOL PKCanShowAppleBalanceTopUpOptions(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 state];
  v5 = [v3 effectiveContactlessPaymentApplicationState];

  return v4 == 1 && (v5 - 1) < 2;
}

uint64_t PKVerifySignatureForInStoreTopUpToken(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (PKAppleBalanceInStoreSignatureVerificationDisabled())
  {
    v2 = 1;
    goto LABEL_20;
  }

  cf = 0;
  trust = 0;
  v3 = [v1 certificateChain];
  v4 = PKCreateAndValidateTrustWithCertsUsingMarkerOIDs(v3, &trust);

  if (!v4)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v1;
      v8 = "Failed to validate certificate chain for Apple Balance top up token: %@";
LABEL_11:
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }

LABEL_12:
    v6 = 0;
LABEL_13:

    v2 = 0;
    goto LABEL_14;
  }

  v5 = SecTrustCopyKey(trust);
  if (!v5)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v1;
      v8 = "Failed to retrieve verification key from certificate chain trust for Apple Balance top up token: %@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = v5;
  if (!SecKeyVerifySignature(v5, *MEMORY[0x1E697B108], [v1 payload], objc_msgSend(v1, "signature"), &cf))
  {
    v7 = CFErrorCopyDescription(cf);
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v1;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to verify signature for Apple Balance top up token: %@, error: %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v2 = 1;
LABEL_14:
  if (trust)
  {
    CFRelease(trust);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_20:

  return v2;
}

id PKAccountSupportTopicURLFromActionString(void *a1)
{
  v1 = a1;
  if ([@"savings" isEqualToString:v1])
  {
    v2 = @"savings";
    goto LABEL_11;
  }

  if ([@"savingsDetails" isEqualToString:v1])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = PKURLActionRouteSavingsDetails;
  }

  else if ([@"savingsAddMoney" isEqualToString:v1])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = PKURLActionRouteSavingsAddMoney;
  }

  else
  {
    if (![@"savingsAddMoney" isEqualToString:v1])
    {
      if ([@"savingsAddBankAccount" isEqualToString:v1])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = PKURLActionRouteSavingsAddBankAccount;
      }

      else if ([@"savingsAccountInformation" isEqualToString:v1])
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = PKURLActionRouteSavingsAccountInfo;
      }

      else
      {
        if (![@"savingsDocuments" isEqualToString:v1])
        {
          v5 = 0;
          goto LABEL_24;
        }

        v10 = MEMORY[0x1E696AEC0];
        v11 = PKURLActionRouteSavingsDocuments;
      }

      [v10 stringWithFormat:@"%@/%@/%@", @"savings", @"details", *v11];
      goto LABEL_10;
    }

    v3 = MEMORY[0x1E696AEC0];
    v4 = PKURLActionRouteSavingsWithdrawMoney;
  }

  [v3 stringWithFormat:@"%@/%@", @"savings", *v4, v13];
  v2 = LABEL_10:;
LABEL_11:
  v5 = v2;
  if (v2)
  {
    if (+[PKWalletVisibility isWalletVisible])
    {
      v6 = @"shoebox://";
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/", @"wallet.apple.com"];
    }

    v7 = MEMORY[0x1E695DFF8];
    v8 = [(__CFString *)v6 stringByAppendingString:v5];
    v9 = [v7 URLWithString:v8];

    goto LABEL_25;
  }

LABEL_24:
  v9 = 0;
LABEL_25:

  return v9;
}

uint64_t PKSavingsAccountIsThresholdExceededActive(void *a1)
{
  v1 = a1;
  v2 = [v1 savingsDetails];
  if (v2 && [v1 state] != 4 && objc_msgSend(v2, "fccStepUpRequired"))
  {
    v3 = [v2 fccStepUpDetails];
    v4 = [v3 thresholdExceeded];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL PKAccountEligibleForIdentifierSubstringMatching(void *a1)
{
  v1 = a1;
  v2 = [v1 feature] == 2 && objc_msgSend(v1, "isSharedAccount") && objc_msgSend(v1, "accessLevel") == 2 && objc_msgSend(v1, "state") == 4 && objc_msgSend(v1, "stateReason") == 13;

  return v2;
}

uint64_t PKAccountIdentifierIsSubstring(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 accountIdentifier];
  v5 = [v3 containsString:v4];

  return v5;
}

__CFString *PKAppletSubcredentialKeyClassToString(uint64_t a1)
{
  v1 = @"private";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"fleet";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialKeyClassFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"private")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"private"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"fleet" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"fleet"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

__CFString *PKAppletSubcredentialCredentialAuthorityTypeToString(uint64_t a1)
{
  v1 = @"secure-element";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return @"server";
  }

  else
  {
    return v1;
  }
}

uint64_t PKAppletSubcredentialCredentialAuthorityTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"secure-element")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"secure-element"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"server" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"server"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

void PKAppletSubcredentialMergeDeviceCredential(void *a1, void *a2)
{
  v24 = a1;
  v3 = a2;
  v4 = [v3 endpointIdentifier];
  [v24 setEndpointIdentifier:v4];

  if (![v24 credentialType])
  {
    [v24 setCredentialType:{objc_msgSend(v3, "credentialType")}];
  }

  v5 = [v3 pairedReaderIdentifier];
  [v24 setPairedReaderIdentifier:v5];

  v6 = [v3 partnerIdentifier];
  [v24 setPartnerIdentifier:v6];

  if (![v24 allSupportedRadioTechnologies])
  {
    [v24 setAllSupportedRadioTechnologies:{objc_msgSend(v3, "allSupportedRadioTechnologies")}];
  }

  if (![v24 supportedRadioTechnologies])
  {
    [v24 setSupportedRadioTechnologies:{objc_msgSend(v3, "supportedRadioTechnologies")}];
  }

  v7 = [v3 originatorIDSHandle];
  [v24 setOriginatorIDSHandle:v7];

  v8 = [v3 sharingSessionIdentifier];
  [v24 setSharingSessionIdentifier:v8];

  [v24 setIsOnlineImmobilizerToken:{objc_msgSend(v3, "isOnlineImmobilizerToken")}];
  [v24 setCarKeyVehicleVersion:{objc_msgSend(v3, "carKeyVehicleVersion")}];
  [v24 setCarKeyServerVersion:{objc_msgSend(v3, "carKeyServerVersion")}];
  [v24 setKeyClass:{objc_msgSend(v3, "keyClass")}];
  [v24 setCredentialAuthorityType:{objc_msgSend(v3, "credentialAuthorityType")}];
  v9 = [v3 transactionKey];
  v10 = [v9 copy];
  [v24 setTransactionKey:v10];

  v11 = [v3 transactionKeyCertificateChain];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v11 copyItems:1];
    [v24 setTransactionKeyCertificateChain:v12];
  }

  v13 = [v3 brandIdentifier];
  if (v13)
  {
    [v24 setBrandIdentifier:v13];
  }

  v14 = [v3 sharingFriendlyName];
  v15 = v24;
  if (v14)
  {
    [v24 setSharingFriendlyName:v14];
    v15 = v24;
  }

  v16 = [v15 sharingConfiguration];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_alloc_init(PKAppletSubcredentialSharingConfiguration);
  }

  v19 = v18;

  v20 = [(PKAppletSubcredentialSharingConfiguration *)v19 activationOptions];
  v21 = [v3 sharingConfiguration];
  v22 = [v21 activationOptions];
  v23 = [PKPassShareActivationOptions optionsFromRemoteOptions:v20 localOptions:v22];

  [(PKAppletSubcredentialSharingConfiguration *)v19 setActivationOptions:v23];
  [v24 setSharingConfiguration:v19];
  [v24 setIsManagedByTSM:{objc_msgSend(v3, "isManagedByTSM")}];
}

Class initFairPlayPassbookProvisioningObjC()
{
  if (qword_1ED6D1EF0 != -1)
  {
    dispatch_once(&qword_1ED6D1EF0, &__block_literal_global_160);
  }

  result = objc_getClass("FairPlayPassbookProvisioningObjC");
  _MergedGlobals_246 = result;
  getFairPlayPassbookProvisioningObjCClass[0] = FairPlayPassbookProvisioningObjCFunction;
  return result;
}

void *__LoadMarketplaceKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MarketplaceKit.framework/MarketplaceKit", 2);
  LoadMarketplaceKit_frameworkLibrary = result;
  return result;
}

void sub_1AD928828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1AD928D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9294AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id _zeroCurrencyAmount(void *a1)
{
  v1 = [a1 devicePrimaryContactlessPaymentApplication];
  v2 = [v1 appletCurrencyCode];

  if (v2)
  {
    v3 = [MEMORY[0x1E696AB90] zero];
    v4 = PKCurrencyAmountCreate(v3, v2, 0);
    v5 = [v4 formattedStringValue];
  }

  else
  {
    v5 = PKLocalizedPaymentString(&cfstr_TransitTransac_0.isa, 0);
  }

  return v5;
}

uint64_t PKDefaultFractionDigitsForCurrencyCode(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  defaultFractionDigits = 0;
  if (CFNumberFormatterGetDecimalInfoForCurrencyCode(v1, &defaultFractionDigits, 0))
  {
    v2 = defaultFractionDigits & ~(defaultFractionDigits >> 31);
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Couldn't get decimal info for currency code '%@'", buf, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

PKCurrencyAmount *PKCurrencyAmountCreate(NSDecimalNumber *a1, NSString *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [[PKCurrencyAmount alloc] initWithAmount:v6 currency:v5 exponent:a3];

  return v7;
}

id PKCurrencyAmountCreateScaled(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = PKDecimalAmountFromAmount(a1, v5);
  v7 = PKCurrencyAmountCreate(v6, v5, a3);

  return v7;
}

id PKDecimalAmountFromAmount(void *a1, void *a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = a2;
    v5 = [a1 longLongValue];
    v6 = PKMaximumFractionDigitsForCurrencyCode(v4);

    if (v5 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = -v5;
    }

    v3 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v7 exponent:-v6 isNegative:v5 >> 63];
  }

  return v3;
}

id PKUsageNotificationClientInterface()
{
  if (qword_1ED6D1F10 != -1)
  {
    dispatch_once(&qword_1ED6D1F10, &__block_literal_global_162);
  }

  v1 = _MergedGlobals_248;

  return v1;
}

void __PKUsageNotificationClientInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F23CBCE8];
  v1 = _MergedGlobals_248;
  _MergedGlobals_248 = v0;

  v2 = _MergedGlobals_248;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_usedPaymentPassWithUniqueIdentifier_transactionIdentifier_info_ argumentIndex:2 ofReply:0];

  v9 = _MergedGlobals_248;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  [v9 setClasses:v15 forSelector:sel_usedPaymentPassWithTransactionIdentifier_info_ argumentIndex:1 ofReply:0];
}

uint64_t PKProtobufPaymentTokenContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            v22 = 48;
            goto LABEL_47;
          case 2:
            v21 = PBReaderReadString();
            v22 = 32;
            goto LABEL_47;
          case 3:
            v21 = PBReaderReadString();
            v22 = 56;
LABEL_47:
            v24 = *(a1 + v22);
            *(a1 + v22) = v21;

            goto LABEL_48;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v23 = objc_alloc_init(PKProtobufCustomPrecisionAmount);
          objc_storeStrong((a1 + 16), v23);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufCustomPrecisionAmountReadFrom(v23, a2))
          {
LABEL_55:

            return 0;
          }

          goto LABEL_45;
        }

        if (v13 == 7)
        {
          v23 = objc_alloc_init(PKProtobufNSDecimalNumber);
          objc_storeStrong((a1 + 24), v23);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !PKProtobufNSDecimalNumberReadFrom(v23, a2))
          {
            goto LABEL_55;
          }

LABEL_45:
          PBReaderRecallMark();

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v21 = PBReaderReadString();
          v22 = 40;
          goto LABEL_47;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_53:
          *(a1 + 8) = -(v20 & 1) ^ (v20 >> 1);
          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id PKCredentialRoutingInformationFromPairedEntityIdentifer(void *a1, id *a2, id *a3)
{
  v5 = a1;
  v6 = [v5 rangeOfString:@"." options:4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v6;
    v11 = [v5 rangeOfString:@"." options:4 range:{0, v6}];
    v7 = 0;
    v8 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v7 = [v5 substringToIndex:v11];
      v8 = [v5 substringWithRange:{v12 + 1, 4}];
    }

    v9 = [v5 substringFromIndex:v10 + 1];
  }

  if (![v9 length] || !objc_msgSend(v7, "length"))
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  if (a2)
  {
    objc_storeStrong(a2, v9);
  }

  if (v8)
  {
    objc_storeStrong(a3, v8);
  }

  return v7;
}

id PKManufacturerIdentifierFromCredentialRoutingInformation(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] == 3)
  {
    v2 = [v1 objectAtIndexedSubscript:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKVehicleInitiatedPairingLaunchURL(void *a1, char a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = MEMORY[0x1E695DF70];
  v9 = a1;
  v10 = objc_alloc_init(v8);
  v11 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"brand" value:v9];

  [v10 addObject:v11];
  v12 = objc_alloc(MEMORY[0x1E696AF60]);
  v13 = PKRadioTechnologiesToString(a2);
  v14 = [v12 initWithName:@"supportedRadioTechnologies" value:v13];
  [v10 addObject:v14];

  v15 = objc_alloc(MEMORY[0x1E696AF60]);
  v16 = PKSubcredentialPairingReferralSourceToString(a4);
  v17 = [v15 initWithName:@"referralSource" value:v16];
  [v10 addObject:v17];

  if (v7)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pti" value:v7];
    [v10 addObject:v18];
  }

  v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v19 setScheme:@"wallet"];
  [v19 setHost:@"setup"];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", @"carkey-pairing"];
  [v19 setPath:v20];

  [v19 setQueryItems:v10];
  v21 = [v19 URL];

  return v21;
}

__CFString *PKSubcredentialPairingReferralSourceToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79DC210[a1 - 1];
  }
}

uint64_t PKSubcredentialPairingReferralSourceFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"oemApp"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"vehicle"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"carPlay"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"externalLink"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"walletMoreMenu"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"walletTile"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"addToRemoteDevice"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"remoteDeviceSetup"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PKLocalizedCarIssuerNameFromIssuerIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 supportedRegionFeatureOfType:2 didFailOSVersionRequirements:0];
    v7 = [v6 localizedNameForIssuerWithIdentifier:v3];
    v8 = v7;
    if (v7 && [v7 length])
    {

      goto LABEL_7;
    }
  }

  v8 = PKLocalizedCredentialString(&cfstr_GenericPartner.isa, 0);
LABEL_7:

  return v8;
}

BOOL PKFieldPropertiesCanLookupSecondaryProperties(void *a1)
{
  v1 = a1;
  if (([v1 technology] & 8) != 0 && objc_msgSend(v1, "terminalType") == 1 && objc_msgSend(v1, "valueAddedServiceMode") > 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 accessTerminalSubtype] == 2 && objc_msgSend(v1, "pairingRequested") == 0;
  }

  return v2;
}

uint64_t PKFieldPropertiesStartSecondaryLookup(void *a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = PKAssociatedAIDForField(v5);
    v8 = v7;
    if (a3)
    {
      *a3 = 0;
    }

    if (v7)
    {
      v9 = [v6 appletWithIdentifier:v7];
      if (v9)
      {
        v21 = 0;
        v10 = [v6 setActivePaymentApplet:v9 error:&v21];
        v11 = v21;
        if ((v10 & 1) == 0)
        {
          v12 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v23 = v5;
            v24 = 2048;
            v25 = v6;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties lookup failed to set active applet. Error: %@", buf, 0x20u);
          }
        }

        if (a3)
        {
          *a3 = 1;
        }
      }

      else
      {
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v23 = v5;
          v24 = 2048;
          v25 = v6;
          v26 = 2112;
          v27 = v8;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties lookup failed to find applet with aid: %@", buf, 0x20u);
        }

        [v5 setSecondaryPropertiesAcquired:1];
        v10 = 0;
      }

      if (!v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v10 = 1;
      if (!v6)
      {
        goto LABEL_22;
      }
    }

    if (v10 && ([v6 setHostCards:0] & 1) == 0)
    {
      v17 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v23 = v5;
        v24 = 2048;
        v25 = v6;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties lookup failed to clear active VAS cards.", buf, 0x16u);
      }

      goto LABEL_34;
    }

LABEL_22:
    if (!v10)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v20 = 0;
    if (v8)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v6 startCardEmulation:v15 authorization:0 error:&v20];
    v17 = v20;
    if (v16)
    {
      v13 = 1;
LABEL_35:

      goto LABEL_36;
    }

    v18 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v23 = v5;
      v24 = 2048;
      v25 = v6;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties failed to start Card Emulation. Error: %@", buf, 0x20u);
    }

LABEL_34:
    v13 = 0;
    goto LABEL_35;
  }

  v13 = 0;
LABEL_37:

  return v13;
}

{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = PKAssociatedAIDForField(v5);
    v8 = v7;
    if (a3)
    {
      *a3 = 0;
    }

    if (!v7)
    {
      goto LABEL_13;
    }

    v9 = [v6 appletWithIdentifier:v7];
    if (v9)
    {
      v10 = v9;
      v11 = [v5 credentialIdentifier];
      v21 = 0;
      v12 = [v6 setActiveApplet:v10 key:v11 outError:&v21];
      v13 = v21;

      if ((v12 & 1) == 0)
      {
        v14 = PKLogFacilityTypeGetObject(7uLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v23 = v5;
          v24 = 2048;
          v25 = v6;
          v26 = 2112;
          v27 = v13;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties lookup failed to set active applet. Error: %@", buf, 0x20u);
        }
      }

      if (a3)
      {
        *a3 = 1;
      }

      if (v12)
      {
LABEL_13:
        v20 = 0;
        v15 = [v6 startCardEmulationAuthorization:0 deferred:0 error:&v20];
        v16 = v20;
        if ((v15 & 1) == 0)
        {
          v17 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v23 = v5;
            v24 = 2048;
            v25 = v6;
            v26 = 2112;
            v27 = v16;
            _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties failed to start Card Emulation. Error: %@", buf, 0x20u);
          }
        }

        goto LABEL_23;
      }
    }

    else
    {
      v18 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v23 = v5;
        v24 = 2048;
        v25 = v6;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "PKFieldProperties (%p/%p): secondary properties lookup failed to find applet with aid: %@", buf, 0x20u);
      }

      [v5 setSecondaryPropertiesAcquired:1];
    }

    v15 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v15 = 0;
LABEL_24:

  return v15;
}

__CFString *PKAssociatedAIDForField(void *a1)
{
  if ([a1 accessTerminalSubtype] == 2)
  {
    v1 = @"A000000809434343444B417631";
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void PKFieldPropertiesResolveSecondaryLookup(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) merchantId];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [v3 setMerchantIdentifiers:v12];

    [v3 setSecondaryPropertiesAcquired:1];
  }
}

{
  v9 = a1;
  v3 = a2;
  if (v9)
  {
    v4 = [v3 result];
    if (v4 == 61446)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [v9 setPairingRequested:v5];
    if ([v3 background])
    {
      [v9 setBackgroundTransaction:1];
    }

    else if (v4 != 61445)
    {
LABEL_9:
      [v9 setSecondaryPropertiesAcquired:1];
      goto LABEL_10;
    }

    v6 = [v3 applet];
    v7 = [v6 identifier];
    [v9 setApplicationIdentifier:v7];

    v8 = [v3 keyIdentifier];
    [v9 setCredentialIdentifier:v8];

    goto LABEL_9;
  }

LABEL_10:
}

{
  v10 = a1;
  v3 = a2;
  if (v10)
  {
    v4 = [v3 result];
    v5 = [v3 brandCode];
    [v10 setCarKeyBrandCode:{objc_msgSend(v5, "integerValue")}];

    if (v4 == 61446)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v10 setPairingRequested:v6];
    if (v4 == 61445)
    {
      v7 = [v3 applet];
      v8 = [v7 identifier];
      [v10 setApplicationIdentifier:v8];

      v9 = [v3 keyIdentifier];
      [v10 setCredentialIdentifier:v9];
    }

    [v10 setSecondaryPropertiesAcquired:1];
  }
}

uint64_t PKFieldPropertiesStartSecondaryLookup(PKFieldProperties *a1, STSSession *a2, BOOL *a3)
{
  if (a1 && a3)
  {
    *a3 = 0;
  }

  return 0;
}

void sub_1AD9352C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD935534(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1AD9357DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSFDeviceDiscovery()
{
  if (qword_1ED6D1F20 != -1)
  {
    dispatch_once(&qword_1ED6D1F20, &__block_literal_global_164);
  }

  result = objc_getClass("SFDeviceDiscovery");
  _MergedGlobals_249 = result;
  getSFDeviceDiscoveryClass[0] = SFDeviceDiscoveryFunction;
  return result;
}

void *__LoadSharing_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  LoadSharing_frameworkLibrary = result;
  return result;
}

uint64_t PKAccountFundingSourceVerificationStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"eligible"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ineligible"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"sent"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"failed"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountFundingSourceVerificationStatusToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E79DC398[a1];
  }
}

uint64_t PKAccountFundingSourceVerificationFailureReasonFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"sendFailed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"expired"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"maxVerificationAttemptsHit"])
  {
    v2 = 4;
  }

  else
  {
    v2 = v1 == 0;
  }

  return v2;
}

__CFString *PKAccountFundingSourceVerificationFailureReasonToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return qword_1E79DC360[a1 - 1];
  }
}

uint64_t PKAccountFundingSourceVerificationActionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"contactSupport"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"retry"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKAccountFundingSourceVerificationActionTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E79DC380[a1];
  }
}

id PKGEOLocationFromCLLocation(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 coordinate], CLLocationCoordinate2DIsValid(v6)))
  {
    v3 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithCLLocation:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Class initMKWalletMerchantLookupRequest()
{
  if (qword_1ED6D1F30 != -1)
  {
    dispatch_once(&qword_1ED6D1F30, &__block_literal_global_166);
  }

  result = objc_getClass("MKWalletMerchantLookupRequest");
  _MergedGlobals_250 = result;
  getMKWalletMerchantLookupRequestClass[0] = MKWalletMerchantLookupRequestFunction;
  return result;
}

void *__LoadMapKit_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary_3 = result;
  return result;
}

void sub_1AD938F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKProtobufDeferredPaymentSummaryItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v18 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:&v18 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1AD93D2F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

__CFString *PKAnalyticsReportSwitchToggleResultValue(int a1)
{
  if (a1)
  {
    return @"true";
  }

  else
  {
    return @"false";
  }
}

__CFString *PKPaymentAuthorizationStateMachineCancelReasonToString(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"user";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"host";
  }
}

void sub_1AD940F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD941254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD9416F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ConfigurationFromV0(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a2 && v5)
  {
    v8 = [PKPassAutomaticSelectionCriterion criterionForExpressMode:a1];
    if (v8)
    {
      v9 = v8;
      v17[0] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v11 = [PKExpressPassCredentialEntry alloc];
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v9, 0}];
      v13 = [(PKExpressPassCredentialEntry *)v11 initWithSelectionCriteria:v12 readerIdentifier:0 associatedReaders:0];

      if (v13)
      {
        v15 = v10;
        v16 = v13;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void ExtractV0Format(void *a1, id *a2, id *a3)
{
  v5 = a1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__59;
  v18 = __Block_byref_object_dispose__59;
  v19 = v5[2];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__59;
  v12 = __Block_byref_object_dispose__59;
  v13 = 0;
  v6 = v5[1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __ExtractV0Format_block_invoke;
  v7[3] = &unk_1E79DDBB0;
  v7[4] = &v14;
  v7[5] = &v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
  if (a2)
  {
    objc_storeStrong(a2, v15[5]);
  }

  if (a3)
  {
    objc_storeStrong(a3, v9[5]);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

void sub_1AD942044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __DecodeV2Format_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) readerIDs];
        if ([v12 count] > 1)
        {
          v14 = v9;
LABEL_16:

          goto LABEL_17;
        }

        v13 = [v12 anyObject];
        v14 = v13;
        if (v13)
        {
          if (v9 && ![v13 isEqual:v9])
          {

            goto LABEL_16;
          }

          v15 = v14;

          v9 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_17:
    v9 = 0;
  }

  v16 = [[PKExpressPassCredentialEntry alloc] initWithSelectionCriteria:v6 readerIdentifier:v9 associatedReaders:0];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:v5];
}

void __EncodeV2Format_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 count])
  {
    v6 = [v5 selectionCriteria];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void __DecodeV1Format_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = a1;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  [v8 addObject:v5];
  if (v7)
  {
    [v8 addObject:v7];
  }

  v21 = v7;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v22 + 1) + 8 * i) readerIDs];
        if ([v15 count] > 1)
        {
          v17 = v12;
LABEL_18:

          goto LABEL_19;
        }

        v16 = [v15 anyObject];
        v17 = v16;
        if (v16)
        {
          if (v12 && ![v16 isEqual:v12])
          {

            goto LABEL_18;
          }

          v18 = v17;

          v12 = v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_19:
    v12 = 0;
  }

  v19 = [[PKExpressPassCredentialEntry alloc] initWithSelectionCriteria:v9 readerIdentifier:v12 associatedReaders:0];
  [*(v20 + 40) setObject:v19 forKeyedSubscript:v8];
}

void __EncodeV1Format_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v15 count];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 objectAtIndexedSubscript:0];
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];

    if (!v9)
    {
      v10 = [v5 selectionCriteria];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v8];

      if (v7 != 1)
      {
        if (!*(*(*(a1 + 40) + 8) + 40))
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = *(*(a1 + 40) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }

        v14 = [v15 objectAtIndexedSubscript:1];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v14 forKeyedSubscript:v8];
      }
    }
  }
}

void __ExtractV0Format_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [a3 selectionCriteria];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v9;
  v23 = a4;
  v24 = v7;
  v11 = *v26;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = [PKPassAutomaticSelectionCriterion expressModeForCriterion:*(*(&v25 + 1) + 8 * i), v23];
      if (!v13)
      {
        goto LABEL_10;
      }

      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      if (!v15)
      {
        objc_storeStrong((v14 + 40), v13);
LABEL_16:

        v7 = v24;
        v20 = [v24 firstObject];
        v21 = *(*(a1 + 40) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        *v23 = 1;
        goto LABEL_17;
      }

      v16 = v15;
      v17 = v13;
      v18 = v17;
      if (v16 == v17)
      {

        goto LABEL_16;
      }

      v19 = [v16 isEqualToString:v17];

      if (v19)
      {
        goto LABEL_16;
      }

LABEL_10:
    }

    v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  v7 = v24;
LABEL_17:
}

void sub_1AD943004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id FindLockCharacteristicInAccessory(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [a1 services];
  v1 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v29;
    p_superclass = PKPass.superclass;
    v21 = *v29;
    do
    {
      v5 = 0;
      v22 = v2;
      do
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v7 = [v6 serviceType];
        v8 = (p_superclass[37])();
        v9 = [v7 isEqualToString:v8];

        if (v9)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = [v6 characteristics];
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * v14);
              v16 = [v15 characteristicType];
              v17 = off_1ED6D1130();
              v18 = [v16 isEqualToString:v17];

              if (v18)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v12)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v19 = v15;

            v3 = v21;
            v2 = v22;
            p_superclass = (PKPass + 8);
            if (v19)
            {
              goto LABEL_20;
            }
          }

          else
          {
LABEL_15:

            v3 = v21;
            v2 = v22;
            p_superclass = (PKPass + 8);
          }
        }

        ++v5;
      }

      while (v5 != v2);
      v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v2);
  }

  v19 = 0;
LABEL_20:

  return v19;
}