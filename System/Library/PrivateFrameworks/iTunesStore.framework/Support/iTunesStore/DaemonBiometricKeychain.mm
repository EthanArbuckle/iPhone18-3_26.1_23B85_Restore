@interface DaemonBiometricKeychain
+ (id)sharedInstance;
+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block;
+ (void)createAttestationDataWithMessage:(id)message connection:(id)connection;
+ (void)createX509CertChainDataWithMessage:(id)message connection:(id)connection;
+ (void)deleteKeychainTokensWithMessage:(id)message connection:(id)connection;
+ (void)getPublicKeyDataWithMessage:(id)message connection:(id)connection;
+ (void)observeXPCServer:(id)server;
+ (void)signDataUsingContextWithMessage:(id)message connection:(id)connection;
+ (void)signDataWithMessage:(id)message connection:(id)connection;
+ (void)x509CertChainDataWithMessage:(id)message connection:(id)connection;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (BOOL)_isDeviceUnlocked;
- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)identifier_ error:(id *)error;
- (DaemonBiometricKeychain)init;
- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)key error:(id *)error;
- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)context error:(id *)error;
- (id)_amsCertificateLabelForPurpose:(int64_t)purpose;
- (id)_amsKeychainLabelForPurpose:(int64_t)purpose;
- (id)_constraintsForExtendedActions;
- (id)_constraintsForPurchase;
- (id)_copyPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_presentPaymentSheetForChallenge:(id)challenge authContext:(id)context biometricContext:(id)biometricContext touchIDContext:(id)dContext touchIDOptions:(id)options accessControlRef:(__SecAccessControl *)ref passwordToken:(id *)token paymentTokenData:(id *)self0 fpanID:(id *)self1 error:(id *)self2;
- (id)_publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error;
- (id)_queryForPrivateKeyWithLabel:(id)label prompt:(id)prompt useTokenID:(BOOL)d;
- (id)_regenerateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error;
- (id)_signData:(id)data context:(id)context error:(id *)error;
- (id)createAttestationDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error;
- (id)createX509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error;
- (id)publicKeyDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error;
- (id)signDataWithKeychain:(id)keychain accountIdentifier:(id)identifier purpose:(int64_t)purpose localAuthContext:(id)context localAuthOptions:(id)options error:(id *)error;
- (id)signData_:(id)data_ context:(id)context error:(id *)error;
- (id)x509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error;
@end

@implementation DaemonBiometricKeychain

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100153E5C;
  block[3] = &unk_100327170;
  block[4] = self;
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

- (id)createAttestationDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error
{
  identifier_Copy = identifier_;
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
  selfCopy = self;
  v11 = identifier_Copy;
  v33 = &v35;
  purposeCopy = purpose;
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

    shouldLog = [v14 shouldLog];
    shouldLogToDisk = [v14 shouldLogToDisk];
    oSLogObject = [v14 OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
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

      v18 = [NSString stringWithCString:v21 encoding:4, &v47, v24, block, v26, v27, v28, selfCopy, v30];
      free(v21);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (error)
  {
    *error = v36[5];
  }

  v22 = v42[5];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v22;
}

- (id)createX509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose error:(id *)error
{
  identifier_Copy = identifier_;
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
  selfCopy = self;
  v11 = identifier_Copy;
  v34 = &v36;
  purposeCopy = purpose;
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

    shouldLog = [v14 shouldLog];
    shouldLogToDisk = [v14 shouldLogToDisk];
    oSLogObject = [v14 OSLogObject];
    v18 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v19 = objc_opt_class();
      v20 = [NSNumber numberWithInteger:purpose];
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

      v18 = [NSString stringWithCString:v21 encoding:4, &v48, v25, block, v27, v28, v29, selfCopy, v31];
      free(v21);
      v24 = v18;
      SSFileLog();
    }

    goto LABEL_12;
  }

LABEL_13:
  if (error)
  {
    *error = v37[5];
  }

  v22 = [NSArray arrayWithArray:v43[5], v24];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v22;
}

- (BOOL)deleteKeychainTokensForAccountIdentifier_:(id)identifier_ error:(id *)error
{
  identifier_Copy = identifier_;
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
  v9 = identifier_Copy;
  v15 = v9;
  v18 = &v19;
  v10 = v7;
  v16 = v10;
  dispatch_async(dispatchQueue, block);
  v11 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v10, v11);
  if (error)
  {
    *error = v20[5];
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)publicKeyDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error
{
  identifier_Copy = identifier_;
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
  v13 = identifier_Copy;
  v33 = &v36;
  purposeCopy = purpose;
  keysCopy = keys;
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

    shouldLog = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
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
  if (error)
  {
    *error = v37[5];
  }

  v26 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v26;
}

- (id)signData_:(id)data_ context:(id)context error:(id *)error
{
  data_Copy = data_;
  contextCopy = context;
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
  selfCopy = self;
  v12 = data_Copy;
  v32 = v12;
  v13 = contextCopy;
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

    shouldLog = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v21 = objc_opt_class();
      accountIdentifier = [v13 accountIdentifier];
      v49 = 138543618;
      v50 = v21;
      v51 = 2112;
      v52 = accountIdentifier;
      LODWORD(v26) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_13:

        goto LABEL_14;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v49, v26, block, v28, v29, v30, selfCopy, v32, v33];
      free(v23);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (error)
  {
    *error = v38[5];
  }

  v24 = v44[5];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  return v24;
}

- (id)x509CertChainDataForAccountIdentifier_:(id)identifier_ purpose:(int64_t)purpose regenerateCerts:(BOOL)certs error:(id *)error
{
  certsCopy = certs;
  identifier_Copy = identifier_;
  v77 = 0;
  result = 0;
  v8 = [ISBiometricStore keychainLabelForKeyWithAccountID:identifier_Copy purpose:purpose];
  if (!v8)
  {
    v39 = +[SSLogConfig sharedDaemonConfig];
    if (!v39)
    {
      v39 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v39 shouldLog];
    if ([v39 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v39 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = [NSNumber numberWithInteger:purpose];
      v79 = 138412802;
      v80 = v42;
      v81 = 2112;
      v82 = identifier_Copy;
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

    shouldLog2 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v16 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v19 = v9;
      v20 = objc_opt_class();
      v69 = v8;
      v67 = v20;
      v21 = [NSNumber numberWithInteger:purpose];
      v22 = [NSNumber numberWithInt:v15];
      v79 = 138544130;
      v80 = v20;
      v9 = v19;
      v81 = 2112;
      v82 = identifier_Copy;
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

      oSLogObject2 = [NSString stringWithCString:v23 encoding:4, &v79, v66];
      free(v23);
      v64 = oSLogObject2;
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

    shouldLog3 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v27 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      shouldLog3 &= 2u;
    }

    if (shouldLog3)
    {
      v70 = v8;
      v72 = identifier_Copy;
      v30 = objc_opt_class();
      v68 = v30;
      v31 = [NSNumber numberWithInteger:purpose];
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

      identifier_Copy = v72;
      if (!v33)
      {
LABEL_25:

        goto LABEL_26;
      }

      oSLogObject3 = [NSString stringWithCString:v33 encoding:4, &v79, v66];
      free(v33);
      v64 = oSLogObject3;
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
  if (!certsCopy)
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

  shouldLog4 = [v47 shouldLog];
  if ([v47 shouldLogToDisk])
  {
    shouldLog4 |= 2u;
  }

  oSLogObject4 = [v47 OSLogObject];
  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog4 &= 2u;
  }

  if (!shouldLog4)
  {
    goto LABEL_50;
  }

  v50 = objc_opt_class();
  v51 = v50;
  v52 = [NSNumber numberWithInteger:purpose];
  v79 = 138543874;
  v80 = v50;
  v81 = 2112;
  v82 = identifier_Copy;
  v83 = 2114;
  v84 = v52;
  LODWORD(v66) = 32;
  v65 = &v79;
  v53 = _os_log_send_and_compose_impl();

  if (v53)
  {
    oSLogObject4 = [NSString stringWithCString:v53 encoding:4, &v79, v66];
    free(v53);
    v65 = oSLogObject4;
    SSFileLog();
LABEL_50:
  }

  v76 = 0;
  v37 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:identifier_Copy purpose:purpose error:&v76];
  v54 = v76;
  v38 = v54;
  if (!v37 || v54)
  {
    v34 = +[SSLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v34 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      shouldLog5 &= 2u;
    }

    if (shouldLog5)
    {
      v71 = v8;
      v57 = objc_opt_class();
      v58 = v57;
      v59 = [NSNumber numberWithInteger:purpose];
      v79 = 138544130;
      v80 = v57;
      v81 = 2112;
      v82 = identifier_Copy;
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

      oSLogObject5 = [NSString stringWithCString:v60 encoding:4, &v79, v66];
      free(v60);
      SSFileLog();
      v8 = v71;
    }

LABEL_65:
  }

LABEL_66:
  if (error)
  {
    v61 = v38;
    *error = v38;
  }

  v62 = v37;

  return v62;
}

- (__SecAccessControl)copyAccessControlListForKey:(__SecKey *)key error:(id *)error
{
  v5 = SecKeyCopyAttributes(key);
  if (!v5)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

      oSLogObject = [NSString stringWithCString:v23 encoding:4, &v25, v24, v25];
      free(v23);
      SSFileLog();
    }

LABEL_31:
    v10 = 0;
    if (!error)
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

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog2 | 2;
  }

  else
  {
    v13 = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
    oSLogObject2 = [NSString stringWithCString:v16 encoding:4, &v25, v24, v25];
    free(v16);
    SSFileLog();
LABEL_15:
  }

  v10 = 0;
