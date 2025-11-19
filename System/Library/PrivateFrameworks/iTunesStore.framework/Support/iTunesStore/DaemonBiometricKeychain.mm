@interface DaemonBiometricKeychain
+ (id)sharedInstance;
+ (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5;
+ (void)createAttestationDataWithMessage:(id)a3 connection:(id)a4;
+ (void)createX509CertChainDataWithMessage:(id)a3 connection:(id)a4;
+ (void)deleteKeychainTokensWithMessage:(id)a3 connection:(id)a4;
+ (void)getPublicKeyDataWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)signDataUsingContextWithMessage:(id)a3 connection:(id)a4;
+ (void)signDataWithMessage:(id)a3 connection:(id)a4;
+ (void)x509CertChainDataWithMessage:(id)a3 connection:(id)a4;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (BOOL)_isDeviceUnlocked;
- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)a3 error:(id *)a4;
- (DaemonBiometricKeychain)init;
- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)a3 error:(id *)a4;
- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)a3 error:(id *)a4;
- (id)_amsCertificateLabelForPurpose:(int64_t)a3;
- (id)_amsKeychainLabelForPurpose:(int64_t)a3;
- (id)_constraintsForExtendedActions;
- (id)_constraintsForPurchase;
- (id)_copyPublicKeyDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)_createAttestationDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)_createX509CertChainDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)_presentPaymentSheetForChallenge:(id)a3 authContext:(id)a4 biometricContext:(id)a5 touchIDContext:(id)a6 touchIDOptions:(id)a7 accessControlRef:(__SecAccessControl *)a8 passwordToken:(id *)a9 paymentTokenData:(id *)a10 fpanID:(id *)a11 error:(id *)a12;
- (id)_publicKeyDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 regenerateKeys:(BOOL)a5 error:(id *)a6;
- (id)_queryForPrivateKeyWithLabel:(id)a3 prompt:(id)a4 useTokenID:(BOOL)a5;
- (id)_regenerateKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)_signData:(id)a3 context:(id)a4 error:(id *)a5;
- (id)createAttestationDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)createX509CertChainDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 error:(id *)a5;
- (id)publicKeyDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 regenerateKeys:(BOOL)a5 error:(id *)a6;
- (id)signDataWithKeychain:(id)a3 accountIdentifier:(id)a4 purpose:(int64_t)a5 localAuthContext:(id)a6 localAuthOptions:(id)a7 error:(id *)a8;
- (id)signData_:(id)a3 context:(id)a4 error:(id *)a5;
- (id)x509CertChainDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 regenerateCerts:(BOOL)a5 error:(id *)a6;
@end

@implementation DaemonBiometricKeychain

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100153E5C;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100383F48 != -1)
  {
    dispatch_once(&qword_100383F48, block);
  }

  v2 = qword_100383F40;

  return v2;
}

- (DaemonBiometricKeychain)init
{
  v8.receiver = self;
  v8.super_class = DaemonBiometricKeychain;
  v2 = [(DaemonBiometricKeychain *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.DaemonBiometricKeychain", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("com.apple.itunesstored.DaemonBiometricKeychain.X509", 0);
    dispatchQueueX509 = v2->_dispatchQueueX509;
    v2->_dispatchQueueX509 = v5;
  }

  return v2;
}

- (id)createAttestationDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1001542B0;
  v45 = sub_1001542C0;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1001542B0;
  v39 = sub_1001542C0;
  v40 = 0;
  v9 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1001542C8;
  v28 = &unk_100329F08;
  v32 = &v41;
  v29 = self;
  v11 = v8;
  v33 = &v35;
  v34 = a4;
  v30 = v11;
  v12 = v9;
  v31 = v12;
  dispatch_async(dispatchQueue, &block);
  v13 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v12, v13);
  if (!v42[5] && !v36[5])
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    v16 = [v14 shouldLogToDisk];
    v17 = [v14 OSLogObject];
    v18 = v17;
    if (v16)
    {
      v15 |= 2u;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v47 = 138543618;
      v48 = v19;
      v49 = 2112;
      v50 = v11;
      v20 = v19;
      LODWORD(v24) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_13:

        goto LABEL_14;
      }

      v18 = [NSString stringWithCString:v21 encoding:4, &v47, v24, block, v26, v27, v28, v29, v30];
      free(v21);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a5)
  {
    *a5 = v36[5];
  }

  v22 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v22;
}

- (id)createX509CertChainDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1001542B0;
  v46 = sub_1001542C0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1001542B0;
  v40 = sub_1001542C0;
  v41 = 0;
  v9 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_100154A80;
  v29 = &unk_100329F08;
  v33 = &v42;
  v30 = self;
  v11 = v8;
  v34 = &v36;
  v35 = a4;
  v31 = v11;
  v12 = v9;
  v32 = v12;
  dispatch_async(dispatchQueue, &block);
  v13 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    v16 = [v14 shouldLogToDisk];
    v17 = [v14 OSLogObject];
    v18 = v17;
    if (v16)
    {
      v15 |= 2u;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v19 = objc_opt_class();
      v20 = [NSNumber numberWithInteger:a4];
      v48 = 138543874;
      v49 = v19;
      v50 = 2112;
      v51 = v11;
      v52 = 2114;
      v53 = v20;
      LODWORD(v25) = 32;
      v24 = &v48;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = [NSString stringWithCString:v21 encoding:4, &v48, v25, block, v27, v28, v29, v30, v31];
      free(v21);
      v24 = v18;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  if (a5)
  {
    *a5 = v37[5];
  }

  v22 = [NSArray arrayWithArray:v43[5], v24];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v22;
}

- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1001542B0;
  v23 = sub_1001542C0;
  v24 = 0;
  v7 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100154C9C;
  block[3] = &unk_100329F30;
  v17 = &v25;
  block[4] = self;
  v9 = v6;
  v15 = v9;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  dispatch_async(dispatchQueue, block);
  v11 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v10, v11);
  if (a4)
  {
    *a4 = v20[5];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)publicKeyDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 regenerateKeys:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1001542B0;
  v46 = sub_1001542C0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1001542B0;
  v40 = sub_1001542C0;
  v41 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155100;
  block[3] = &unk_100329F58;
  v32 = &v42;
  block[4] = self;
  v13 = v10;
  v33 = &v36;
  v34 = a4;
  v35 = a5;
  v30 = v13;
  v14 = v11;
  v31 = v14;
  dispatch_async(v12, block);

  v15 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v43[5] && !v37[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    v18 = [v16 shouldLogToDisk];
    v19 = [v16 OSLogObject];
    v20 = v19;
    if (v18)
    {
      v17 |= 2u;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v21 = objc_opt_class();
      v48 = 138543618;
      v49 = v21;
      v50 = 2112;
      v51 = v13;
      v22 = v21;
      LODWORD(v28) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_13:

        v24 = SSError();
        v25 = v37[5];
        v37[5] = v24;

        goto LABEL_14;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v48, v28];
      free(v23);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a6)
  {
    *a6 = v37[5];
  }

  v26 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v26;
}

- (id)signData_:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1001542B0;
  v47 = sub_1001542C0;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1001542B0;
  v41 = sub_1001542C0;
  v42 = 0;
  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100155560;
  v30 = &unk_100329F80;
  v35 = &v43;
  v31 = self;
  v12 = v8;
  v32 = v12;
  v13 = v9;
  v33 = v13;
  v36 = &v37;
  v14 = v10;
  v34 = v14;
  dispatch_async(v11, &block);

  v15 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v44[5] && !v38[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    v18 = [v16 shouldLogToDisk];
    v19 = [v16 OSLogObject];
    v20 = v19;
    if (v18)
    {
      v17 |= 2u;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v21 = objc_opt_class();
      v22 = [v13 accountIdentifier];
      v49 = 138543618;
      v50 = v21;
      v51 = 2112;
      v52 = v22;
      LODWORD(v26) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_13:

        goto LABEL_14;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v49, v26, block, v28, v29, v30, v31, v32, v33];
      free(v23);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a5)
  {
    *a5 = v38[5];
  }

  v24 = v44[5];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v24;
}

- (id)x509CertChainDataForAccountIdentifier_:(id)a3 purpose:(int64_t)a4 regenerateCerts:(BOOL)a5 error:(id *)a6
{
  v73 = a5;
  v7 = a3;
  v77 = 0;
  result = 0;
  v8 = [ISBiometricStore keychainLabelForKeyWithAccountID:v7 purpose:a4];
  if (!v8)
  {
    v39 = +[SSLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    v40 = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      v40 |= 2u;
    }

    v41 = [v39 OSLogObject];
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = [NSNumber numberWithInteger:a4];
      v79 = 138412802;
      v80 = v42;
      v81 = 2112;
      v82 = v7;
      v83 = 2112;
      v84 = v44;
      LODWORD(v66) = 32;
      v64 = &v79;
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        v46 = [NSString stringWithCString:v45 encoding:4, &v79, v66];
        free(v45);
        v64 = v46;
        SSFileLog();
      }
    }

    else
    {
    }

    goto LABEL_40;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [NSString stringWithFormat:@"%@-cert", v8];
  v11 = kSecAttrLabel;
  [v9 setObject:v10 forKeyedSubscript:kSecAttrLabel];

  v12 = kSecClassCertificate;
  v13 = kSecClass;
  [v9 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
  v14 = SecItemCopyMatching(v9, &result);
  if (v14)
  {
    v15 = v14;
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v17 |= 2u;
    }

    v18 = [v16 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v19 = v9;
      v20 = objc_opt_class();
      v69 = v8;
      v67 = v20;
      v21 = [NSNumber numberWithInteger:a4];
      v22 = [NSNumber numberWithInt:v15];
      v79 = 138544130;
      v80 = v20;
      v9 = v19;
      v81 = 2112;
      v82 = v7;
      v83 = 2114;
      v84 = v21;
      v85 = 2114;
      v86 = v22;
      LODWORD(v66) = 42;
      v64 = &v79;
      v23 = _os_log_send_and_compose_impl();

      v8 = v69;
      if (!v23)
      {
LABEL_13:

        v12 = kSecClassCertificate;
        v11 = kSecAttrLabel;
        v13 = kSecClass;
        goto LABEL_14;
      }

      v18 = [NSString stringWithCString:v23 encoding:4, &v79, v66];
      free(v23);
      v64 = v18;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v24 = objc_alloc_init(NSMutableDictionary);
  [v24 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:v11];
  [v24 setObject:v12 forKeyedSubscript:v13];
  [v24 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  v25 = SecItemCopyMatching(v24, &v77);
  if (v25)
  {
    v26 = v25;
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v28 |= 2u;
    }

    v29 = [v27 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v70 = v8;
      v72 = v7;
      v30 = objc_opt_class();
      v68 = v30;
      v31 = [NSNumber numberWithInteger:a4];
      v32 = [NSNumber numberWithInt:v26];
      v79 = 138544130;
      v80 = v30;
      v81 = 2112;
      v8 = v70;
      v82 = v72;
      v83 = 2114;
      v84 = v31;
      v85 = 2114;
      v86 = v32;
      LODWORD(v66) = 42;
      v64 = &v79;
      v33 = _os_log_send_and_compose_impl();

      v7 = v72;
      if (!v33)
      {
LABEL_25:

        goto LABEL_26;
      }

      v29 = [NSString stringWithCString:v33 encoding:4, &v79, v66];
      free(v33);
      v64 = v29;
      SSFileLog();
    }

    goto LABEL_25;
  }

LABEL_26:

  if (result && v77)
  {
    v34 = objc_alloc_init(NSMutableArray);
    v35 = SecCertificateCopyData(result);
    [v34 addObject:v35];

    v36 = SecCertificateCopyData(v77);
    [v34 addObject:v36];

    v37 = [v34 copy];
    v38 = 0;
    goto LABEL_65;
  }

LABEL_40:
  if (!v73)
  {
    v38 = 0;
    v37 = 0;
    goto LABEL_66;
  }

  v47 = +[SSLogConfig sharedDaemonConfig];
  if (!v47)
  {
    v47 = +[SSLogConfig sharedConfig];
  }

  v48 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    v48 |= 2u;
  }

  v49 = [v47 OSLogObject];
  if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v48 &= 2u;
  }

  if (!v48)
  {
    goto LABEL_50;
  }

  v50 = objc_opt_class();
  v51 = v50;
  v52 = [NSNumber numberWithInteger:a4];
  v79 = 138543874;
  v80 = v50;
  v81 = 2112;
  v82 = v7;
  v83 = 2114;
  v84 = v52;
  LODWORD(v66) = 32;
  v65 = &v79;
  v53 = _os_log_send_and_compose_impl();

  if (v53)
  {
    v49 = [NSString stringWithCString:v53 encoding:4, &v79, v66];
    free(v53);
    v65 = v49;
    SSFileLog();
LABEL_50:
  }

  v76 = 0;
  v37 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:v7 purpose:a4 error:&v76];
  v54 = v76;
  v38 = v54;
  if (!v37 || v54)
  {
    v34 = +[SSLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    v55 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v55 |= 2u;
    }

    v56 = [v34 OSLogObject];
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v55 &= 2u;
    }

    if (v55)
    {
      v71 = v8;
      v57 = objc_opt_class();
      v58 = v57;
      v59 = [NSNumber numberWithInteger:a4];
      v79 = 138544130;
      v80 = v57;
      v81 = 2112;
      v82 = v7;
      v83 = 2114;
      v84 = v59;
      v85 = 2114;
      v86 = v38;
      LODWORD(v66) = 42;
      v60 = _os_log_send_and_compose_impl();

      if (!v60)
      {
        v8 = v71;
        goto LABEL_65;
      }

      v56 = [NSString stringWithCString:v60 encoding:4, &v79, v66];
      free(v60);
      SSFileLog();
      v8 = v71;
    }

