@interface ISPurchaseReceipt
+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)file;
- (BOOL)_anchorTrust:(__SecTrust *)trust toRootCertificateIn:(__CFArray *)in;
- (BOOL)_checkArray:(__CFArray *)array containsCertificateWithOID:(__CFString *)d;
- (BOOL)_checkIfCertificate:(__SecCertificate *)certificate containsOID:(__CFString *)d;
- (BOOL)_decodeReceiptData:(id)data toDecodedMessage:(SecCmsMessageStr *)message;
- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)message;
- (BOOL)_setPoliciesForTrust:(__SecTrust *)trust;
- (ISPurchaseReceipt)initWithContentsOfFile:(id)file;
- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)message;
- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)data;
- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)data onDate:(id)date;
- (void)_parseTokens:(id)tokens;
@end

@implementation ISPurchaseReceipt

+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)file
{
  fileCopy = file;
  v4 = [[ISPurchaseReceipt alloc] initWithContentsOfFile:fileCopy];

  return v4;
}

- (ISPurchaseReceipt)initWithContentsOfFile:(id)file
{
  v31 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v25.receiver = self;
  v25.super_class = ISPurchaseReceipt;
  v5 = [(ISPurchaseReceipt *)&v25 init];
  if (v5)
  {
    if (fileCopy && [fileCopy length])
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
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

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v30 = fileCopy;
      LODWORD(v24) = 32;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_21:

        v5 = 0;
LABEL_22:

        goto LABEL_23;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, v26, v24}];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_21;
  }

LABEL_23:

  return v5;
}

- (BOOL)_anchorTrust:(__SecTrust *)trust toRootCertificateIn:(__CFArray *)in
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
  Count = CFArrayGetCount(in);
  if (Count < 1)
  {
    goto LABEL_11;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(in, v11);
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
  if (SecTrustSetAnchorCertificates(trust, Mutable))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = SecTrustSetAnchorCertificatesOnly(trust, 1u) == 0;
  }

  CFRelease(Mutable);
  CFRelease(v7);
  return v15;
}

- (BOOL)_checkArray:(__CFArray *)array containsCertificateWithOID:(__CFString *)d
{
  Count = CFArrayGetCount(array);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  if ([(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(array containsOID:0), d])
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

    v12 = [(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(array containsOID:v10), d];
    v10 = v11 + 1;
  }

  while (!v12);
  return v11 < v8;
}

- (BOOL)_checkIfCertificate:(__SecCertificate *)certificate containsOID:(__CFString *)d
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
        if (Value && CFEqual(Value, d) && (v12 = CFDictionaryGetValue(ValueAtIndex, v9)) != 0 && (v13 = v12, v14 = CFArrayGetCount(v12), v14 >= 1))
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

- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)data
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

- (BOOL)_decodeReceiptData:(id)data toDecodedMessage:(SecCmsMessageStr *)message
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (SecCmsDecoderCreate())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
    [dataCopy bytes];
    [dataCopy length];
    if (SecCmsDecoderUpdate())
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v10 = shouldLog2 | 2;
      }

      else
      {
        v10 = shouldLog2;
      }

      oSLogObject = [v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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

      shouldLog3 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v12 = shouldLog3 | 2;
      }

      else
      {
        v12 = shouldLog3;
      }

      oSLogObject = [v5 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v24, v23}];
    free(v14);
    SSFileLog(v5, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
LABEL_32:
  }

  SecCmsDecoderDestroy();
  v21 = 0;
LABEL_34:

  return v21;
}

- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)message
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

- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)message
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1DA6DF250](message, a2);
  if (v4 && *v4)
  {
    v5 = CFDataCreate(0, *(v4 + 8), *v4);
    if (v5)
    {
      v6 = v5;
      v7 = [asn1Token readTokenFromBuffer:CFDataGetBytePtr(v5)];
      identifier = [v7 identifier];
      v9 = identifier == 17;
      if (identifier == 17)
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

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog | 2;
      }

      else
      {
        v26 = shouldLog;
      }

      oSLogObject = [v24 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:{4, &v38, v37, v38}];
        free(v29);
        SSFileLog(v24, @"%@", v30, v31, v32, v33, v34, v35, oSLogObject);
      }

      goto LABEL_39;
    }

    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v22 = shouldLog2 | 2;
    }

    else
    {
      v22 = shouldLog2;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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

    shouldLog3 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v11 = shouldLog3 | 2;
    }

    else
    {
      v11 = shouldLog3;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v38, v37, v38}];
    free(v14);
    SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject2);