LABEL_17:
  CFRelease(v6);
  if (error)
  {
LABEL_18:
    *error = 0;
  }

  return v10;
}

- (__SecAccessControl)copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:(id)context error:(id *)error
{
  result = 0;
  contextCopy = context;
  accountIdentifier = [contextCopy accountIdentifier];
  isExtendedAction = [contextCopy isExtendedAction];

  v9 = isExtendedAction;
  v10 = [ISBiometricStore keychainLabelForAccountID:accountIdentifier purpose:isExtendedAction];
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

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

    oSLogObject = [NSString stringWithCString:v24 encoding:4, &v34, v31];
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

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v29 = shouldLog2 | 2;
    }

    else
    {
      v29 = shouldLog2;
    }

    oSLogObject = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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

  if (error)
  {
    v26 = v17;
    *error = v17;
  }

  return v25;
}

- (id)signDataWithKeychain:(id)keychain accountIdentifier:(id)identifier purpose:(int64_t)purpose localAuthContext:(id)context localAuthOptions:(id)options error:(id *)error
{
  keychainCopy = keychain;
  identifierCopy = identifier;
  contextCopy = context;
  optionsCopy = options;
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
  purposeCopy = purpose;
  v18 = identifierCopy;
  v44 = v18;
  v19 = contextCopy;
  v45 = v19;
  selfCopy = self;
  v49 = &v57;
  v20 = keychainCopy;
  v47 = v20;
  v50 = &v53;
  v51 = &v63;
  v21 = optionsCopy;
  v22 = v17;
  v48 = v22;
  [v19 evaluatePolicy:1 options:optionsCopy reply:v43];
  v23 = dispatch_time(0, 180000000000);
  dispatch_semaphore_wait(v22, v23);
  if (!v64[5] && !v58[5])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v24 shouldLog];
    shouldLogToDisk = [v24 shouldLogToDisk];
    v40 = v24;
    v41 = v21;
    oSLogObject = [v24 OSLogObject];
    v28 = oSLogObject;
    if (shouldLogToDisk)
    {
      v29 = shouldLog | 2;
    }

    else
    {
      v29 = shouldLog;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v33 = [NSNumber numberWithInteger:purpose];
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

  if (error)
  {
    *error = v58[5];
  }

  v36 = v64[5];

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);

  return v36;
}

+ (void)observeXPCServer:(id)server
{
  serverCopy = server;
  [serverCopy addObserver:self selector:"createAttestationDataWithMessage:connection:" forMessage:179];
  [serverCopy addObserver:self selector:"createX509CertChainDataWithMessage:connection:" forMessage:204];
  [serverCopy addObserver:self selector:"deleteKeychainTokensWithMessage:connection:" forMessage:185];
  [serverCopy addObserver:self selector:"getPublicKeyDataWithMessage:connection:" forMessage:180];
  [serverCopy addObserver:self selector:"signDataWithMessage:connection:" forMessage:181];
  [serverCopy addObserver:self selector:"signDataUsingContextWithMessage:connection:" forMessage:192];
  [serverCopy addObserver:self selector:"x509CertChainDataWithMessage:connection:" forMessage:205];
}

+ (void)createAttestationDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015864C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)createX509CertChainDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015883C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)deleteKeychainTokensWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158A2C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)getPublicKeyDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100158BF8;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

+ (void)signDataWithMessage:(id)message connection:(id)connection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100158E08;
  v8[3] = &unk_100329FF8;
  messageCopy = message;
  connectionCopy = connection;
  selfCopy = self;
  v6 = connectionCopy;
  v7 = messageCopy;
  [self _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)signDataUsingContextWithMessage:(id)message connection:(id)connection
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100159340;
  v8[3] = &unk_100329FF8;
  messageCopy = message;
  connectionCopy = connection;
  selfCopy = self;
  v6 = connectionCopy;
  v7 = messageCopy;
  [self _handleMessage:v7 connection:v6 withReplyBlock:v8];
}

+ (void)x509CertChainDataWithMessage:(id)message connection:(id)connection
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10015982C;
  v7[3] = &unk_100329FD0;
  messageCopy = message;
  selfCopy = self;
  v6 = messageCopy;
  [self _handleMessage:v6 connection:connection withReplyBlock:v7];
}

- (id)_amsCertificateLabelForPurpose:(int64_t)purpose
{
  v3 = @"com.apple.AppleMediaServices.cert.X509.client.extended";
  if (purpose != 1)
  {
    v3 = 0;
  }

  if (purpose)
  {
    return v3;
  }

  else
  {
    return @"com.apple.AppleMediaServices.cert.X509.client.primary";
  }
}

