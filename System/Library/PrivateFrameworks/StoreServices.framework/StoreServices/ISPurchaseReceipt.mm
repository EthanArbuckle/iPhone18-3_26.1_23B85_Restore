@interface ISPurchaseReceipt
+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)a3;
- (BOOL)_anchorTrust:(__SecTrust *)a3 toRootCertificateIn:(__CFArray *)a4;
- (BOOL)_checkArray:(__CFArray *)a3 containsCertificateWithOID:(__CFString *)a4;
- (BOOL)_checkIfCertificate:(__SecCertificate *)a3 containsOID:(__CFString *)a4;
- (BOOL)_decodeReceiptData:(id)a3 toDecodedMessage:(SecCmsMessageStr *)a4;
- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)a3;
- (BOOL)_setPoliciesForTrust:(__SecTrust *)a3;
- (ISPurchaseReceipt)initWithContentsOfFile:(id)a3;
- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)a3;
- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)a3;
- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)a3 onDate:(id)a4;
- (void)_parseTokens:(id)a3;
@end

@implementation ISPurchaseReceipt

+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)a3
{
  v3 = a3;
  v4 = [[ISPurchaseReceipt alloc] initWithContentsOfFile:v3];

  return v4;
}

- (ISPurchaseReceipt)initWithContentsOfFile:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ISPurchaseReceipt;
  v5 = [(ISPurchaseReceipt *)&v25 init];
  if (v5)
  {
    if (v4 && [v4 length])
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4];
      v7 = v6;
      if (v6 && [v6 length])
      {
        *v26 = 0;
        v8 = [(ISPurchaseReceipt *)v5 _decodeReceiptData:v7 toDecodedMessage:v26]&& [(ISPurchaseReceipt *)v5 _parseReceiptFromMessage:*v26]&& [(ISPurchaseReceipt *)v5 _verifySignatureForSignedData:[(ISPurchaseReceipt *)v5 _extractSignedDataFromMessage:*v26] onDate:v5->_receiptCreationDate]!= 0xFFFF;
        if (*v26)
        {
          SecCmsMessageDestroy();
        }

        if (v8)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v7 length];
      *v26 = 138412802;
      *&v26[4] = v13;
      v27 = 2048;
      v28 = v15;
      v29 = 2112;
      v30 = v4;
      LODWORD(v24) = 32;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_21:

        v5 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v26, v24}];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, v12);
    }

    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

- (BOOL)_anchorTrust:(__SecTrust *)a3 toRootCertificateIn:(__CFArray *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v17[0] = xmmword_1D4B39000;
  v17[1] = unk_1D4B39010;
  v6 = CFDataCreate(0, v17, 32);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    goto LABEL_11;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v11);
    v13 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (v13)
    {
      break;
    }

LABEL_7:
    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v14 = v13;
  if (!CFEqual(v7, v13))
  {
    CFRelease(v14);
    goto LABEL_7;
  }

  CFArrayAppendValue(Mutable, ValueAtIndex);
  CFRelease(v14);
  if (SecTrustSetAnchorCertificates(a3, Mutable))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = SecTrustSetAnchorCertificatesOnly(a3, 1u) == 0;
  }

  CFRelease(Mutable);
  CFRelease(v7);
  return v15;
}

- (BOOL)_checkArray:(__CFArray *)a3 containsCertificateWithOID:(__CFString *)a4
{
  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  if ([(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(a3 containsOID:0), a4])
  {
    return 1;
  }

  v10 = 1;
  do
  {
    v11 = v10;
    if (v8 == v10)
    {
      break;
    }

    v12 = [(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(a3 containsOID:v10), a4];
    v10 = v11 + 1;
  }

  while (!v12);
  return v11 < v8;
}

- (BOOL)_checkIfCertificate:(__SecCertificate *)a3 containsOID:(__CFString *)a4
{
  v4 = CFDataCreate(0, byte_1D4B39020, 2);
  v5 = SecCertificateCopyProperties();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v7 = 0;
      v8 = *MEMORY[0x1E697B2D8];
      v9 = *MEMORY[0x1E697B2E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, v8);
        if (Value && CFEqual(Value, a4) && (v12 = CFDictionaryGetValue(ValueAtIndex, v9)) != 0 && (v13 = v12, v14 = CFArrayGetCount(v12), v14 >= 1))
        {
          v15 = v14;
          v16 = 1;
          do
          {
            v17 = CFArrayGetValueAtIndex(v13, v16 - 1);
            v18 = CFDictionaryGetValue(v17, v8);
            v20 = v18 && CFEqual(v18, @"Unparsed Data") && (v19 = CFDictionaryGetValue(v17, v9)) != 0 && CFEqual(v19, v4) != 0;
            if (v16 >= v15)
            {
              break;
            }

            ++v16;
          }

          while (!v20);
        }

        else
        {
          v20 = 0;
        }

        ++v7;
      }

      while (v7 < Count && !v20);
    }

    CFRelease(v6);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  CFRelease(v4);
  return v20;
}

- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)a3
{
  CertificateList = SecCmsSignedDataGetCertificateList();
  if (!CertificateList)
  {
    return 0;
  }

  v4 = CertificateList;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = *v4;
  if (*v4)
  {
    v7 = v4 + 1;
    do
    {
      v8 = CFDataCreate(0, *(v6 + 8), *v6);
      if (v8)
      {
        v9 = v8;
        v10 = SecCertificateCreateWithData(0, v8);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v11);
        }

        CFRelease(v9);
      }

      v12 = *v7++;
      v6 = v12;
    }

    while (v12);
  }

  return Mutable;
}

- (BOOL)_decodeReceiptData:(id)a3 toDecodedMessage:(SecCmsMessageStr *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (SecCmsDecoderCreate())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (!v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    [v4 bytes];
    [v4 length];
    if (SecCmsDecoderUpdate())
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v9 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 &= 2u;
      }

      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!SecCmsDecoderFinish())
      {
        v21 = 1;
        goto LABEL_34;
      }

      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      v11 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v8 = [v5 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_32;
      }
    }
  }

  v24 = 138412290;
  v25 = objc_opt_class();
  v13 = v25;
  LODWORD(v23) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v24, v23}];
    free(v14);
    SSFileLog(v5, @"%@", v15, v16, v17, v18, v19, v20, v8);
LABEL_32:
  }

  SecCmsDecoderDestroy();
  v21 = 0;
LABEL_34:

  return v21;
}

- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)a3
{
  v3 = SecCmsMessageContentLevelCount();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    SecCmsMessageContentLevel();
    if (SecCmsContentInfoGetContentTypeTag() == 26)
    {
      result = SecCmsContentInfoGetContent();
      if (result)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1DA6DF250](a3, a2);
  if (v4 && *v4)
  {
    v5 = CFDataCreate(0, *(v4 + 8), *v4);
    if (v5)
    {
      v6 = v5;
      v7 = [asn1Token readTokenFromBuffer:CFDataGetBytePtr(v5)];
      v8 = [v7 identifier];
      v9 = v8 == 17;
      if (v8 == 17)
      {
        [(ISPurchaseReceipt *)self _parseTokens:v7];
LABEL_40:
        CFRelease(v6);
        goto LABEL_41;
      }

      v23 = +[SSLogConfig sharedStoreServicesConfig];
      v24 = v23;
      if (!v23)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = v25 | 2;
      }

      else
      {
        v26 = v25;
      }

      v27 = [v24 OSLogObject];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v26 &= 2u;
      }

      if (v26)
      {
        LODWORD(v38) = 138412290;
        *(&v38 + 4) = objc_opt_class();
        v28 = *(&v38 + 4);
        LODWORD(v37) = 12;
        v29 = _os_log_send_and_compose_impl();

        if (!v29)
        {
LABEL_39:

          goto LABEL_40;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v38, v37, v38}];
        free(v29);
        SSFileLog(v24, @"%@", v30, v31, v32, v33, v34, v35, v27);
      }

      goto LABEL_39;
    }

    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v21 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v12 = [v7 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v22 &= 2u;
    }

    if (!v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v10 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v7 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  LODWORD(v38) = 138412290;
  *(&v38 + 4) = objc_opt_class();
  v13 = *(&v38 + 4);
  LODWORD(v37) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v38, v37, v38}];
    free(v14);
    SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v12);
LABEL_17:
  }

  v9 = 0;
LABEL_41:

  return v9;
}