LABEL_17:
  }

  v9 = 0;
LABEL_41:

  return v9;
}

- (void)_parseTokens:(id)tokens
{
  v123 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v4 = off_1E84AB000;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v119, v113}];
    free(v11);
    SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
  }

LABEL_13:
  nextToken = [tokensCopy nextToken];
  if (nextToken)
  {
    v19 = nextToken;
    v117 = tokensCopy;
    while (2)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = +[asn1ReceiptToken readFromBuffer:](asn1ReceiptToken, "readFromBuffer:", [v19 content]);
      switch([v21 type])
      {
        case 0:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog2 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            v24 = shouldLog2 | 2;
          }

          else
          {
            v24 = shouldLog2;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
          stringValue = [v21 stringValue];
          v119 = 138412546;
          v120 = v27;
          v121 = 2112;
          v122 = stringValue;
          LODWORD(v113) = 22;
          v112 = &v119;
          v30 = _os_log_send_and_compose_impl();

          goto LABEL_206;
        case 1:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog3 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v48 = shouldLog3;
          }

          else
          {
            v48 = shouldLog3 & 2;
          }

          if (v48)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 2:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog4 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog4 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v63 = shouldLog4;
          }

          else
          {
            v63 = shouldLog4 & 2;
          }

          if (v63)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 3:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog5 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog5 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v61 = shouldLog5;
          }

          else
          {
            v61 = shouldLog5 & 2;
          }

          if (v61)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 4:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog6 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog6 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v44 = shouldLog6;
          }

          else
          {
            v44 = shouldLog6 & 2;
          }

          if (v44)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 5:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog7 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog7 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v50 = shouldLog7;
          }

          else
          {
            v50 = shouldLog7 & 2;
          }

          if (!v50)
          {
            tokensCopy = v117;
            goto LABEL_211;
          }

          v116 = v20;
          v51 = objc_opt_class();
          v114 = MEMORY[0x1E695DEF0];
          v52 = v21;
          v115 = v51;
          contentToken = [v52 contentToken];
          content = [contentToken content];
          contentToken2 = [v52 contentToken];

          v56 = [v114 dataWithBytes:content length:{objc_msgSend(contentToken2, "length")}];

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
            tokensCopy = v117;
            goto LABEL_209;
          }

          v20 = v116;
          tokensCopy = v117;
          goto LABEL_213;
        case 8:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog8 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog8 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v65 = shouldLog8;
          }

          else
          {
            v65 = shouldLog8 & 2;
          }

          if (!v65)
          {
            goto LABEL_210;
          }

          v28 = objc_opt_class();
          stringValue2 = [v21 stringValue];
          v67 = stringValue2;
          if (stringValue2)
          {
            v68 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue2, "UTF8String"), objc_msgSend(stringValue2, "length"))}];
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
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog9 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog9 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v70 = shouldLog9;
          }

          else
          {
            v70 = shouldLog9 & 2;
          }

          if (v70)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 10:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog10 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog10 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v81 = shouldLog10;
          }

          else
          {
            v81 = shouldLog10 & 2;
          }

          if (v81)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 11:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog11 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog11 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v77 = shouldLog11;
          }

          else
          {
            v77 = shouldLog11 & 2;
          }

          if (v77)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 12:
          stringValue3 = [v21 stringValue];
          v41 = stringValue3;
          if (stringValue3)
          {
            v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue3, "UTF8String"), objc_msgSend(stringValue3, "length"))}];
          }

          else
          {
            v42 = 0;
          }

          receiptCreationDate = self->_receiptCreationDate;
          self->_receiptCreationDate = v42;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog12 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog12 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v92 = shouldLog12;
          }

          else
          {
            v92 = shouldLog12 & 2;
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
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog13 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog13 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v59 = shouldLog13;
          }

          else
          {
            v59 = shouldLog13 & 2;
          }

          if (v59)
          {
            goto LABEL_166;
          }

          goto LABEL_211;
        case 14:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog14 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog14 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v46 = shouldLog14;
          }

          else
          {
            v46 = shouldLog14 & 2;
          }

          if (v46)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 15:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog15 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog15 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v39 = shouldLog15;
          }

          else
          {
            v39 = shouldLog15 & 2;
          }

          if (v39)
          {
            goto LABEL_148;
          }

          goto LABEL_211;
        case 16:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog16 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog16 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v72 = shouldLog16;
          }

          else
          {
            v72 = shouldLog16 & 2;
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
          stringValue4 = [v21 stringValue];
          v74 = stringValue4;
          if (stringValue4)
          {
            v75 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue4, "UTF8String"), objc_msgSend(stringValue4, "length"))}];
          }

          else
          {
            v75 = 0;
          }

          expirationDate = self->_expirationDate;
          self->_expirationDate = v75;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog17 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog17 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v97 = shouldLog17;
          }

          else
          {
            v97 = shouldLog17 & 2;
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
          stringValue5 = [v21 stringValue];
          v88 = stringValue5;
          if (stringValue5)
          {
            v89 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue5, "UTF8String"), objc_msgSend(stringValue5, "length"))}];
          }

          else
          {
            v89 = 0;
          }

          renewalDate = self->_renewalDate;
          self->_renewalDate = v89;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog18 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog18 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v102 = shouldLog18;
          }

          else
          {
            v102 = shouldLog18 & 2;
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
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog19 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog19 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v83 = shouldLog19;
          }

          else
          {
            v83 = shouldLog19 & 2;
          }

          if (!v83)
          {
            goto LABEL_211;
          }

