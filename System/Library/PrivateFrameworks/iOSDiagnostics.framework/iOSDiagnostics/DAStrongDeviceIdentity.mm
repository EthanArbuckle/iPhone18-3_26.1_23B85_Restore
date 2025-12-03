@interface DAStrongDeviceIdentity
- (id)SHA256ForData:(id)data;
- (id)SHA256ForFileHandle:(id)handle;
- (id)deviceIdentityPublicKeyDigest;
- (id)requestAttestationBlobWithOptions:(id)options error:(id *)error;
- (id)signDigest:(id)digest error:(id *)error;
- (id)signFile:(id)file error:(id *)error;
- (id)signPayload:(id)payload error:(id *)error;
- (void)dealloc;
- (void)generateAuthInfoWithNonce:(id)nonce completion:(id)completion;
- (void)purgeSecurityKey;
- (void)requestAttestationCertWithOptions:(id)options completion:(id)completion;
@end

@implementation DAStrongDeviceIdentity

- (void)purgeSecurityKey
{
  if ([(DAStrongDeviceIdentity *)self deviceIdentityKey])
  {
    CFRelease([(DAStrongDeviceIdentity *)self deviceIdentityKey]);

    [(DAStrongDeviceIdentity *)self setDeviceIdentityKey:0];
  }
}

- (void)dealloc
{
  [(DAStrongDeviceIdentity *)self purgeSecurityKey];
  v3.receiver = self;
  v3.super_class = DAStrongDeviceIdentity;
  [(DAStrongDeviceIdentity *)&v3 dealloc];
}

- (void)generateAuthInfoWithNonce:(id)nonce completion:(id)completion
{
  nonceCopy = nonce;
  completionCopy = completion;
  v43 = 0;
  v44[0] = &v43;
  v44[1] = 0x3032000000;
  v44[2] = sub_1000064C0;
  v44[3] = sub_1000064D0;
  v45 = 0;
  v8 = [NSMutableDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:kMAOptionsBAASCRTAttestation];
  v9 = [NSMutableArray arrayWithObjects:kMAOptionsBAAOIDDeviceIdentifiers, kMAOptionsBAAOIDHardwareProperties, kMAOptionsBAAOIDKeyUsageProperties, kMAOptionsBAAOIDDeviceOSInformation, kMAOptionsBAAOIDUCRTDeviceIdentifiers, 0];
  v10 = v9;
  if (nonceCopy)
  {
    [v9 addObject:kMAOptionsBAAOIDNonce];
    [v8 setObject:nonceCopy forKeyedSubscript:kMAOptionsBAANonce];
  }

  [v8 setObject:v10 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000064C0;
  v41 = sub_1000064D0;
  v42 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000064D8;
  v33[3] = &unk_10001C8F0;
  v35 = &v37;
  v36 = &v43;
  v33[4] = self;
  v11 = dispatch_semaphore_create(0);
  v34 = v11;
  [(DAStrongDeviceIdentity *)self requestAttestationCertWithOptions:v8 completion:v33];
  v12 = dispatch_time(0, 180000000000);
  v13 = dispatch_semaphore_wait(v11, v12);
  v14 = v38[5];
  if (!v14)
  {
    if (!v13)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000DE64();
    }

LABEL_22:

    goto LABEL_23;
  }

  v15 = v44[0];
  obj = *(v44[0] + 40);
  v16 = [v14 copyCertificatePEMWithError:&obj];
  objc_storeStrong((v15 + 40), obj);
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || *(v44[0] + 40))
  {
    v17 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000DD88(v44, v17, v18, v19, v20, v21, v22, v23);
    }

    v16 = 0;
  }

  certifcateType = [v38[5] certifcateType];
  if (certifcateType)
  {
    if (certifcateType == 1)
    {
      v25 = 0;
      v26 = 2;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_18:
      v27 = 0;
      goto LABEL_27;
    }

    v28 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_10000DDFC();
    }

    goto LABEL_22;
  }

  v26 = 1;
  v25 = 2;
  if (v16)
  {
    goto LABEL_18;
  }