- (void)_parseTokens:(id)a3
{
  v123 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = off_1E84AB000;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v119 = 138412290;
    v120 = objc_opt_class();
    v10 = v120;
    LODWORD(v113) = 12;
    v112 = &v119;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_13;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v119, v113}];
    free(v11);
    SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v8);
  }

LABEL_13:
  v18 = [v3 nextToken];
  if (v18)
  {
    v19 = v18;
    v117 = v3;
    while (2)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = +[asn1ReceiptToken readFromBuffer:](asn1ReceiptToken, "readFromBuffer:", [v19 content]);
      switch([v21 type])
      {
        case 0:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v23 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v24 = v23 | 2;
          }

          else
          {
            v24 = v23;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 2;
          }

          if (!v26)
          {
            goto LABEL_211;
          }

          v27 = objc_opt_class();
          v28 = v27;
          v29 = [v21 stringValue];
          v119 = 138412546;
          v120 = v27;
          v121 = 2112;
          v122 = v29;
          LODWORD(v113) = 22;
          v112 = &v119;
          v30 = _os_log_send_and_compose_impl();

          goto LABEL_206;
        case 1:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v47 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v47 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 2;
          }

          if (v48)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 2:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v62 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v62 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v63 = v62;
          }

          else
          {
            v63 = v62 & 2;
          }

          if (v63)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 3:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v60 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v60 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v61 = v60;
          }

          else
          {
            v61 = v60 & 2;
          }

          if (v61)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 4:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v43 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v43 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v44 = v43;
          }

          else
          {
            v44 = v43 & 2;
          }

          if (v44)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 5:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v49 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v49 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v50 = v49;
          }

          else
          {
            v50 = v49 & 2;
          }

          if (!v50)
          {
            v3 = v117;
            goto LABEL_211;
          }

          v116 = v20;
          v51 = objc_opt_class();
          v114 = MEMORY[0x1E695DEF0];
          v52 = v21;
          v115 = v51;
          v53 = [v52 contentToken];
          v54 = [v53 content];
          v55 = [v52 contentToken];

          v56 = [v114 dataWithBytes:v54 length:{objc_msgSend(v55, "length")}];

          v57 = [v56 length];
          v119 = 138412546;
          v120 = v51;
          v121 = 2048;
          v122 = v57;
          LODWORD(v113) = 22;
          v112 = &v119;
          v30 = _os_log_send_and_compose_impl();

          if (v30)
          {
            v20 = v116;
            v3 = v117;
            goto LABEL_209;
          }

          v20 = v116;
          v3 = v117;
          goto LABEL_213;
        case 8:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v64 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v64 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 2;
          }

          if (!v65)
          {
            goto LABEL_210;
          }

          v28 = objc_opt_class();
          v66 = [v21 stringValue];
          v67 = v66;
          if (v66)
          {
            v68 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(v66, "UTF8String"), objc_msgSend(v66, "length"))}];
          }

          else
          {
            v68 = 0;
          }

          v119 = 138412546;
          v120 = v28;
          v121 = 2112;
          v122 = v68;
          LODWORD(v113) = 22;
          v112 = &v119;
          goto LABEL_205;
        case 9:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v69 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v69 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v70 = v69;
          }

          else
          {
            v70 = v69 & 2;
          }

          if (v70)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 10:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v80 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v80 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v81 = v80;
          }

          else
          {
            v81 = v80 & 2;
          }

          if (v81)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 11:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v76 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v76 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v77 = v76;
          }

          else
          {
            v77 = v76 & 2;
          }

          if (v77)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 12:
          v40 = [v21 stringValue];
          v41 = v40;
          if (v40)
          {
            v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(v40, "UTF8String"), objc_msgSend(v40, "length"))}];
          }

          else
          {
            v42 = 0;
          }

          receiptCreationDate = self->_receiptCreationDate;
          self->_receiptCreationDate = v42;

          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v91 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v91 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v92 = v91;
          }

          else
          {
            v92 = v91 & 2;
          }

          if (!v92)
          {
            goto LABEL_211;
          }

          v93 = objc_opt_class();
          v94 = self->_receiptCreationDate;
          v119 = 138412546;
          v120 = v93;
          v121 = 2112;
          v122 = v94;
          v37 = v93;
          LODWORD(v113) = 22;
          v112 = &v119;
          goto LABEL_200;
        case 13:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v58 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v58 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v59 = v58;
          }

          else
          {
            v59 = v58 & 2;
          }

          if (v59)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 14:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v45 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v45 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v46 = v45;
          }

          else
          {
            v46 = v45 & 2;
          }

          if (v46)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 15:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v38 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v38 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v39 = v38;
          }

          else
          {
            v39 = v38 & 2;
          }

          if (v39)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 16:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v71 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v71 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v72 = v71;
          }

          else
          {
            v72 = v71 & 2;
          }

          if (!v72)
          {
            goto LABEL_211;
          }