LABEL_65:
  }

LABEL_66:
  if (a6)
  {
    v61 = v38;
    *a6 = v38;
  }

  v62 = v37;

  return v62;
}

- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)a3 error:(id *)a4
{
  v5 = SecKeyCopyAttributes(a3);
  if (!v5)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      LODWORD(v25) = 138543362;
      *(&v25 + 4) = objc_opt_class();
      v22 = *(&v25 + 4);
      LODWORD(v24) = 12;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
        goto LABEL_31;
      }

      v21 = [NSString stringWithCString:v23 encoding:4, &v25, v24, v25];
      free(v23);
      SSFileLog();
    }

LABEL_31:
    v10 = 0;
    if (!a4)
    {
      return v10;
    }

    goto LABEL_18;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(v5, kSecAttrAccessControl);
  if (Value)
  {
    v8 = Value;
    TypeID = SecAccessControlGetTypeID();
    if (TypeID == CFGetTypeID(v8))
    {
      v10 = CFRetain(v8);
      goto LABEL_17;
    }
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_15;
  }

  LODWORD(v25) = 138543362;
  *(&v25 + 4) = objc_opt_class();
  v15 = *(&v25 + 4);
  LODWORD(v24) = 12;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [NSString stringWithCString:v16 encoding:4, &v25, v24, v25];
    free(v16);
    SSFileLog();
LABEL_15:
  }

  v10 = 0;
LABEL_17:
  CFRelease(v6);
  if (a4)
  {
LABEL_18:
    *a4 = 0;
  }

  return v10;
}

- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)a3 error:(id *)a4
{
  result = 0;
  v6 = a3;
  v7 = [v6 accountIdentifier];
  v8 = [v6 isExtendedAction];

  v9 = v8;
  v10 = [ISBiometricStore keychainLabelForAccountID:v7 purpose:v8];
  v38[0] = kSecClass;
  v38[1] = kSecAttrKeyClass;
  v39[0] = kSecClassKey;
  v39[1] = kSecAttrKeyClassPrivate;
  v38[2] = kSecAttrLabel;
  v38[3] = kSecReturnRef;
  v39[2] = v10;
  v39[3] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
  v12 = SecItemCopyMatching(v11, &result);
  if (v12 == -25300)
  {
    v13 = [(__CFDictionary *)v11 mutableCopy];
    v14 = [(DaemonBiometricKeychain *)self _amsKeychainLabelForPurpose:v9];
    [v13 setObject:v14 forKeyedSubscript:kSecAttrLabel];

    v12 = SecItemCopyMatching(v13, &result);
  }

  if (v12)
  {
    v15 = SSError();
    v16 = [NSNumber numberWithInt:v12];
    v17 = SSErrorBySettingUserInfoValue();

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_15;
    }

    v22 = objc_opt_class();
    v34 = 138543618;
    v35 = v22;
    v36 = 2114;
    v37 = v17;
    v23 = v22;
    LODWORD(v31) = 22;
LABEL_13:
    v24 = _os_log_send_and_compose_impl();

    if (!v24)
    {
LABEL_16:

      v25 = 0;
      goto LABEL_19;
    }

    v21 = [NSString stringWithCString:v24 encoding:4, &v34, v31];
    free(v24);
    SSFileLog();
LABEL_15:

    goto LABEL_16;
  }

  if (!result)
  {
    v17 = SSError();
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v28 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 &= 2u;
    }

    if (!v29)
    {
      goto LABEL_15;
    }

    v30 = objc_opt_class();
    v34 = 138543362;
    v35 = v30;
    v23 = v30;
    LODWORD(v31) = 12;
    goto LABEL_13;
  }

  v32 = 0;
  v25 = [(DaemonBiometricKeychain *)self copyAccessControlListForKey:result error:&v32];
  v17 = v32;
LABEL_19:
  if (result)
  {
    CFRelease(result);
  }

  if (a4)
  {
    v26 = v17;
    *a4 = v17;
  }

  return v25;
}

- (id)signDataWithKeychain:(id)a3 accountIdentifier:(id)a4 purpose:(int64_t)a5 localAuthContext:(id)a6 localAuthOptions:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1001542B0;
  v67 = sub_1001542C0;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1001542B0;
  v61 = sub_1001542C0;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v17 = dispatch_semaphore_create(0);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100156C08;
  v43[3] = &unk_100329FA8;
  v52 = a5;
  v18 = v14;
  v44 = v18;
  v19 = v15;
  v45 = v19;
  v46 = self;
  v49 = &v57;
  v20 = v13;
  v47 = v20;
  v50 = &v53;
  v51 = &v63;
  v21 = v16;
  v22 = v17;
  v48 = v22;
  [v19 evaluatePolicy:1 options:v16 reply:v43];
  v23 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v22, v23);
  if (!v64[5] && !v58[5])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    v26 = [v24 shouldLogToDisk];
    v40 = v24;
    v41 = v21;
    v27 = [v24 OSLogObject];
    v28 = v27;
    if (v26)
    {
      v29 = v25 | 2;
    }

    else
    {
      v29 = v25;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 2;
    }

    v31 = v28;
    if (v30)
    {
      v32 = v40;
      v21 = v41;
      v39 = objc_opt_class();
      v33 = [NSNumber numberWithInteger:a5];
      v69 = 138543874;
      v70 = v39;
      v71 = 2112;
      v72 = v18;
      v73 = 2114;
      v74 = v33;
      LODWORD(v38) = 32;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_16:

        goto LABEL_17;
      }

      v31 = [NSString stringWithCString:v34 encoding:4, &v69, v38];
      free(v34);
      SSFileLog();
    }

    else
    {
      v32 = v40;
      v21 = v41;
    }

    goto LABEL_16;
  }

LABEL_17:
  v35 = v54[3];
  if (v35)
  {
    CFRelease(v35);
  }

  if (a8)
  {
    *a8 = v58[5];
  }

  v36 = v64[5];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);

  return v36;
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"createAttestationDataWithMessage:connection:" forMessage:179];
  [v4 addObserver:a1 selector:"createX509CertChainDataWithMessage:connection:" forMessage:204];
  [v4 addObserver:a1 selector:"deleteKeychainTokensWithMessage:connection:" forMessage:185];
  [v4 addObserver:a1 selector:"getPublicKeyDataWithMessage:connection:" forMessage:180];
  [v4 addObserver:a1 selector:"signDataWithMessage:connection:" forMessage:181];
  [v4 addObserver:a1 selector:"signDataUsingContextWithMessage:connection:" forMessage:192];
  [v4 addObserver:a1 selector:"x509CertChainDataWithMessage:connection:" forMessage:205];
}

+ (void)createAttestationDataWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015864C;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)createX509CertChainDataWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015883C;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)deleteKeychainTokensWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158A2C;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getPublicKeyDataWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158BF8;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)signDataWithMessage:(id)a3 connection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100158E08;
  v8[3] = &unk_100329FF8;
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v6 = v10;
  v7 = v9;
  [a1 _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)signDataUsingContextWithMessage:(id)a3 connection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100159340;
  v8[3] = &unk_100329FF8;
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v6 = v10;
  v7 = v9;
  [a1 _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)x509CertChainDataWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015982C;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

- (id)_amsCertificateLabelForPurpose:(int64_t)a3
{
  v3 = @"com.apple.AppleMediaServices.cert.X509.client.extended";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"com.apple.AppleMediaServices.cert.X509.client.primary";
  }
}

- (id)_amsKeychainLabelForPurpose:(int64_t)a3
{
  v4 = +[ISBiometricStore shouldUseX509];
  if (a3 == 1)
  {
    v5 = @"com.apple.AppleMediaServices.extendedKey";
    v6 = @"com.apple.AppleMediaServices.cert.X509.extended";
  }

  else
  {
    if (a3)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v5 = @"com.apple.AppleMediaServices.primaryKey";
    v6 = @"com.apple.AppleMediaServices.cert.X509.primary";
  }

  if (v4)
  {
    v5 = v6;
  }

  v7 = v5;
LABEL_9:

  return v7;
}

+ (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100159B58;
  v15[3] = &unk_10032A020;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (BOOL)_isDeviceUnlocked
{
  v2 = ISWeakLinkedSymbolForString();
  v3 = v2(0);
  v4 = v3;
  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return !v4 || v4 == 3;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v10 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [NSString stringWithCString:v11 encoding:4, &v15, v14, v15];
    free(v11);
    SSFileLog();
LABEL_15:
  }

  return !v4 || v4 == 3;
}

- (id)_constraintsForExtendedActions
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = objc_alloc_init(NSMutableDictionary);
  v13 = @"pbioc";
  v4 = objc_opt_new();
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v3 setObject:v5 forKeyedSubscript:@"cbio"];

  [v3 setObject:&off_10034BF10 forKeyedSubscript:@"pmuc"];
  v6 = objc_alloc_init(NSMutableDictionary);
  v11 = @"pbioc";
  v7 = objc_opt_new();
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v6 setObject:v8 forKeyedSubscript:@"cbio"];

  [v6 setObject:&off_10034BF10 forKeyedSubscript:@"pmuc"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"oa"];
  [v2 setObject:v3 forKeyedSubscript:@"ock"];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"odel"];
  [v2 setObject:v6 forKeyedSubscript:@"osgn"];
  v9 = [NSDictionary dictionaryWithDictionary:v2];

  return v9;
}

- (id)_constraintsForPurchase
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:&off_10034BF40 forKeyedSubscript:@"pkofn"];
  [v2 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v23[0] = @"pbioc";
  v3 = objc_opt_new();
  v23[1] = @"pbiot";
  v24[0] = v3;
  v24[1] = &off_10034BF40;
  v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v2 setObject:v4 forKeyedSubscript:@"cbio"];

  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"cbtn"];
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_10034BF10 forKeyedSubscript:@"pkofn"];
  [v5 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v21[0] = @"pbioc";
  v6 = objc_opt_new();
  v21[1] = @"pbiot";
  v22[0] = v6;
  v22[1] = &off_10034BF10;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v5 setObject:v7 forKeyedSubscript:@"cbio"];

  [v5 setObject:v2 forKeyedSubscript:@"ckon"];
  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_10034BF40 forKeyedSubscript:@"pkofn"];
  [v8 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v19[0] = @"pbioc";
  v9 = objc_opt_new();
  v19[1] = @"pbiot";
  v20[0] = v9;
  v20[1] = &off_10034BF40;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v8 setObject:v10 forKeyedSubscript:@"cbio"];

  [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"cbtn"];
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:&off_10034BF10 forKeyedSubscript:@"pkofn"];
  [v11 setObject:&off_10034BF10 forKeyedSubscript:@"pmoc"];
  [v11 setObject:&off_10034BF40 forKeyedSubscript:@"pmuc"];
  v17[0] = @"pbioc";
  v12 = objc_opt_new();
  v17[1] = @"pbiot";
  v18[0] = v12;
  v18[1] = &off_10034BF10;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v11 setObject:v13 forKeyedSubscript:@"cbio"];

  [v11 setObject:v8 forKeyedSubscript:@"ckon"];
  v14 = objc_alloc_init(NSMutableDictionary);
  [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"oa"];
  [v14 setObject:v5 forKeyedSubscript:@"ock"];
  [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"odel"];
  [v14 setObject:v11 forKeyedSubscript:@"osgn"];
  v15 = [NSDictionary dictionaryWithDictionary:v14];

  return v15;
}

- (id)_copyPublicKeyDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  result = 0;
  cf = 0;
  error = 0;
  [NSString stringWithFormat:@"%@", v7];
  v134 = v133 = v7;
  v135 = a4;
  v8 = [ISBiometricStore keychainLabelForCertWithAccountID:v7 purpose:a4];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:v8 forKeyedSubscript:kSecAttrLabel];
  [v9 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  v10 = SecItemCopyMatching(v9, &result);
  if (v10 == -25300 || (v11 = v10, (v12 = result) == 0))
  {
    v13 = [(DaemonBiometricKeychain *)self _amsCertificateLabelForPurpose:a4];

    [v9 setObject:v13 forKeyedSubscript:kSecAttrLabel];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v15 |= 2u;
    }

    v16 = [v14 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v139 = 138543618;
      v140 = v17;
      v141 = 2114;
      v142 = v13;
      v18 = v17;
      LODWORD(v125) = 22;
      v122 = &v139;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_14:

        v11 = SecItemCopyMatching(v9, &result);
        v12 = result;
        goto LABEL_15;
      }

      v16 = [NSString stringWithCString:v19 encoding:4, &v139, v125];
      free(v19);
      v122 = v16;
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13 = v8;
LABEL_15:
  v20 = self;
  v131 = v9;
  if (v11 == -25300 || !v12)
  {
    v38 = +[SSLogConfig sharedDaemonConfig];
    if (!v38)
    {
      v38 = +[SSLogConfig sharedConfig];
    }

    v39 = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      v39 |= 2u;
    }

    v40 = [v38 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = SSHashIfNeeded();
      v45 = [NSNumber numberWithInteger:v135];
      v139 = 138543874;
      v140 = v42;
      v141 = 2112;
      v142 = v44;
      v143 = 2114;
      v144 = v45;
      LODWORD(v125) = 32;
      v123 = &v139;
      v46 = _os_log_send_and_compose_impl();

      self = v20;
      if (!v46)
      {
        goto LABEL_40;
      }

      v40 = [NSString stringWithCString:v46 encoding:4, &v139, v125];
      free(v46);
      v123 = v40;
      SSFileLog();
    }

LABEL_40:
    v47 = [ISBiometricStore keychainLabelForAccountID:v7 purpose:v135];

    v23 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v47 prompt:0];
    v48 = +[SSLogConfig sharedDaemonConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    v128 = v47;
    v49 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      v49 |= 2u;
    }

    v50 = [v48 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v53 = v52;
      v54 = SSHashIfNeeded();
      v55 = [NSNumber numberWithInteger:v135];
      v139 = 138543874;
      v140 = v52;
      v141 = 2112;
      v142 = v54;
      v143 = 2114;
      v144 = v55;
      LODWORD(v125) = 32;
      v124 = &v139;
      v56 = _os_log_send_and_compose_impl();

      if (!v56)
      {
        goto LABEL_51;
      }

      v50 = [NSString stringWithCString:v56 encoding:4, &v139, v125];
      free(v56);
      v124 = v50;
      SSFileLog();
    }