- (id)_amsKeychainLabelForPurpose:(int64_t)purpose
{
  v4 = +[ISBiometricStore shouldUseX509];
  if (purpose == 1)
  {
    v5 = @"com.apple.AppleMediaServices.extendedKey";
    v6 = @"com.apple.AppleMediaServices.cert.X509.extended";
  }

  else
  {
    if (purpose)
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

+ (void)_handleMessage:(id)message connection:(id)connection withReplyBlock:(id)block
{
  messageCopy = message;
  connectionCopy = connection;
  blockCopy = block;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100159B58;
  v15[3] = &unk_10032A020;
  v16 = connectionCopy;
  v17 = messageCopy;
  v18 = blockCopy;
  selfCopy = self;
  v12 = blockCopy;
  v13 = messageCopy;
  v14 = connectionCopy;
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

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject = [NSString stringWithCString:v11 encoding:4, &v15, v14, v15];
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

- (id)_copyPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  result = 0;
  cf = 0;
  error = 0;
  [NSString stringWithFormat:@"%@", identifierCopy];
  v134 = v133 = identifierCopy;
  purposeCopy = purpose;
  v8 = [ISBiometricStore keychainLabelForCertWithAccountID:identifierCopy purpose:purpose];
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:v8 forKeyedSubscript:kSecAttrLabel];
  [v9 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
  [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnRef];
  v10 = SecItemCopyMatching(v9, &result);
  if (v10 == -25300 || (v11 = v10, (v12 = result) == 0))
  {
    v13 = [(DaemonBiometricKeychain *)self _amsCertificateLabelForPurpose:purpose];

    [v9 setObject:v13 forKeyedSubscript:kSecAttrLabel];
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
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

      oSLogObject = [NSString stringWithCString:v19 encoding:4, &v139, v125];
      free(v19);
      v122 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_14;
  }

  v13 = v8;
LABEL_15:
  selfCopy = self;
  v131 = v9;
  if (v11 == -25300 || !v12)
  {
    v38 = +[SSLogConfig sharedDaemonConfig];
    if (!v38)
    {
      v38 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v38 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v41 = shouldLog2;
    }

    else
    {
      v41 = shouldLog2 & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      v43 = v42;
      v44 = SSHashIfNeeded();
      v45 = [NSNumber numberWithInteger:purposeCopy];
      v139 = 138543874;
      v140 = v42;
      v141 = 2112;
      v142 = v44;
      v143 = 2114;
      errorCopy2 = v45;
      LODWORD(v125) = 32;
      v123 = &v139;
      v46 = _os_log_send_and_compose_impl();

      self = selfCopy;
      if (!v46)
      {
        goto LABEL_40;
      }

      oSLogObject2 = [NSString stringWithCString:v46 encoding:4, &v139, v125];
      free(v46);
      v123 = oSLogObject2;
      SSFileLog();
    }

LABEL_40:
    v47 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purposeCopy];

    v23 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v47 prompt:0];
    v48 = +[SSLogConfig sharedDaemonConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    v128 = v47;
    shouldLog3 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v48 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v51 = shouldLog3;
    }

    else
    {
      v51 = shouldLog3 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v53 = v52;
      v54 = SSHashIfNeeded();
      v55 = [NSNumber numberWithInteger:purposeCopy];
      v139 = 138543874;
      v140 = v52;
      v141 = 2112;
      v142 = v54;
      v143 = 2114;
      errorCopy2 = v55;
      LODWORD(v125) = 32;
      v124 = &v139;
      v56 = _os_log_send_and_compose_impl();

      if (!v56)
      {
        goto LABEL_51;
      }

      oSLogObject3 = [NSString stringWithCString:v56 encoding:4, &v139, v125];
      free(v56);
      v124 = oSLogObject3;
      SSFileLog();
    }

LABEL_51:
    v57 = SecItemCopyMatching(v23, &cf);
    v58 = +[SSLogConfig sharedDaemonConfig];
    if (!v58)
    {
      v58 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v58 shouldLog];
    if ([v58 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [v58 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v61 = shouldLog4;
    }

    else
    {
      v61 = shouldLog4 & 2;
    }

    v130 = v23;
    v62 = selfCopy;
    if (v61)
    {
      v63 = objc_opt_class();
      v64 = v63;
      v65 = SSHashIfNeeded();
      v66 = [NSNumber numberWithInteger:purposeCopy];
      v139 = 138543874;
      v140 = v63;
      v141 = 2112;
      v142 = v65;
      v143 = 2114;
      errorCopy2 = v66;
      LODWORD(v125) = 32;
      v122 = &v139;
      v67 = _os_log_send_and_compose_impl();

      v23 = v130;
      v62 = selfCopy;

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

        v122 = [(DaemonBiometricKeychain *)v62 _amsKeychainLabelForPurpose:purposeCopy, v122];
        v82 = [(__CFDictionary *)v23 mutableCopy];
        [v82 setObject:v122 forKeyedSubscript:v68];
        v83 = +[SSLogConfig sharedDaemonConfig];
        if (!v83)
        {
          v83 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v83 shouldLog];
        if ([v83 shouldLogToDisk])
        {
          shouldLog5 |= 2u;
        }

        oSLogObject5 = [v83 OSLogObject];
        if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog5 &= 2u;
        }

        if (shouldLog5)
        {
          v86 = objc_opt_class();
          v139 = 138543618;
          v140 = v86;
          v141 = 2114;
          v142 = v122;
          v87 = v86;
          LODWORD(v125) = 22;
          v122 = &v139;
          v88 = _os_log_send_and_compose_impl();

          if (!v88)
          {
            goto LABEL_86;
          }

          oSLogObject5 = [NSString stringWithCString:v88 encoding:4, &v139, v125];
          free(v88);
          v122 = oSLogObject5;
          SSFileLog();
        }

LABEL_86:
        v57 = SecItemCopyMatching(v82, &cf);

        if (v57)
        {
LABEL_66:
          v69 = SSError();
          v70 = [NSNumber numberWithInt:v57];
          errorCopy = SSErrorBySettingUserInfoValue();

          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog6 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v72 = shouldLog6 | 2;
          }

          else
          {
            v72 = shouldLog6;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
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
            v78 = [NSNumber numberWithInteger:purposeCopy];
            v79 = [NSNumber numberWithInt:v57];
            v139 = 138544130;
            v140 = v75;
            v141 = 2112;
            v142 = v77;
            v143 = 2114;
            errorCopy2 = v78;
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

            oSLogObject6 = [NSString stringWithCString:v80 encoding:4, &v139, v125];
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

          errorCopy = SSError();
          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog7 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v111 = shouldLog7 | 2;
          }

          else
          {
            v111 = shouldLog7;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
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
          errorCopy = SSError();
          oSLogObject7 = +[SSLogConfig sharedDaemonConfig];
          if (!oSLogObject7)
          {
            oSLogObject7 = +[SSLogConfig sharedConfig];
          }

          shouldLog8 = [oSLogObject7 shouldLog];
          if ([oSLogObject7 shouldLogToDisk])
          {
            v101 = shouldLog8 | 2;
          }

          else
          {
            v101 = shouldLog8;
          }

          oSLogObject6 = [oSLogObject7 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
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
        v116 = [NSNumber numberWithInteger:purposeCopy];
        v139 = 138543874;
        v140 = v113;
        v141 = 2112;
        v142 = v115;
        v143 = 2114;
        errorCopy2 = v116;
        LODWORD(v125) = 32;
        v80 = _os_log_send_and_compose_impl();

        goto LABEL_146;
      }

      oSLogObject4 = [NSString stringWithCString:v67 encoding:4, &v139, v125];
      free(v67);
      v122 = oSLogObject4;
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

    shouldLog9 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      shouldLog9 |= 2u;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v26 = shouldLog9;
    }

    else
    {
      v26 = shouldLog9 & 2;
    }

    if (v26)
    {
      v129 = v23;
      v27 = objc_opt_class();
      v28 = v27;
      v29 = SSHashIfNeeded();
      v30 = [NSNumber numberWithInteger:purposeCopy];
      v31 = [NSNumber numberWithInt:v11];
      v139 = 138544130;
      v140 = v27;
      v141 = 2112;
      v142 = v29;
      v143 = 2114;
      errorCopy2 = v30;
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
        errorCopy = v126;
        goto LABEL_167;
      }

      oSLogObject7 = [NSString stringWithCString:v32 encoding:4, &v139, v125];
      free(v32);
      v23 = v129;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    LOBYTE(v36) = 1;
    errorCopy = v126;
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

    shouldLog10 = [(__CFDictionary *)v23 shouldLog];
    if ([(__CFDictionary *)v23 shouldLogToDisk])
    {
      shouldLog10 |= 2u;
    }

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v104 = shouldLog10;
    }

    else
    {
      v104 = shouldLog10 & 2;
    }

    if (v104)
    {
      v96 = v23;
      v105 = objc_opt_class();
      v106 = v105;
      v107 = SSHashIfNeeded();
      v108 = [NSNumber numberWithInteger:purposeCopy];
      v139 = 138543874;
      v140 = v105;
      v141 = 2112;
      v142 = v107;
      v143 = 2114;
      errorCopy2 = v108;
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

      oSLogObject7 = [NSString stringWithCString:v109 encoding:4, &v139, v125];
      free(v109);
      v23 = v96;
      SSFileLog();
    }

    v33 = 0;
    v34 = 0;
    errorCopy = 0;
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
    errorCopy = error;
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

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v36) = v36 & 2;
    }

    if (v36)
    {
      v127 = errorCopy;
      v92 = v23;
      v93 = objc_opt_class();
      v94 = v93;
      v95 = SSHashIfNeeded();
      v139 = 138543874;
      v140 = v93;
      v141 = 2112;
      v142 = v95;
      v143 = 2114;
      errorCopy2 = error;
      LODWORD(v125) = 32;
      v36 = _os_log_send_and_compose_impl();

      if (v36)
      {
        oSLogObject7 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
        free(v36);
        v23 = v92;
        SSFileLog();
        LOBYTE(v36) = 0;
LABEL_102:
        v35 = 0;
        errorCopy = v127;
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

    oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
    if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEBUG))
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
      oSLogObject7 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
      free(v36);
      v23 = v96;
      SSFileLog();
      LOBYTE(v36) = 0;
LABEL_114:
      errorCopy = 0;
      v35 = v34;
LABEL_165:
      v13 = v128;
      goto LABEL_166;
    }

    v13 = v128;
    v35 = v34;
LABEL_162:
    v23 = v96;
    errorCopy = 0;
    goto LABEL_167;
  }

  errorCopy = SSError();
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

  oSLogObject7 = [(__CFDictionary *)v23 OSLogObject];
  if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
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

  v127 = errorCopy;
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
    oSLogObject7 = [NSString stringWithCString:v36 encoding:4, &v139, v125];
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
  errorCopy = v127;
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

  if (error)
  {
    v120 = errorCopy;
    *error = errorCopy;
  }

  return v35;
}