LABEL_166:
          v84 = objc_opt_class();
          v85 = v84;
          stringValue6 = [v21 stringValue];
          v119 = 138412546;
          v120 = v84;
          v121 = 2112;
          v122 = stringValue6;
          LODWORD(v113) = 22;
          v112 = &v119;
          v30 = _os_log_send_and_compose_impl();

LABEL_207:
          if (v30)
          {
            tokensCopy = v117;
LABEL_209:
            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v119, v113}];
            free(v30);
            SSFileLog(sharedStoreServicesConfig, @"%@", v105, v106, v107, v108, v109, v110, oSLogObject2);
LABEL_210:
            v4 = off_1E84AB000;
LABEL_211:
          }

          else
          {
            tokensCopy = v117;
LABEL_213:
            v4 = off_1E84AB000;
          }

LABEL_215:
          objc_autoreleasePoolPop(v20);
          nextToken2 = [tokensCopy nextToken];

          v19 = nextToken2;
          if (!nextToken2)
          {
            break;
          }

          continue;
        case 24:
          stringValue7 = [v21 stringValue];
          cancellationReason = self->_cancellationReason;
          self->_cancellationReason = stringValue7;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog20 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog20 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v34 = shouldLog20;
          }

          else
          {
            v34 = shouldLog20 & 2;
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

- (BOOL)_setPoliciesForTrust:(__SecTrust *)trust
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
      v15 = SecTrustSetPolicies(trust, Mutable) == 0;
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

- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)data onDate:(id)date
{
  v52 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  trust = 0;
  v7 = [(ISPurchaseReceipt *)self _copyCertificatesFromSignedData:data];
  if (!v7)
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v50, v47}];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
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

        shouldLog2 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = shouldLog2 | 2;
        }

        else
        {
          v11 = shouldLog2;
        }

        oSLogObject2 = [v9 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
          if (!dateCopy || !SecTrustSetVerifyDate(trust, dateCopy))
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

          shouldLog3 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v40 = shouldLog3 | 2;
          }

          else
          {
            v40 = shouldLog3;
          }

          oSLogObject2 = [v9 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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

          shouldLog4 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v44 = shouldLog4 | 2;
          }

          else
          {
            v44 = shouldLog4;
          }

          oSLogObject2 = [v9 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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

        shouldLog5 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v42 = shouldLog5 | 2;
        }

        else
        {
          v42 = shouldLog5;
        }

        oSLogObject2 = [v9 OSLogObject];
        if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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

    shouldLog6 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v29 = shouldLog6 | 2;
    }

    else
    {
      v29 = shouldLog6;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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

    shouldLog7 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v27 = shouldLog7 | 2;
    }

    else
    {
      v27 = shouldLog7;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v50, v47}];
    free(v31);
    SSFileLog(v9, @"%@", v32, v33, v34, v35, v36, v37, oSLogObject2);
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