LABEL_51:
    v57 = SecItemCopyMatching(v23, &cf);
    v58 = +[SSLogConfig sharedDaemonConfig];
    if (!v58)
    {
      v58 = +[SSLogConfig sharedConfig];
    }

    v59 = [v58 shouldLog];
    if ([v58 shouldLogToDisk])
    {
      v59 |= 2u;
    }

    v60 = [v58 OSLogObject];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = v59;
    }

    else
    {
      v61 = v59 & 2;
    }

    v130 = v23;
    v62 = v20;
    if (v61)
    {
      v63 = objc_opt_class();
      v64 = v63;
      v65 = SSHashIfNeeded();
      v66 = [NSNumber numberWithInteger:v135];
      v139 = 138543874;
      v140 = v63;
      v141 = 2112;
      v142 = v65;
      v143 = 2114;
      v144 = v66;
      LODWORD(v125) = 32;
      v122 = &v139;
      v67 = _os_log_send_and_compose_impl();

      v23 = v130;
      v62 = v20;

      v68 = kSecAttrLabel;
      if (!v67)
      {
LABEL_63:

        if (v57 != -25300 && cf)
        {
          if (v57)
          {
            goto LABEL_66;
          }

          goto LABEL_87;
        }

        v81 = [(DaemonBiometricKeychain *)v62 _amsKeychainLabelForPurpose:v135, v122];
        v82 = [(__CFDictionary *)v23 mutableCopy];
        [v82 setObject:v81 forKeyedSubscript:v68];
        v83 = +[SSLogConfig sharedDaemonConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        v84 = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          v84 |= 2u;
        }

        v85 = [v83 OSLogObject];
        if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v84 &= 2u;
        }

        if (v84)
        {
          v86 = objc_opt_class();
          v139 = 138543618;
          v140 = v86;
          v141 = 2114;
          v142 = v81;
          v87 = v86;
          LODWORD(v125) = 22;
          v122 = &v139;
          v88 = _os_log_send_and_compose_impl();

          if (!v88)
          {
            goto LABEL_86;
          }

          v85 = [NSString stringWithCString:v88 encoding:4, &v139, v125];
          free(v88);
          v122 = v85;
          SSFileLog();
        }

LABEL_86:
        v57 = SecItemCopyMatching(v82, &cf);

        if (v57)
        {
LABEL_66:
          v69 = SSError();
          v70 = [NSNumber numberWithInt:v57];
          v37 = SSErrorBySettingUserInfoValue();

          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v71 = [v25 shouldLog];
          if ([v25 shouldLogToDisk])
          {
            v72 = v71 | 2;
          }

          else
          {
            v72 = v71;
          }

          v73 = [v25 OSLogObject];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = v72;
          }

          else
          {
            v74 = v72 & 2;
          }

          if (v74)
          {
            v75 = objc_opt_class();
            v76 = v75;
            v77 = SSHashIfNeeded();
            v78 = [NSNumber numberWithInteger:v135];
            v79 = [NSNumber numberWithInt:v57];
            v139 = 138544130;
            v140 = v75;
            v141 = 2112;
            v142 = v77;
            v143 = 2114;
            v144 = v78;
            v145 = 2114;
            v146 = v79;
            LODWORD(v125) = 42;
            v80 = _os_log_send_and_compose_impl();

LABEL_146:
            if (!v80)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              LOBYTE(v36) = 1;
              v23 = v130;
              goto LABEL_165;
            }

            v73 = [NSString stringWithCString:v80 encoding:4, &v139, v125];
            free(v80);
            SSFileLog();
            v23 = v130;
          }

LABEL_148:
          v13 = v128;

          v33 = 0;
          v34 = 0;
          goto LABEL_149;
        }

LABEL_87:
        if (cf)
        {
          v89 = SecKeyCopyPublicKey(cf);
          if (v89)
          {
            v33 = v89;

            goto LABEL_92;
          }

          v37 = SSError();
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v110 = [v25 shouldLog];
          if ([v25 shouldLogToDisk])
          {
            v111 = v110 | 2;
          }

          else
          {
            v111 = v110;
          }

          v73 = [v25 OSLogObject];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v111;
          }

          else
          {
            v112 = v111 & 2;
          }

          if (!v112)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v37 = SSError();
          v25 = +[SSLogConfig sharedDaemonConfig];
          if (!v25)
          {
            v25 = +[SSLogConfig sharedConfig];
          }

          v100 = [v25 shouldLog];
          if ([v25 shouldLogToDisk])
          {
            v101 = v100 | 2;
          }

          else
          {
            v101 = v100;
          }

          v73 = [v25 OSLogObject];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v102 = v101;
          }

          else
          {
            v102 = v101 & 2;
          }

          if (!v102)
          {
            goto LABEL_148;
          }
        }

        v113 = objc_opt_class();
        v114 = v113;
        v115 = SSHashIfNeeded();
        v116 = [NSNumber numberWithInteger:v135];
        v139 = 138543874;
        v140 = v113;
        v141 = 2112;
        v142 = v115;
        v143 = 2114;
        v144 = v116;
        LODWORD(v125) = 32;
        v80 = _os_log_send_and_compose_impl();

        goto LABEL_146;
      }

      v60 = [NSString stringWithCString:v67 encoding:4, &v139, v125];
      free(v67);
      v122 = v60;
      SSFileLog();
    }

    else
    {
      v68 = kSecAttrLabel;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    v21 = SSError();
    v22 = [NSNumber numberWithInt:v11];
    v126 = SSErrorBySettingUserInfoValue();

    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      v24 |= 2u;
    }

    v25 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v129 = v23;
      v27 = objc_opt_class();
      v28 = v27;
      v29 = SSHashIfNeeded();
      v30 = [NSNumber numberWithInteger:v135];
      v31 = [NSNumber numberWithInt:v11];
      v139 = 138544130;
      v140 = v27;
      v141 = 2112;
      v142 = v29;
      v143 = 2114;
      v144 = v30;
      v145 = 2114;
      v146 = v31;
      LODWORD(v125) = 42;
      v32 = _os_log_send_and_compose_impl();

      if (!v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        LOBYTE(v36) = 1;
        v23 = v129;
        v37 = v126;
        goto LABEL_167;
      }

      v25 = [NSString stringWithCString:v32 encoding:4, &v139, v125];
      free(v32);
      v23 = v129;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(v36) = 1;
    v37 = v126;
    goto LABEL_166;
  }

  v90 = SecCertificateCopyKey(v12);
  if (!v90)
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v103 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      v103 |= 2u;
    }

    v25 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v104 = v103;
    }

    else
    {
      v104 = v103 & 2;
    }

    if (v104)
    {
      v96 = v23;
      v105 = objc_opt_class();
      v106 = v105;
      v107 = SSHashIfNeeded();
      v108 = [NSNumber numberWithInteger:v135];
      v139 = 138543874;
      v140 = v105;
      v141 = 2112;
      v142 = v107;
      v143 = 2114;
      v144 = v108;
      LODWORD(v125) = 32;
      v109 = _os_log_send_and_compose_impl();

      if (!v109)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        LOBYTE(v36) = 1;
        goto LABEL_162;
      }

      v25 = [NSString stringWithCString:v109 encoding:4, &v139, v125];
      free(v109);
      v23 = v96;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    v37 = 0;
LABEL_149:
    v35 = 0;
    LOBYTE(v36) = 1;
    goto LABEL_166;
  }

  v33 = v90;
  v128 = v13;
LABEL_92:
  v91 = SecKeyCopyExternalRepresentation(v33, &error);
  v34 = v91;
  if (error)
  {
    v37 = error;
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      LODWORD(v36) = v36 | 2;
    }

    v25 = [(__CFDictionary *)v23 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v36) = v36 & 2;
    }

    if (v36)
    {
      v127 = v37;
      v92 = v23;
      v93 = objc_opt_class();
      v94 = v93;
      v95 = SSHashIfNeeded();
      v139 = 138543874;
      v140 = v93;
      v141 = 2112;
      v142 = v95;
      v143 = 2114;
      v144 = error;
      LODWORD(v125) = 32;
      v36 = _os_log_send_and_compose_impl();

      if (v36)
      {
        v25 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
        free(v36);
        v23 = v92;
        SSFileLog();
        LOBYTE(v36) = 0;
LABEL_102:
        v35 = 0;
        v37 = v127;
        v13 = v128;
LABEL_166:

        goto LABEL_167;
      }

      goto LABEL_181;
    }

    goto LABEL_164;
  }

  if (v91)
  {
    v34 = v91;
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      LODWORD(v36) = v36 | 2;
    }

    v25 = [(__CFDictionary *)v23 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v36) = v36 & 2;
    }

    if (!v36)
    {
      goto LABEL_114;
    }

    v96 = v23;
    v97 = objc_opt_class();
    v98 = v97;
    v99 = SSHashIfNeeded();
    v139 = 138543618;
    v140 = v97;
    v141 = 2112;
    v142 = v99;
    LODWORD(v125) = 22;
    v36 = _os_log_send_and_compose_impl();

    if (v36)
    {
      v25 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
      free(v36);
      v23 = v96;
      SSFileLog();
      LOBYTE(v36) = 0;
LABEL_114:
      v37 = 0;
      v35 = v34;
LABEL_165:
      v13 = v128;
      goto LABEL_166;
    }

    v13 = v128;
    v35 = v34;
LABEL_162:
    v23 = v96;
    v37 = 0;
    goto LABEL_167;
  }

  v37 = SSError();
  v23 = +[SSLogConfig sharedDaemonConfig];
  if (!v23)
  {
    v23 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v36) = [(__CFDictionary *)v23 shouldLog];
  if ([(__CFDictionary *)v23 shouldLogToDisk])
  {
    LODWORD(v36) = v36 | 2;
  }

  v25 = [(__CFDictionary *)v23 OSLogObject];
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v36) = v36 & 2;
  }

  if (!v36)
  {
    v34 = 0;
LABEL_164:
    v35 = 0;
    goto LABEL_165;
  }

  v127 = v37;
  v92 = v23;
  v117 = objc_opt_class();
  v118 = v117;
  v119 = SSHashIfNeeded();
  v139 = 138543618;
  v140 = v117;
  v141 = 2112;
  v142 = v119;
  LODWORD(v125) = 22;
  v36 = _os_log_send_and_compose_impl();

  if (v36)
  {
    v25 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
    free(v36);
    v23 = v92;
    SSFileLog();
    LOBYTE(v36) = 0;
    v34 = 0;
    goto LABEL_102;
  }

  v34 = 0;
LABEL_181:
  v35 = 0;
  v23 = v92;
  v37 = v127;
  v13 = v128;
LABEL_167:

  if (cf)
  {
    CFRelease(cf);
  }

  if ((v36 & 1) == 0)
  {
    CFRelease(v33);
  }

  if (result)
  {
    CFRelease(result);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (a5)
  {
    v120 = v37;
    *a5 = v37;
  }

  return v35;
}