- (id)_createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  result = 0;
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v10 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];

  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0];
  v12 = SecItemCopyMatching(v11, &result);
  if (v12)
  {
    v13 = v12;
    v75 = v11;
    v79 = v10;
    errorCopy = error;
    v14 = SSError();
    v15 = [NSNumber numberWithInt:v13];
    v16 = SSErrorBySettingUserInfoValue();

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v24 = identifierCopy;
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

      error = errorCopy;
      v11 = v75;
      if (!v27)
      {
LABEL_30:

        v41 = 0;
        identifierCopy = v24;
        v10 = v79;
        goto LABEL_69;
      }

      oSLogObject = [NSString stringWithCString:v27 encoding:4, &v86, v72];
      free(v27);
      SSFileLog();
    }

    else
    {
      v24 = identifierCopy;
      error = errorCopy;
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

    shouldLog2 = [v42 shouldLog];
    if ([v42 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v42 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v45 = shouldLog2;
    }

    else
    {
      v45 = shouldLog2 & 2;
    }

    if (v45)
    {
      v46 = objc_opt_class();
      v77 = v46;
      v81 = v16;
      v47 = identifierCopy;
      SSHashIfNeeded();
      v49 = v48 = v11;
      v86 = 138543618;
      v87 = v46;
      v88 = 2112;
      v89 = v49;
      LODWORD(v72) = 22;
      v50 = _os_log_send_and_compose_impl();

      v11 = v48;
      identifierCopy = v47;
      v16 = v81;

      if (!v50)
      {
LABEL_42:

        v41 = 0;
        goto LABEL_69;
      }

      oSLogObject2 = [NSString stringWithCString:v50 encoding:4, &v86, v72];
      free(v50);
      SSFileLog();
    }

    goto LABEL_42;
  }

  v28 = SecKeyCopyAttestationKey();
  errorCopy2 = error;
  if (!v28)
  {
    v16 = 0;
    v51 = +[SSLogConfig sharedDaemonConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v54 = shouldLog3;
    }

    else
    {
      v54 = shouldLog3 & 2;
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
      error = errorCopy2;
      if (!v58)
      {
LABEL_67:

        v41 = 0;
        goto LABEL_69;
      }

      oSLogObject3 = [NSString stringWithCString:v58 encoding:4, &v86, v72];
      free(v58);
      SSFileLog();
    }

    else
    {
      error = errorCopy2;
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

    shouldLog4 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject4 = [v59 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v62 = shouldLog4;
    }

    else
    {
      v62 = shouldLog4 & 2;
    }

    if (v62)
    {
      v63 = objc_opt_class();
      v82 = v28;
      v64 = v16;
      v65 = identifierCopy;
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
      identifierCopy = v65;
      v16 = v64;
      v28 = v82;

      if (!v68)
      {
LABEL_64:

        v69 = 0;
        error = errorCopy2;
        goto LABEL_68;
      }

      oSLogObject4 = [NSString stringWithCString:v68 encoding:4, &v86, v72];
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

  shouldLog5 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    shouldLog5 |= 2u;
  }

  oSLogObject5 = [v31 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
  {
    v34 = shouldLog5;
  }

  else
  {
    v34 = shouldLog5 & 2;
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
    oSLogObject5 = [NSString stringWithCString:v40 encoding:4, &v86, v72];
    free(v40);
    SSFileLog();
LABEL_26:
  }

  v16 = 0;
  v10 = v80;
  error = errorCopy2;
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

  if (error)
  {
    v70 = v16;
    *error = v16;
  }

  return v41;
}

- (id)_createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
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
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v7 = v201;
  obj = v201[5];
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&obj];
  purposeCopy = purpose;
  objc_storeStrong(v7 + 5, obj);
  if (v201[5])
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    shouldLogToDisk = [v8 shouldLogToDisk];
    oSLogObject = [v8 OSLogObject];
    v162 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v13 = objc_opt_class();
      v14 = SSHashIfNeeded();
      v15 = [NSNumber numberWithInteger:purposeCopy];
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

      v162 = [NSString stringWithCString:v17 encoding:4, &v212, v162];
      free(v17);
      v157 = v162;
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

    shouldLog2 = [v18 shouldLog];
    shouldLogToDisk2 = [v18 shouldLogToDisk];
    v21 = identifierCopy;
    oSLogObject2 = [v18 OSLogObject];
    v1622 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      shouldLog2 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v24 = objc_opt_class();
      v25 = SSHashIfNeeded();
      v26 = [NSNumber numberWithInteger:purposeCopy];
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

      identifierCopy = v21;
      if (!v28)
      {
LABEL_101:

        goto LABEL_192;
      }

      v1622 = [NSString stringWithCString:v28 encoding:4, &v212, v162];
      free(v28);
      v158 = v1622;
      SSFileLog();
    }

    goto LABEL_101;
  }

  if (purposeCopy == 1)
  {
    _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
  }

  else
  {
    if (purposeCopy)
    {
      goto LABEL_37;
    }

    _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
  }

  if (_constraintsForExtendedActions)
  {
    SecAccessControlSetConstraints();
    v29 = +[SSLogConfig sharedDaemonConfig];
    if (!v29)
    {
      v29 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v29 shouldLog];
    shouldLogToDisk3 = [v29 shouldLogToDisk];
    oSLogObject3 = [v29 OSLogObject];
    v1623 = oSLogObject3;
    if (shouldLogToDisk3)
    {
      shouldLog3 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog3 &= 2u;
    }

    if (shouldLog3)
    {
      v34 = objc_opt_class();
      v35 = SSHashIfNeeded();
      v36 = [NSNumber numberWithInteger:purposeCopy];
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

      v1623 = [NSString stringWithCString:v37 encoding:4, &v212, v162];
      free(v37);
      v159 = v1623;
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

  shouldLog4 = [v29 shouldLog];
  shouldLogToDisk4 = [v29 shouldLogToDisk];
  oSLogObject4 = [v29 OSLogObject];
  v1623 = oSLogObject4;
  if (shouldLogToDisk4)
  {
    shouldLog4 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    shouldLog4 &= 2u;
  }

  if (!shouldLog4)
  {
    goto LABEL_46;
  }

  v41 = objc_opt_class();
  v42 = SSHashIfNeeded();
  v43 = [NSNumber numberWithInteger:purposeCopy];
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
    v1623 = [NSString stringWithCString:v44 encoding:4, &v212, v162];
    free(v44);
    v159 = v1623;
    SSFileLog();
LABEL_46:
    _constraintsForExtendedActions = 0;
LABEL_47:

    goto LABEL_48;
  }

  _constraintsForExtendedActions = 0;
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
  v184[1] = purposeCopy;
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

    shouldLog5 = [v52 shouldLog];
    shouldLogToDisk5 = [v52 shouldLogToDisk];
    oSLogObject5 = [v52 OSLogObject];
    v1624 = oSLogObject5;
    if (shouldLogToDisk5)
    {
      shouldLog5 |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
    {
      shouldLog5 &= 2u;
    }

    if (shouldLog5)
    {
      v57 = objc_opt_class();
      v58 = SSHashIfNeeded();
      v59 = [NSNumber numberWithInteger:purposeCopy];
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

      v1624 = [NSString stringWithCString:v60 encoding:4, &v212, v162];
      free(v60);
      v159 = v1624;
      SSFileLog();
    }

    goto LABEL_69;
  }

LABEL_70:
  if (v193[3])
  {
    v61 = [ISBiometricStore keychainLabelForKeyWithAccountID:identifierCopy purpose:purposeCopy];
    v1626 = objc_alloc_init(NSMutableDictionary);
    [v1626 setObject:kSecAttrKeyClassPrivate forKeyedSubscript:kSecAttrKeyClass];
    [v1626 setObject:v61 forKeyedSubscript:kSecAttrLabel];
    [v1626 setObject:kSecClassKey forKeyedSubscript:kSecClass];
    [v1626 setObject:v193[3] forKeyedSubscript:kSecValueRef];
    v63 = SecItemAdd(v1626, 0);
    if (v63)
    {
      v64 = +[SSLogConfig sharedDaemonConfig];
      if (!v64)
      {
        v64 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v64 shouldLog];
      shouldLogToDisk6 = [v64 shouldLogToDisk];
      oSLogObject6 = [v64 OSLogObject];
      v1625 = oSLogObject6;
      if (shouldLogToDisk6)
      {
        shouldLog6 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        shouldLog6 &= 2u;
      }

      if (!shouldLog6)
      {
        goto LABEL_103;
      }

      v69 = objc_opt_class();
      v70 = SSHashIfNeeded();
      v71 = [NSNumber numberWithInteger:purposeCopy];
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
        v1625 = [NSString stringWithCString:v73 encoding:4, &v212, v162];
        free(v73);
        v160 = v1625;
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

      shouldLog7 = [v64 shouldLog];
      shouldLogToDisk7 = [v64 shouldLogToDisk];
      v163 = identifierCopy;
      oSLogObject7 = [v64 OSLogObject];
      v1625 = oSLogObject7;
      if (shouldLogToDisk7)
      {
        shouldLog7 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
      {
        v84 = shouldLog7;
      }

      else
      {
        v84 = shouldLog7 & 2;
      }

      if (!v84)
      {
        goto LABEL_103;
      }

      v85 = objc_opt_class();
      v86 = SSHashIfNeeded();
      v87 = [NSNumber numberWithInteger:purposeCopy];
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

      identifierCopy = v163;
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

  shouldLog8 = [v61 shouldLog];
  shouldLogToDisk8 = [v61 shouldLogToDisk];
  oSLogObject8 = [v61 OSLogObject];
  v1626 = oSLogObject8;
  if (shouldLogToDisk8)
  {
    shouldLog8 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_ERROR))
  {
    shouldLog8 &= 2u;
  }

  if (shouldLog8)
  {
    v77 = objc_opt_class();
    v78 = SSHashIfNeeded();
    v79 = [NSNumber numberWithInteger:purposeCopy];
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

    v1626 = [NSString stringWithCString:v80 encoding:4, &v212, v162];
    free(v80);
    v160 = v1626;
    SSFileLog();
  }

LABEL_105:

LABEL_106:
  if (v189[3])
  {
    v89 = [ISBiometricStore keychainLabelForCertWithAccountID:identifierCopy purpose:purposeCopy];
    v1628 = objc_alloc_init(NSMutableDictionary);
    [v1628 setObject:v89 forKeyedSubscript:kSecAttrLabel];
    [v1628 setObject:kSecClassCertificate forKeyedSubscript:kSecClass];
    [v1628 setObject:v189[3] forKeyedSubscript:kSecValueRef];
    v91 = SecItemAdd(v1628, 0);
    if (v91)
    {
      v92 = +[SSLogConfig sharedDaemonConfig];
      if (!v92)
      {
        v92 = +[SSLogConfig sharedConfig];
      }

      shouldLog9 = [v92 shouldLog];
      shouldLogToDisk9 = [v92 shouldLogToDisk];
      oSLogObject9 = [v92 OSLogObject];
      v1627 = oSLogObject9;
      if (shouldLogToDisk9)
      {
        shouldLog9 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
      {
        shouldLog9 &= 2u;
      }

      if (!shouldLog9)
      {
        goto LABEL_135;
      }

      v97 = objc_opt_class();
      v98 = SSHashIfNeeded();
      v99 = [NSNumber numberWithInteger:purposeCopy];
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
        v1627 = [NSString stringWithCString:v101 encoding:4, &v212, v162];
        free(v101);
        v161 = v1627;
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

      shouldLog10 = [v92 shouldLog];
      shouldLogToDisk10 = [v92 shouldLogToDisk];
      oSLogObject10 = [v92 OSLogObject];
      v1627 = oSLogObject10;
      if (shouldLogToDisk10)
      {
        shouldLog10 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
      {
        shouldLog10 &= 2u;
      }

      if (!shouldLog10)
      {
        goto LABEL_135;
      }

      v112 = objc_opt_class();
      v113 = SSHashIfNeeded();
      v114 = [NSNumber numberWithInteger:purposeCopy];
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

  shouldLog11 = [v89 shouldLog];
  shouldLogToDisk11 = [v89 shouldLogToDisk];
  oSLogObject11 = [v89 OSLogObject];
  v1628 = oSLogObject11;
  if (shouldLogToDisk11)
  {
    shouldLog11 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject11, OS_LOG_TYPE_ERROR))
  {
    shouldLog11 &= 2u;
  }

  if (shouldLog11)
  {
    v105 = objc_opt_class();
    v106 = SSHashIfNeeded();
    v107 = [NSNumber numberWithInteger:purposeCopy];
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

    v1628 = [NSString stringWithCString:v108 encoding:4, &v212, v162];
    free(v108);
    v161 = v1628;
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
          v16210 = +[SSLogConfig sharedDaemonConfig];
          if (!v16210)
          {
            v16210 = +[SSLogConfig sharedConfig];
          }

          shouldLog12 = [v16210 shouldLog];
          shouldLogToDisk12 = [v16210 shouldLogToDisk];
          oSLogObject12 = [v16210 OSLogObject];
          v1629 = oSLogObject12;
          if (shouldLogToDisk12)
          {
            shouldLog12 |= 2u;
          }

          if (!os_log_type_enabled(oSLogObject12, OS_LOG_TYPE_ERROR))
          {
            shouldLog12 &= 2u;
          }

          if (!shouldLog12)
          {
            goto LABEL_189;
          }

          v124 = SSHashIfNeeded();
          v125 = [NSNumber numberWithInteger:purposeCopy];
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
          v16210 = +[SSLogConfig sharedDaemonConfig];
          if (!v16210)
          {
            v16210 = +[SSLogConfig sharedConfig];
          }

          shouldLog13 = [v16210 shouldLog];
          shouldLogToDisk13 = [v16210 shouldLogToDisk];
          oSLogObject13 = [v16210 OSLogObject];
          v1629 = oSLogObject13;
          if (shouldLogToDisk13)
          {
            shouldLog13 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject13, OS_LOG_TYPE_DEFAULT))
          {
            v148 = shouldLog13;
          }

          else
          {
            v148 = shouldLog13 & 2;
          }

          if (!v148)
          {
            goto LABEL_189;
          }

          v149 = SSHashIfNeeded();
          v150 = [NSNumber numberWithInteger:purposeCopy];
          v212 = 138412546;
          v213 = v149;
          v214 = 2114;
          v215 = v150;
          LODWORD(v162) = 22;
          v158 = &v212;
          v151 = _os_log_send_and_compose_impl();

          if (v151)
          {
            v1629 = [NSString stringWithCString:v151 encoding:4, &v212, v162];
            free(v151);
            v158 = v1629;
            SSFileLog();
            goto LABEL_189;
          }
        }

LABEL_190:

        goto LABEL_191;
      }

      v16210 = +[SSLogConfig sharedDaemonConfig];
      if (!v16210)
      {
        v16210 = +[SSLogConfig sharedConfig];
      }

      shouldLog14 = [v16210 shouldLog];
      shouldLogToDisk14 = [v16210 shouldLogToDisk];
      oSLogObject14 = [v16210 OSLogObject];
      v1629 = oSLogObject14;
      if (shouldLogToDisk14)
      {
        shouldLog14 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject14, OS_LOG_TYPE_ERROR))
      {
        shouldLog14 &= 2u;
      }

      if (!shouldLog14)
      {
        goto LABEL_189;
      }

      v142 = SSHashIfNeeded();
      v143 = [NSNumber numberWithInteger:purposeCopy];
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
      v16210 = +[SSLogConfig sharedDaemonConfig];
      if (!v16210)
      {
        v16210 = +[SSLogConfig sharedConfig];
      }

      shouldLog15 = [v16210 shouldLog];
      shouldLogToDisk15 = [v16210 shouldLogToDisk];
      oSLogObject15 = [v16210 OSLogObject];
      v1629 = oSLogObject15;
      if (shouldLogToDisk15)
      {
        shouldLog15 |= 2u;
      }

      if (os_log_type_enabled(oSLogObject15, OS_LOG_TYPE_DEFAULT))
      {
        v138 = shouldLog15;
      }

      else
      {
        v138 = shouldLog15 & 2;
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
    v1629 = [NSString stringWithCString:v127 encoding:4, &v212, v162];
    free(v127);
    v158 = v1629;
    SSFileLog();
LABEL_189:

    goto LABEL_190;
  }

  v115 = +[SSLogConfig sharedDaemonConfig];
  if (!v115)
  {
    v115 = +[SSLogConfig sharedConfig];
  }

  shouldLog16 = [v115 shouldLog];
  shouldLogToDisk16 = [v115 shouldLogToDisk];
  oSLogObject16 = [v115 OSLogObject];
  v16210 = oSLogObject16;
  if (shouldLogToDisk16)
  {
    shouldLog16 |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject16, OS_LOG_TYPE_ERROR))
  {
    shouldLog16 &= 2u;
  }

  if (!shouldLog16)
  {
    goto LABEL_190;
  }

  v131 = objc_opt_class();
  v132 = SSHashIfNeeded();
  v133 = [NSNumber numberWithInteger:purposeCopy];
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
    v16210 = [NSString stringWithCString:v134 encoding:4, &v212, v162];
    free(v134);
    v158 = v16210;
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

  if (error)
  {
    *error = v201[5];
  }

  v158 = [NSArray arrayWithArray:v207[5], v158];

  _Block_object_dispose(&v188, 8);
  _Block_object_dispose(&v192, 8);
  _Block_object_dispose(&v196, 8);
  _Block_object_dispose(&v200, 8);

  _Block_object_dispose(&v206, 8);

  return v158;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"mt-tid-%@", identifierCopy];
  v46 = NSHTTPCookieName;
  v47 = identifierCopy;
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

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = shouldLog;
    }

    else
    {
      v14 = shouldLog & 2;
    }

    selfCopy = self;
    if (v14)
    {
      v15 = objc_opt_class();
      v42 = 138543618;
      v43 = v15;
      v44 = 2114;
      v45 = 0;
      v16 = v10;
      v17 = v8;
      v18 = identifierCopy;
      errorCopy = error;
      v20 = v15;
      LODWORD(v36) = 22;
      v35 = &v42;
      v21 = _os_log_send_and_compose_impl();

      error = errorCopy;
      identifierCopy = v18;
      v8 = v17;
      v10 = v16;

      if (!v21)
      {
LABEL_13:

        self = selfCopy;
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v42, v36];
      free(v21);
      v35 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v40 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:0 error:&v40, v35];
  v22 = v40;
  v39 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:1 error:&v39];

  v23 = v39;
  v24 = v23;
  if (v22 && v23)
  {
    errorCopy2 = error;
    v25 = SSError();
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v26 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
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

      oSLogObject2 = [NSString stringWithCString:v31 encoding:4, &v42, v36];
      free(v31);
      SSFileLog();
    }