LABEL_148:
          v78 = objc_opt_class();
          v79 = MEMORY[0x1E696AD98];
          v28 = v78;
          v68 = [v79 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v119 = 138412546;
          v120 = v78;
          v121 = 2112;
          v122 = v68;
          LODWORD(v113) = 22;
          v112 = &v119;
LABEL_205:
          v30 = _os_log_send_and_compose_impl();

LABEL_206:
          goto LABEL_207;
        case 21:
          v73 = [v21 stringValue];
          v74 = v73;
          if (v73)
          {
            v75 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(v73, "UTF8String"), objc_msgSend(v73, "length"))}];
          }

          else
          {
            v75 = 0;
          }

          expirationDate = self->_expirationDate;
          self->_expirationDate = v75;

          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v96 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v96 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v97 = v96;
          }

          else
          {
            v97 = v96 & 2;
          }

          if (!v97)
          {
            goto LABEL_211;
          }

          v98 = objc_opt_class();
          v99 = self->_expirationDate;
          v119 = 138412546;
          v120 = v98;
          v121 = 2112;
          v122 = v99;
          v37 = v98;
          LODWORD(v113) = 22;
          v112 = &v119;
          goto LABEL_200;
        case 22:
          v87 = [v21 stringValue];
          v88 = v87;
          if (v87)
          {
            v89 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(v87, "UTF8String"), objc_msgSend(v87, "length"))}];
          }

          else
          {
            v89 = 0;
          }

          renewalDate = self->_renewalDate;
          self->_renewalDate = v89;

          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v101 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v101 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v102 = v101;
          }

          else
          {
            v102 = v101 & 2;
          }

          if (!v102)
          {
            goto LABEL_211;
          }

          v103 = objc_opt_class();
          v104 = self->_renewalDate;
          v119 = 138412546;
          v120 = v103;
          v121 = 2112;
          v122 = v104;
          v37 = v103;
          LODWORD(v113) = 22;
          v112 = &v119;
          goto LABEL_200;
        case 23:
          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v82 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v82 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v83 = v82;
          }

          else
          {
            v83 = v82 & 2;
          }

          if (!v83)
          {
            goto LABEL_211;
          }

LABEL_166:
          v84 = objc_opt_class();
          v85 = v84;
          v86 = [v21 stringValue];
          v119 = 138412546;
          v120 = v84;
          v121 = 2112;
          v122 = v86;
          LODWORD(v113) = 22;
          v112 = &v119;
          v30 = _os_log_send_and_compose_impl();

LABEL_207:
          if (v30)
          {
            v3 = v117;
LABEL_209:
            v25 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v119, v113}];
            free(v30);
            SSFileLog(v22, @"%@", v105, v106, v107, v108, v109, v110, v25);
LABEL_210:
            v4 = off_1E84AB000;
LABEL_211:
          }

          else
          {
            v3 = v117;
LABEL_213:
            v4 = off_1E84AB000;
          }

LABEL_215:
          objc_autoreleasePoolPop(v20);
          v111 = [v3 nextToken];

          v19 = v111;
          if (!v111)
          {
            break;
          }

          continue;
        case 24:
          v31 = [v21 stringValue];
          cancellationReason = self->_cancellationReason;
          self->_cancellationReason = v31;

          v22 = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!v22)
          {
            v22 = [(__objc2_class *)v4[75] sharedConfig];
          }

          v33 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v33 |= 2u;
          }

          v25 = [v22 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 2;
          }

          if (!v34)
          {
            goto LABEL_211;
          }

          v35 = objc_opt_class();
          v36 = self->_cancellationReason;
          v119 = 138412546;
          v120 = v35;
          v121 = 2112;
          v122 = v36;
          v37 = v35;
          LODWORD(v113) = 22;
          v112 = &v119;