- (id)_createAttestationDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  result = 0;
  v8 = a3;
  v9 = [NSString stringWithFormat:@"%@", v8];
  v10 = [ISBiometricStore keychainLabelForAccountID:v8 purpose:a4];

  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0];
  v12 = SecItemCopyMatching(v11, &result);
  if (v12)
  {
    v13 = v12;
    v75 = v11;
    v79 = v10;
    v83 = a5;
    v14 = SSError();
    v15 = [NSNumber numberWithInt:v13];
    v16 = SSErrorBySettingUserInfoValue();

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 2;
    }

    if (v21)
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = v9;
      v25 = SSHashIfNeeded();
      v26 = [NSNumber numberWithInt:v13];
      v86 = 138543874;
      v87 = v22;
      v88 = 2112;
      v89 = v25;
      v90 = 2114;
      v91 = v26;
      LODWORD(v72) = 32;
      v27 = _os_log_send_and_compose_impl();

      a5 = v83;
      v11 = v75;
      if (!v27)
      {
LABEL_30:

        v41 = 0;
        v9 = v24;
        v10 = v79;
        goto LABEL_69;
      }

      v20 = [NSString stringWithCString:v27 encoding:4, &v86, v72];
      free(v27);
      SSFileLog();
    }

    else
    {
      v24 = v9;
      a5 = v83;
    }

    goto LABEL_30;
  }

  if (!result)
  {
    v16 = SSError();
    v42 = +[SSLogConfig sharedDaemonConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    v43 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      v43 |= 2u;
    }

    v44 = [v42 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v43;
    }

    else
    {
      v45 = v43 & 2;
    }

    if (v45)
    {
      v46 = objc_opt_class();
      v77 = v46;
      v81 = v16;
      v47 = v9;
      SSHashIfNeeded();
      v49 = v48 = v11;
      v86 = 138543618;
      v87 = v46;
      v88 = 2112;
      v89 = v49;
      LODWORD(v72) = 22;
      v50 = _os_log_send_and_compose_impl();

      v11 = v48;
      v9 = v47;
      v16 = v81;

      if (!v50)
      {
LABEL_42:

        v41 = 0;
        goto LABEL_69;
      }

      v44 = [NSString stringWithCString:v50 encoding:4, &v86, v72];
      free(v50);
      SSFileLog();
    }

    goto LABEL_42;
  }

  v28 = SecKeyCopyAttestationKey();
  v84 = a5;
  if (!v28)
  {
    v16 = 0;
    v51 = +[SSLogConfig sharedDaemonConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    v52 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v52 |= 2u;
    }

    v53 = [v51 OSLogObject];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 2;
    }

    if (v54)
    {
      v55 = objc_opt_class();
      v78 = v55;
      SSHashIfNeeded();
      v57 = v56 = v11;
      v86 = 138543874;
      v87 = v55;
      v88 = 2112;
      v89 = v57;
      v90 = 2114;
      v91 = v16;
      LODWORD(v72) = 32;
      v58 = _os_log_send_and_compose_impl();

      v11 = v56;
      a5 = v84;
      if (!v58)
      {
LABEL_67:

        v41 = 0;
        goto LABEL_69;
      }

      v53 = [NSString stringWithCString:v58 encoding:4, &v86, v72];
      free(v58);
      SSFileLog();
    }

    else
    {
      a5 = v84;
    }

    goto LABEL_67;
  }

  Attestation = SecKeyCreateAttestation();
  v30 = Attestation;
  if (!Attestation)
  {
    v16 = 0;
    v59 = +[SSLogConfig sharedDaemonConfig];
    if (!v59)
    {
      v59 = +[SSLogConfig sharedConfig];
    }

    v60 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      v60 |= 2u;
    }

    v61 = [v59 OSLogObject];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v60;
    }

    else
    {
      v62 = v60 & 2;
    }

    if (v62)
    {
      v63 = objc_opt_class();
      v82 = v28;
      v64 = v16;
      v65 = v9;
      v74 = v63;
      SSHashIfNeeded();
      v67 = v66 = v11;
      v86 = 138543874;
      v87 = v63;
      v88 = 2112;
      v89 = v67;
      v90 = 2114;
      v91 = v64;
      LODWORD(v72) = 32;
      v68 = _os_log_send_and_compose_impl();

      v11 = v66;
      v9 = v65;
      v16 = v64;
      v28 = v82;

      if (!v68)
      {
LABEL_64:

        v69 = 0;
        a5 = v84;
        goto LABEL_68;
      }

      v61 = [NSString stringWithCString:v68 encoding:4, &v86, v72];
      free(v68);
      SSFileLog();
    }

    goto LABEL_64;
  }

  v80 = v10;
  v73 = Attestation;
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v32 |= 2u;
  }

  v33 = [v31 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = objc_opt_class();
  v76 = v30;
  v36 = v28;
  v37 = v35;
  SSHashIfNeeded();
  v39 = v38 = v11;
  v86 = 138543618;
  v87 = v35;
  v88 = 2112;
  v89 = v39;
  LODWORD(v72) = 22;
  v40 = _os_log_send_and_compose_impl();

  v11 = v38;
  v28 = v36;
  v30 = v76;

  if (v40)
  {
    v33 = [NSString stringWithCString:v40 encoding:4, &v86, v72];
    free(v40);
    SSFileLog();
LABEL_26:
  }

  v16 = 0;
  v10 = v80;
  a5 = v84;
  CFRelease(v30);
  v69 = v73;
LABEL_68:
  CFRelease(v28);
  v41 = v69;
LABEL_69:
  if (result)
  {
    CFRelease(result);
  }

  if (a5)
  {
    v70 = v16;
    *a5 = v16;
  }

  return v41;
}

- (id)_createX509CertChainDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v6 = a3;
  v206 = 0;
  v207 = &v206;
  v208 = 0x3032000000;
  v209 = sub_1001542B0;
  v210 = sub_1001542C0;
  v211 = 0;
  v200 = 0;
  v201 = &v200;
  v202 = 0x3032000000;
  v203 = sub_1001542B0;
  v204 = sub_1001542C0;
  v205 = 0;
  v196 = 0;
  v197 = &v196;
  v198 = 0x2020000000;
  v199 = 0;
  v192 = 0;
  v193 = &v192;
  v194 = 0x2020000000;
  v195 = 0;
  v188 = 0;
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 0;
  error = 0;
  v174 = [NSString stringWithFormat:@"%@", v6];
  v7 = v201;
  obj = v201[5];
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:v6 purpose:a4 error:&obj];
  v176 = a4;
  objc_storeStrong(v7 + 5, obj);
  if (v201[5])
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    v10 = [v8 shouldLogToDisk];
    v11 = [v8 OSLogObject];
    v12 = v11;
    if (v10)
    {
      v9 |= 2u;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = objc_opt_class();
      v14 = SSHashIfNeeded();
      v15 = [NSNumber numberWithInteger:v176];
      v16 = v201[5];
      v212 = 138544130;
      v213 = v13;
      v214 = 2112;
      v215 = v14;
      v216 = 2114;
      v217 = v15;
      v218 = 2114;
      v219 = v16;
      LODWORD(v162) = 42;
      v157 = &v212;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = [NSString stringWithCString:v17 encoding:4, &v212, v162];
      free(v17);
      v157 = v12;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  cf = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000002uLL, &error);
  if (!cf)
  {
    objc_storeStrong(v201 + 5, error);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    v20 = [v18 shouldLogToDisk];
    v21 = v6;
    v22 = [v18 OSLogObject];
    v23 = v22;
    if (v20)
    {
      v19 |= 2u;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v24 = objc_opt_class();
      v25 = SSHashIfNeeded();
      v26 = [NSNumber numberWithInteger:v176];
      v27 = v201[5];
      v212 = 138544130;
      v213 = v24;
      v214 = 2112;
      v215 = v25;
      v216 = 2114;
      v217 = v26;
      v218 = 2114;
      v219 = v27;
      LODWORD(v162) = 42;
      v158 = &v212;
      v28 = _os_log_send_and_compose_impl();

      v6 = v21;
      if (!v28)
      {
LABEL_101:

        goto LABEL_192;
      }

      v23 = [NSString stringWithCString:v28 encoding:4, &v212, v162];
      free(v28);
      v158 = v23;
      SSFileLog();
    }

    goto LABEL_101;
  }

  if (v176 == 1)
  {
    v165 = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
  }

  else
  {
    if (v176)
    {
      goto LABEL_37;
    }

    v165 = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
  }

  if (v165)
  {
    SecAccessControlSetConstraints();
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    v30 = [v29 shouldLog];
    v31 = [v29 shouldLogToDisk];
    v32 = [v29 OSLogObject];
    v33 = v32;
    if (v31)
    {
      v30 |= 2u;
    }

    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v34 = objc_opt_class();
      v35 = SSHashIfNeeded();
      v36 = [NSNumber numberWithInteger:v176];
      v212 = 138543874;
      v213 = v34;
      v214 = 2112;
      v215 = v35;
      v216 = 2114;
      v217 = v36;
      LODWORD(v162) = 32;
      v159 = &v212;
      v37 = _os_log_send_and_compose_impl();

      if (!v37)
      {
        goto LABEL_48;
      }

      v33 = [NSString stringWithCString:v37 encoding:4, &v212, v162];
      free(v37);
      v159 = v33;
      SSFileLog();
    }

    goto LABEL_47;
  }

LABEL_37:
  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  v38 = [v29 shouldLog];
  v39 = [v29 shouldLogToDisk];
  v40 = [v29 OSLogObject];
  v33 = v40;
  if (v39)
  {
    v38 |= 2u;
  }

  if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v38 &= 2u;
  }

  if (!v38)
  {
    goto LABEL_46;
  }

  v41 = objc_opt_class();
  v42 = SSHashIfNeeded();
  v43 = [NSNumber numberWithInteger:v176];
  v212 = 138543874;
  v213 = v41;
  v214 = 2112;
  v215 = v42;
  v216 = 2114;
  v217 = v43;
  LODWORD(v162) = 32;
  v159 = &v212;
  v44 = _os_log_send_and_compose_impl();

  if (v44)
  {
    v33 = [NSString stringWithCString:v44 encoding:4, &v212, v162];
    free(v44);
    v159 = v33;
    SSFileLog();
LABEL_46:
    v165 = 0;
LABEL_47:

    goto LABEL_48;
  }

  v165 = 0;
LABEL_48:

  v169 = ISWeakLinkedStringConstantForString();
  v170 = ISWeakLinkedStringConstantForString();
  v166 = ISWeakLinkedStringConstantForString();
  v168 = ISWeakLinkedStringConstantForString();
  v167 = ISWeakLinkedStringConstantForString();
  v173 = objc_alloc_init(NSMutableDictionary);
  if (v170)
  {
    [v173 setObject:&__kCFBooleanTrue forKeyedSubscript:v170];
  }

  if (v169)
  {
    [v173 setObject:cf forKeyedSubscript:v169];
  }

  if (v168)
  {
    v45 = objc_alloc_init(NSMutableArray);
    v46 = v45;
    if (v167)
    {
      [v45 addObject:v167];
    }

    if (v166)
    {
      [v46 addObject:v166];
    }

    [v173 setObject:v46 forKeyedSubscript:{v168, v159}];
  }

  objc_initWeak(&location, self);
  v47 = dispatch_semaphore_create(0);
  v48 = ISWeakLinkedSymbolForString();
  dispatchQueueX509 = self->_dispatchQueueX509;
  v177[0] = _NSConcreteStackBlock;
  v177[1] = 3221225472;
  v177[2] = sub_10015E5F4;
  v177[3] = &unk_10032A070;
  objc_copyWeak(v184, &location);
  v179 = &v200;
  v180 = &v192;
  v181 = &v206;
  v182 = &v188;
  v184[1] = v176;
  v183 = &v196;
  v50 = v47;
  v178 = v50;
  v48(dispatchQueueX509, v173, v177);
  v51 = dispatch_time(0, 30000000000);
  v164 = v50;
  if (dispatch_semaphore_wait(v50, v51))
  {
    v52 = +[SSLogConfig sharedDaemonConfig];
    if (!v52)
    {
      v52 = +[SSLogConfig sharedConfig];
    }

    v53 = [v52 shouldLog];
    v54 = [v52 shouldLogToDisk];
    v55 = [v52 OSLogObject];
    v56 = v55;
    if (v54)
    {
      v53 |= 2u;
    }

    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v53 &= 2u;
    }

    if (v53)
    {
      v57 = objc_opt_class();
      v58 = SSHashIfNeeded();
      v59 = [NSNumber numberWithInteger:v176];
      v212 = 138543874;
      v213 = v57;
      v214 = 2112;
      v215 = v58;
      v216 = 2114;
      v217 = v59;
      LODWORD(v162) = 32;
      v159 = &v212;
      v60 = _os_log_send_and_compose_impl();

      if (!v60)
      {
LABEL_69:

        goto LABEL_70;
      }

      v56 = [NSString stringWithCString:v60 encoding:4, &v212, v162];
      free(v60);
      v159 = v56;
      SSFileLog();
    }

    goto LABEL_69;
  }

LABEL_70:
  if (v193[3])
  {
    v61 = [ISBiometricStore keychainLabelForKeyWithAccountID:v6 purpose:v176];
    v62 = objc_alloc_init(NSMutableDictionary);
    [v62 setObject:kSecAttrKeyClassPrivate forKeyedSubscript:kSecAttrKeyClass];
    [v62 setObject:v61 forKeyedSubscript:kSecAttrLabel];
    [v62 setObject:kSecClassKey forKeyedSubscript:kSecClass];
    [v62 setObject:v193[3] forKeyedSubscript:kSecValueRef];
    v63 = SecItemAdd(v62, 0);
    if (v63)
    {
      v64 = +[SSLogConfig sharedDaemonConfig];
      if (!v64)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      v65 = [v64 shouldLog];
      v66 = [v64 shouldLogToDisk];
      v67 = [v64 OSLogObject];
      v68 = v67;
      if (v66)
      {
        v65 |= 2u;
      }

      if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v65 &= 2u;
      }

      if (!v65)
      {
        goto LABEL_103;
      }

      v69 = objc_opt_class();
      v70 = SSHashIfNeeded();
      v71 = [NSNumber numberWithInteger:v176];
      v72 = [NSNumber numberWithInt:v63];
      v212 = 138544130;
      v213 = v69;
      v214 = 2112;
      v215 = v70;
      v216 = 2114;
      v217 = v71;
      v218 = 2114;
      v219 = v72;
      LODWORD(v162) = 42;
      v160 = &v212;
      v73 = _os_log_send_and_compose_impl();

      if (v73)
      {
LABEL_80:
        v68 = [NSString stringWithCString:v73 encoding:4, &v212, v162];
        free(v73);
        v160 = v68;
        SSFileLog();
LABEL_103:
      }
    }

    else
    {
      v64 = +[SSLogConfig sharedDaemonConfig];
      if (!v64)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      v81 = [v64 shouldLog];
      v82 = [v64 shouldLogToDisk];
      v163 = v6;
      v83 = [v64 OSLogObject];
      v68 = v83;
      if (v82)
      {
        v81 |= 2u;
      }

      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v81;
      }

      else
      {
        v84 = v81 & 2;
      }

      if (!v84)
      {
        goto LABEL_103;
      }

      v85 = objc_opt_class();
      v86 = SSHashIfNeeded();
      v87 = [NSNumber numberWithInteger:v176];
      v88 = [NSNumber numberWithInt:0];
      v212 = 138544130;
      v213 = v85;
      v214 = 2112;
      v215 = v86;
      v216 = 2114;
      v217 = v87;
      v218 = 2114;
      v219 = v88;
      LODWORD(v162) = 42;
      v160 = &v212;
      v73 = _os_log_send_and_compose_impl();

      v6 = v163;
      if (v73)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_105;
  }

  v61 = +[SSLogConfig sharedDaemonConfig];
  if (!v61)
  {
    v61 = +[SSLogConfig sharedConfig];
  }

  v74 = [v61 shouldLog];
  v75 = [v61 shouldLogToDisk];
  v76 = [v61 OSLogObject];
  v62 = v76;
  if (v75)
  {
    v74 |= 2u;
  }

  if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    v74 &= 2u;
  }

  if (v74)
  {
    v77 = objc_opt_class();
    v78 = SSHashIfNeeded();
    v79 = [NSNumber numberWithInteger:v176];
    v212 = 138543874;
    v213 = v77;
    v214 = 2112;
    v215 = v78;
    v216 = 2114;
    v217 = v79;
    LODWORD(v162) = 32;
    v160 = &v212;
    v80 = _os_log_send_and_compose_impl();

    if (!v80)
    {
      goto LABEL_106;
    }

    v62 = [NSString stringWithCString:v80 encoding:4, &v212, v162];
    free(v80);
    v160 = v62;
    SSFileLog();
  }