LABEL_26:
    error = errorCopy2;
    if (!errorCopy2)
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
      if (!error)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v32 = v23;
  }

  v25 = v32;
  if (error)
  {
LABEL_33:
    v33 = v25;
    *error = v25;
  }

LABEL_34:

  return v25 == 0;
}

- (BOOL)_deleteKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v9 = &CFDictionaryGetValue_ptr;
  v10 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];
  v11 = [(DaemonBiometricKeychain *)self _queryForPrivateKeyWithLabel:v10 prompt:0 useTokenID:0];
  v12 = SecItemDelete(v11);
  v13 = &CFDictionaryGetValue_ptr;
  v158 = identifierCopy;
  purposeCopy = purpose;
  v153 = v11;
  errorCopy = error;
  if (!v12)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v149 = [NSString stringWithCString:v24 encoding:4, &v163, v149];
      free(v24);
      v144 = v149;
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

    shouldLog2 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog2 | 2;
    }

    else
    {
      v17 = shouldLog2;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 &= 2u;
    }

    if (!v17)
    {

      v26 = 0;
LABEL_39:
      purpose = purposeCopy;
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

  shouldLog3 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v30 = shouldLog3 | 2;
  }

  else
  {
    v30 = shouldLog3;
  }

  oSLogObject2 = [v15 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
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
    v1492 = [NSString stringWithCString:v37 encoding:4, &v163, v149];
    free(v37);
    v144 = v1492;
    SSFileLog();
  }

  v26 = v156;
  identifierCopy = v158;
  v13 = &CFDictionaryGetValue_ptr;
  v9 = &CFDictionaryGetValue_ptr;