LABEL_24:
  v29 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_10000DE98();
  }

  v30 = v44[0];
  v31 = *(v44[0] + 40);
  v27 = [(DAStrongDeviceIdentity *)self requestAttestationBlobWithOptions:v8 error:&v31];
  objc_storeStrong((v30 + 40), v31);
  v16 = 0;
  v25 = 3;
LABEL_27:
  [(DAStrongDeviceIdentity *)self setCertData:v16];
  completionCopy[2](completionCopy, v27, v16, v26, v25, *(v44[0] + 40));

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

- (id)signPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  if ([(DAStrongDeviceIdentity *)self deviceIdentityKey])
  {
    v7 = [(DAStrongDeviceIdentity *)self SHA256ForData:payloadCopy];
    if (v7)
    {
      v8 = [(DAStrongDeviceIdentity *)self signDigest:v7 error:error];
      v9 = 0;
    }

    else
    {
      v11 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000DECC();
      }

      v9 = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:1 userInfo:0];
      v8 = 0;
    }

    if (v9)
    {
LABEL_12:
      [DSAnalytics sendAnalyticsWithEvent:1 error:v9];
    }
  }

  else
  {
    v10 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10000DF00();
    }

    v9 = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:0 userInfo:0];
    v8 = 0;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  return v8;
}

- (id)signFile:(id)file error:(id *)error
{
  fileCopy = file;
  if ([(DAStrongDeviceIdentity *)self deviceIdentityKey])
  {
    path = [fileCopy path];
    v8 = [NSFileHandle fileHandleForReadingAtPath:path];

    if (v8)
    {
      v9 = [(DAStrongDeviceIdentity *)self SHA256ForFileHandle:v8];
      if (v9)
      {
        v10 = [(DAStrongDeviceIdentity *)self signDigest:v9 error:error];
      }

      else
      {
        v14 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10000DF34();
        }

        if (error)
        {
          [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:3 userInfo:0];
          *error = v10 = 0;
        }

        else
        {
          v10 = 0;
        }
      }

      v12 = 0;
    }

    else
    {
      v13 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000DF68(fileCopy, v13);
      }

      v12 = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:2 userInfo:0];
      v10 = 0;
    }

    if (error)
    {
LABEL_19:
      v15 = v12;
      *error = v12;
    }
  }

  else
  {
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000DFFC();
    }

    v12 = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:0 userInfo:0];
    v10 = 0;
    if (error)
    {
      goto LABEL_19;
    }
  }

  return v10;
}

- (id)SHA256ForData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  if ((v4 - 1) > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    CC_SHA256([dataCopy bytes], v4, &v7);
    v5 = [NSData dataWithBytes:&v7 length:32];
  }

  return v5;
}

- (id)SHA256ForFileHandle:(id)handle
{
  handleCopy = handle;
  offsetInFile = [handleCopy offsetInFile];
  [handleCopy seekToFileOffset:0];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  do
  {
    v5 = [handleCopy readDataOfLength:0x10000];
    v6 = [v5 length];
    v7 = v5;
    CC_SHA256_Update(&c, [v5 bytes], v6);
  }

  while (v6);
  [handleCopy seekToFileOffset:offsetInFile];
  memset(v10, 0, sizeof(v10));
  CC_SHA256_Final(v10, &c);
  v8 = [NSData dataWithBytes:v10 length:32];

  return v8;
}