LABEL_105:

LABEL_106:
  if (v189[3])
  {
    v89 = [ISBiometricStore keychainLabelForCertWithAccountID:v6 purpose:v176];
    v90 = objc_alloc_init(NSMutableDictionary);
    [v90 setObject:v89 forKeyedSubscript:kSecAttrLabel];
    [v90 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
    [v90 setObject:v189[3] forKeyedSubscript:kSecValueRef];
    v91 = SecItemAdd(v90, 0);
    if (v91)
    {
      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      v93 = [v92 shouldLog];
      v94 = [v92 shouldLogToDisk];
      v95 = [v92 OSLogObject];
      v96 = v95;
      if (v94)
      {
        v93 |= 2u;
      }

      if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v93 &= 2u;
      }

      if (!v93)
      {
        goto LABEL_135;
      }

      v97 = objc_opt_class();
      v98 = SSHashIfNeeded();
      v99 = [NSNumber numberWithInteger:v176];
      v100 = [NSNumber numberWithInt:v91];
      v212 = 138544130;
      v213 = v97;
      v214 = 2112;
      v215 = v98;
      v216 = 2114;
      v217 = v99;
      v218 = 2114;
      v219 = v100;
      LODWORD(v162) = 42;
      v161 = &v212;
      v101 = _os_log_send_and_compose_impl();

      if (v101)
      {
LABEL_134:
        v96 = [NSString stringWithCString:v101 encoding:4, &v212, v162];
        free(v101);
        v161 = v96;
        SSFileLog();
LABEL_135:
      }
    }

    else
    {
      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      v109 = [v92 shouldLog];
      v110 = [v92 shouldLogToDisk];
      v111 = [v92 OSLogObject];
      v96 = v111;
      if (v110)
      {
        v109 |= 2u;
      }

      if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        v109 &= 2u;
      }

      if (!v109)
      {
        goto LABEL_135;
      }

      v112 = objc_opt_class();
      v113 = SSHashIfNeeded();
      v114 = [NSNumber numberWithInteger:v176];
      v212 = 138543874;
      v213 = v112;
      v214 = 2112;
      v215 = v113;
      v216 = 2112;
      v217 = v114;
      LODWORD(v162) = 32;
      v161 = &v212;
      v101 = _os_log_send_and_compose_impl();

      if (v101)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_137;
  }

  v89 = +[SSLogConfig sharedDaemonConfig];
  if (!v89)
  {
    v89 = +[SSLogConfig sharedConfig];
  }

  v102 = [v89 shouldLog];
  v103 = [v89 shouldLogToDisk];
  v104 = [v89 OSLogObject];
  v90 = v104;
  if (v103)
  {
    v102 |= 2u;
  }

  if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
  {
    v102 &= 2u;
  }

  if (v102)
  {
    v105 = objc_opt_class();
    v106 = SSHashIfNeeded();
    v107 = [NSNumber numberWithInteger:v176];
    v212 = 138543874;
    v213 = v105;
    v214 = 2112;
    v215 = v106;
    v216 = 2112;
    v217 = v107;
    LODWORD(v162) = 32;
    v161 = &v212;
    v108 = _os_log_send_and_compose_impl();

    if (!v108)
    {
      goto LABEL_138;
    }

    v90 = [NSString stringWithCString:v108 encoding:4, &v212, v162];
    free(v108);
    v161 = v90;
    SSFileLog();
  }

LABEL_137:

LABEL_138:
  if (v197[3])
  {
    v115 = objc_alloc_init(NSMutableDictionary);
    [v115 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:kSecAttrLabel];
    [v115 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
    [v115 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
    v116 = SecItemCopyMatching(v115, 0);
    v117 = v116;
    if (v116)
    {
      if (v116 == -25300)
      {
        [v115 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecReturnRef];
        [v115 setObject:v197[3] forKeyedSubscript:kSecValueRef];
        v118 = SecItemAdd(v115, 0);
        if (v118)
        {
          v119 = +[SSLogConfig sharedDaemonConfig];
          if (!v119)
          {
            v119 = +[SSLogConfig sharedConfig];
          }

          v120 = [v119 shouldLog];
          v121 = [v119 shouldLogToDisk];
          v122 = [v119 OSLogObject];
          v123 = v122;
          if (v121)
          {
            v120 |= 2u;
          }

          if (!os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            v120 &= 2u;
          }

          if (!v120)
          {
            goto LABEL_189;
          }

          v124 = SSHashIfNeeded();
          v125 = [NSNumber numberWithInteger:v176];
          v126 = [NSNumber numberWithInt:v118];
          v212 = 138412802;
          v213 = v124;
          v214 = 2112;
          v215 = v125;
          v216 = 2112;
          v217 = v126;
          LODWORD(v162) = 32;
          v158 = &v212;
          v127 = _os_log_send_and_compose_impl();

          if (v127)
          {
            goto LABEL_178;
          }
        }

        else
        {
          v119 = +[SSLogConfig sharedDaemonConfig];
          if (!v119)
          {
            v119 = +[SSLogConfig sharedConfig];
          }

          v145 = [v119 shouldLog];
          v146 = [v119 shouldLogToDisk];
          v147 = [v119 OSLogObject];
          v123 = v147;
          if (v146)
          {
            v145 |= 2u;
          }

          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            v148 = v145;
          }

          else
          {
            v148 = v145 & 2;
          }

          if (!v148)
          {
            goto LABEL_189;
          }

          v149 = SSHashIfNeeded();
          v150 = [NSNumber numberWithInteger:v176];
          v212 = 138412546;
          v213 = v149;
          v214 = 2114;
          v215 = v150;
          LODWORD(v162) = 22;
          v158 = &v212;
          v151 = _os_log_send_and_compose_impl();

          if (v151)
          {
            v123 = [NSString stringWithCString:v151 encoding:4, &v212, v162];
            free(v151);
            v158 = v123;
            SSFileLog();
            goto LABEL_189;
          }
        }

LABEL_190:

        goto LABEL_191;
      }

      v119 = +[SSLogConfig sharedDaemonConfig];
      if (!v119)
      {
        v119 = +[SSLogConfig sharedConfig];
      }

      v139 = [v119 shouldLog];
      v140 = [v119 shouldLogToDisk];
      v141 = [v119 OSLogObject];
      v123 = v141;
      if (v140)
      {
        v139 |= 2u;
      }

      if (!os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        v139 &= 2u;
      }

      if (!v139)
      {
        goto LABEL_189;
      }

      v142 = SSHashIfNeeded();
      v143 = [NSNumber numberWithInteger:v176];
      v144 = [NSNumber numberWithInt:v117];
      v212 = 138412802;
      v213 = v142;
      v214 = 2114;
      v215 = v143;
      v216 = 2114;
      v217 = v144;
      LODWORD(v162) = 32;
      v158 = &v212;
      v127 = _os_log_send_and_compose_impl();

      if (!v127)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v119 = +[SSLogConfig sharedDaemonConfig];
      if (!v119)
      {
        v119 = +[SSLogConfig sharedConfig];
      }

      v135 = [v119 shouldLog];
      v136 = [v119 shouldLogToDisk];
      v137 = [v119 OSLogObject];
      v123 = v137;
      if (v136)
      {
        v135 |= 2u;
      }

      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        v138 = v135;
      }

      else
      {
        v138 = v135 & 2;
      }

      if (!v138)
      {
        goto LABEL_189;
      }

      LOWORD(v212) = 0;
      LODWORD(v162) = 2;
      v158 = &v212;
      v127 = _os_log_send_and_compose_impl();

      if (!v127)
      {
        goto LABEL_190;
      }
    }

LABEL_178:
    v123 = [NSString stringWithCString:v127 encoding:4, &v212, v162];
    free(v127);
    v158 = v123;
    SSFileLog();
LABEL_189:

    goto LABEL_190;
  }

  v115 = +[SSLogConfig sharedDaemonConfig];
  if (!v115)
  {
    v115 = +[SSLogConfig sharedConfig];
  }

  v128 = [v115 shouldLog];
  v129 = [v115 shouldLogToDisk];
  v130 = [v115 OSLogObject];
  v119 = v130;
  if (v129)
  {
    v128 |= 2u;
  }

  if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
  {
    v128 &= 2u;
  }

  if (!v128)
  {
    goto LABEL_190;
  }

  v131 = objc_opt_class();
  v132 = SSHashIfNeeded();
  v133 = [NSNumber numberWithInteger:v176];
  v212 = 138543874;
  v213 = v131;
  v214 = 2112;
  v215 = v132;
  v216 = 2114;
  v217 = v133;
  LODWORD(v162) = 32;
  v158 = &v212;
  v134 = _os_log_send_and_compose_impl();

  if (v134)
  {
    v119 = [NSString stringWithCString:v134 encoding:4, &v212, v162];
    free(v134);
    v158 = v119;
    SSFileLog();
    goto LABEL_190;
  }

LABEL_191:

  objc_destroyWeak(v184);
  objc_destroyWeak(&location);

  CFRelease(cf);
LABEL_192:
  v152 = v197[3];
  if (v152)
  {
    CFRelease(v152);
  }

  v153 = v193[3];
  if (v153)
  {
    CFRelease(v153);
  }

  v154 = v189[3];
  if (v154)
  {
    CFRelease(v154);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (a5)
  {
    *a5 = v201[5];
  }

  v155 = [NSArray arrayWithArray:v207[5], v158];

  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v200, 8);

  _Block_object_dispose(&v206, 8);

  return v155;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"mt-tid-%@", v6];
  v46 = NSHTTPCookieName;
  v47 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v9 = +[ACAccountStore ams_sharedAccountStore];
  v41 = 0;
  [v9 ams_removeCookiesMatchingProperties:v8 error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v12 |= 2u;
    }

    v13 = [v11 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    v38 = self;
    if (v14)
    {
      v15 = objc_opt_class();
      v42 = 138543618;
      v43 = v15;
      v44 = 2114;
      v45 = 0;
      v16 = v10;
      v17 = v8;
      v18 = v7;
      v19 = a4;
      v20 = v15;
      LODWORD(v36) = 22;
      v35 = &v42;
      v21 = _os_log_send_and_compose_impl();

      a4 = v19;
      v7 = v18;
      v8 = v17;
      v10 = v16;

      if (!v21)
      {
LABEL_13:

        self = v38;
        goto LABEL_14;
      }

      v13 = [NSString stringWithCString:v21 encoding:4, &v42, v36];
      free(v21);
      v35 = v13;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v40 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:v6 purpose:0 error:&v40, v35];
  v22 = v40;
  v39 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:v6 purpose:1 error:&v39];

  v23 = v39;
  v24 = v23;
  if (v22 && v23)
  {
    v37 = a4;
    v25 = SSError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v27 |= 2u;
    }

    v28 = [v26 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      v29 = objc_opt_class();
      v42 = 138543362;
      v43 = v29;
      v30 = v29;
      LODWORD(v36) = 12;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
        goto LABEL_26;
      }

      v28 = [NSString stringWithCString:v31 encoding:4, &v42, v36];
      free(v31);
      SSFileLog();
    }

LABEL_26:
    a4 = v37;
    if (!v37)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v22)
  {
    v32 = v22;
  }

  else
  {
    if (!v23)
    {
      v25 = 0;
      if (!a4)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v32 = v23;
  }

  v25 = v32;
  if (a4)
  {
LABEL_33:
    v33 = v25;
    *a4 = v25;
  }

LABEL_34:

  return v25 == 0;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v160 = [NSString stringWithFormat:@"%@", v8];
  v9 = &CFDictionaryGetValue_ptr;
  v10 = [ISBiometricStore keychainLabelForAccountID:v8 purpose:a4];
  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0 useTokenID:0];
  v12 = SecItemDelete(v11);
  v13 = &CFDictionaryGetValue_ptr;
  v158 = v8;
  v159 = a4;
  v153 = v11;
  v154 = a5;
  if (!v12)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v19 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (!v20)
    {

      v26 = 0;
      goto LABEL_40;
    }