LABEL_40:

  v39 = [v9[280] keychainLabelForKeyWithAccountID:identifierCopy purpose:purpose];

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
    sharedDaemonConfig = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v13[412] sharedConfig];
    }

    shouldLog4 = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      shouldLog4 |= 2u;
    }

    oSLogObject3 = [sharedDaemonConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog4 &= 2u;
    }

    if (!shouldLog4)
    {
      goto LABEL_71;
    }

    v55 = objc_opt_class();
    v50 = v55;
    v56 = SSHashIfNeeded();
    v57 = [NSNumber numberWithInteger:purpose];
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
    sharedDaemonConfig = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [v13[412] sharedConfig];
    }

    shouldLog5 = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject3 = [sharedDaemonConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      shouldLog5 &= 2u;
    }

    if (!shouldLog5)
    {
      goto LABEL_71;
    }

    v49 = objc_opt_class();
    v50 = v49;
    v51 = SSHashIfNeeded();
    v52 = [NSNumber numberWithInteger:purpose];
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
  sharedDaemonConfig = +[SSLogConfig sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    shouldLog6 |= 2u;
  }

  oSLogObject3 = [sharedDaemonConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    shouldLog6 &= 2u;
  }

  if (!shouldLog6)
  {
    purpose = purposeCopy;
    v43 = kSecClass;
    goto LABEL_71;
  }

  v61 = objc_opt_class();
  v62 = v61;
  v63 = SSHashIfNeeded();
  v64 = [NSNumber numberWithInteger:purposeCopy];
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
    purpose = purposeCopy;
    v42 = kSecAttrLabel;
LABEL_69:
    v40 = SSVURLProtocolConsumer_ptr;
    v43 = kSecClass;
    oSLogObject3 = [NSString stringWithCString:v53 encoding:4, &v163, v149];
    free(v53);
    v145 = oSLogObject3;
    SSFileLog();
LABEL_71:

    goto LABEL_74;
  }

  purpose = purposeCopy;
  v42 = kSecAttrLabel;
LABEL_73:
  v40 = SSVURLProtocolConsumer_ptr;
  v43 = kSecClass;
LABEL_74:

  v66 = [ISBiometricStore keychainLabelForCertWithAccountID:v158 purpose:purpose];

  v67 = objc_alloc_init(v40[479]);
  [v67 setObject:v66 forKeyedSubscript:v42];
  [v67 setObject:kSecClassCertificate forKeyedSubscript:v43];
  v151 = v67;
  v68 = SecItemDelete(v67);
  v155 = v66;
  if (!v68)
  {
    sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = [v13[412] sharedConfig];
    }

    shouldLog7 = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      shouldLog7 |= 2u;
    }

    oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog7 &= 2u;
    }

    if (!shouldLog7)
    {
      goto LABEL_106;
    }

LABEL_91:
    v74 = v42;
    v75 = objc_opt_class();
    v76 = v75;
    v77 = SSHashIfNeeded();
    v78 = [NSNumber numberWithInteger:purpose];
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
      oSLogObject4 = [NSString stringWithCString:v79 encoding:4, &v163, v149];
      free(v79);
      v146 = oSLogObject4;
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
    sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = [v13[412] sharedConfig];
    }

    shouldLog8 = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      shouldLog8 |= 2u;
    }

    oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      shouldLog8 &= 2u;
    }

    if (!shouldLog8)
    {
      goto LABEL_106;
    }

    goto LABEL_91;
  }

  v150 = v42;
  v80 = SSError();

  v81 = [NSNumber numberWithInt:v69];
  v157 = SSErrorBySettingUserInfoValue();

  sharedDaemonConfig2 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig2)
  {
    sharedDaemonConfig2 = [v13[412] sharedConfig];
  }

  shouldLog9 = [sharedDaemonConfig2 shouldLog];
  if ([sharedDaemonConfig2 shouldLogToDisk])
  {
    shouldLog9 |= 2u;
  }

  oSLogObject4 = [sharedDaemonConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v83 = shouldLog9;
  }

  else
  {
    v83 = shouldLog9 & 2;
  }

  if (!v83)
  {
    purpose = purposeCopy;
    v66 = v155;
    v43 = kSecClass;
    v42 = v150;
    goto LABEL_106;
  }

  v84 = objc_opt_class();
  v85 = v84;
  v86 = SSHashIfNeeded();
  v87 = [NSNumber numberWithInteger:purposeCopy];
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
    purpose = purposeCopy;
    v66 = v155;
    v42 = v150;
    goto LABEL_103;
  }

  purpose = purposeCopy;
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
    sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
    v92 = v157;
    v94 = v151;
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v13[412] sharedConfig];
    }

    shouldLog10 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      shouldLog10 |= 2u;
    }

    oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      shouldLog10 &= 2u;
    }

    if (!shouldLog10)
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
      purpose = purposeCopy;
      goto LABEL_143;
    }

    purpose = purposeCopy;
    goto LABEL_139;
  }

  v91 = v90;
  v92 = v157;
  if (v90 == -25300)
  {
    sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
    v94 = v151;
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v13[412] sharedConfig];
    }

    shouldLog11 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      shouldLog11 |= 2u;
    }

    oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      shouldLog11 &= 2u;
    }

    if (!shouldLog11)
    {
      goto LABEL_142;
    }

    goto LABEL_126;
  }

  v102 = SSError();

  v103 = [NSNumber numberWithInt:v91];
  v104 = SSErrorBySettingUserInfoValue();

  sharedDaemonConfig3 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig3)
  {
    sharedDaemonConfig3 = [v13[412] sharedConfig];
  }

  shouldLog12 = [sharedDaemonConfig3 shouldLog];
  if ([sharedDaemonConfig3 shouldLogToDisk])
  {
    v106 = shouldLog12 | 2;
  }

  else
  {
    v106 = shouldLog12;
  }

  oSLogObject5 = [sharedDaemonConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
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
    purpose = purposeCopy;
    v66 = v155;
    v94 = v151;
LABEL_139:
    oSLogObject5 = [NSString stringWithCString:v101 encoding:4, &v163, v149];
    free(v101);
    v147 = oSLogObject5;
    SSFileLog();
LABEL_142:

    goto LABEL_143;
  }

  purpose = purposeCopy;
  v66 = v155;
  v94 = v151;
LABEL_143:

  v112 = objc_alloc_init(AMSKeychainOptions);
  [v112 setStyle:{+[AMSKeychainOptions preferredAttestationStyle](AMSKeychainOptions, "preferredAttestationStyle")}];
  if (purpose <= 1)
  {
    [v112 setPurpose:purpose];
  }

  style = [v112 style];
  sharedDaemonConfig4 = [v13[412] sharedDaemonConfig];
  sharedConfig = sharedDaemonConfig4;
  if (!style)
  {
    if (!sharedDaemonConfig4)
    {
      sharedConfig = [v13[412] sharedConfig];
    }

    shouldLog13 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      v124 = shouldLog13 | 2;
    }

    else
    {
      v124 = shouldLog13;
    }

    oSLogObject6 = [sharedConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject6 = [NSString stringWithCString:v128 encoding:4, &v163, v149];
      free(v128);
      v148 = oSLogObject6;
      SSFileLog();
    }

    goto LABEL_170;
  }

  if (style == 1)
  {
    if (!sharedDaemonConfig4)
    {
      sharedConfig = [v13[412] sharedConfig];
    }

    shouldLog14 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      v117 = shouldLog14 | 2;
    }

    else
    {
      v117 = shouldLog14;
    }

    oSLogObject7 = [sharedConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
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
        sharedConfig = v92;
        v92 = v122;
        goto LABEL_183;
      }

      oSLogObject7 = [NSString stringWithCString:v121 encoding:4, &v163, v149];
      free(v121);
      v148 = oSLogObject7;
      SSFileLog();
    }

    goto LABEL_158;
  }

  if (!sharedDaemonConfig4)
  {
    sharedConfig = [v13[412] sharedConfig];
  }

  shouldLog15 = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    v130 = shouldLog15 | 2;
  }

  else
  {
    v130 = shouldLog15;
  }

  oSLogObject8 = [sharedConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
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

    oSLogObject8 = [NSString stringWithCString:v134 encoding:4, &v163, v149];
    free(v134);
    v148 = oSLogObject8;
    SSFileLog();
  }

LABEL_183:
  if (!v92)
  {
    goto LABEL_196;
  }

  sharedDaemonConfig5 = [v13[412] sharedDaemonConfig];
  if (!sharedDaemonConfig5)
  {
    sharedDaemonConfig5 = [v13[412] sharedConfig];
  }

  shouldLog16 = [sharedDaemonConfig5 shouldLog];
  if ([sharedDaemonConfig5 shouldLogToDisk])
  {
    v137 = shouldLog16 | 2;
  }

  else
  {
    v137 = shouldLog16;
  }

  oSLogObject9 = [sharedDaemonConfig5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
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
    oSLogObject9 = [NSString stringWithCString:v141 encoding:4, &v163, v149];
    free(v141);
    SSFileLog();
LABEL_194:
  }

LABEL_196:
  if (errorCopy)
  {
    v142 = v92;
    *errorCopy = v92;
  }

  return v92 == 0;
}