- (id)signDigest:(id)digest error:(id *)error
{
  error = 0;
  digestCopy = digest;
  v7 = SecKeyCreateSignature([(DAStrongDeviceIdentity *)self deviceIdentityKey], kSecKeyAlgorithmECDSASignatureDigestX962SHA256, digestCopy, &error);

  if (!v7)
  {
    errorCopy = error;
    errorCopy2 = error;
    v10 = DiagnosticLogHandleForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (errorCopy)
    {
      if (v11)
      {
        v12 = [(__CFError *)errorCopy2 description];
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to create signature with underlying error = (%@).", buf, 0xCu);
      }

      v16 = NSUnderlyingErrorKey;
      v17 = errorCopy2;
      v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to create signature.", buf, 2u);
      }

      v13 = 0;
      if (!error)
      {
        goto LABEL_7;
      }
    }

    *error = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:4 userInfo:v13];
LABEL_7:
  }

  return v7;
}

- (id)requestAttestationBlobWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if ([(DAStrongDeviceIdentity *)self deviceIdentityKey])
  {
LABEL_4:
    [(DAStrongDeviceIdentity *)self deviceIdentityKey];
    v24[1] = 0;
    v9 = DeviceIdentityCopyAttestationDictionary();
    v10 = 0;
    if (v9)
    {
      v24[0] = 0;
      v11 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:v24];
      v12 = v24[0];

      [(DAStrongDeviceIdentity *)self purgeSecurityKey];
      v10 = v12;
      if (v11)
      {
LABEL_16:
        v15 = v11;

        goto LABEL_17;
      }
    }

    else
    {
      [(DAStrongDeviceIdentity *)self purgeSecurityKey];
    }

    if (v10)
    {
      if (error)
      {
        v30 = NSUnderlyingErrorKey;
        v31 = v10;
        v13 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *error = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:5 userInfo:v13];
      }
    }

    else if (error)
    {
      *error = [NSError errorWithDomain:@"com.apple.Diagnostics.StrongDeviceIdentityError" code:5 userInfo:0];
    }

    v14 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10000E030();
    }

    [DSAnalytics sendAnalyticsWithEvent:0 error:v10];
    v11 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28[0] = &v27;
  v28[1] = 0x3032000000;
  v28[2] = sub_1000064C0;
  v28[3] = sub_1000064D0;
  v29 = 0;
  v24[2] = _NSConcreteStackBlock;
  v24[3] = 3221225472;
  v24[4] = sub_100007190;
  v24[5] = &unk_10001C918;
  v24[6] = self;
  v26 = &v27;
  v7 = dispatch_semaphore_create(0);
  v25 = v7;
  DeviceIdentityIssueClientCertificateWithCompletion();
  v8 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v7, v8);
  if ([(DAStrongDeviceIdentity *)self deviceIdentityKey])
  {

    _Block_object_dispose(&v27, 8);
    goto LABEL_4;
  }

  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_10000E098(v28, v17, v18, v19, v20, v21, v22, v23);
  }

  [DSAnalytics sendAnalyticsWithEvent:0 error:*(v28[0] + 40)];
  _Block_object_dispose(&v27, 8);

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)deviceIdentityPublicKeyDigest
{
  error = 0;
  v3 = SecKeyCopyPublicKey([(DAStrongDeviceIdentity *)self deviceIdentityKey]);
  v4 = SecKeyCopyExternalRepresentation(v3, &error);
  CFRelease(v3);
  if (error)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000E10C(&error, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    v12 = [(DAStrongDeviceIdentity *)self SHA256ForData:v4];
  }

  return v12;
}

- (void)requestAttestationCertWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_1000064C0;
  v19[4] = sub_1000064D0;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000064C0;
  v17[4] = sub_1000064D0;
  v18 = 0;
  v7 = dispatch_queue_create("com.apple.Diagnostics.requestAttestationCertificate", &_dispatch_queue_attr_concurrent);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007474;
  block[3] = &unk_10001C968;
  v12 = dispatch_group_create();
  v13 = optionsCopy;
  v15 = v19;
  v16 = v17;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = optionsCopy;
  v10 = v12;
  dispatch_group_async(v10, v7, block);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

@end