LABEL_20:
    v21 = objc_opt_class();
    v22 = v21;
    v23 = SSHashIfNeeded();
    v163 = 138543618;
    v164 = v21;
    v165 = 2112;
    v166 = v23;
    LODWORD(v149) = 22;
    v144 = &v163;
    v24 = _os_log_send_and_compose_impl();

    if (v24)
    {
      v25 = [NSString stringWithCString:v24 encoding:4, &v163, v149];
      free(v24);
      v144 = v25;
      SSFileLog();
    }

    v26 = 0;
    goto LABEL_38;
  }

  v14 = v12;
  if (v12 == -25300)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (!v17)
    {

      v26 = 0;
LABEL_39:
      a4 = v159;
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  v27 = SSError();
  v28 = [NSNumber numberWithInt:v14];
  v26 = SSErrorBySettingUserInfoValue();

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v29 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v30 = v29 | 2;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v15 OSLogObject];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 & 2;
  }

  if (!v32)
  {

LABEL_38:
    v13 = &CFDictionaryGetValue_ptr;
    goto LABEL_39;
  }

  v156 = v26;
  v33 = objc_opt_class();
  v34 = v33;
  v35 = SSHashIfNeeded();
  v36 = [NSNumber numberWithInt:v14];
  v163 = 138543874;
  v164 = v33;
  v165 = 2112;
  v166 = v35;
  v167 = 2114;
  v168 = v36;
  LODWORD(v149) = 32;
  v144 = &v163;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v38 = [NSString stringWithCString:v37 encoding:4, &v163, v149];
    free(v37);
    v144 = v38;
    SSFileLog();
  }

  v26 = v156;
  v8 = v158;
  v13 = &CFDictionaryGetValue_ptr;
  v9 = &CFDictionaryGetValue_ptr;
LABEL_40:

  v39 = [v9[280] keychainLabelForKeyWithAccountID:v8 purpose:a4];

  v40 = SSVURLProtocolConsumer_ptr;
  v41 = objc_alloc_init(NSMutableDictionary);
  v42 = kSecAttrLabel;
  [v41 setObject:v39 forKeyedSubscript:kSecAttrLabel];
  v43 = kSecClass;
  [v41 setObject:kSecClassKey forKeyedSubscript:kSecClass];
  [v41 setObject:kSecAttrKeyClassPrivate forKeyedSubscript:kSecAttrKeyClass];
  v44 = SecItemDelete(v41);
  v152 = v41;
  if (!v44)
  {
    v157 = v26;
    v46 = [v13[412] sharedDaemonConfig];
    if (!v46)
    {
      v46 = [v13[412] sharedConfig];
    }

    v54 = [v46 shouldLog];
    if ([v46 shouldLogToDisk])
    {
      v54 |= 2u;
    }

    v48 = [v46 OSLogObject];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v54 &= 2u;
    }

    if (!v54)
    {
      goto LABEL_71;
    }

    v55 = objc_opt_class();
    v50 = v55;
    v56 = SSHashIfNeeded();
    v57 = [NSNumber numberWithInteger:a4];
    v163 = 138543874;
    v164 = v55;
    v165 = 2112;
    v166 = v56;
    v167 = 2114;
    v168 = v57;
    LODWORD(v149) = 32;
    v145 = &v163;
    v53 = _os_log_send_and_compose_impl();

LABEL_58:
    v13 = &CFDictionaryGetValue_ptr;
    if (!v53)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  v45 = v44;
  if (v44 == -25300)
  {
    v157 = v26;
    v46 = [v13[412] sharedDaemonConfig];
    if (!v46)
    {
      v46 = [v13[412] sharedConfig];
    }

    v47 = [v46 shouldLog];
    if ([v46 shouldLogToDisk])
    {
      v47 |= 2u;
    }

    v48 = [v46 OSLogObject];
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v47 &= 2u;
    }

    if (!v47)
    {
      goto LABEL_71;
    }

    v49 = objc_opt_class();
    v50 = v49;
    v51 = SSHashIfNeeded();
    v52 = [NSNumber numberWithInteger:a4];
    v163 = 138543874;
    v164 = v49;
    v165 = 2112;
    v166 = v51;
    v167 = 2114;
    v168 = v52;
    LODWORD(v149) = 32;
    v145 = &v163;
    v53 = _os_log_send_and_compose_impl();

    goto LABEL_58;
  }

  v58 = SSError();

  v59 = [NSNumber numberWithInt:v45];
  v157 = SSErrorBySettingUserInfoValue();

  v13 = &CFDictionaryGetValue_ptr;
  v46 = +[SSLogConfig sharedDaemonConfig];
  if (!v46)
  {
    v46 = +[SSLogConfig sharedConfig];
  }

  v60 = [v46 shouldLog];
  if ([v46 shouldLogToDisk])
  {
    v60 |= 2u;
  }

  v48 = [v46 OSLogObject];
  if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v60 &= 2u;
  }

  if (!v60)
  {
    a4 = v159;
    v43 = kSecClass;
    goto LABEL_71;
  }

  v61 = objc_opt_class();
  v62 = v61;
  v63 = SSHashIfNeeded();
  v64 = [NSNumber numberWithInteger:v159];
  v65 = [NSNumber numberWithInt:v45];
  v163 = 138544130;
  v164 = v61;
  v165 = 2112;
  v166 = v63;
  v167 = 2112;
  v168 = v64;
  v169 = 2114;
  v170 = v65;
  LODWORD(v149) = 42;
  v145 = &v163;
  v53 = _os_log_send_and_compose_impl();

  v13 = &CFDictionaryGetValue_ptr;
  if (v53)
  {
    a4 = v159;
    v42 = kSecAttrLabel;
LABEL_69:
    v40 = SSVURLProtocolConsumer_ptr;
    v43 = kSecClass;
    v48 = [NSString stringWithCString:v53 encoding:4, &v163, v149];
    free(v53);
    v145 = v48;
    SSFileLog();
LABEL_71:

    goto LABEL_74;
  }

  a4 = v159;
  v42 = kSecAttrLabel;
LABEL_73:
  v40 = SSVURLProtocolConsumer_ptr;
  v43 = kSecClass;
LABEL_74:

  v66 = [ISBiometricStore keychainLabelForCertWithAccountID:v158 purpose:a4];

  v67 = objc_alloc_init(v40[479]);
  [v67 setObject:v66 forKeyedSubscript:v42];
  [v67 setObject:kSecClassCertificate forKeyedSubscript:v43];
  v151 = v67;
  v68 = SecItemDelete(v67);
  v155 = v66;
  if (!v68)
  {
    v70 = [v13[412] sharedDaemonConfig];
    if (!v70)
    {
      v70 = [v13[412] sharedConfig];
    }

    v73 = [v70 shouldLog];
    if ([v70 shouldLogToDisk])
    {
      v73 |= 2u;
    }

    v72 = [v70 OSLogObject];
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 &= 2u;
    }

    if (!v73)
    {
      goto LABEL_106;
    }

LABEL_91:
    v74 = v42;
    v75 = objc_opt_class();
    v76 = v75;
    v77 = SSHashIfNeeded();
    v78 = [NSNumber numberWithInteger:a4];
    v163 = 138543874;
    v164 = v75;
    v165 = 2112;
    v166 = v77;
    v167 = 2114;
    v168 = v78;
    LODWORD(v149) = 32;
    v146 = &v163;
    v79 = _os_log_send_and_compose_impl();

    v13 = &CFDictionaryGetValue_ptr;
    v42 = v74;
    if (v79)
    {
      v66 = v155;
LABEL_103:
      v40 = SSVURLProtocolConsumer_ptr;
      v43 = kSecClass;
      v72 = [NSString stringWithCString:v79 encoding:4, &v163, v149];
      free(v79);
      v146 = v72;
      SSFileLog();
LABEL_106:

      goto LABEL_109;
    }

    v66 = v155;
    goto LABEL_108;
  }

  v69 = v68;
  if (v68 == -25300)
  {
    v70 = [v13[412] sharedDaemonConfig];
    if (!v70)
    {
      v70 = [v13[412] sharedConfig];
    }

    v71 = [v70 shouldLog];
    if ([v70 shouldLogToDisk])
    {
      v71 |= 2u;
    }

    v72 = [v70 OSLogObject];
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v71 &= 2u;
    }

    if (!v71)
    {
      goto LABEL_106;
    }

    goto LABEL_91;
  }

  v150 = v42;
  v80 = SSError();

  v81 = [NSNumber numberWithInt:v69];
  v157 = SSErrorBySettingUserInfoValue();

  v70 = [v13[412] sharedDaemonConfig];
  if (!v70)
  {
    v70 = [v13[412] sharedConfig];
  }

  v82 = [v70 shouldLog];
  if ([v70 shouldLogToDisk])
  {
    v82 |= 2u;
  }

  v72 = [v70 OSLogObject];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
  {
    v83 = v82;
  }

  else
  {
    v83 = v82 & 2;
  }

  if (!v83)
  {
    a4 = v159;
    v66 = v155;
    v43 = kSecClass;
    v42 = v150;
    goto LABEL_106;
  }

  v84 = objc_opt_class();
  v85 = v84;
  v86 = SSHashIfNeeded();
  v87 = [NSNumber numberWithInteger:v159];
  v88 = [NSNumber numberWithInt:v69];
  v163 = 138544130;
  v164 = v84;
  v165 = 2112;
  v166 = v86;
  v167 = 2112;
  v168 = v87;
  v169 = 2114;
  v170 = v88;
  LODWORD(v149) = 42;
  v146 = &v163;
  v79 = _os_log_send_and_compose_impl();

  v13 = &CFDictionaryGetValue_ptr;
  if (v79)
  {
    a4 = v159;
    v66 = v155;
    v42 = v150;
    goto LABEL_103;
  }

  a4 = v159;
  v66 = v155;
  v42 = v150;
LABEL_108:
  v40 = SSVURLProtocolConsumer_ptr;
  v43 = kSecClass;
LABEL_109:

  v89 = objc_alloc_init(v40[479]);
  [v89 setObject:ISBiometricsIntermediateCertKeychainLabel forKeyedSubscript:v42];
  [v89 setObject:kSecClassCertificate forKeyedSubscript:v43];
  v90 = SecItemDelete(v89);
  if (!v90)
  {
    v93 = [v13[412] sharedDaemonConfig];
    v92 = v157;
    v94 = v151;
    if (!v93)
    {
      v93 = [v13[412] sharedConfig];
    }

    v97 = [v93 shouldLog];
    if ([v93 shouldLogToDisk])
    {
      v97 |= 2u;
    }

    v96 = [v93 OSLogObject];
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v97 &= 2u;
    }

    if (!v97)
    {
      goto LABEL_142;
    }

LABEL_126:
    v98 = objc_opt_class();
    v99 = v98;
    v100 = SSHashIfNeeded();
    v163 = 138543618;
    v164 = v98;
    v165 = 2112;
    v166 = v100;
    LODWORD(v149) = 22;
    v147 = &v163;
    v101 = _os_log_send_and_compose_impl();

    v13 = &CFDictionaryGetValue_ptr;
    if (!v101)
    {
      a4 = v159;
      goto LABEL_143;
    }

    a4 = v159;
    goto LABEL_139;
  }

  v91 = v90;
  v92 = v157;
  if (v90 == -25300)
  {
    v93 = [v13[412] sharedDaemonConfig];
    v94 = v151;
    if (!v93)
    {
      v93 = [v13[412] sharedConfig];
    }

    v95 = [v93 shouldLog];
    if ([v93 shouldLogToDisk])
    {
      v95 |= 2u;
    }

    v96 = [v93 OSLogObject];
    if (!os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v95 &= 2u;
    }

    if (!v95)
    {
      goto LABEL_142;
    }

    goto LABEL_126;
  }

  v102 = SSError();

  v103 = [NSNumber numberWithInt:v91];
  v104 = SSErrorBySettingUserInfoValue();

  v93 = [v13[412] sharedDaemonConfig];
  if (!v93)
  {
    v93 = [v13[412] sharedConfig];
  }

  v105 = [v93 shouldLog];
  if ([v93 shouldLogToDisk])
  {
    v106 = v105 | 2;
  }

  else
  {
    v106 = v105;
  }

  v96 = [v93 OSLogObject];
  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    v107 = v106;
  }

  else
  {
    v107 = v106 & 2;
  }

  if (!v107)
  {
    v13 = &CFDictionaryGetValue_ptr;
    v92 = v104;
    v66 = v155;
    v94 = v151;
    goto LABEL_142;
  }

  v108 = objc_opt_class();
  v109 = v108;
  v110 = SSHashIfNeeded();
  v111 = [NSNumber numberWithInt:v91];
  v163 = 138543874;
  v164 = v108;
  v165 = 2112;
  v166 = v110;
  v167 = 2114;
  v168 = v111;
  LODWORD(v149) = 32;
  v147 = &v163;
  v101 = _os_log_send_and_compose_impl();

  v13 = &CFDictionaryGetValue_ptr;
  v92 = v104;
  if (v101)
  {
    a4 = v159;
    v66 = v155;
    v94 = v151;
LABEL_139:
    v96 = [NSString stringWithCString:v101 encoding:4, &v163, v149];
    free(v101);
    v147 = v96;
    SSFileLog();
LABEL_142:

    goto LABEL_143;
  }

  a4 = v159;
  v66 = v155;
  v94 = v151;