- (BOOL)_generateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
  v88 = 0;
  [(DaemonBiometricKeychain *)self _deleteKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v88];
  errorCopy3 = v88;
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  errorCopy = error;
  if (errorCopy3)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = identifierCopy;
    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = identifierCopy;
      v19 = SSHashIfNeeded();
      localizedDescription = [(__CFError *)errorCopy3 localizedDescription];
      v89 = 138543874;
      v90 = v16;
      v91 = 2112;
      v92 = v19;
      v93 = 2114;
      errorCopy4 = localizedDescription;
      LODWORD(v75) = 32;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_31:

        v33 = 0;
        identifierCopy = v18;
        identifierCopy = v12;
        error = errorCopy;
        goto LABEL_94;
      }

      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v89, v75];
      free(v21);
      SSFileLog();
    }

    else
    {
      v18 = identifierCopy;
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
    if (purpose == 1)
    {
      _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForExtendedActions];
    }

    else
    {
      if (purpose)
      {
        goto LABEL_48;
      }

      _constraintsForExtendedActions = [(DaemonBiometricKeychain *)self _constraintsForPurchase];
    }

    v35 = _constraintsForExtendedActions;
    if (_constraintsForExtendedActions)
    {
      errorCopy2 = error;
      v81 = identifierCopy;
      SecAccessControlSetConstraints();
      oSLogObject3 = +[SSLogConfig sharedDaemonConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject3 shouldLog];
      if ([oSLogObject3 shouldLogToDisk])
      {
        v39 = shouldLog2 | 2;
      }

      else
      {
        v39 = shouldLog2;
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 2;
      }

      if (!v41)
      {
        error = errorCopy2;
        goto LABEL_60;
      }

      v42 = objc_opt_class();
      v79 = v42;
      v43 = SSHashIfNeeded();
      v44 = [NSNumber numberWithInteger:purpose];
      v89 = 138543874;
      v90 = v42;
      v91 = 2112;
      v92 = v43;
      v93 = 2114;
      errorCopy4 = v44;
      LODWORD(v75) = 32;
      v74 = &v89;
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        oSLogObject2 = [NSString stringWithCString:v45 encoding:4, &v89, v75];
        free(v45);
        v74 = oSLogObject2;
        SSFileLog();
        v23 = v83;
        error = errorCopy;
LABEL_60:

        goto LABEL_61;
      }

LABEL_58:
      v23 = v83;
      error = errorCopy;
LABEL_61:
      identifierCopy = v81;
LABEL_62:

      goto LABEL_63;
    }

LABEL_48:
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v47 = shouldLog3;
    }

    else
    {
      v47 = shouldLog3 & 2;
    }

    if (!v47)
    {
      goto LABEL_62;
    }

    v48 = objc_opt_class();
    v49 = v48;
    v81 = identifierCopy;
    v50 = SSHashIfNeeded();
    v51 = [NSNumber numberWithInteger:purpose];
    v89 = 138543874;
    v90 = v48;
    v91 = 2112;
    v92 = v50;
    v93 = 2114;
    errorCopy4 = v51;
    LODWORD(v75) = 32;
    v74 = &v89;
    v52 = _os_log_send_and_compose_impl();

    if (!v52)
    {
      v23 = v83;
      error = errorCopy;
      identifierCopy = v81;
LABEL_63:

      v53 = [ISBiometricStore keychainLabelForAccountID:identifierCopy purpose:purpose];
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
        errorCopy3 = SSErrorBySettingUserInfoValue();

        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        shouldLog4 = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          shouldLog4 |= 2u;
        }

        oSLogObject4 = [v60 OSLogObject];
        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          shouldLog4 &= 2u;
        }

        if (!shouldLog4)
        {
          v23 = v83;
          error = errorCopy;
          goto LABEL_86;
        }

        v77 = identifierCopy;
        v63 = objc_opt_class();
        v76 = v63;
        v64 = identifierCopy;
        v65 = SSHashIfNeeded();
        v66 = [NSNumber numberWithInt:v57];
        v89 = 138543874;
        v90 = v63;
        v91 = 2112;
        v92 = v65;
        v93 = 2114;
        errorCopy4 = v66;
        LODWORD(v75) = 32;
        v67 = _os_log_send_and_compose_impl();

        if (!v67)
        {
          v23 = v83;
          error = errorCopy;
          identifierCopy = v64;
          identifierCopy = v77;
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
        error = errorCopy;
        identifierCopy = v64;
        identifierCopy = v77;
      }

      else
      {
        v60 = +[SSLogConfig sharedDaemonConfig];
        if (!v60)
        {
          v60 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          shouldLog5 |= 2u;
        }

        oSLogObject4 = [v60 OSLogObject];
        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
        {
          shouldLog5 &= 2u;
        }

        if (!shouldLog5)
        {
          errorCopy3 = 0;
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

        errorCopy3 = 0;
        if (!v67)
        {
          error = errorCopy;
          goto LABEL_87;
        }

        error = errorCopy;
      }

      oSLogObject4 = [NSString stringWithCString:v67 encoding:4, &v89, v75];
      free(v67);
      SSFileLog();
LABEL_86:

      goto LABEL_87;
    }

    oSLogObject3 = [NSString stringWithCString:v52 encoding:4, &v89, v75];
    free(v52);
    v74 = oSLogObject3;
    SSFileLog();
    goto LABEL_58;
  }

  errorCopy3 = error;
  v25 = +[SSLogConfig sharedDaemonConfig];
  if (!v25)
  {
    v25 = +[SSLogConfig sharedConfig];
  }

  shouldLog6 = [v25 shouldLog];
  if ([v25 shouldLogToDisk])
  {
    v27 = shouldLog6 | 2;
  }

  else
  {
    v27 = shouldLog6;
  }

  oSLogObject5 = [v25 OSLogObject];
  if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
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
    errorCopy4 = error;
    LODWORD(v75) = 32;
    v32 = _os_log_send_and_compose_impl();

    if (!v32)
    {
      goto LABEL_27;
    }

    oSLogObject5 = [NSString stringWithCString:v32 encoding:4, &v89, v75];
    free(v32);
    SSFileLog();
  }

LABEL_27:
  v33 = 0;
  error = errorCopy;
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
  if (error)
  {
    v72 = errorCopy3;
    *error = errorCopy3;
  }

  return v33;
}

- (id)_presentPaymentSheetForChallenge:(id)challenge authContext:(id)context biometricContext:(id)biometricContext touchIDContext:(id)dContext touchIDOptions:(id)options accessControlRef:(__SecAccessControl *)ref passwordToken:(id *)token paymentTokenData:(id *)self0 fpanID:(id *)self1 error:(id *)self2
{
  challengeCopy = challenge;
  contextCopy = context;
  biometricContextCopy = biometricContext;
  dContextCopy = dContext;
  optionsCopy = options;
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
  paymentSheet = [biometricContextCopy paymentSheet];
  v22 = [(DisplayPaymentSheetOperation *)v20 initWithPaymentSheet:paymentSheet];

  accountIdentifier = [biometricContextCopy accountIdentifier];
  [(DisplayPaymentSheetOperation *)v22 setAccountIdentifier:accountIdentifier];

  [(DisplayPaymentSheetOperation *)v22 setAuthenticationContext:contextCopy];
  username = [contextCopy username];
  [(DisplayPaymentSheetOperation *)v22 setAccountName:username];

  [(DisplayPaymentSheetOperation *)v22 setChallenge:challengeCopy];
  -[DisplayPaymentSheetOperation setTouchIDDelayEnabled:](v22, "setTouchIDDelayEnabled:", [biometricContextCopy touchIDDelayEnabled]);
  dialogId = [biometricContextCopy dialogId];
  [(DisplayPaymentSheetOperation *)v22 setDialogId:dialogId];

  [(DisplayPaymentSheetOperation *)v22 setLocalAuthAccessControlRef:ref];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthContext:dContextCopy];
  [(DisplayPaymentSheetOperation *)v22 setLocalAuthOptions:optionsCopy];
  userAgent = [biometricContextCopy userAgent];
  [(DisplayPaymentSheetOperation *)v22 setUserAgent:userAgent];

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

  shouldLog = [v29 shouldLog];
  shouldLogToDisk = [v29 shouldLogToDisk];
  oSLogObject = [v29 OSLogObject];
  v33 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
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
    error = [(DisplayPaymentSheetContainerOperation *)v28 error];
    v38 = error == 0;

    if (!v38)
    {
      error2 = [(DisplayPaymentSheetContainerOperation *)v28 error];
      v40 = v73[5];
      v73[5] = error2;
    }
  }

  if (token)
  {
    *token = v67[5];
  }

  if (data)
  {
    *data = v61[5];
  }

  if (d)
  {
    *d = v55[5];
  }

  if (error)
  {
    *error = v73[5];
  }

  v41 = v79[5];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);

  return v41;
}