LABEL_200:
          v30 = _os_log_send_and_compose_impl();

          if (!v30)
          {
            goto LABEL_213;
          }

          goto LABEL_209;
        default:
          goto LABEL_215;
      }

      break;
    }
  }
}

- (BOOL)_setPoliciesForTrust:(__SecTrust *)a3
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9C0]);
  v5 = *MEMORY[0x1E697B298];
  v6 = *MEMORY[0x1E697B2A0];
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = SecPolicyCreateWithProperties(v5, 0);
    if (!v9)
    {
      break;
    }

    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
    v7 = 0;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      v10 = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v10 = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:3];
  CFDictionaryAddValue(v11, *MEMORY[0x1E697B2C8], v12);
  v13 = SecPolicyCreateWithProperties(*MEMORY[0x1E697B290], v11);
  if (v13)
  {
    v14 = v13;
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v14);
    CFRelease(v11);

    if (v9)
    {
LABEL_9:
      v15 = SecTrustSetPolicies(a3, Mutable) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    CFRelease(v11);
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  CFRelease(Mutable);
  return v15;
}

- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)a3 onDate:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a4;
  trust = 0;
  v7 = [(ISPurchaseReceipt *)self _copyCertificatesFromSignedData:a3];
  if (!v7)
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v50 = 138412290;
      v51 = objc_opt_class();
      v17 = v51;
      LODWORD(v47) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_25:

        v25 = 0xFFFFLL;
        goto LABEL_49;
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v50, v47}];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, v16);
    }

    goto LABEL_25;
  }

  v8 = v7;
  if (CFArrayGetCount(v7) == 3)
  {
    if ([(ISPurchaseReceipt *)self _checkArray:v8 containsCertificateWithOID:@"1.2.840.113635.100.6.2.1"])
    {
      if (SecTrustCreateWithCertificates(v8, 0, &trust))
      {
        v9 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v11 &= 2u;
        }

        if (!v11)
        {
          goto LABEL_46;
        }
      }

      else if ([(ISPurchaseReceipt *)self _setPoliciesForTrust:trust])
      {
        if ([(ISPurchaseReceipt *)self _anchorTrust:trust toRootCertificateIn:v8])
        {
          if (!v6 || !SecTrustSetVerifyDate(trust, v6))
          {
            v48 = 0;
            MEMORY[0x1DA6DF300](trust, &v48);
            if (v48 == 1 || v48 == 4)
            {
              v25 = 0;
            }

            else
            {
              v25 = 0xFFFFLL;
            }

            goto LABEL_48;
          }

          v9 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v39 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v40 = v39 | 2;
          }

          else
          {
            v40 = v39;
          }

          v12 = [v9 OSLogObject];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v40 &= 2u;
          }

          if (!v40)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v9 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v43 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v44 = v43 | 2;
          }

          else
          {
            v44 = v43;
          }

          v12 = [v9 OSLogObject];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v44 &= 2u;
          }

          if (!v44)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v9 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        v41 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v42 = v41 | 2;
        }

        else
        {
          v42 = v41;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v42 &= 2u;
        }

        if (!v42)
        {
          goto LABEL_46;
        }
      }

      v45 = objc_opt_class();
      v50 = 138412290;
      v51 = v45;
      v30 = v45;
      LODWORD(v47) = 12;
      goto LABEL_44;
    }

    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v28 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v29 &= 2u;
    }

    if (!v29)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v26 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v27 &= 2u;
    }

    if (!v27)
    {
      goto LABEL_46;
    }
  }

  v50 = 138412290;
  v51 = objc_opt_class();
  v30 = v51;
  LODWORD(v47) = 12;
LABEL_44:
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v50, v47}];
    free(v31);
    SSFileLog(v9, @"%@", v32, v33, v34, v35, v36, v37, v12);
LABEL_46:
  }

  v25 = 0xFFFFLL;
LABEL_48:
  CFRelease(v8);
LABEL_49:
  if (trust)
  {
    CFRelease(trust);
  }

  return v25;
}

@end