LABEL_143:

  v112 = objc_alloc_init(AMSKeychainOptions);
  [v112 setStyle:{+[AMSKeychainOptions preferredAttestationStyle](AMSKeychainOptions, "preferredAttestationStyle")}];
  if (a4 <= 1)
  {
    [v112 setPurpose:a4];
  }

  v113 = [v112 style];
  v114 = [v13[412] sharedDaemonConfig];
  v115 = v114;
  if (!v113)
  {
    if (!v114)
    {
      v115 = [v13[412] sharedConfig];
    }

    v123 = [v115 shouldLog];
    if ([v115 shouldLogToDisk])
    {
      v124 = v123 | 2;
    }

    else
    {
      v124 = v123;
    }

    v125 = [v115 OSLogObject];
    if (!os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      v124 &= 2u;
    }

    if (v124)
    {
      v126 = objc_opt_class();
      v163 = 138543362;
      v164 = v126;
      v127 = v126;
      LODWORD(v149) = 12;
      v148 = &v163;
      v128 = _os_log_send_and_compose_impl();

      if (!v128)
      {
LABEL_170:

        v161 = v92;
        [AMSKeychain deleteCertificateChainWithOptions:v112 error:&v161];
        v122 = v161;
        goto LABEL_171;
      }

      v125 = [NSString stringWithCString:v128 encoding:4, &v163, v149];
      free(v128);
      v148 = v125;
      SSFileLog();
    }

    goto LABEL_170;
  }

  if (v113 == 1)
  {
    if (!v114)
    {
      v115 = [v13[412] sharedConfig];
    }

    v116 = [v115 shouldLog];
    if ([v115 shouldLogToDisk])
    {
      v117 = v116 | 2;
    }

    else
    {
      v117 = v116;
    }

    v118 = [v115 OSLogObject];
    if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v117 &= 2u;
    }

    if (v117)
    {
      v119 = objc_opt_class();
      v163 = 138543362;
      v164 = v119;
      v120 = v119;
      LODWORD(v149) = 12;
      v148 = &v163;
      v121 = _os_log_send_and_compose_impl();

      if (!v121)
      {
LABEL_158:

        v162 = v92;
        [AMSKeychain deleteKeyPairWithOptions:v112 error:&v162];
        v122 = v162;
LABEL_171:
        v115 = v92;
        v92 = v122;
        goto LABEL_183;
      }

      v118 = [NSString stringWithCString:v121 encoding:4, &v163, v149];
      free(v121);
      v148 = v118;
      SSFileLog();
    }

    goto LABEL_158;
  }

  if (!v114)
  {
    v115 = [v13[412] sharedConfig];
  }

  v129 = [v115 shouldLog];
  if ([v115 shouldLogToDisk])
  {
    v130 = v129 | 2;
  }

  else
  {
    v130 = v129;
  }

  v131 = [v115 OSLogObject];
  if (!os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    v130 &= 2u;
  }

  if (v130)
  {
    v132 = objc_opt_class();
    v163 = 138543362;
    v164 = v132;
    v133 = v132;
    LODWORD(v149) = 12;
    v148 = &v163;
    v134 = _os_log_send_and_compose_impl();

    if (!v134)
    {
      goto LABEL_183;
    }

    v131 = [NSString stringWithCString:v134 encoding:4, &v163, v149];
    free(v134);
    v148 = v131;
    SSFileLog();
  }

LABEL_183:
  if (!v92)
  {
    goto LABEL_196;
  }

  v135 = [v13[412] sharedDaemonConfig];
  if (!v135)
  {
    v135 = [v13[412] sharedConfig];
  }

  v136 = [v135 shouldLog];
  if ([v135 shouldLogToDisk])
  {
    v137 = v136 | 2;
  }

  else
  {
    v137 = v136;
  }

  v138 = [v135 OSLogObject];
  if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
  {
    v137 &= 2u;
  }

  if (!v137)
  {
    goto LABEL_194;
  }

  v139 = objc_opt_class();
  v163 = 138543618;
  v164 = v139;
  v165 = 2114;
  v166 = v92;
  v140 = v139;
  LODWORD(v149) = 22;
  v141 = _os_log_send_and_compose_impl();

  if (v141)
  {
    v138 = [NSString stringWithCString:v141 encoding:4, &v163, v149];
    free(v141);
    SSFileLog();
LABEL_194:
  }

LABEL_196:
  if (v154)
  {
    v142 = v92;
    *v154 = v92;
  }

  return v92 == 0;
}

- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v88 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:v8 purpose:a4 error:&v88];
  v9 = v88;
  v10 = [NSString stringWithFormat:@"%@", v8];
  v84 = a5;
  if (v9)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = v8;
    v13 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v11 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = v10;
      v19 = SSHashIfNeeded();
      v20 = [(__CFError *)v9 localizedDescription];
      v89 = 138543874;
      v90 = v16;
      v91 = 2112;
      v92 = v19;
      v93 = 2114;
      v94 = v20;
      LODWORD(v75) = 32;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_31:

        v33 = 0;
        v10 = v18;
        v8 = v12;
        a5 = v84;
        goto LABEL_94;
      }

      v15 = [NSString stringWithCString:v21 encoding:4, &v89, v75];
      free(v21);
      SSFileLog();
    }

    else
    {
      v18 = v10;
    }

    goto LABEL_31;
  }

  publicKey = 0;
  privateKey = 0;
  error = 0;
  v22 = SecAccessControlCreateWithFlags(kCFAllocatorDefault, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, 0x40000002uLL, &error);
  v23 = v22;
  if (v22)
  {
    v24 = error == 0;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v83 = v22;
    if (a4 == 1)
    {
      v34 = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
    }

    else
    {
      if (a4)
      {
        goto LABEL_48;
      }

      v34 = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
    }

    v35 = v34;
    if (v34)
    {
      v36 = a5;
      v81 = v10;
      SecAccessControlSetConstraints();
      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v39 = v38 | 2;
      }

      else
      {
        v39 = v38;
      }

      v40 = [v37 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 2;
      }

      if (!v41)
      {
        a5 = v36;
        goto LABEL_60;
      }

      v42 = objc_opt_class();
      v79 = v42;
      v43 = SSHashIfNeeded();
      v44 = [NSNumber numberWithInteger:a4];
      v89 = 138543874;
      v90 = v42;
      v91 = 2112;
      v92 = v43;
      v93 = 2114;
      v94 = v44;
      LODWORD(v75) = 32;
      v74 = &v89;
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        v40 = [NSString stringWithCString:v45 encoding:4, &v89, v75];
        free(v45);
        v74 = v40;
        SSFileLog();
        v23 = v83;
        a5 = v84;
LABEL_60:

        goto LABEL_61;
      }

LABEL_58:
      v23 = v83;
      a5 = v84;
LABEL_61:
      v10 = v81;
LABEL_62:

      goto LABEL_63;
    }

LABEL_48:
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v46 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v46 |= 2u;
    }

    v37 = [v35 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 2;
    }

    if (!v47)
    {
      goto LABEL_62;
    }

    v48 = objc_opt_class();
    v49 = v48;
    v81 = v10;
    v50 = SSHashIfNeeded();
    v51 = [NSNumber numberWithInteger:a4];
    v89 = 138543874;
    v90 = v48;
    v91 = 2112;
    v92 = v50;
    v93 = 2114;
    v94 = v51;
    LODWORD(v75) = 32;
    v74 = &v89;
    v52 = _os_log_send_and_compose_impl();

    if (!v52)
    {
      v23 = v83;
      a5 = v84;
      v10 = v81;
LABEL_63:

      v53 = [ISBiometricStore keychainLabelForAccountID:v8 purpose:a4];
      v54 = objc_alloc_init(NSMutableDictionary);
      [v54 setObject:v23 forKey:kSecAttrAccessControl];
      [v54 setObject:&__kCFBooleanTrue forKey:kSecAttrIsPermanent];
      v82 = v53;
      [v54 setObject:v53 forKey:kSecAttrLabel];
      v55 = objc_alloc_init(NSMutableDictionary);
      [v55 setObject:kSecAttrTokenIDSecureEnclave forKey:kSecAttrTokenID];
      [v55 setObject:kSecAttrKeyTypeECSECPrimeRandom forKey:kSecAttrKeyType];
      [v55 setObject:&off_10034BF58 forKey:kSecAttrKeySizeInBits];
      v80 = v54;
      [v55 setObject:v54 forKey:kSecPrivateKeyAttrs];
      v78 = v55;
      v56 = SecKeyGeneratePair(v55, &publicKey, &privateKey);
      v33 = v56 == 0;
      if (v56)
      {
        v57 = v56;
        v58 = SSError();
        v59 = [NSNumber numberWithInt:v57];
        v9 = SSErrorBySettingUserInfoValue();

        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        v61 = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          v61 |= 2u;
        }

        v62 = [v60 OSLogObject];
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v61 &= 2u;
        }

        if (!v61)
        {
          v23 = v83;
          a5 = v84;
          goto LABEL_86;
        }

        v77 = v8;
        v63 = objc_opt_class();
        v76 = v63;
        v64 = v10;
        v65 = SSHashIfNeeded();
        v66 = [NSNumber numberWithInt:v57];
        v89 = 138543874;
        v90 = v63;
        v91 = 2112;
        v92 = v65;
        v93 = 2114;
        v94 = v66;
        LODWORD(v75) = 32;
        v67 = _os_log_send_and_compose_impl();

        if (!v67)
        {
          v23 = v83;
          a5 = v84;
          v10 = v64;
          v8 = v77;
LABEL_87:

LABEL_88:
          CFRelease(v23);
          if (privateKey)
          {
            CFRelease(privateKey);
          }

          goto LABEL_90;
        }

        v23 = v83;
        a5 = v84;
        v10 = v64;
        v8 = v77;
      }

      else
      {
        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        v68 = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          v68 |= 2u;
        }

        v62 = [v60 OSLogObject];
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v68 &= 2u;
        }

        if (!v68)
        {
          v9 = 0;
          goto LABEL_86;
        }

        v69 = objc_opt_class();
        v70 = v69;
        v71 = SSHashIfNeeded();
        v89 = 138543618;
        v90 = v69;
        v91 = 2112;
        v92 = v71;
        LODWORD(v75) = 22;
        v67 = _os_log_send_and_compose_impl();

        v9 = 0;
        if (!v67)
        {
          a5 = v84;
          goto LABEL_87;
        }

        a5 = v84;
      }

      v62 = [NSString stringWithCString:v67 encoding:4, &v89, v75];
      free(v67);
      SSFileLog();
LABEL_86:

      goto LABEL_87;
    }

    v37 = [NSString stringWithCString:v52 encoding:4, &v89, v75];
    free(v52);
    v74 = v37;
    SSFileLog();
    goto LABEL_58;
  }

  v9 = error;
  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  v26 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v25 OSLogObject];
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v27 &= 2u;
  }

  if (v27)
  {
    v29 = objc_opt_class();
    v30 = v29;
    v31 = SSHashIfNeeded();
    v89 = 138543874;
    v90 = v29;
    v91 = 2112;
    v92 = v31;
    v93 = 2114;
    v94 = error;
    LODWORD(v75) = 32;
    v32 = _os_log_send_and_compose_impl();

    if (!v32)
    {
      goto LABEL_27;
    }

    v28 = [NSString stringWithCString:v32 encoding:4, &v89, v75];
    free(v32);
    SSFileLog();
  }

LABEL_27:
  v33 = 0;
  a5 = v84;
  if (v23)
  {
    goto LABEL_88;
  }

LABEL_90:
  if (publicKey)
  {
    CFRelease(publicKey);
  }

  if (error)
  {
    CFRelease(error);
  }

LABEL_94:
  if (a5)
  {
    v72 = v9;
    *a5 = v9;
  }

  return v33;
}

- (id)_presentPaymentSheetForChallenge:(id)a3 authContext:(id)a4 biometricContext:(id)a5 touchIDContext:(id)a6 touchIDOptions:(id)a7 accessControlRef:(__SecAccessControl *)a8 passwordToken:(id *)a9 paymentTokenData:(id *)a10 fpanID:(id *)a11 error:(id *)a12
{
  v46 = a3;
  v17 = a4;
  v18 = a5;
  v45 = a6;
  v44 = a7;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_1001542B0;
  v82 = sub_1001542C0;
  v83 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = sub_1001542B0;
  v76 = sub_1001542C0;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_1001542B0;
  v70 = sub_1001542C0;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_1001542B0;
  v64 = sub_1001542C0;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_1001542B0;
  v58 = sub_1001542C0;
  v59 = 0;
  v19 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v20 = [DisplayPaymentSheetOperation alloc];
  v21 = [v18 paymentSheet];
  v22 = [(DisplayPaymentSheetOperation *)v20 initWithPaymentSheet:v21];

  v23 = [v18 accountIdentifier];
  [(DisplayPaymentSheetOperation *)v22 setAccountIdentifier:v23];

  [(DisplayPaymentSheetOperation *)v22 setAuthenticationContext:v17];
  v24 = [v17 username];
  [(DisplayPaymentSheetOperation *)v22 setAccountName:v24];

  [(DisplayPaymentSheetOperation *)v22 setChallenge:v46];
  -[DisplayPaymentSheetOperation setTouchIDDelayEnabled:](v22, "setTouchIDDelayEnabled:", [v18 touchIDDelayEnabled]);
  v25 = [v18 dialogId];
  [(DisplayPaymentSheetOperation *)v22 setDialogId:v25];

  [(DisplayPaymentSheetOperation *)v22 setLocalAuthAccessControlRef:a8];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthContext:v45];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthOptions:v44];
  v26 = [v18 userAgent];
  [(DisplayPaymentSheetOperation *)v22 setUserAgent:v26];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100161A7C;
  v47[3] = &unk_10032A098;
  v27 = v19;
  v48 = v27;
  v49 = &v72;
  v50 = &v78;
  v51 = &v66;
  v52 = &v60;
  v53 = &v54;
  [(DisplayPaymentSheetOperation *)v22 setCompletionHandlerForAutoEnrollment:v47];
  v28 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v22];
  v29 = +[SSLogConfig sharedDaemonConfig];
  if (!v29)
  {
    v29 = +[SSLogConfig sharedConfig];
  }

  v30 = [v29 shouldLog];
  v31 = [v29 shouldLogToDisk];
  v32 = [v29 OSLogObject];
  v33 = v32;
  if (v31)
  {
    v30 |= 2u;
  }

  if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_10;
  }

  v34 = objc_opt_class();
  v84 = 138543362;
  v85 = v34;
  v35 = v34;
  LODWORD(v43) = 12;
  v36 = _os_log_send_and_compose_impl();

  if (v36)
  {
    v33 = [NSString stringWithCString:v36 encoding:4, &v84, v43];
    free(v36);
    SSFileLog();
LABEL_10:
  }

  [(DisplayPaymentSheetContainerOperation *)v28 start];
  if (!v73[5])
  {
    v37 = [(DisplayPaymentSheetContainerOperation *)v28 error];
    v38 = v37 == 0;

    if (!v38)
    {
      v39 = [(DisplayPaymentSheetContainerOperation *)v28 error];
      v40 = v73[5];
      v73[5] = v39;
    }
  }

  if (a9)
  {
    *a9 = v67[5];
  }

  if (a10)
  {
    *a10 = v61[5];
  }

  if (a11)
  {
    *a11 = v55[5];
  }

  if (a12)
  {
    *a12 = v73[5];
  }

  v41 = v79[5];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);

  return v41;
}