- (id)_publicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateKeys:(BOOL)keys error:(id *)error
{
  keysCopy = keys;
  identifierCopy = identifier;
  v73 = 0;
  v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:identifierCopy purpose:purpose error:&v73];
  v12 = v73;
  v13 = v12;
  if (v11 || !keysCopy)
  {
LABEL_32:
    if (!error)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  domain = [v12 domain];
  v15 = [domain isEqualToString:SSErrorDomain];

  if (!v15)
  {
    v11 = 0;
    goto LABEL_32;
  }

  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  userInfo = [v13 userInfo];
  v17 = [userInfo objectForKey:SSErrorKeychainStatusCodeKey];
  integerValue = [v17 integerValue];

  if (integerValue != -25300 || ![(DaemonBiometricKeychain *)self _isDeviceUnlocked])
  {
    errorCopy = error;
    v44 = +[SSLogConfig sharedDaemonConfig];
    if (!v44)
    {
      v44 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v44 shouldLog];
    if ([v44 shouldLogToDisk])
    {
      v46 = shouldLog | 2;
    }

    else
    {
      v46 = shouldLog;
    }

    oSLogObject = [v44 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      error = errorCopy;
      if (!v52)
      {
LABEL_49:

        v69 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v69];
        v53 = v69;
LABEL_50:
        v31 = v53;

        goto LABEL_51;
      }

      oSLogObject = [NSString stringWithCString:v52 encoding:4, &v74, v63];
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

    shouldLog2 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v55 = shouldLog2 | 2;
    }

    else
    {
      v55 = shouldLog2;
    }

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
      v60 = v59 = error;
      v74 = 138543618;
      v75 = v58;
      v76 = 2112;
      v77 = v60;
      LODWORD(v63) = 22;
      v61 = _os_log_send_and_compose_impl();

      error = v59;
      if (!v61)
      {
LABEL_65:

        v70 = v13;
        v11 = [(DaemonBiometricKeychain *)self _regenerateKeychainTokensForAccountIdentifier:identifierCopy purpose:purpose error:&v70];
        v53 = v70;
        goto LABEL_50;
      }

      oSLogObject2 = [NSString stringWithCString:v61 encoding:4, &v74, v63];
      free(v61);
      SSFileLog();
    }

    goto LABEL_65;
  }

  errorCopy2 = error;
  if (!v20)
  {
    v21 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v21 shouldLog];
  if ([v21 shouldLogToDisk])
  {
    v23 = shouldLog3 | 2;
  }

  else
  {
    v23 = shouldLog3;
  }

  oSLogObject3 = [v21 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    v28 = [NSNumber numberWithInteger:purpose];
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

    oSLogObject3 = [NSString stringWithCString:v29 encoding:4, &v74, v63];
    free(v29);
    v62 = oSLogObject3;
    SSFileLog();
  }

LABEL_19:
  v72 = v13;
  v30 = [(DaemonBiometricKeychain *)self createX509CertChainDataForAccountIdentifier_:identifierCopy purpose:purpose error:&v72];
  v31 = v72;

  if (!v31)
  {
    v71 = 0;
    v11 = [(DaemonBiometricKeychain *)self _copyPublicKeyDataForAccountIdentifier:identifierCopy purpose:purpose error:&v71];
    v31 = v71;
    error = errorCopy2;
    goto LABEL_51;
  }

  v32 = +[SSLogConfig sharedDaemonConfig];
  if (!v32)
  {
    v32 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v32 shouldLog];
  if ([v32 shouldLogToDisk])
  {
    v34 = shouldLog4 | 2;
  }

  else
  {
    v34 = shouldLog4;
  }

  oSLogObject4 = [v32 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 & 2;
  }

  if (!v36)
  {
    error = errorCopy2;
    goto LABEL_68;
  }

  v37 = objc_opt_class();
  v38 = v37;
  v39 = SSHashIfNeeded();
  v40 = [NSNumber numberWithInteger:purpose];
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

  error = errorCopy2;
  if (v41)
  {
    oSLogObject4 = [NSString stringWithCString:v41 encoding:4, &v74, v63];
    free(v41);
    SSFileLog();
LABEL_68:
  }

  v11 = 0;
LABEL_51:

  v13 = v31;
  if (error)
  {
LABEL_33:
    v42 = v13;
    *error = v13;
  }

LABEL_34:

  return v11;
}

- (id)_queryForPrivateKeyWithLabel:(id)label prompt:(id)prompt useTokenID:(BOOL)d
{
  dCopy = d;
  labelCopy = label;
  promptCopy = prompt;
  if (!labelCopy)
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [NSString stringWithCString:v16 encoding:4, &v19, v18, v19];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:kSecClassKey forKey:kSecClass];
  [v9 setObject:kSecAttrKeyClassPrivate forKey:kSecAttrKeyClass];
  [v9 setObject:&__kCFBooleanTrue forKey:kSecReturnRef];
  [v9 setObject:labelCopy forKey:kSecAttrLabel];
  if (promptCopy)
  {
    [v9 setObject:promptCopy forKey:kSecUseOperationPrompt];
  }

  if (dCopy)
  {
    [v9 setObject:kSecAttrTokenIDSecureEnclave forKey:kSecAttrTokenID];
  }

  v10 = [NSDictionary dictionaryWithDictionary:v9];

LABEL_19:

  return v10;
}

- (id)_regenerateKeychainTokensForAccountIdentifier:(id)identifier purpose:(int64_t)purpose error:(id *)error
{
  identifierCopy = identifier;
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
  identifierCopy = [NSString stringWithFormat:@"%@", identifierCopy];
  v10 = dispatch_semaphore_create(0);
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001630D8;
  block[3] = &unk_10032A0C0;
  v31 = &v40;
  block[4] = self;
  v12 = identifierCopy;
  v32 = &v34;
  purposeCopy = purpose;
  v28 = v12;
  v13 = identifierCopy;
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

    shouldLog = [v16 shouldLog];
    shouldLogToDisk = [v16 shouldLogToDisk];
    oSLogObject = [v16 OSLogObject];
    v20 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
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
  if (error)
  {
    *error = v35[5];
  }

  v24 = v41[5];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);

  return v24;
}

- (id)_signData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  consolidatedDialog = [contextCopy consolidatedDialog];
  reason = [consolidatedDialog reason];

  accountIdentifier = [contextCopy accountIdentifier];
  v71 = [NSString stringWithFormat:@"%@", accountIdentifier];
  v84 = 0;
  v10 = [(DaemonBiometricKeychain *)self copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:contextCopy error:&v84];
  v11 = v84;
  v12 = v11;
  cf = v10;
  if (v10 && !v11)
  {
    errorCopy = error;
    isExtendedAction = [contextCopy isExtendedAction];
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:&__kCFBooleanFalse forKey:&off_10034BF70];
    [v14 setObject:&__kCFBooleanTrue forKey:&off_10034BF88];
    [v14 setObject:&off_10034BFA0 forKey:&off_10034BFB8];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"BIO_USE_PASSWORD" value:&stru_10033CC30 table:@"Mesa"];
    [v14 setObject:v16 forKey:&off_10034BFD0];

    if (reason)
    {
      [v14 setObject:reason forKey:&off_10034BFE8];
    }

    v67 = v14;
    v17 = objc_alloc_init(ISWeakLinkedClassForString());
    v18 = +[SSAccountStore defaultStore];
    v19 = [v18 accountWithUniqueIdentifier:accountIdentifier];
    v20 = v19;
    if (v19)
    {
      activeAccount = v19;
    }

    else
    {
      v35 = +[SSAccountStore defaultStore];
      activeAccount = [v35 activeAccount];
    }

    paymentSheet = [contextCopy paymentSheet];
    v37 = [paymentSheet authKitAuthenticationContextForAccount:activeAccount];

    v68 = activeAccount;
    v66 = v17;
    if ([contextCopy isPayment])
    {
      v38 = +[SSLogConfig sharedDaemonConfig];
      if (!v38)
      {
        v38 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v40 = shouldLog | 2;
      }

      else
      {
        v40 = shouldLog;
      }

      oSLogObject = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
          v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:dataCopy authContext:v37 biometricContext:contextCopy touchIDContext:v47 touchIDOptions:v67 accessControlRef:cf passwordToken:&v83 paymentTokenData:&v82 fpanID:&v81 error:&v80];
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
            [contextCopy setPasswordEquivalentToken:v33];
          }

          error = errorCopy;
          if (v32)
          {
            [contextCopy setPaymentTokenData:v32];
          }

          if (v31)
          {
            [contextCopy setFpanID:v31];
          }

          goto LABEL_61;
        }

        oSLogObject = [NSString stringWithCString:v45 encoding:4, &v85, v65];
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
      v34 = [(DaemonBiometricKeychain *)self signDataWithKeychain:dataCopy accountIdentifier:accountIdentifier purpose:isExtendedAction localAuthContext:v17 localAuthOptions:v67 error:&v75];
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

    shouldLog2 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v53 = shouldLog2 | 2;
    }

    else
    {
      v53 = shouldLog2;
    }

    oSLogObject2 = [v51 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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

        paymentSheet2 = [contextCopy paymentSheet];

        if (!paymentSheet2)
        {
          v60 = +[ISBiometricStore diskBasedPaymentSheet];
          [contextCopy setPaymentSheet:v60];
        }

        v78 = 0;
        v79 = 0;
        v76 = 0;
        v77 = 0;
        v46 = &v76;
        v61 = v17;
        v48 = v67;
        v49 = cf;
        v34 = [(DaemonBiometricKeychain *)self _presentPaymentSheetForChallenge:dataCopy authContext:v37 biometricContext:contextCopy touchIDContext:v61 touchIDOptions:v67 accessControlRef:cf passwordToken:&v79 paymentTokenData:&v78 fpanID:&v77 error:&v76];
        v33 = v79;
        v32 = v78;
        v50 = v77;
        goto LABEL_53;
      }

      oSLogObject2 = [NSString stringWithCString:v58 encoding:4, &v85, v65];
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

  shouldLog3 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v24 = shouldLog3 | 2;
  }

  else
  {
    v24 = shouldLog3;
  }

  oSLogObject3 = [v22 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
    oSLogObject3 = [NSString stringWithCString:v30 encoding:4, &v85, v65];
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
  if (error)
  {
    v62 = v12;
    *error = v12;
  }

  v63 = v34;

  return v34;
}

@end