- (id)_publicKeyDataForAccountIdentifier:(id)a3 purpose:(int64_t)a4 regenerateKeys:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v73 = 0;
  v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:v10 purpose:a4 error:&v73];
  v12 = v73;
  v13 = v12;
  if (v11 || !v7)
  {
LABEL_32:
    if (!a6)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v14 = [v12 domain];
  v15 = [v14 isEqualToString:SSErrorDomain];

  if (!v15)
  {
    v11 = 0;
    goto LABEL_32;
  }

  v68 = [NSString stringWithFormat:@"%@", v10];
  v16 = [v13 userInfo];
  v17 = [v16 objectForKey:SSErrorKeychainStatusCodeKey];
  v18 = [v17 integerValue];

  if (v18 != -25300 || ![(DaemonBiometricKeychain *)self _isDeviceUnlocked])
  {
    v66 = a6;
    v44 = +[SSLogConfig sharedDaemonConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    v45 = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = v45 | 2;
    }

    else
    {
      v46 = v45;
    }

    v47 = [v44 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v46;
    }

    else
    {
      v48 = v46 & 2;
    }

    if (v48)
    {
      v49 = objc_opt_class();
      v50 = v49;
      v51 = SSHashIfNeeded();
      v74 = 138543618;
      v75 = v49;
      v76 = 2112;
      v77 = v51;
      LODWORD(v63) = 22;
      v52 = _os_log_send_and_compose_impl();

      a6 = v66;
      if (!v52)
      {
LABEL_49:

        v69 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:v10 purpose:a4 error:&v69];
        v53 = v69;
LABEL_50:
        v31 = v53;

        goto LABEL_51;
      }

      v47 = [NSString stringWithCString:v52 encoding:4, &v74, v63];
      free(v52);
      SSFileLog();
    }

    goto LABEL_49;
  }

  v19 = +[ISBiometricStore shouldUseX509];
  v20 = +[SSLogConfig sharedDaemonConfig];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v54 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v55 = v54 | 2;
    }

    else
    {
      v55 = v54;
    }

    v56 = [v21 OSLogObject];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = v55;
    }

    else
    {
      v57 = v55 & 2;
    }

    if (v57)
    {
      v58 = objc_opt_class();
      v67 = v58;
      SSHashIfNeeded();
      v60 = v59 = a6;
      v74 = 138543618;
      v75 = v58;
      v76 = 2112;
      v77 = v60;
      LODWORD(v63) = 22;
      v61 = _os_log_send_and_compose_impl();

      a6 = v59;
      if (!v61)
      {
LABEL_65:

        v70 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:v10 purpose:a4 error:&v70];
        v53 = v70;
        goto LABEL_50;
      }

      v56 = [NSString stringWithCString:v61 encoding:4, &v74, v63];
      free(v61);
      SSFileLog();
    }

    goto LABEL_65;
  }

  v65 = a6;
  if (!v20)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  v22 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = v22 | 2;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v21 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 & 2;
  }

  if (v25)
  {
    v26 = objc_opt_class();
    v64 = v26;
    v27 = SSHashIfNeeded();
    v28 = [NSNumber numberWithInteger:a4];
    v74 = 138543874;
    v75 = v26;
    v76 = 2112;
    v77 = v27;
    v78 = 2114;
    v79 = v28;
    LODWORD(v63) = 32;
    v62 = &v74;
    v29 = _os_log_send_and_compose_impl();

    if (!v29)
    {
      goto LABEL_19;
    }

    v24 = [NSString stringWithCString:v29 encoding:4, &v74, v63];
    free(v29);
    v62 = v24;
    SSFileLog();
  }

LABEL_19:
  v72 = v13;
  v30 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:v10 purpose:a4 error:&v72];
  v31 = v72;

  if (!v31)
  {
    v71 = 0;
    v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:v10 purpose:a4 error:&v71];
    v31 = v71;
    a6 = v65;
    goto LABEL_51;
  }

  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  v33 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = v33 | 2;
  }

  else
  {
    v34 = v33;
  }

  v35 = [v32 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (!v36)
  {
    a6 = v65;
    goto LABEL_68;
  }

  v37 = objc_opt_class();
  v38 = v37;
  v39 = SSHashIfNeeded();
  v40 = [NSNumber numberWithInteger:a4];
  v74 = 138544130;
  v75 = v37;
  v76 = 2112;
  v77 = v39;
  v78 = 2114;
  v79 = v40;
  v80 = 2114;
  v81 = v31;
  LODWORD(v63) = 42;
  v41 = _os_log_send_and_compose_impl();

  a6 = v65;
  if (v41)
  {
    v35 = [NSString stringWithCString:v41 encoding:4, &v74, v63];
    free(v41);
    SSFileLog();
LABEL_68:
  }

  v11 = 0;
LABEL_51:

  v13 = v31;
  if (a6)
  {
LABEL_33:
    v42 = v13;
    *a6 = v13;
  }

LABEL_34:

  return v11;
}

- (id)_queryForPrivateKeyWithLabel:(id)a3 prompt:(id)a4 useTokenID:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      LODWORD(v19) = 138543362;
      *(&v19 + 4) = objc_opt_class();
      v15 = *(&v19 + 4);
      LODWORD(v18) = 12;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_18:

        v10 = 0;
        goto LABEL_19;
      }

      v14 = [NSString stringWithCString:v16 encoding:4, &v19, v18, v19];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:kSecClassKey forKey:kSecClass];
  [v9 setObject:kSecAttrKeyClassPrivate forKey:kSecAttrKeyClass];
  [v9 setObject:&__kCFBooleanTrue forKey:kSecReturnRef];
  [v9 setObject:v7 forKey:kSecAttrLabel];
  if (v8)
  {
    [v9 setObject:v8 forKey:kSecUseOperationPrompt];
  }

  if (v5)
  {
    [v9 setObject:kSecAttrTokenIDSecureEnclave forKey:kSecAttrTokenID];
  }

  v10 = [NSDictionary dictionaryWithDictionary:v9];

LABEL_19:

  return v10;
}

- (id)_regenerateKeychainTokensForAccountIdentifier:(id)a3 purpose:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1001542B0;
  v44 = sub_1001542C0;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1001542B0;
  v38 = sub_1001542C0;
  v39 = 0;
  v9 = [NSString stringWithFormat:@"%@", v8];
  v10 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001630D8;
  block[3] = &unk_10032A0C0;
  v31 = &v40;
  block[4] = self;
  v12 = v8;
  v32 = &v34;
  v33 = a4;
  v28 = v12;
  v13 = v9;
  v29 = v13;
  v14 = v10;
  v30 = v14;
  dispatch_async(dispatchQueue, block);
  v15 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v14, v15);
  if (!v41[5] && !v35[5])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    v18 = [v16 shouldLogToDisk];
    v19 = [v16 OSLogObject];
    v20 = v19;
    if (v18)
    {
      v17 |= 2u;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v21 = objc_opt_class();
      v22 = SSHashIfNeeded();
      v46 = 138543618;
      v47 = v21;
      v48 = 2112;
      v49 = v22;
      LODWORD(v26) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_13:

        goto LABEL_14;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v46, v26];
      free(v23);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (a5)
  {
    *a5 = v35[5];
  }

  v24 = v41[5];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

- (id)_signData:(id)a3 context:(id)a4 error:(id *)a5
{
  v72 = a3;
  v8 = a4;
  v9 = [v8 consolidatedDialog];
  v74 = [v9 reason];

  v73 = [v8 accountIdentifier];
  v71 = [NSString stringWithFormat:@"%@", v73];
  v84 = 0;
  v10 = [(DaemonBiometricKeychain *)self copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v8 error:&v84];
  v11 = v84;
  v12 = v11;
  cf = v10;
  if (v10 && !v11)
  {
    v69 = a5;
    v13 = [v8 isExtendedAction];
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:&__kCFBooleanFalse forKey:&off_10034BF70];
    [v14 setObject:&__kCFBooleanTrue forKey:&off_10034BF88];
    [v14 setObject:&off_10034BFA0 forKey:&off_10034BFB8];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BIO_USE_PASSWORD" value:&stru_10033CC30 table:@"Mesa"];
    [v14 setObject:v16 forKey:&off_10034BFD0];

    if (v74)
    {
      [v14 setObject:v74 forKey:&off_10034BFE8];
    }

    v67 = v14;
    v17 = objc_alloc_init(ISWeakLinkedClassForString());
    v18 = +[SSAccountStore defaultStore];
    v19 = [v18 accountWithUniqueIdentifier:v73];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v35 = +[SSAccountStore defaultStore];
      v21 = [v35 activeAccount];
    }

    v36 = [v8 paymentSheet];
    v37 = [v36 authKitAuthenticationContextForAccount:v21];

    v68 = v21;
    v66 = v17;
    if ([v8 isPayment])
    {
      v38 = +[SSLogConfig sharedDaemonConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      v39 = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v40 = v39 | 2;
      }

      else
      {
        v40 = v39;
      }

      v41 = [v38 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v40;
      }

      else
      {
        v42 = v40 & 2;
      }

      if (v42)
      {
        v43 = objc_opt_class();
        v85 = 138412290;
        v86 = v43;
        v44 = v43;
        LODWORD(v65) = 12;
        v45 = _os_log_send_and_compose_impl();

        if (!v45)
        {
LABEL_36:

          v82 = 0;
          v83 = 0;
          v80 = 0;
          v81 = 0;
          v46 = &v80;
          v47 = v17;
          v48 = v67;
          v49 = cf;
          v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:v72 authContext:v37 biometricContext:v8 touchIDContext:v47 touchIDOptions:v67 accessControlRef:cf passwordToken:&v83 paymentTokenData:&v82 fpanID:&v81 error:&v80];
          v33 = v83;
          v32 = v82;
          v50 = v81;
LABEL_53:
          v31 = v50;
LABEL_55:
          v12 = *v46;

          CFRelease(v49);
          if (v33)
          {
            [v8 setPasswordEquivalentToken:v33];
          }

          a5 = v69;
          if (v32)
          {
            [v8 setPaymentTokenData:v32];
          }

          if (v31)
          {
            [v8 setFpanID:v31];
          }

          goto LABEL_61;
        }

        v41 = [NSString stringWithCString:v45 encoding:4, &v85, v65];
        free(v45);
        SSFileLog();
      }

      goto LABEL_36;
    }

    if (!SSDebugShouldUseFileBasedPaymentSheetProxy())
    {
      v75 = 0;
      v46 = &v75;
      v48 = v67;
      v34 = [(DaemonBiometricKeychain *)self signDataWithKeychain:v72 accountIdentifier:v73 purpose:v13 localAuthContext:v17 localAuthOptions:v67 error:&v75];
      v33 = 0;
      v32 = 0;
      v31 = 0;
      v49 = cf;
      goto LABEL_55;
    }

    v51 = +[SSLogConfig sharedDaemonConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    v52 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v53 = v52 | 2;
    }

    else
    {
      v53 = v52;
    }

    v54 = [v51 OSLogObject];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 & 2;
    }

    if (v55)
    {
      v56 = objc_opt_class();
      v85 = 138412290;
      v86 = v56;
      v57 = v56;
      LODWORD(v65) = 12;
      v58 = _os_log_send_and_compose_impl();

      if (!v58)
      {
LABEL_50:

        v59 = [v8 paymentSheet];

        if (!v59)
        {
          v60 = +[ISBiometricStore diskBasedPaymentSheet];
          [v8 setPaymentSheet:v60];
        }

        v78 = 0;
        v79 = 0;
        v76 = 0;
        v77 = 0;
        v46 = &v76;
        v61 = v17;
        v48 = v67;
        v49 = cf;
        v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:v72 authContext:v37 biometricContext:v8 touchIDContext:v61 touchIDOptions:v67 accessControlRef:cf passwordToken:&v79 paymentTokenData:&v78 fpanID:&v77 error:&v76];
        v33 = v79;
        v32 = v78;
        v50 = v77;
        goto LABEL_53;
      }

      v54 = [NSString stringWithCString:v58 encoding:4, &v85, v65];
      free(v58);
      SSFileLog();
    }

    goto LABEL_50;
  }

  v22 = +[SSLogConfig sharedDaemonConfig];
  if (!v22)
  {
    v22 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v24;
  }

  else
  {
    v26 = v24 & 2;
  }

  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = objc_opt_class();
  v28 = v27;
  v29 = SSHashIfNeeded();
  v85 = 138543874;
  v86 = v27;
  v87 = 2112;
  v88 = v29;
  v89 = 2114;
  v90 = v12;
  LODWORD(v65) = 32;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v25 = [NSString stringWithCString:v30 encoding:4, &v85, v65];
    free(v30);
    SSFileLog();
LABEL_18:
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
LABEL_61:
  if (a5)
  {
    v62 = v12;
    *a5 = v12;
  }

  v63 = v34;

  return v34;
}

@end